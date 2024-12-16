-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 16, 2024 at 06:13 PM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a1617qsw_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2024-07-10 08:49:58', '2024-07-10 08:49:58', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_litespeed_url`
--

CREATE TABLE `wp_litespeed_url` (
  `id` bigint(20) NOT NULL,
  `url` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cache_tags` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_litespeed_url_file`
--

CREATE TABLE `wp_litespeed_url_file` (
  `id` bigint(20) NOT NULL,
  `url_id` bigint(20) NOT NULL,
  `vary` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'md5 of final vary',
  `filename` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'md5 of file content',
  `type` tinyint(4) NOT NULL COMMENT 'css=1,js=2,ccss=3,ucss=4',
  `mobile` tinyint(4) NOT NULL COMMENT 'mobile=1',
  `webp` tinyint(4) NOT NULL COMMENT 'webp=1',
  `expired` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://demo.qurolabs.com', 'yes'),
(2, 'home', 'https://demo.qurolabs.com', 'yes'),
(3, 'blogname', 'Quro Labs Electronic Product Design', 'yes'),
(4, 'blogdescription', 'Mechatronics | Manufacturing | Embedded systems | IoT | Automation | PCB Design | Power electronics | SMPS | LED Drivers', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'test.infokeyinnovations@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:97:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:35:\"litespeed-cache/litespeed-cache.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'quro-custom', 'yes'),
(41, 'stylesheet', 'quro-custom', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '58975', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:35:\"litespeed-cache/litespeed-cache.php\";s:47:\"LiteSpeed\\Activation::uninstall_litespeed_cache\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '12', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1736153397', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'off'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '57155', 'yes'),
(101, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'off'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:9:{i:1734339476;a:2:{s:19:\"litespeed_task_lqip\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:16:\"litespeed_filter\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}s:27:\"litespeed_task_imgoptm_pull\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:16:\"litespeed_filter\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1734342598;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1734382198;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1734382210;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1734425398;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1734425410;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1734544968;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1734598198;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.5.5\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:27:\"post-content/editor-rtl.css\";i:281;s:31:\"post-content/editor-rtl.min.css\";i:282;s:23:\"post-content/editor.css\";i:283;s:27:\"post-content/editor.min.css\";i:284;s:23:\"post-date/style-rtl.css\";i:285;s:27:\"post-date/style-rtl.min.css\";i:286;s:19:\"post-date/style.css\";i:287;s:23:\"post-date/style.min.css\";i:288;s:27:\"post-excerpt/editor-rtl.css\";i:289;s:31:\"post-excerpt/editor-rtl.min.css\";i:290;s:23:\"post-excerpt/editor.css\";i:291;s:27:\"post-excerpt/editor.min.css\";i:292;s:26:\"post-excerpt/style-rtl.css\";i:293;s:30:\"post-excerpt/style-rtl.min.css\";i:294;s:22:\"post-excerpt/style.css\";i:295;s:26:\"post-excerpt/style.min.css\";i:296;s:34:\"post-featured-image/editor-rtl.css\";i:297;s:38:\"post-featured-image/editor-rtl.min.css\";i:298;s:30:\"post-featured-image/editor.css\";i:299;s:34:\"post-featured-image/editor.min.css\";i:300;s:33:\"post-featured-image/style-rtl.css\";i:301;s:37:\"post-featured-image/style-rtl.min.css\";i:302;s:29:\"post-featured-image/style.css\";i:303;s:33:\"post-featured-image/style.min.css\";i:304;s:34:\"post-navigation-link/style-rtl.css\";i:305;s:38:\"post-navigation-link/style-rtl.min.css\";i:306;s:30:\"post-navigation-link/style.css\";i:307;s:34:\"post-navigation-link/style.min.css\";i:308;s:28:\"post-template/editor-rtl.css\";i:309;s:32:\"post-template/editor-rtl.min.css\";i:310;s:24:\"post-template/editor.css\";i:311;s:28:\"post-template/editor.min.css\";i:312;s:27:\"post-template/style-rtl.css\";i:313;s:31:\"post-template/style-rtl.min.css\";i:314;s:23:\"post-template/style.css\";i:315;s:27:\"post-template/style.min.css\";i:316;s:24:\"post-terms/style-rtl.css\";i:317;s:28:\"post-terms/style-rtl.min.css\";i:318;s:20:\"post-terms/style.css\";i:319;s:24:\"post-terms/style.min.css\";i:320;s:24:\"post-title/style-rtl.css\";i:321;s:28:\"post-title/style-rtl.min.css\";i:322;s:20:\"post-title/style.css\";i:323;s:24:\"post-title/style.min.css\";i:324;s:26:\"preformatted/style-rtl.css\";i:325;s:30:\"preformatted/style-rtl.min.css\";i:326;s:22:\"preformatted/style.css\";i:327;s:26:\"preformatted/style.min.css\";i:328;s:24:\"pullquote/editor-rtl.css\";i:329;s:28:\"pullquote/editor-rtl.min.css\";i:330;s:20:\"pullquote/editor.css\";i:331;s:24:\"pullquote/editor.min.css\";i:332;s:23:\"pullquote/style-rtl.css\";i:333;s:27:\"pullquote/style-rtl.min.css\";i:334;s:19:\"pullquote/style.css\";i:335;s:23:\"pullquote/style.min.css\";i:336;s:23:\"pullquote/theme-rtl.css\";i:337;s:27:\"pullquote/theme-rtl.min.css\";i:338;s:19:\"pullquote/theme.css\";i:339;s:23:\"pullquote/theme.min.css\";i:340;s:39:\"query-pagination-numbers/editor-rtl.css\";i:341;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:342;s:35:\"query-pagination-numbers/editor.css\";i:343;s:39:\"query-pagination-numbers/editor.min.css\";i:344;s:31:\"query-pagination/editor-rtl.css\";i:345;s:35:\"query-pagination/editor-rtl.min.css\";i:346;s:27:\"query-pagination/editor.css\";i:347;s:31:\"query-pagination/editor.min.css\";i:348;s:30:\"query-pagination/style-rtl.css\";i:349;s:34:\"query-pagination/style-rtl.min.css\";i:350;s:26:\"query-pagination/style.css\";i:351;s:30:\"query-pagination/style.min.css\";i:352;s:25:\"query-title/style-rtl.css\";i:353;s:29:\"query-title/style-rtl.min.css\";i:354;s:21:\"query-title/style.css\";i:355;s:25:\"query-title/style.min.css\";i:356;s:20:\"query/editor-rtl.css\";i:357;s:24:\"query/editor-rtl.min.css\";i:358;s:16:\"query/editor.css\";i:359;s:20:\"query/editor.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(123, 'recovery_keys', 'a:0:{}', 'off'),
(125, 'nonce_key', 'J;eu#1=n!IXEgCf.v$QUx,2]lCM9^A1]wj`uuR|TjENiXC;cLT:MP CF|xC-GgV3', 'no'),
(126, 'nonce_salt', 'd!&7P^Adg/tV;V-lrod7T>B~4=U[BN8v8Hpnz`ATHGAFui,8,Ad=o ^qYkQ9.:,+', 'no'),
(127, 'theme_mods_twentytwentyfour', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1720604570;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'no'),
(133, 'secure_auth_key', '@-$CZ#.Y`:5[mZrm_3rQFY_HHJej[D^3ie -i.]wB}dR. Vej2*vhGJq{@8rG}F^', 'no'),
(134, 'secure_auth_salt', ':#.xC+[?h3+,^(1Nt48[E,g60GxR=0,A57buo.q|u_(k{#[34`Me:ZjGOcxvunVI', 'no'),
(135, 'logged_in_key', 'oafIEW#6G67I]YknE_V!+k]46c+>9`EKWXnhCx.r 1@bw{z[/M;8de*v+Vd3_D| ', 'no'),
(136, 'logged_in_salt', 'A)k.#9Q16o?;=Eku2FkR-o*Fj3<p 2tjv$f}E17:O}fp:t;)`lbd/RQcsS8M8O@H', 'no'),
(157, 'finished_updating_comment_type', '1', 'yes'),
(160, 'current_theme', 'Quro Custom Theme', 'yes'),
(161, 'theme_mods_quro-custom', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:12:\"primary-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(162, 'theme_switched', '', 'yes'),
(163, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'no'),
(172, 'recovery_mode_email_last_sent', '1720629292', 'yes'),
(184, 'litespeed.conf.__activation', '-1', 'yes'),
(185, 'litespeed.purge.queue', '-1', 'yes'),
(186, 'litespeed.purge.queue2', '-1', 'yes'),
(187, 'recently_activated', 'a:0:{}', 'off'),
(188, 'litespeed.cloud._summary', '{\"curr_request.ver\":0,\"last_request.ver\":1720634575,\"news.utime\":1720634576,\"curr_request.news\":0,\"last_request.news\":1720634576,\"ips_ts\":1734298645,\"ips_ts_runner\":1734298645,\"ips\":[\"102.221.36.98\",\"103.106.229.82\",\"103.106.229.94\",\"103.146.63.42\",\"103.152.118.219\",\"103.152.118.72\",\"103.164.203.163\",\"103.188.22.12\",\"103.28.90.190\",\"103.75.117.169\",\"104.225.142.116\",\"104.244.77.37\",\"108.61.158.223\",\"109.248.43.195\",\"135.148.120.32\",\"136.243.106.228\",\"139.84.230.39\",\"141.164.38.65\",\"145.239.252.65\",\"146.88.239.197\",\"147.78.0.165\",\"147.78.3.13\",\"147.78.3.161\",\"149.248.44.108\",\"149.28.136.245\",\"149.28.47.113\",\"149.28.85.239\",\"152.228.171.66\",\"152.53.36.14\",\"155.138.221.81\",\"156.67.218.140\",\"157.90.154.114\",\"158.51.123.249\",\"162.254.117.80\",\"162.254.118.29\",\"163.182.174.161\",\"163.47.21.168\",\"164.52.202.100\",\"167.71.185.204\",\"167.88.61.211\",\"170.249.218.98\",\"178.17.171.177\",\"178.22.124.247\",\"178.22.124.251\",\"178.255.220.12\",\"18.192.146.200\",\"185.116.60.231\",\"185.116.60.232\",\"185.126.237.51\",\"185.212.169.91\",\"185.228.26.40\",\"185.53.57.40\",\"185.53.57.89\",\"188.172.228.182\",\"188.172.229.113\",\"188.64.184.71\",\"190.92.176.5\",\"191.96.101.140\",\"192.248.156.201\",\"192.99.38.117\",\"193.203.191.189\",\"194.163.134.104\",\"194.36.144.221\",\"195.231.17.141\",\"198.38.89.73\",\"199.59.247.242\",\"201.182.97.70\",\"202.182.123.93\",\"202.61.226.253\",\"204.10.163.237\",\"209.124.84.191\",\"209.208.26.218\",\"211.23.143.87\",\"213.159.1.75\",\"213.183.48.170\",\"213.184.85.245\",\"216.238.106.164\",\"216.238.71.13\",\"23.95.73.167\",\"27.131.75.41\",\"31.131.4.244\",\"31.22.115.186\",\"31.40.212.152\",\"34.247.229.180\",\"34.249.110.197\",\"38.101.149.196\",\"38.114.121.40\",\"38.54.30.228\",\"38.54.42.235\",\"38.54.79.187\",\"38.60.253.237\",\"41.185.29.210\",\"41.223.52.170\",\"45.124.65.86\",\"45.132.244.92\",\"45.248.77.61\",\"45.32.123.201\",\"45.32.169.55\",\"45.32.183.112\",\"45.32.210.159\",\"45.32.67.144\",\"45.32.77.223\",\"45.63.67.181\",\"45.76.252.131\",\"45.77.148.74\",\"45.77.233.177\",\"46.250.220.133\",\"49.12.102.29\",\"5.134.119.103\",\"5.134.119.194\",\"5.188.183.13\",\"5.189.146.228\",\"51.81.186.219\",\"51.81.33.156\",\"54.246.224.74\",\"54.36.103.97\",\"61.219.247.87\",\"61.219.247.90\",\"64.176.4.251\",\"64.227.16.93\",\"64.31.63.160\",\"65.108.104.232\",\"65.20.75.178\",\"65.21.81.50\",\"65.21.81.51\",\"66.42.124.101\",\"67.219.99.102\",\"69.50.95.216\",\"70.34.205.229\",\"79.172.239.249\",\"81.31.156.245\",\"81.31.156.246\",\"83.229.71.151\",\"86.105.14.231\",\"86.105.14.232\",\"89.58.38.4\",\"91.148.135.53\",\"91.201.67.57\",\"91.228.7.67\",\"92.118.205.75\",\"93.95.227.66\",\"94.75.232.90\",\"95.179.133.28\",\"95.216.116.209\"],\"curr_request.ver_check\":0,\"last_request.ver_check\":1730412122}', 'yes'),
(190, 'litespeed.conf.hash', '92dLutAPtVuyzoyIiWXbSEzMNO6mp5gv', 'yes'),
(191, 'litespeed.conf.auto_upgrade', '', 'yes'),
(192, 'litespeed.conf.api_key', '', 'yes'),
(193, 'litespeed.conf.server_ip', '', 'yes'),
(194, 'litespeed.conf.guest', '', 'yes'),
(195, 'litespeed.conf.guest_optm', '', 'yes'),
(196, 'litespeed.conf.news', '1', 'yes'),
(197, 'litespeed.conf.guest_uas', '[\"Lighthouse\",\"GTmetrix\",\"Google\",\"Pingdom\",\"bot\",\"spider\",\"PTST\",\"HeadlessChrome\"]', 'yes'),
(198, 'litespeed.conf.guest_ips', '[\"208.70.247.157\",\"172.255.48.130\",\"172.255.48.131\",\"172.255.48.132\",\"172.255.48.133\",\"172.255.48.134\",\"172.255.48.135\",\"172.255.48.136\",\"172.255.48.137\",\"172.255.48.138\",\"172.255.48.139\",\"172.255.48.140\",\"172.255.48.141\",\"172.255.48.142\",\"172.255.48.143\",\"172.255.48.144\",\"172.255.48.145\",\"172.255.48.146\",\"172.255.48.147\",\"52.229.122.240\",\"104.214.72.101\",\"13.66.7.11\",\"13.85.24.83\",\"13.85.24.90\",\"13.85.82.26\",\"40.74.242.253\",\"40.74.243.13\",\"40.74.243.176\",\"104.214.48.247\",\"157.55.189.189\",\"104.214.110.135\",\"70.37.83.240\",\"65.52.36.250\",\"13.78.216.56\",\"52.162.212.163\",\"23.96.34.105\",\"65.52.113.236\",\"172.255.61.34\",\"172.255.61.35\",\"172.255.61.36\",\"172.255.61.37\",\"172.255.61.38\",\"172.255.61.39\",\"172.255.61.40\",\"104.41.2.19\",\"191.235.98.164\",\"191.235.99.221\",\"191.232.194.51\",\"52.237.235.185\",\"52.237.250.73\",\"52.237.236.145\",\"104.211.143.8\",\"104.211.165.53\",\"52.172.14.87\",\"40.83.89.214\",\"52.175.57.81\",\"20.188.63.151\",\"20.52.36.49\",\"52.246.165.153\",\"51.144.102.233\",\"13.76.97.224\",\"102.133.169.66\",\"52.231.199.170\",\"13.53.162.7\",\"40.123.218.94\"]', 'yes'),
(199, 'litespeed.conf.cache', '1', 'yes'),
(200, 'litespeed.conf.cache-priv', '1', 'yes'),
(201, 'litespeed.conf.cache-commenter', '1', 'yes'),
(202, 'litespeed.conf.cache-rest', '1', 'yes'),
(203, 'litespeed.conf.cache-page_login', '1', 'yes'),
(204, 'litespeed.conf.cache-resources', '1', 'yes'),
(205, 'litespeed.conf.cache-mobile', '', 'yes'),
(206, 'litespeed.conf.cache-mobile_rules', '[\"Mobile\",\"Android\",\"Silk\\/\",\"Kindle\",\"BlackBerry\",\"Opera Mini\",\"Opera Mobi\"]', 'yes'),
(207, 'litespeed.conf.cache-browser', '', 'yes'),
(208, 'litespeed.conf.cache-exc_useragents', '[]', 'yes'),
(209, 'litespeed.conf.cache-exc_cookies', '[]', 'yes'),
(210, 'litespeed.conf.cache-exc_qs', '[]', 'yes'),
(211, 'litespeed.conf.cache-exc_cat', '[]', 'yes'),
(212, 'litespeed.conf.cache-exc_tag', '[]', 'yes'),
(213, 'litespeed.conf.cache-force_uri', '[]', 'yes'),
(214, 'litespeed.conf.cache-force_pub_uri', '[]', 'yes'),
(215, 'litespeed.conf.cache-priv_uri', '[]', 'yes'),
(216, 'litespeed.conf.cache-exc', '[]', 'yes'),
(217, 'litespeed.conf.cache-exc_roles', '[]', 'yes'),
(218, 'litespeed.conf.cache-drop_qs', '[\"fbclid\",\"gclid\",\"utm*\",\"_ga\"]', 'yes'),
(219, 'litespeed.conf.cache-ttl_pub', '604800', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(220, 'litespeed.conf.cache-ttl_priv', '1800', 'yes'),
(221, 'litespeed.conf.cache-ttl_frontpage', '604800', 'yes'),
(222, 'litespeed.conf.cache-ttl_feed', '604800', 'yes'),
(223, 'litespeed.conf.cache-ttl_rest', '604800', 'yes'),
(224, 'litespeed.conf.cache-ttl_browser', '31557600', 'yes'),
(225, 'litespeed.conf.cache-ttl_status', '[\"404 3600\",\"500 600\"]', 'yes'),
(226, 'litespeed.conf.cache-login_cookie', '', 'yes'),
(227, 'litespeed.conf.cache-vary_cookies', '[]', 'yes'),
(228, 'litespeed.conf.cache-vary_group', '[]', 'yes'),
(229, 'litespeed.conf.purge-upgrade', '1', 'yes'),
(230, 'litespeed.conf.purge-stale', '', 'yes'),
(231, 'litespeed.conf.purge-post_all', '', 'yes'),
(232, 'litespeed.conf.purge-post_f', '1', 'yes'),
(233, 'litespeed.conf.purge-post_h', '1', 'yes'),
(234, 'litespeed.conf.purge-post_p', '1', 'yes'),
(235, 'litespeed.conf.purge-post_pwrp', '1', 'yes'),
(236, 'litespeed.conf.purge-post_a', '1', 'yes'),
(237, 'litespeed.conf.purge-post_y', '', 'yes'),
(238, 'litespeed.conf.purge-post_m', '1', 'yes'),
(239, 'litespeed.conf.purge-post_d', '', 'yes'),
(240, 'litespeed.conf.purge-post_t', '1', 'yes'),
(241, 'litespeed.conf.purge-post_pt', '1', 'yes'),
(242, 'litespeed.conf.purge-timed_urls', '[]', 'yes'),
(243, 'litespeed.conf.purge-timed_urls_time', '', 'yes'),
(244, 'litespeed.conf.purge-hook_all', '[\"switch_theme\",\"wp_create_nav_menu\",\"wp_update_nav_menu\",\"wp_delete_nav_menu\",\"create_term\",\"edit_terms\",\"delete_term\",\"add_link\",\"edit_link\",\"delete_link\"]', 'yes'),
(245, 'litespeed.conf.esi', '', 'yes'),
(246, 'litespeed.conf.esi-cache_admbar', '1', 'yes'),
(247, 'litespeed.conf.esi-cache_commform', '1', 'yes'),
(248, 'litespeed.conf.esi-nonce', '[\"stats_nonce\",\"subscribe_nonce\"]', 'yes'),
(249, 'litespeed.conf.util-instant_click', '', 'yes'),
(250, 'litespeed.conf.util-no_https_vary', '', 'yes'),
(251, 'litespeed.conf.debug-disable_all', '', 'yes'),
(252, 'litespeed.conf.debug', '', 'yes'),
(253, 'litespeed.conf.debug-ips', '[\"127.0.0.1\"]', 'yes'),
(254, 'litespeed.conf.debug-level', '', 'yes'),
(255, 'litespeed.conf.debug-filesize', '3', 'yes'),
(256, 'litespeed.conf.debug-cookie', '', 'yes'),
(257, 'litespeed.conf.debug-collaps_qs', '', 'yes'),
(258, 'litespeed.conf.debug-inc', '[]', 'yes'),
(259, 'litespeed.conf.debug-exc', '[]', 'yes'),
(260, 'litespeed.conf.debug-exc_strings', '[]', 'yes'),
(261, 'litespeed.conf.db_optm-revisions_max', '0', 'yes'),
(262, 'litespeed.conf.db_optm-revisions_age', '0', 'yes'),
(263, 'litespeed.conf.optm-css_min', '', 'yes'),
(264, 'litespeed.conf.optm-css_comb', '', 'yes'),
(265, 'litespeed.conf.optm-css_comb_ext_inl', '1', 'yes'),
(266, 'litespeed.conf.optm-ucss', '', 'yes'),
(267, 'litespeed.conf.optm-ucss_inline', '', 'yes'),
(268, 'litespeed.conf.optm-ucss_whitelist', '[]', 'yes'),
(269, 'litespeed.conf.optm-ucss_file_exc_inline', '[]', 'yes'),
(270, 'litespeed.conf.optm-ucss_exc', '[]', 'yes'),
(271, 'litespeed.conf.optm-css_exc', '[]', 'yes'),
(272, 'litespeed.conf.optm-js_min', '', 'yes'),
(273, 'litespeed.conf.optm-js_comb', '', 'yes'),
(274, 'litespeed.conf.optm-js_comb_ext_inl', '1', 'yes'),
(275, 'litespeed.conf.optm-js_delay_inc', '[]', 'yes'),
(276, 'litespeed.conf.optm-js_exc', '[\"jquery.js\",\"jquery.min.js\"]', 'yes'),
(277, 'litespeed.conf.optm-html_min', '', 'yes'),
(278, 'litespeed.conf.optm-html_lazy', '[]', 'yes'),
(279, 'litespeed.conf.optm-qs_rm', '', 'yes'),
(280, 'litespeed.conf.optm-ggfonts_rm', '', 'yes'),
(281, 'litespeed.conf.optm-css_async', '', 'yes'),
(282, 'litespeed.conf.optm-ccss_per_url', '', 'yes'),
(283, 'litespeed.conf.optm-ccss_sep_posttype', '[\"page\"]', 'yes'),
(284, 'litespeed.conf.optm-ccss_sep_uri', '[]', 'yes'),
(285, 'litespeed.conf.optm-css_async_inline', '1', 'yes'),
(286, 'litespeed.conf.optm-css_font_display', '', 'yes'),
(287, 'litespeed.conf.optm-js_defer', '', 'yes'),
(288, 'litespeed.conf.optm-emoji_rm', '', 'yes'),
(289, 'litespeed.conf.optm-noscript_rm', '', 'yes'),
(290, 'litespeed.conf.optm-ggfonts_async', '', 'yes'),
(291, 'litespeed.conf.optm-exc_roles', '[]', 'yes'),
(292, 'litespeed.conf.optm-ccss_con', '', 'yes'),
(293, 'litespeed.conf.optm-js_defer_exc', '[\"jquery.js\",\"jquery.min.js\",\"gtm.js\",\"analytics.js\"]', 'yes'),
(294, 'litespeed.conf.optm-gm_js_exc', '[]', 'yes'),
(295, 'litespeed.conf.optm-dns_prefetch', '[]', 'yes'),
(296, 'litespeed.conf.optm-dns_prefetch_ctrl', '', 'yes'),
(297, 'litespeed.conf.optm-dns_preconnect', '[]', 'yes'),
(298, 'litespeed.conf.optm-exc', '[]', 'yes'),
(299, 'litespeed.conf.optm-guest_only', '1', 'yes'),
(300, 'litespeed.conf.object', '', 'yes'),
(301, 'litespeed.conf.object-kind', '', 'yes'),
(302, 'litespeed.conf.object-host', 'localhost', 'yes'),
(303, 'litespeed.conf.object-port', '11211', 'yes'),
(304, 'litespeed.conf.object-life', '360', 'yes'),
(305, 'litespeed.conf.object-persistent', '1', 'yes'),
(306, 'litespeed.conf.object-admin', '1', 'yes'),
(307, 'litespeed.conf.object-transients', '1', 'yes'),
(308, 'litespeed.conf.object-db_id', '0', 'yes'),
(309, 'litespeed.conf.object-user', '', 'yes'),
(310, 'litespeed.conf.object-pswd', '', 'yes'),
(311, 'litespeed.conf.object-global_groups', '[\"users\",\"userlogins\",\"useremail\",\"userslugs\",\"usermeta\",\"user_meta\",\"site-transient\",\"site-options\",\"site-lookup\",\"site-details\",\"blog-lookup\",\"blog-details\",\"blog-id-cache\",\"rss\",\"global-posts\",\"global-cache-test\"]', 'yes'),
(312, 'litespeed.conf.object-non_persistent_groups', '[\"comment\",\"counts\",\"plugins\",\"wc_session_id\"]', 'yes'),
(313, 'litespeed.conf.discuss-avatar_cache', '', 'yes'),
(314, 'litespeed.conf.discuss-avatar_cron', '', 'yes'),
(315, 'litespeed.conf.discuss-avatar_cache_ttl', '604800', 'yes'),
(316, 'litespeed.conf.optm-localize', '', 'yes'),
(317, 'litespeed.conf.optm-localize_domains', '[\"### Popular scripts ###\",\"https:\\/\\/platform.twitter.com\\/widgets.js\",\"https:\\/\\/connect.facebook.net\\/en_US\\/fbevents.js\"]', 'yes'),
(318, 'litespeed.conf.media-lazy', '', 'yes'),
(319, 'litespeed.conf.media-lazy_placeholder', '', 'yes'),
(320, 'litespeed.conf.media-placeholder_resp', '', 'yes'),
(321, 'litespeed.conf.media-placeholder_resp_color', '#cfd4db', 'yes'),
(322, 'litespeed.conf.media-placeholder_resp_svg', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"{width}\" height=\"{height}\" viewBox=\"0 0 {width} {height}\"><rect width=\"100%\" height=\"100%\" style=\"fill:{color};fill-opacity: 0.1;\"/></svg>', 'yes'),
(323, 'litespeed.conf.media-lqip', '', 'yes'),
(324, 'litespeed.conf.media-lqip_qual', '4', 'yes'),
(325, 'litespeed.conf.media-lqip_min_w', '150', 'yes'),
(326, 'litespeed.conf.media-lqip_min_h', '150', 'yes'),
(327, 'litespeed.conf.media-placeholder_resp_async', '1', 'yes'),
(328, 'litespeed.conf.media-iframe_lazy', '', 'yes'),
(329, 'litespeed.conf.media-add_missing_sizes', '', 'yes'),
(330, 'litespeed.conf.media-lazy_exc', '[]', 'yes'),
(331, 'litespeed.conf.media-lazy_cls_exc', '[\"wmu-preview-img\"]', 'yes'),
(332, 'litespeed.conf.media-lazy_parent_cls_exc', '[]', 'yes'),
(333, 'litespeed.conf.media-iframe_lazy_cls_exc', '[]', 'yes'),
(334, 'litespeed.conf.media-iframe_lazy_parent_cls_exc', '[]', 'yes'),
(335, 'litespeed.conf.media-lazy_uri_exc', '[]', 'yes'),
(336, 'litespeed.conf.media-lqip_exc', '[]', 'yes'),
(337, 'litespeed.conf.media-vpi', '', 'yes'),
(338, 'litespeed.conf.media-vpi_cron', '', 'yes'),
(339, 'litespeed.conf.img_optm-auto', '', 'yes'),
(340, 'litespeed.conf.img_optm-cron', '1', 'yes'),
(341, 'litespeed.conf.img_optm-ori', '1', 'yes'),
(342, 'litespeed.conf.img_optm-rm_bkup', '', 'yes'),
(343, 'litespeed.conf.img_optm-webp', '', 'yes'),
(344, 'litespeed.conf.img_optm-lossless', '', 'yes'),
(345, 'litespeed.conf.img_optm-exif', '1', 'yes'),
(346, 'litespeed.conf.img_optm-webp_attr', '[\"img.src\",\"div.data-thumb\",\"img.data-src\",\"img.data-lazyload\",\"div.data-large_image\",\"img.retina_logo_url\",\"div.data-parallax-image\",\"div.data-vc-parallax-image\",\"video.poster\"]', 'yes'),
(347, 'litespeed.conf.img_optm-webp_replace_srcset', '', 'yes'),
(348, 'litespeed.conf.img_optm-jpg_quality', '82', 'yes'),
(349, 'litespeed.conf.crawler', '', 'yes'),
(350, 'litespeed.conf.crawler-usleep', '500', 'yes'),
(351, 'litespeed.conf.crawler-run_duration', '400', 'yes'),
(352, 'litespeed.conf.crawler-run_interval', '600', 'yes'),
(353, 'litespeed.conf.crawler-crawl_interval', '302400', 'yes'),
(354, 'litespeed.conf.crawler-threads', '3', 'yes'),
(355, 'litespeed.conf.crawler-timeout', '30', 'yes'),
(356, 'litespeed.conf.crawler-load_limit', '1', 'yes'),
(357, 'litespeed.conf.crawler-sitemap', '', 'yes'),
(358, 'litespeed.conf.crawler-drop_domain', '1', 'yes'),
(359, 'litespeed.conf.crawler-map_timeout', '120', 'yes'),
(360, 'litespeed.conf.crawler-roles', '[]', 'yes'),
(361, 'litespeed.conf.crawler-cookies', '[]', 'yes'),
(362, 'litespeed.conf.misc-heartbeat_front', '', 'yes'),
(363, 'litespeed.conf.misc-heartbeat_front_ttl', '60', 'yes'),
(364, 'litespeed.conf.misc-heartbeat_back', '', 'yes'),
(365, 'litespeed.conf.misc-heartbeat_back_ttl', '60', 'yes'),
(366, 'litespeed.conf.misc-heartbeat_editor', '', 'yes'),
(367, 'litespeed.conf.misc-heartbeat_editor_ttl', '15', 'yes'),
(368, 'litespeed.conf.cdn', '', 'yes'),
(369, 'litespeed.conf.cdn-ori', '[]', 'yes'),
(370, 'litespeed.conf.cdn-ori_dir', '[\"wp-content\",\"wp-includes\"]', 'yes'),
(371, 'litespeed.conf.cdn-exc', '[]', 'yes'),
(372, 'litespeed.conf.cdn-quic', '', 'yes'),
(373, 'litespeed.conf.cdn-cloudflare', '', 'yes'),
(374, 'litespeed.conf.cdn-cloudflare_email', '', 'yes'),
(375, 'litespeed.conf.cdn-cloudflare_key', '', 'yes'),
(376, 'litespeed.conf.cdn-cloudflare_name', '', 'yes'),
(377, 'litespeed.conf.cdn-cloudflare_zone', '', 'yes'),
(378, 'litespeed.conf.cdn-mapping', '[{\"url\":\"\",\"inc_img\":\"1\",\"inc_css\":\"1\",\"inc_js\":\"1\",\"filetype\":[\".aac\",\".css\",\".eot\",\".gif\",\".jpeg\",\".jpg\",\".js\",\".less\",\".mp3\",\".mp4\",\".ogg\",\".otf\",\".pdf\",\".png\",\".svg\",\".ttf\",\".webp\",\".woff\",\".woff2\"]}]', 'yes'),
(379, 'litespeed.conf.cdn-attr', '[\".src\",\".data-src\",\".href\",\".poster\",\"source.srcset\"]', 'yes'),
(380, 'litespeed.conf.qc-token', '', 'yes'),
(381, 'litespeed.conf.qc-nameservers', '', 'yes'),
(383, 'litespeed.gui.lscwp_whm_install', '-1', 'yes'),
(384, 'litespeed.gui.dismiss', '-1', 'yes'),
(385, 'litespeed.gui._summary', '{\"new_version\":1721239376,\"score\":1721844176}', 'yes'),
(386, 'litespeed.data.upgrading', '-1', 'yes'),
(387, 'litespeed.admin_display.messages', '[\"<div class=\\\"litespeed_icon notice notice-success is-dismissible\\\"><p>Purged all caches successfully.<\\/p><\\/div>\"]', 'yes'),
(395, 'auth_key', ' }n.$HFDfo&4U9ONJ${(CAQ!SN)>z8)Id>o]S}~wYv]b$0PviNVCF_Q<]|tf9b12', 'no'),
(396, 'auth_salt', 'L9REg68|jOS-^ K-c<rMauP-1-0F^0n=1o8TRmS)n:8{fdQD*18[RLYSJx ,nLo(', 'no'),
(404, 'WPLANG', '', 'yes'),
(405, 'new_admin_email', 'test.infokeyinnovations@gmail.com', 'yes'),
(411, 'litespeed.optimize.timestamp_purge_css', '1730412121', 'yes'),
(439, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'off'),
(563, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":5,\"critical\":1}', 'yes'),
(986, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:33:\"test.infokeyinnovations@gmail.com\";s:7:\"version\";s:5:\"6.7.1\";s:9:\"timestamp\";i:1732223500;}', 'off'),
(2364, 'litespeed.conf.cache-ajax_ttl', '[]', 'auto'),
(2365, 'litespeed.conf.debug-collapse_qs', '', 'auto'),
(2366, 'litespeed.conf.optm-html_skip_comment', '[]', 'auto'),
(6873, 'litespeed.conf._version', '6.5.2', 'auto'),
(7693, 'db_upgraded', '', 'on'),
(7701, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"8c7d46a72d7d4591fc1dd9485bedb304\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(8270, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.7.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.1\";s:7:\"version\";s:5:\"6.7.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1734339468;s:15:\"version_checked\";s:5:\"6.7.1\";s:12:\"translations\";a:0:{}}', 'off'),
(9389, 'category_children', 'a:0:{}', 'auto'),
(9721, '_site_transient_timeout_php_check_609c1a82457d7fea842997453a6bb9d6', '1734603218', 'off'),
(9722, '_site_transient_php_check_609c1a82457d7fea842997453a6bb9d6', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(9964, '_site_transient_timeout_theme_roots', '1734341269', 'off'),
(9965, '_site_transient_theme_roots', 'a:5:{s:11:\"quro-custom\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'off'),
(9966, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1734339469;s:7:\"checked\";a:5:{s:11:\"quro-custom\";s:3:\"1.0\";s:16:\"twentytwentyfive\";s:3:\"1.0\";s:16:\"twentytwentyfour\";s:3:\"1.1\";s:17:\"twentytwentythree\";s:3:\"1.4\";s:15:\"twentytwentytwo\";s:3:\"1.7\";}s:8:\"response\";a:3:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.9.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:1:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.0.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}}s:12:\"translations\";a:0:{}}', 'off'),
(9967, '_site_transient_timeout_wp_theme_files_patterns-0419632cb7cfa10d127a080baf2be16a', '1734341269', 'off'),
(9968, '_site_transient_wp_theme_files_patterns-0419632cb7cfa10d127a080baf2be16a', 'a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}', 'off'),
(9969, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1734339469;s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.7.1\";s:12:\"requires_php\";s:6:\"5.6.20\";s:16:\"requires_plugins\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"6.7.1\";s:12:\"requires_php\";s:5:\"5.2.4\";s:16:\"requires_plugins\";a:0:{}}s:35:\"litespeed-cache/litespeed-cache.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:29:\"w.org/plugins/litespeed-cache\";s:4:\"slug\";s:15:\"litespeed-cache\";s:6:\"plugin\";s:35:\"litespeed-cache/litespeed-cache.php\";s:11:\"new_version\";s:5:\"6.5.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/litespeed-cache/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/litespeed-cache.6.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-256x256.png?rev=2554181\";s:2:\"1x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-128x128.png?rev=2554181\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/litespeed-cache/assets/banner-1544x500.png?rev=2554181\";s:2:\"1x\";s:70:\"https://ps.w.org/litespeed-cache/assets/banner-772x250.png?rev=2554181\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"6.7.1\";s:12:\"requires_php\";b:0;s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"5.3.2\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:35:\"litespeed-cache/litespeed-cache.php\";s:5:\"6.5.2\";}}', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 2, '_edit_lock', '1720638438:1'),
(5, 7, '_wp_attached_file', '2024/07/logo.png'),
(6, 7, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:180;s:6:\"height\";i:60;s:4:\"file\";s:16:\"2024/07/logo.png\";s:8:\"filesize\";i:6259;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"logo-150x60.png\";s:5:\"width\";i:150;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5514;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 8, '_wp_attached_file', '2024/07/logo-1.png'),
(8, 8, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:180;s:6:\"height\";i:60;s:4:\"file\";s:18:\"2024/07/logo-1.png\";s:8:\"filesize\";i:6259;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"logo-1-150x60.png\";s:5:\"width\";i:150;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5514;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 9, '_wp_attached_file', '2024/07/cropped-logo-1.png'),
(10, 9, '_wp_attachment_context', 'site-icon'),
(11, 9, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:26:\"2024/07/cropped-logo-1.png\";s:8:\"filesize\";i:60143;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"cropped-logo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:30846;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"cropped-logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12066;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:26:\"cropped-logo-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:26556;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:26:\"cropped-logo-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16777;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:26:\"cropped-logo-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15188;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:24:\"cropped-logo-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1481;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 10, '_wp_attached_file', '2024/07/cropped-logo-1-1.png'),
(13, 10, '_wp_attachment_context', 'site-icon'),
(14, 10, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:28:\"2024/07/cropped-logo-1-1.png\";s:8:\"filesize\";i:60143;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"cropped-logo-1-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:30846;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"cropped-logo-1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12066;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:28:\"cropped-logo-1-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:26556;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:28:\"cropped-logo-1-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16777;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:28:\"cropped-logo-1-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15188;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:26:\"cropped-logo-1-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1481;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 11, '_wp_attached_file', '2024/07/Quro-fabicon-300x300-1.png'),
(16, 11, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:34:\"2024/07/Quro-fabicon-300x300-1.png\";s:8:\"filesize\";i:19637;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"Quro-fabicon-300x300-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8887;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 12, '_wp_attached_file', '2024/07/cropped-Quro-fabicon-300x300-1.png'),
(18, 12, '_wp_attachment_context', 'site-icon'),
(19, 12, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:42:\"2024/07/cropped-Quro-fabicon-300x300-1.png\";s:8:\"filesize\";i:49444;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:42:\"cropped-Quro-fabicon-300x300-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23363;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:42:\"cropped-Quro-fabicon-300x300-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9241;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:42:\"cropped-Quro-fabicon-300x300-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:20801;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:42:\"cropped-Quro-fabicon-300x300-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12898;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:42:\"cropped-Quro-fabicon-300x300-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11873;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:40:\"cropped-Quro-fabicon-300x300-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1440;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 17, '_edit_lock', '1720637856:1'),
(45, 17, '_edit_last', '1'),
(46, 19, '_edit_lock', '1720637872:1'),
(47, 19, '_edit_last', '1'),
(48, 21, '_edit_lock', '1720637886:1'),
(49, 21, '_edit_last', '1'),
(50, 23, '_edit_lock', '1720637903:1'),
(51, 23, '_edit_last', '1'),
(52, 25, '_edit_lock', '1720637919:1'),
(53, 25, '_edit_last', '1'),
(54, 27, '_edit_lock', '1721022995:1'),
(55, 27, '_edit_last', '1'),
(56, 29, '_edit_lock', '1720941447:1'),
(57, 29, '_edit_last', '1'),
(58, 12, '_oembed_deee861276dbb70b637f284f6f0035e4', '{{unknown}}'),
(59, 31, '_edit_lock', '1720637850:1'),
(60, 33, '_edit_lock', '1720637859:1'),
(61, 35, '_edit_lock', '1720637868:1'),
(62, 37, '_edit_lock', '1720637883:1'),
(63, 39, '_edit_lock', '1720637897:1'),
(91, 2, '_edit_last', '1'),
(92, 44, '_menu_item_type', 'custom'),
(93, 44, '_menu_item_menu_item_parent', '0'),
(94, 44, '_menu_item_object_id', '44'),
(95, 44, '_menu_item_object', 'custom'),
(96, 44, '_menu_item_target', ''),
(97, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 44, '_menu_item_xfn', ''),
(99, 44, '_menu_item_url', 'https://demo.qurolabs.com/'),
(101, 45, '_menu_item_type', 'post_type'),
(102, 45, '_menu_item_menu_item_parent', '44'),
(103, 45, '_menu_item_object_id', '2'),
(104, 45, '_menu_item_object', 'page'),
(105, 45, '_menu_item_target', ''),
(106, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(107, 45, '_menu_item_xfn', ''),
(108, 45, '_menu_item_url', ''),
(112, 48, '_wp_attached_file', '2024/07/industrial-automation.jpeg'),
(113, 48, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:34:\"2024/07/industrial-automation.jpeg\";s:8:\"filesize\";i:11039;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"industrial-automation-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7122;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 49, '_wp_attached_file', '2024/07/machine-vision.webp'),
(115, 49, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:950;s:6:\"height\";i:633;s:4:\"file\";s:27:\"2024/07/machine-vision.webp\";s:8:\"filesize\";i:65428;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"machine-vision-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:13596;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"machine-vision-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6934;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"machine-vision-768x512.webp\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:42804;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-07-10 08:49:58', '2024-07-10 08:49:58', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2024-07-10 08:49:58', '2024-07-10 08:49:58', '', 0, 'https://demo.qurolabs.com/?p=1', 0, 'post', '', 1),
(2, 1, '2024-07-10 08:49:58', '2024-07-10 08:49:58', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://demo.qurolabs.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'closed', '', 'sample-page', '', '', '2024-07-10 19:07:18', '2024-07-10 19:07:18', '', 0, 'https://demo.qurolabs.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2024-07-10 08:49:58', '2024-07-10 08:49:58', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://demo.qurolabs.com.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2024-07-10 19:06:42', '2024-07-10 19:06:42', '', 0, 'https://demo.qurolabs.com/?page_id=3', 0, 'page', '', 0),
(4, 0, '2024-07-10 08:49:58', '2024-07-10 08:49:58', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-07-10 08:49:58', '2024-07-10 08:49:58', '', 0, 'https://demo.qurolabs.com/2024/07/10/navigation/', 0, 'wp_navigation', '', 0),
(7, 1, '2024-07-10 18:12:40', '2024-07-10 18:12:40', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2024-07-10 18:12:40', '2024-07-10 18:12:40', '', 0, 'https://demo.qurolabs.com/wp-content/uploads/2024/07/logo.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2024-07-10 18:43:14', '2024-07-10 18:43:14', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2024-07-10 18:43:14', '2024-07-10 18:43:14', '', 0, 'https://demo.qurolabs.com/wp-content/uploads/2024/07/logo-1.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2024-07-10 18:43:26', '2024-07-10 18:43:26', 'https://demo.qurolabs.com/wp-content/uploads/2024/07/cropped-logo-1.png', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-3', '', '', '2024-07-10 18:43:26', '2024-07-10 18:43:26', '', 8, 'https://demo.qurolabs.com/wp-content/uploads/2024/07/cropped-logo-1.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2024-07-10 18:44:24', '2024-07-10 18:44:24', 'https://demo.qurolabs.com/wp-content/uploads/2024/07/cropped-logo-1-1.png', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-4', '', '', '2024-07-10 18:44:24', '2024-07-10 18:44:24', '', 8, 'https://demo.qurolabs.com/wp-content/uploads/2024/07/cropped-logo-1-1.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2024-07-10 18:46:17', '2024-07-10 18:46:17', '', 'Quro-fabicon-300x300', '', 'inherit', 'open', 'closed', '', 'quro-fabicon-300x300', '', '', '2024-07-10 18:46:17', '2024-07-10 18:46:17', '', 0, 'https://demo.qurolabs.com/wp-content/uploads/2024/07/Quro-fabicon-300x300-1.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2024-07-10 18:46:22', '2024-07-10 18:46:22', 'https://demo.qurolabs.com/wp-content/uploads/2024/07/cropped-Quro-fabicon-300x300-1.png', 'Quro-fabicon-300x300', '', 'inherit', 'open', 'closed', '', 'quro-fabicon-300x300-2', '', '', '2024-07-10 18:46:22', '2024-07-10 18:46:22', '', 11, 'https://demo.qurolabs.com/wp-content/uploads/2024/07/cropped-Quro-fabicon-300x300-1.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2024-07-10 18:56:38', '2024-07-10 18:56:38', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://demo.qurolabs.com.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2024-07-10 18:56:38', '2024-07-10 18:56:38', '', 3, 'https://demo.qurolabs.com/?p=15', 0, 'revision', '', 0),
(16, 1, '2024-07-10 18:56:38', '2024-07-10 18:56:38', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://demo.qurolabs.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2024-07-10 18:56:38', '2024-07-10 18:56:38', '', 2, 'https://demo.qurolabs.com/?p=16', 0, 'revision', '', 0),
(17, 1, '2024-07-10 18:57:35', '2024-07-10 18:57:35', '', 'Intralogistics', '', 'publish', 'closed', 'closed', '', 'intralogistics', '', '', '2024-07-10 18:57:35', '2024-07-10 18:57:35', '', 0, 'https://demo.qurolabs.com/?page_id=17', 0, 'page', '', 0),
(18, 1, '2024-07-10 18:57:35', '2024-07-10 18:57:35', '', 'Intralogistics', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2024-07-10 18:57:35', '2024-07-10 18:57:35', '', 17, 'https://demo.qurolabs.com/?p=18', 0, 'revision', '', 0),
(19, 1, '2024-07-10 18:57:51', '2024-07-10 18:57:51', '', 'Vision Solution', '', 'publish', 'closed', 'closed', '', 'vision-solution', '', '', '2024-07-10 18:57:51', '2024-07-10 18:57:51', '', 0, 'https://demo.qurolabs.com/?page_id=19', 0, 'page', '', 0),
(20, 1, '2024-07-10 18:57:51', '2024-07-10 18:57:51', '', 'Vision Solution', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2024-07-10 18:57:51', '2024-07-10 18:57:51', '', 19, 'https://demo.qurolabs.com/?p=20', 0, 'revision', '', 0),
(21, 1, '2024-07-10 18:58:05', '2024-07-10 18:58:05', '', 'IOT &amp; IIOT', '', 'publish', 'closed', 'closed', '', 'iot-iiot', '', '', '2024-07-10 18:58:05', '2024-07-10 18:58:05', '', 0, 'https://demo.qurolabs.com/?page_id=21', 0, 'page', '', 0),
(22, 1, '2024-07-10 18:58:05', '2024-07-10 18:58:05', '', 'IOT &amp; IIOT', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2024-07-10 18:58:05', '2024-07-10 18:58:05', '', 21, 'https://demo.qurolabs.com/?p=22', 0, 'revision', '', 0),
(23, 1, '2024-07-10 18:58:22', '2024-07-10 18:58:22', '', 'Product Development', '', 'publish', 'closed', 'closed', '', 'product-development', '', '', '2024-07-10 18:58:22', '2024-07-10 18:58:22', '', 0, 'https://demo.qurolabs.com/?page_id=23', 0, 'page', '', 0),
(24, 1, '2024-07-10 18:58:22', '2024-07-10 18:58:22', '', 'Product Development', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2024-07-10 18:58:22', '2024-07-10 18:58:22', '', 23, 'https://demo.qurolabs.com/?p=24', 0, 'revision', '', 0),
(25, 1, '2024-07-10 18:58:38', '2024-07-10 18:58:38', '', 'Manufacturing', '', 'publish', 'closed', 'closed', '', 'manufacturing', '', '', '2024-07-10 18:58:39', '2024-07-10 18:58:39', '', 0, 'https://demo.qurolabs.com/?page_id=25', 0, 'page', '', 0),
(26, 1, '2024-07-10 18:58:38', '2024-07-10 18:58:38', '', 'Manufacturing', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2024-07-10 18:58:38', '2024-07-10 18:58:38', '', 25, 'https://demo.qurolabs.com/?p=26', 0, 'revision', '', 0),
(27, 1, '2024-07-10 18:58:55', '2024-07-10 18:58:55', '<p style=\"text-align: left;\"><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<img class=\"alignnone size-full wp-image-48\" src=\"https://demo.qurolabs.com/wp-content/uploads/2024/07/industrial-automation.jpeg\" alt=\"\" width=\"300\" height=\"168\" />\r\n\r\n&nbsp;\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n<img class=\"alignnone size-medium wp-image-49\" src=\"https://demo.qurolabs.com/wp-content/uploads/2024/07/machine-vision-300x200.webp\" alt=\"\" width=\"300\" height=\"200\" />', 'What is AVG?', '', 'publish', 'closed', 'closed', '', 'avg', '', '', '2024-07-14 07:34:52', '2024-07-14 07:34:52', '', 0, 'https://demo.qurolabs.com/?page_id=27', 0, 'page', '', 0),
(28, 1, '2024-07-10 18:58:55', '2024-07-10 18:58:55', '', 'AVG', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2024-07-10 18:58:55', '2024-07-10 18:58:55', '', 27, 'https://demo.qurolabs.com/?p=28', 0, 'revision', '', 0),
(29, 1, '2024-07-10 18:59:08', '2024-07-10 18:59:08', '', 'AMR', '', 'publish', 'closed', 'closed', '', 'amr', '', '', '2024-07-14 07:16:23', '2024-07-14 07:16:23', '', 0, 'https://demo.qurolabs.com/?page_id=29', 0, 'page', '', 0),
(30, 1, '2024-07-10 18:59:08', '2024-07-10 18:59:08', '', 'AMR', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2024-07-10 18:59:08', '2024-07-10 18:59:08', '', 29, 'https://demo.qurolabs.com/?p=30', 0, 'revision', '', 0),
(31, 1, '2024-07-10 18:59:48', '2024-07-10 18:59:48', '', 'Conveyors', '', 'publish', 'closed', 'closed', '', 'conveyors', '', '', '2024-07-10 18:59:48', '2024-07-10 18:59:48', '', 0, 'https://demo.qurolabs.com/?page_id=31', 0, 'page', '', 0),
(32, 1, '2024-07-10 18:59:48', '2024-07-10 18:59:48', '', 'Conveyors', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2024-07-10 18:59:48', '2024-07-10 18:59:48', '', 31, 'https://demo.qurolabs.com/?p=32', 0, 'revision', '', 0),
(33, 1, '2024-07-10 19:00:02', '2024-07-10 19:00:02', '', 'Cobots', '', 'publish', 'closed', 'closed', '', 'cobots', '', '', '2024-07-10 19:00:02', '2024-07-10 19:00:02', '', 0, 'https://demo.qurolabs.com/?page_id=33', 0, 'page', '', 0),
(34, 1, '2024-07-10 19:00:02', '2024-07-10 19:00:02', '', 'Cobots', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2024-07-10 19:00:02', '2024-07-10 19:00:02', '', 33, 'https://demo.qurolabs.com/?p=34', 0, 'revision', '', 0),
(35, 1, '2024-07-10 19:00:11', '2024-07-10 19:00:11', '', 'Robots', '', 'publish', 'closed', 'closed', '', 'robots', '', '', '2024-07-10 19:00:11', '2024-07-10 19:00:11', '', 0, 'https://demo.qurolabs.com/?page_id=35', 0, 'page', '', 0),
(36, 1, '2024-07-10 19:00:11', '2024-07-10 19:00:11', '', 'Robots', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2024-07-10 19:00:11', '2024-07-10 19:00:11', '', 35, 'https://demo.qurolabs.com/?p=36', 0, 'revision', '', 0),
(37, 1, '2024-07-10 19:00:25', '2024-07-10 19:00:25', '', 'Pallet Trucks', '', 'publish', 'closed', 'closed', '', 'pallet-trucks', '', '', '2024-07-10 19:00:25', '2024-07-10 19:00:25', '', 0, 'https://demo.qurolabs.com/?page_id=37', 0, 'page', '', 0),
(38, 1, '2024-07-10 19:00:25', '2024-07-10 19:00:25', '', 'Pallet Trucks', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2024-07-10 19:00:25', '2024-07-10 19:00:25', '', 37, 'https://demo.qurolabs.com/?p=38', 0, 'revision', '', 0),
(39, 1, '2024-07-10 19:00:39', '2024-07-10 19:00:39', '', 'Stackers', '', 'publish', 'closed', 'closed', '', 'stackers', '', '', '2024-07-10 19:00:39', '2024-07-10 19:00:39', '', 0, 'https://demo.qurolabs.com/?page_id=39', 0, 'page', '', 0),
(40, 1, '2024-07-10 19:00:39', '2024-07-10 19:00:39', '', 'Stackers', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2024-07-10 19:00:39', '2024-07-10 19:00:39', '', 39, 'https://demo.qurolabs.com/?p=40', 0, 'revision', '', 0),
(44, 1, '2024-07-10 19:35:20', '2024-07-10 19:07:34', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2024-07-10 19:35:20', '2024-07-10 19:35:20', '', 0, 'https://demo.qurolabs.com/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2024-07-10 19:35:20', '2024-07-10 19:07:34', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2024-07-10 19:35:20', '2024-07-10 19:35:20', '', 0, 'https://demo.qurolabs.com/?p=45', 2, 'nav_menu_item', '', 0),
(48, 1, '2024-07-14 07:22:53', '2024-07-14 07:22:53', '', 'industrial-automation', '', 'inherit', 'open', 'closed', '', 'industrial-automation', '', '', '2024-07-14 07:22:53', '2024-07-14 07:22:53', '', 27, 'https://demo.qurolabs.com/wp-content/uploads/2024/07/industrial-automation.jpeg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2024-07-14 07:23:35', '2024-07-14 07:23:35', '', 'machine-vision', '', 'inherit', 'open', 'closed', '', 'machine-vision', '', '', '2024-07-14 07:23:35', '2024-07-14 07:23:35', '', 27, 'https://demo.qurolabs.com/wp-content/uploads/2024/07/machine-vision.webp', 0, 'attachment', 'image/webp', 0),
(50, 1, '2024-07-14 07:23:47', '2024-07-14 07:23:47', '<h2>What is Lorem Ipsum?</h2>\r\n<p style=\"text-align: left;\"><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<img class=\"alignnone size-full wp-image-48\" src=\"https://demo.qurolabs.com/wp-content/uploads/2024/07/industrial-automation.jpeg\" alt=\"\" width=\"300\" height=\"168\" />\r\n\r\n&nbsp;\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n<img class=\"alignnone size-medium wp-image-49\" src=\"https://demo.qurolabs.com/wp-content/uploads/2024/07/machine-vision-300x200.webp\" alt=\"\" width=\"300\" height=\"200\" />', 'AVG', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2024-07-14 07:23:47', '2024-07-14 07:23:47', '', 27, 'https://demo.qurolabs.com/?p=50', 0, 'revision', '', 0),
(51, 1, '2024-07-14 07:34:52', '2024-07-14 07:34:52', '<p style=\"text-align: left;\"><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<img class=\"alignnone size-full wp-image-48\" src=\"https://demo.qurolabs.com/wp-content/uploads/2024/07/industrial-automation.jpeg\" alt=\"\" width=\"300\" height=\"168\" />\r\n\r\n&nbsp;\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n<img class=\"alignnone size-medium wp-image-49\" src=\"https://demo.qurolabs.com/wp-content/uploads/2024/07/machine-vision-300x200.webp\" alt=\"\" width=\"300\" height=\"200\" />', 'What is AVG?', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2024-07-14 07:34:52', '2024-07-14 07:34:52', '', 27, 'https://demo.qurolabs.com/?p=51', 0, 'revision', '', 0),
(52, 1, '2024-07-15 05:56:52', '2024-07-15 05:56:52', '<p style=\"text-align: left;\"><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<img class=\"alignnone size-full wp-image-48\" src=\"https://demo.qurolabs.com/wp-content/uploads/2024/07/industrial-automation.jpeg\" alt=\"\" width=\"300\" height=\"168\" />\n\n&nbsp;\n\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n<img class=\"alignnone size-medium wp-image-49\" src=\"https://demo.qurolabs.com/wp-content/uploads/2024/07/machine-vision-300x200.webp\" alt=\"\" width=\"300\" height=\"200\" />', 'What is AVG?', '', 'inherit', 'closed', 'closed', '', '27-autosave-v1', '', '', '2024-07-15 05:56:52', '2024-07-15 05:56:52', '', 27, 'https://demo.qurolabs.com/?p=52', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary Menu', 'primary-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(44, 2, 0),
(45, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&hidetb=0&post_dfw=off'),
(18, 1, 'wp_user-settings-time', '1720942288'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '53'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"45.117.206.0\";}'),
(21, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:0;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-07-10T18:59:25.060Z\";}'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'session_tokens', 'a:1:{s:64:\"f527e8588f99ece1f90693d2911c34a3606b8da4e13dce59a0f6a4589981a455\";a:4:{s:10:\"expiration\";i:1732124997;s:2:\"ip\";s:12:\"34.75.65.218\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36\";s:5:\"login\";i:1731952197;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bcnf94hPG3Ni6TKwDlgRtOiMChLPpH/', 'admin', 'test.infokeyinnovations@gmail.com', 'https://demo.qurolabs.com', '2024-07-10 08:49:58', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_litespeed_url`
--
ALTER TABLE `wp_litespeed_url`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`(191)),
  ADD KEY `cache_tags` (`cache_tags`(191));

--
-- Indexes for table `wp_litespeed_url_file`
--
ALTER TABLE `wp_litespeed_url_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filename` (`filename`),
  ADD KEY `type` (`type`),
  ADD KEY `url_id_2` (`url_id`,`vary`,`type`),
  ADD KEY `filename_2` (`filename`,`expired`),
  ADD KEY `url_id` (`url_id`,`expired`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_litespeed_url`
--
ALTER TABLE `wp_litespeed_url`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_litespeed_url_file`
--
ALTER TABLE `wp_litespeed_url_file`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9970;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
