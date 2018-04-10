-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 10, 2018 at 10:23 AM
-- Server version: 5.5.59-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inetbees_ncc`
--

-- --------------------------------------------------------

--
-- Table structure for table `ncc_commentmeta`
--

CREATE TABLE `ncc_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ncc_comments`
--

CREATE TABLE `ncc_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ncc_comments`
--

INSERT INTO `ncc_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-03-25 08:24:11', '2018-03-25 08:24:11', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ncc_links`
--

CREATE TABLE `ncc_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ncc_options`
--

CREATE TABLE `ncc_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ncc_options`
--

INSERT INTO `ncc_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://7hpnccshimla.in', 'yes'),
(2, 'home', 'http://7hpnccshimla.in', 'yes'),
(3, 'blogname', 'National Cadet Corps', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'kaushal83anil@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'ncc', 'yes'),
(41, 'stylesheet', 'ncc', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:4:{i:2;a:4:{s:5:\"title\";s:10:\"Quick Link\";s:4:\"text\";s:172:\"<ul class=\"link\">\r\n 	<li><a> About units </a></li>\r\n 	<li><a> FAQ </a></li>\r\n 	<li><a> ENROLMENT </a></li>\r\n 	<li><a> Login </a></li>\r\n 	<li><a> Contact Us </a></li>\r\n</ul>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:441:\"<div class=\"logo-container\"><a> <img src=\"http://inetbees.com/ncc/wp-content/uploads/2018/04/logo-204x300.png\" alt=\"site-logo\" /> <span class=\"logo-text\"> National Cadet Corps</span>\r\n</a></div>\r\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem...\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:12:\"LATTEST NEWS\";s:4:\"text\";s:507:\"<ul class=\"footer-latest-news\">\r\n 	<li><a>\r\n<span class=\"title\"> Today I choose lifes, Every moon when discovery time.</span>\r\n</a></li>\r\n 	<li><a>\r\n<span class=\"title\"> Dependent certainty off discovery times tolerably offending. </span>\r\n</a></li>\r\n 	<li><a>\r\n<span class=\"title\"> Ham for attention is remainde sometime addition recommes Direction has strangers now believing</span>\r\n</a></li>\r\n 	<li><a>\r\n<span class=\"title\"> Today I choose lifes, Every moon when discovery time.</span>\r\n</a></li>\r\n</ul>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'ncc_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:6:\"text-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-2\";}s:9:\"sidebar-3\";a:1:{i:0;s:6:\"text-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1523305451;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1523348693;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1523351560;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1521968274;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(250, '_site_transient_timeout_theme_roots', '1523264527', 'no'),
(251, '_site_transient_theme_roots', 'a:6:{s:6:\"ncc---\";s:7:\"/themes\";s:3:\"ncc\";s:7:\"/themes\";s:7:\"ncc8arp\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(252, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1523262728;s:7:\"checked\";a:6:{s:6:\"ncc---\";s:0:\"\";s:3:\"ncc\";s:0:\"\";s:7:\"ncc8arp\";s:0:\"\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.5.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(253, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1523262729;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.0.2\";s:9:\"hello.php\";s:3:\"1.6\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.5\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(173, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1523262726;s:15:\"version_checked\";s:5:\"4.9.5\";s:12:\"translations\";a:0:{}}', 'no'),
(126, 'can_compress_scripts', '1', 'no'),
(239, '_site_transient_timeout_community-events-7e2fef1a67708f6835a28f70988d9679', '1523291664', 'no'),
(240, '_site_transient_community-events-7e2fef1a67708f6835a28f70988d9679', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:11:\"103.75.60.0\";}s:6:\"events\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:59:\"SEO Techniques That’ll Double Your Search Traffic in 2018\";s:3:\"url\";s:61:\"https://www.meetup.com/WordPress-Chandigarh/events/249252411/\";s:6:\"meetup\";s:31:\"WordPress Chandigarh (Tri-City)\";s:10:\"meetup_url\";s:44:\"https://www.meetup.com/WordPress-Chandigarh/\";s:4:\"date\";s:19:\"2018-04-14 11:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Chandigarh, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:30.696532999999998736484485561959445476531982421875;s:9:\"longitude\";d:76.787024999999999863575794734060764312744140625;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:38:\"WordPress 15th Anniversary Celebration\";s:3:\"url\";s:61:\"https://www.meetup.com/WordPress-Chandigarh/events/249254226/\";s:6:\"meetup\";s:31:\"WordPress Chandigarh (Tri-City)\";s:10:\"meetup_url\";s:44:\"https://www.meetup.com/WordPress-Chandigarh/\";s:4:\"date\";s:19:\"2018-05-27 11:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Chandigarh, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:30.7232359999999999899955582804977893829345703125;s:9:\"longitude\";d:76.76870700000000624640961177647113800048828125;}}}}', 'no'),
(208, '_site_transient_timeout_browser_0c6eefd8a15590ffdb8e35e4c2124abb', '1523716126', 'no'),
(209, '_site_transient_browser_0c6eefd8a15590ffdb8e35e4c2124abb', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"64.0.3282.137\";s:8:\"platform\";s:7:\"Android\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}', 'no'),
(212, '_site_transient_timeout_browser_9c982f081ee748ccd45e15338fe74698', '1523717992', 'no'),
(213, '_site_transient_browser_9c982f081ee748ccd45e15338fe74698', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.181\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(243, 'category_children', 'a:0:{}', 'yes'),
(246, '_site_transient_timeout_community-events-09cf045b3fff1b2b2ef25d6a6310ddb6', '1523296429', 'no'),
(247, '_site_transient_community-events-09cf045b3fff1b2b2ef25d6a6310ddb6', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:13:\"117.241.175.0\";}s:6:\"events\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:59:\"SEO Techniques That’ll Double Your Search Traffic in 2018\";s:3:\"url\";s:61:\"https://www.meetup.com/WordPress-Chandigarh/events/249252411/\";s:6:\"meetup\";s:31:\"WordPress Chandigarh (Tri-City)\";s:10:\"meetup_url\";s:44:\"https://www.meetup.com/WordPress-Chandigarh/\";s:4:\"date\";s:19:\"2018-04-14 11:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Chandigarh, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:30.696532999999998736484485561959445476531982421875;s:9:\"longitude\";d:76.787024999999999863575794734060764312744140625;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:38:\"WordPress 15th Anniversary Celebration\";s:3:\"url\";s:61:\"https://www.meetup.com/WordPress-Chandigarh/events/249254226/\";s:6:\"meetup\";s:31:\"WordPress Chandigarh (Tri-City)\";s:10:\"meetup_url\";s:44:\"https://www.meetup.com/WordPress-Chandigarh/\";s:4:\"date\";s:19:\"2018-05-27 11:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Chandigarh, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:30.7232359999999999899955582804977893829345703125;s:9:\"longitude\";d:76.76870700000000624640961177647113800048828125;}}}}', 'no'),
(255, '_site_transient_timeout_browser_efc56fe28520bcd166ef136f44025003', '1523893970', 'no'),
(256, '_site_transient_browser_efc56fe28520bcd166ef136f44025003', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.181\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(259, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1523332374', 'no'),
(260, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1523332374', 'no'),
(261, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1523289174', 'no'),
(265, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1523332375', 'no'),
(266, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2018/04/wordpress-4-9-5-security-and-maintenance-release/\'>WordPress 4.9.5 Security and Maintenance Release</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/an-update-to-my-gutenberg-experience\'>WPTavern: An Update to My Gutenberg Experience</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/a-wordcamp-for-organizers-is-in-the-planning-stages\'>WPTavern: A WordCamp for Organizers Is in the Planning Stages</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/jetpack-6-0-takes-steps-towards-gdpr-compliance\'>WPTavern: Jetpack 6.0 Takes Steps Towards GDPR Compliance</a></li></ul></div>', 'no'),
(257, '_site_transient_timeout_community-events-46423e39cb831664a95e406c5ffb8cfa', '1523332373', 'no'),
(258, '_site_transient_community-events-46423e39cb831664a95e406c5ffb8cfa', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:11:\"103.41.26.0\";}s:6:\"events\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:59:\"SEO Techniques That’ll Double Your Search Traffic in 2018\";s:3:\"url\";s:61:\"https://www.meetup.com/WordPress-Chandigarh/events/249252411/\";s:6:\"meetup\";s:31:\"WordPress Chandigarh (Tri-City)\";s:10:\"meetup_url\";s:44:\"https://www.meetup.com/WordPress-Chandigarh/\";s:4:\"date\";s:19:\"2018-04-14 11:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Chandigarh, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:30.696532999999998736484485561959445476531982421875;s:9:\"longitude\";d:76.787024999999999863575794734060764312744140625;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:38:\"WordPress 15th Anniversary Celebration\";s:3:\"url\";s:61:\"https://www.meetup.com/WordPress-Chandigarh/events/249254226/\";s:6:\"meetup\";s:31:\"WordPress Chandigarh (Tri-City)\";s:10:\"meetup_url\";s:44:\"https://www.meetup.com/WordPress-Chandigarh/\";s:4:\"date\";s:19:\"2018-05-27 11:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Chandigarh, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:30.7232359999999999899955582804977893829345703125;s:9:\"longitude\";d:76.76870700000000624640961177647113800048828125;}}}}', 'no'),
(262, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1523332375', 'no'),
(263, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1523332375', 'no'),
(264, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1523289175', 'no'),
(141, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(138, 'current_theme', '', 'yes'),
(139, 'theme_mods_ncc', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(189, '_site_transient_timeout_browser_f486628b8b3cd381d361bdc25237d08d', '1523690310', 'no'),
(190, '_site_transient_browser_f486628b8b3cd381d361bdc25237d08d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"65.0.3325.181\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(176, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"kaushal83anil@gmail.com\";s:7:\"version\";s:5:\"4.9.5\";s:9:\"timestamp\";i:1522912201;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `ncc_postmeta`
--

CREATE TABLE `ncc_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ncc_postmeta`
--

INSERT INTO `ncc_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', 'http://inetbees.com/ncc/'),
(21, 2, '_edit_lock', '1523292375:1'),
(11, 5, '_menu_item_type', 'post_type'),
(12, 5, '_menu_item_menu_item_parent', '0'),
(13, 5, '_menu_item_object_id', '2'),
(14, 5, '_menu_item_object', 'page'),
(15, 5, '_menu_item_target', ''),
(16, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(17, 5, '_menu_item_xfn', ''),
(18, 5, '_menu_item_url', ''),
(20, 2, '_edit_last', '1'),
(22, 7, '_edit_last', '1'),
(23, 7, '_wp_page_template', 'default'),
(24, 7, '_edit_lock', '1521969696:1'),
(25, 9, '_edit_last', '1'),
(26, 9, '_wp_page_template', 'default'),
(27, 9, '_edit_lock', '1523292961:1'),
(28, 11, '_edit_last', '1'),
(29, 11, '_wp_page_template', 'page-login.php'),
(30, 11, '_edit_lock', '1521969610:1'),
(31, 13, '_menu_item_type', 'post_type'),
(32, 13, '_menu_item_menu_item_parent', '0'),
(33, 13, '_menu_item_object_id', '11'),
(34, 13, '_menu_item_object', 'page'),
(35, 13, '_menu_item_target', ''),
(36, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(37, 13, '_menu_item_xfn', ''),
(38, 13, '_menu_item_url', ''),
(40, 14, '_menu_item_type', 'post_type'),
(41, 14, '_menu_item_menu_item_parent', '0'),
(42, 14, '_menu_item_object_id', '9'),
(43, 14, '_menu_item_object', 'page'),
(44, 14, '_menu_item_target', ''),
(45, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 14, '_menu_item_xfn', ''),
(47, 14, '_menu_item_url', ''),
(67, 17, '_edit_last', '1'),
(49, 15, '_menu_item_type', 'post_type'),
(50, 15, '_menu_item_menu_item_parent', '0'),
(51, 15, '_menu_item_object_id', '7'),
(52, 15, '_menu_item_object', 'page'),
(53, 15, '_menu_item_target', ''),
(54, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 15, '_menu_item_xfn', ''),
(56, 15, '_menu_item_url', ''),
(68, 17, '_edit_lock', '1523111265:1'),
(58, 16, '_menu_item_type', 'post_type'),
(59, 16, '_menu_item_menu_item_parent', '0'),
(60, 16, '_menu_item_object_id', '2'),
(61, 16, '_menu_item_object', 'page'),
(62, 16, '_menu_item_target', ''),
(63, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(64, 16, '_menu_item_xfn', ''),
(65, 16, '_menu_item_url', ''),
(66, 16, '_menu_item_orphaned', '1521969257'),
(69, 17, '_wp_page_template', 'page-enrolment.php'),
(70, 19, '_menu_item_type', 'post_type'),
(71, 19, '_menu_item_menu_item_parent', '0'),
(72, 19, '_menu_item_object_id', '17'),
(73, 19, '_menu_item_object', 'page'),
(74, 19, '_menu_item_target', ''),
(75, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 19, '_menu_item_xfn', ''),
(77, 19, '_menu_item_url', ''),
(79, 24, '_edit_last', '1'),
(80, 24, '_edit_lock', '1523211868:1'),
(81, 25, '_wp_attached_file', '2018/04/slider-one.jpg'),
(82, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2174;s:6:\"height\";i:1020;s:4:\"file\";s:22:\"2018/04/slider-one.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"slider-one-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"slider-one-300x141.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"slider-one-768x360.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"slider-one-1024x480.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"13\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D810\";s:7:\"caption\";s:149:\"The NCC girls Marching Contingent passes through the Rajpath, on the occasion of the 69th Republic Day Parade 2018, in New Delhi on January 26, 2018.\";s:17:\"created_timestamp\";s:10:\"1516963668\";s:9:\"copyright\";s:69:\"Photo Division\rMinistry of Information and Broadcasting Govt of India\";s:12:\"focal_length\";s:3:\"105\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(83, 24, '_thumbnail_id', '25'),
(84, 26, '_edit_last', '1'),
(85, 26, '_edit_lock', '1523211922:1'),
(86, 27, '_wp_attached_file', '2018/04/slider-two.jpg'),
(87, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2174;s:6:\"height\";i:1020;s:4:\"file\";s:22:\"2018/04/slider-two.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"slider-two-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"slider-two-300x141.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"slider-two-768x360.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"slider-two-1024x480.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:69:\"Photo Division\nMinistry of Information and Broadcasting Govt of India\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 26, '_thumbnail_id', '27'),
(89, 28, '_edit_last', '1'),
(90, 28, '_edit_lock', '1523212012:1'),
(91, 29, '_wp_attached_file', '2018/04/slider-three.jpg'),
(92, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2174;s:6:\"height\";i:1020;s:4:\"file\";s:24:\"2018/04/slider-three.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"slider-three-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"slider-three-300x141.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"slider-three-768x360.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"slider-three-1024x480.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:69:\"Photo Division\nMinistry of Information and Broadcasting Govt of India\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 28, '_thumbnail_id', '29'),
(94, 30, '_edit_last', '1'),
(95, 30, '_edit_lock', '1523212064:1'),
(96, 31, '_edit_last', '1'),
(97, 31, '_edit_lock', '1523213368:1'),
(98, 32, '_wp_attached_file', '2018/04/logo.png'),
(99, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:734;s:4:\"file\";s:16:\"2018/04/logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-204x300.png\";s:5:\"width\";i:204;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 33, '_edit_last', '1'),
(101, 33, '_edit_lock', '1523248931:1');

-- --------------------------------------------------------

--
-- Table structure for table `ncc_posts`
--

CREATE TABLE `ncc_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ncc_posts`
--

INSERT INTO `ncc_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-03-25 08:24:11', '2018-03-25 08:24:11', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-03-25 08:24:11', '2018-03-25 08:24:11', '', 0, 'http://7hpnccshimla.in/?p=1', 0, 'post', '', 1),
(2, 1, '2018-03-25 08:24:11', '2018-03-25 08:24:11', '<div class=\"content-inner-div\">\r\n	<p> Unit was raised as 37 Punjab Bn NCC in 1966.Re-designated as 4 HP NCC Bn in 1971 after Himachal Pradesh State came in to existence.It had 2 SD and 16 JD sub units. \r\n	Unit had vast area under its command so the necessity was felt to raise more units in the form of independent coys. On 03 May 1977, this unit was re designated as 7 HP (I)\r\n	Coy NCC Shimla.</p><p> Presently the unit has four colleges and 33 schools which are spread over two districts i.e. Shimla and Mandi.NCC coverage is being provided to 200 SD/SW and\r\n	2050 JD/JW cadets. The farther most institute of this Coy is 160 km. Unit is located at Dunloe Estate, NCC Bhawan, Chaura Maidan, Shimla-171004.</p>\r\n</div>', 'About Units', '', 'publish', 'closed', 'closed', '', 'about-units', '', '', '2018-04-09 16:46:14', '2018-04-09 16:46:14', '', 0, 'http://7hpnccshimla.in/?page_id=2', 0, 'page', '', 0),
(41, 1, '2018-04-09 16:46:14', '2018-04-09 16:46:14', '<div class=\"content-inner-div\">\r\n	<p> Unit was raised as 37 Punjab Bn NCC in 1966.Re-designated as 4 HP NCC Bn in 1971 after Himachal Pradesh State came in to existence.It had 2 SD and 16 JD sub units. \r\n	Unit had vast area under its command so the necessity was felt to raise more units in the form of independent coys. On 03 May 1977, this unit was re designated as 7 HP (I)\r\n	Coy NCC Shimla.</p><p> Presently the unit has four colleges and 33 schools which are spread over two districts i.e. Shimla and Mandi.NCC coverage is being provided to 200 SD/SW and\r\n	2050 JD/JW cadets. The farther most institute of this Coy is 160 km. Unit is located at Dunloe Estate, NCC Bhawan, Chaura Maidan, Shimla-171004.</p>\r\n</div>', 'About Units', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 16:46:14', '2018-04-09 16:46:14', '', 2, 'http://inetbees.com/ncc/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-04-09 04:48:55', '2018-04-09 04:48:55', '<strong>Unit was raised as 37 Punjab Bn NCC in 1966. </strong><strong>Re-designated as 4 HP NCC Bn in 1971 after Himachal Pradesh State came in to existence. </strong><strong>It had 2 SD and 16 JD sub units. Unit had vast area under its command so the necessity was felt to raise more units in the form of independent coys. </strong><strong>On 03 May 1977, this unit was re designated as 7 HP (I) Coy NCC Shimla. Presently the unit has four colleges and 33 schools which are spread over two districts i.e. Shimla and Mandi. </strong><strong>NCC coverage is being provided to 200 SD/SW and 2050 JD/JW cadets.</strong><strong>The farther most institute of this Coy is 160 km.</strong><strong> </strong><strong>Unit is located at Dunloe Estate, NCC Bhawan, Chaura Maidan, Shimla-171004.</strong>', 'About Units', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 04:48:55', '2018-04-09 04:48:55', '', 2, 'http://inetbees.com/ncc/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-04-09 04:45:21', '2018-04-09 04:45:21', '<ul>\r\n 	<li><strong>Unit was raised as 37 Punjab Bn NCC in 1966.</strong></li>\r\n 	<li><strong> </strong><strong>Re-designated as 4 HP NCC Bn in 1971 after hp state came in to existence.</strong></li>\r\n 	<li><strong> </strong><strong>It had 2 SD and 16 JD sub units. Unit had vast area under its command so the necessity was felt to raise more units in the form of independent coys.</strong></li>\r\n 	<li><strong> </strong><strong>On 03 May 1977, this unit was re designated as 7 HP (I) Coy NCC Shimla. Presently the unit has four colleges and 33 schools which are spread over two districts i.e. Shimla and Mandi.</strong></li>\r\n 	<li><strong> </strong><strong>NCC coverage is being provided to 200 SD/SW and 2050 JD/JW cadets.</strong></li>\r\n 	<li><strong> </strong><strong>The farther most institute of this Coy is 160 km.</strong></li>\r\n 	<li><strong> </strong><strong>Unit is located at Dunloe Estate, NCC Bhawan, Chaura Maidan, Shimla-171004.</strong></li>\r\n</ul>', 'About Units', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-04-09 04:45:21', '2018-04-09 04:45:21', '', 2, 'http://inetbees.com/ncc/2018/04/09/2-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-04-07 07:18:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-04-07 07:18:30', '0000-00-00 00:00:00', '', 0, 'http://inetbees.com/ncc/?p=23', 0, 'post', '', 0),
(4, 1, '2018-03-25 09:11:48', '2018-03-25 09:11:48', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-04-09 17:00:02', '2018-04-09 17:00:02', '', 0, 'http://7hpnccshimla.in/?p=4', 1, 'nav_menu_item', '', 0),
(5, 1, '2018-03-25 09:11:48', '2018-03-25 09:11:48', ' ', '', '', 'publish', 'closed', 'closed', '', '5', '', '', '2018-04-09 17:00:02', '2018-04-09 17:00:02', '', 0, 'http://7hpnccshimla.in/?p=5', 2, 'nav_menu_item', '', 0),
(6, 1, '2018-03-25 09:12:32', '2018-03-25 09:12:32', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://7hpnccshimla.in/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'About Units', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-03-25 09:12:32', '2018-03-25 09:12:32', '', 2, 'http://7hpnccshimla.in/2018/03/25/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-03-25 09:12:47', '2018-03-25 09:12:47', '					<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n					<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2018-03-25 09:23:38', '2018-03-25 09:23:38', '', 0, 'http://7hpnccshimla.in/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-03-25 09:12:47', '2018-03-25 09:12:47', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-03-25 09:12:47', '2018-03-25 09:12:47', '', 7, 'http://7hpnccshimla.in/2018/03/25/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-03-25 09:13:00', '2018-03-25 09:13:00', '<div class=\"content-inner-div\">\r\n	<div class=\"contact-us-outer\">\r\n		Officer Commanding\r\n		7 HP(I) Coy NCC Shimla\r\n		Dunloe Estate ,NCC Bhawan\r\n		Chaura Maidan\r\n		Shimla -171004\r\n		Contact No-0177-2633532\r\n		Email ID- 7hpncc@gmail.com\r\n	</div>\r\n	<div class=\"contact-map-outer\">\r\n		<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3416.2825502195465!2d77.1455773156484!3d31.101877981510096!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3905791de531a8c7%3A0x8b9250ea53771b49!2sNCC+Group+Headquarters+Shimla!5e0!3m2!1sen!2sin!4v1523292546395\" width=\"100%\" height=\"500\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n	</div>\r\n</div>', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-04-09 16:50:53', '2018-04-09 16:50:53', '', 0, 'http://7hpnccshimla.in/?page_id=9', 0, 'page', '', 0),
(39, 1, '2018-04-09 04:54:26', '2018-04-09 04:54:26', 'Officer Commanding\r\n\r\n7 HP(I) Coy NCC Shimla\r\n\r\nDunloe Estate ,NCC Bhawan\r\n\r\nChaura Maidan\r\n\r\nShimla -171004\r\n\r\nContact No-01777-2633532\r\n\r\nEmail ID- 7hpncc@gmail.com', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-04-09 04:54:26', '2018-04-09 04:54:26', '', 9, 'http://inetbees.com/ncc/2018/04/09/9-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-04-09 05:43:16', '2018-04-09 05:43:16', 'Officer Commanding\r\n\r\n7 HP(I) Coy NCC Shimla\r\n\r\nDunloe Estate ,NCC Bhawan\r\n\r\nChaura Maidan\r\n\r\nShimla -171004\r\n\r\nContact No-0177-2633532\r\n\r\nEmail ID- 7hpncc@gmail.com', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-04-09 05:43:16', '2018-04-09 05:43:16', '', 9, 'http://inetbees.com/ncc/2018/04/09/9-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-03-25 09:13:00', '2018-03-25 09:13:00', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-03-25 09:13:00', '2018-03-25 09:13:00', '', 9, 'http://7hpnccshimla.in/2018/03/25/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-03-25 09:13:10', '2018-03-25 09:13:10', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2018-03-25 09:20:10', '2018-03-25 09:20:10', '', 0, 'http://7hpnccshimla.in/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-03-25 09:13:10', '2018-03-25 09:13:10', '', 'Login', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-03-25 09:13:10', '2018-03-25 09:13:10', '', 11, 'http://7hpnccshimla.in/2018/03/25/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-03-25 09:14:52', '2018-03-25 09:14:52', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2018-04-09 17:00:02', '2018-04-09 17:00:02', '', 0, 'http://7hpnccshimla.in/?p=13', 5, 'nav_menu_item', '', 0),
(14, 1, '2018-03-25 09:14:52', '2018-03-25 09:14:52', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2018-04-09 17:00:02', '2018-04-09 17:00:02', '', 0, 'http://7hpnccshimla.in/?p=14', 4, 'nav_menu_item', '', 0),
(15, 1, '2018-03-25 09:14:52', '2018-03-25 09:14:52', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2018-04-09 17:00:02', '2018-04-09 17:00:02', '', 0, 'http://7hpnccshimla.in/?p=15', 3, 'nav_menu_item', '', 0),
(16, 1, '2018-03-25 09:14:17', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-03-25 09:14:17', '0000-00-00 00:00:00', '', 0, 'http://7hpnccshimla.in/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2018-03-25 09:20:23', '2018-03-25 09:20:23', '', 'Enrolment', '', 'publish', 'closed', 'closed', '', 'enrolment', '', '', '2018-03-25 09:20:23', '2018-03-25 09:20:23', '', 0, 'http://7hpnccshimla.in/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-03-25 09:20:23', '2018-03-25 09:20:23', '', 'Enrolment', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-03-25 09:20:23', '2018-03-25 09:20:23', '', 17, 'http://7hpnccshimla.in/2018/03/25/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-03-25 09:20:38', '2018-03-25 09:20:38', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2018-04-09 17:00:02', '2018-04-09 17:00:02', '', 0, 'http://7hpnccshimla.in/?p=19', 6, 'nav_menu_item', '', 0),
(20, 1, '2018-03-25 09:23:04', '2018-03-25 09:23:04', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\r\n\r\nAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 'About Units', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-03-25 09:23:04', '2018-03-25 09:23:04', '', 2, 'http://7hpnccshimla.in/2018/03/25/2-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-03-25 09:23:23', '2018-03-25 09:23:23', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\r\n\r\nAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-03-25 09:23:23', '2018-03-25 09:23:23', '', 9, 'http://7hpnccshimla.in/2018/03/25/9-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-03-25 09:23:38', '2018-03-25 09:23:38', '					<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>\r\n					<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>', 'FAQ', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-03-25 09:23:38', '2018-03-25 09:23:38', '', 7, 'http://7hpnccshimla.in/2018/03/25/7-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-04-08 18:26:42', '2018-04-08 18:26:42', 'The NCC girls Marching Contingent passes through the Rajpath, on the occasion of the 69th Republic Day Parade 2018, in New Delhi on January 26, 2018.', 'Girls Marching Contingent', '', 'publish', 'closed', 'closed', '', 'girls-marching-contingent', '', '', '2018-04-08 18:26:42', '2018-04-08 18:26:42', '', 0, 'http://inetbees.com/ncc/?post_type=header-slider&#038;p=24', 0, 'header-slider', '', 0),
(25, 1, '2018-04-08 18:26:18', '2018-04-08 18:26:18', '', 'slider-one', 'The NCC girls Marching Contingent passes through the Rajpath, on the occasion of the 69th Republic Day Parade 2018, in New Delhi on January 26, 2018.', 'inherit', 'open', 'closed', '', 'slider-one', '', '', '2018-04-08 18:26:18', '2018-04-08 18:26:18', '', 24, 'http://inetbees.com/ncc/wp-content/uploads/2018/04/slider-one.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2018-04-08 18:27:43', '2018-04-08 18:27:43', 'The NCC girls Marching Contingent passes through the Rajpath, on the occasion of the 69th Republic Day Parade 2018, in New Delhi on January 26, 2018.', 'New Delhi on January 26', '', 'publish', 'closed', 'closed', '', 'new-delhi-on-january-26', '', '', '2018-04-08 18:27:43', '2018-04-08 18:27:43', '', 0, 'http://inetbees.com/ncc/?post_type=header-slider&#038;p=26', 0, 'header-slider', '', 0),
(27, 1, '2018-04-08 18:27:31', '2018-04-08 18:27:31', '', 'slider-two', '', 'inherit', 'open', 'closed', '', 'slider-two', '', '', '2018-04-08 18:27:31', '2018-04-08 18:27:31', '', 26, 'http://inetbees.com/ncc/wp-content/uploads/2018/04/slider-two.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-04-08 18:29:10', '2018-04-08 18:29:10', 'The NCC girls Marching Contingent passes through the Rajpath, on the occasion of the 69th Republic Day Parade 2018, in New Delhi on January 26, 2018.', 'Passing out', '', 'publish', 'closed', 'closed', '', 'passing-out', '', '', '2018-04-08 18:29:10', '2018-04-08 18:29:10', '', 0, 'http://inetbees.com/ncc/?post_type=header-slider&#038;p=28', 0, 'header-slider', '', 0),
(29, 1, '2018-04-08 18:28:56', '2018-04-08 18:28:56', '', 'slider-three', '', 'inherit', 'open', 'closed', '', 'slider-three', '', '', '2018-04-08 18:28:56', '2018-04-08 18:28:56', '', 28, 'http://inetbees.com/ncc/wp-content/uploads/2018/04/slider-three.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2018-04-08 18:29:58', '2018-04-08 18:29:58', 'The National Cadet Corps (NCC) is a youth development movement. It has enormous potential for nation building. The NCC provides opportunities to the youth of the country for their all-round development with a sense of Duty, Commitment, Dedication, Discipline and Moral Values so that they become able leaders and useful citizens. The NCC provides exposure to the cadets in a wide range of activities., with a distinct emphasis on Social Services, Discipline and Adventure Training. The NCC is open to all regular students of schools and colleges on a voluntary basis. The students have no liability for active military service.', 'What is National Cadet Corps?', '', 'publish', 'closed', 'closed', '', 'what-is-national-cadet-corps', '', '', '2018-04-08 18:29:58', '2018-04-08 18:29:58', '', 0, 'http://inetbees.com/ncc/?post_type=faq&#038;p=30', 0, 'faq', '', 0),
(31, 1, '2018-04-08 18:30:21', '2018-04-08 18:30:21', 'The National Cadets Corps came into existence under the National Cadet Corps Act XXXI of 1948 (passed in April, 1948; came into existence on 16th July, 1948).<span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span>', 'When did National Cadet Corps Come into existence?', '', 'publish', 'closed', 'closed', '', 'when-did-national-cadet-corps-come-into-existence', '', '', '2018-04-08 18:30:21', '2018-04-08 18:30:21', '', 0, 'http://inetbees.com/ncc/?post_type=faq&#038;p=31', 0, 'faq', '', 0),
(32, 1, '2018-04-08 18:52:37', '2018-04-08 18:52:37', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-04-08 18:52:37', '2018-04-08 18:52:37', '', 0, 'http://inetbees.com/ncc/wp-content/uploads/2018/04/logo.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2018-04-09 04:43:01', '2018-04-09 04:43:01', '<ul>\r\n 	<li><strong>Unit was raised as 37 Punjab Bn NCC in 1966.</strong></li>\r\n 	<li><strong> </strong><strong>Re-designated as 4 HP NCC Bn in 1971 after hp state came in to existence.</strong></li>\r\n 	<li><strong> </strong><strong>It had 2 SD and 16 JD sub units. Unit had vast area under its command so the necessity was felt to raise more units in the form of independent coys.</strong></li>\r\n 	<li><strong> </strong><strong>On 03 May 1977, this unit was re designated as 7 HP (I) Coy NCC Shimla. Presently the unit has four colleges and 33 schools which are spread over two districts i.e. Shimla and Mandi.</strong></li>\r\n 	<li><strong> </strong><strong>NCC coverage is being provided to 200 SD/SW and 2050 JD/JW cadets.</strong></li>\r\n 	<li><strong> </strong><strong>The farther most institute of this Coy is 160 km.</strong></li>\r\n 	<li><strong> </strong><strong>Unit is located at Dunloe Estate, NCC Bhawan, Chaura Maidan, Shimla-171004.</strong></li>\r\n</ul>', 'Unit History', '', 'publish', 'open', 'open', '', 'unit-history', '', '', '2018-04-09 04:43:16', '2018-04-09 04:43:16', '', 0, 'http://inetbees.com/ncc/?p=33', 0, 'post', '', 0),
(34, 1, '2018-04-09 04:39:34', '2018-04-09 04:39:34', '<ul>\r\n 	<li><strong>Unit was raised as 37 Punjab Bn NCC in 1966.</strong></li>\r\n 	<li><strong> </strong><strong>Re-designated as 4 HP NCC Bn in 1971 after hp state came in to existence.</strong></li>\r\n 	<li><strong> </strong><strong>It had 2 SD and 16 JD sub units. Unit had vast area under its command so the necessity was felt to raise more units in the form of independent coys.</strong></li>\r\n 	<li><strong> </strong><strong>On 03 May 1977, this unit was re designated as 7 HP (I) Coy NCC Shimla. Presently the unit has four colleges and 33 schools which are spread over two districts i.e. Shimla and Mandi.</strong></li>\r\n 	<li><strong> </strong><strong>NCC coverage is being provided to 200 SD/SW and 2050 JD/JW cadets.</strong></li>\r\n 	<li><strong> </strong><strong>The farther most institute of this Coy is 160 km.</strong></li>\r\n 	<li><strong> </strong><strong>Unit is located at Dunloe Estate, NCC Bhawan, Chaura Maidan, Shimla-171004.</strong></li>\r\n</ul>', 'Unit History', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-04-09 04:39:34', '2018-04-09 04:39:34', '', 33, 'http://inetbees.com/ncc/2018/04/09/33-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-04-09 04:47:50', '2018-04-09 04:47:50', '<ul>\n 	<li><strong>Unit was raised as 37 Punjab Bn NCC in 1966.</strong><strong>Re-designated as 4 HP NCC Bn in 1971 after Himachal Pradesh State came in to existence. </strong><strong>It had 2 SD and 16 JD sub units. Unit had vast area under its command so the necessity was felt to raise more units in the form of independent coys. </strong><strong>On 03 May 1977, this unit was re designated as 7 HP (I) Coy NCC Shimla. Presently the unit has four colleges and 33 schools which are spread over two districts i.e. Shimla and Mandi. </strong><strong>NCC coverage is being provided to 200 SD/SW and 2050 JD/JW cadets.</strong><strong>The farther most institute of this Coy is 160 km.</strong><strong> </strong><strong>Unit is located at Dunloe Estate, NCC Bhawan, Chaura Maidan, Shimla-171004.</strong></li>\n</ul>', 'About Units', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2018-04-09 04:47:50', '2018-04-09 04:47:50', '', 2, 'http://inetbees.com/ncc/2018/04/09/2-autosave-v1/', 0, 'revision', '', 0),
(38, 1, '2018-04-09 16:50:18', '2018-04-09 16:50:18', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2018-04-09 16:50:18', '2018-04-09 16:50:18', '', 9, 'http://inetbees.com/ncc/2018/04/09/9-autosave-v1/', 0, 'revision', '', 0),
(42, 1, '2018-04-09 16:50:53', '2018-04-09 16:50:53', '<div class=\"content-inner-div\">\r\n	<div class=\"contact-us-outer\">\r\n		Officer Commanding\r\n		7 HP(I) Coy NCC Shimla\r\n		Dunloe Estate ,NCC Bhawan\r\n		Chaura Maidan\r\n		Shimla -171004\r\n		Contact No-0177-2633532\r\n		Email ID- 7hpncc@gmail.com\r\n	</div>\r\n	<div class=\"contact-map-outer\">\r\n		<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3416.2825502195465!2d77.1455773156484!3d31.101877981510096!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3905791de531a8c7%3A0x8b9250ea53771b49!2sNCC+Group+Headquarters+Shimla!5e0!3m2!1sen!2sin!4v1523292546395\" width=\"100%\" height=\"500\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n	</div>\r\n</div>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-04-09 16:50:53', '2018-04-09 16:50:53', '', 9, 'http://inetbees.com/ncc/2018/04/09/9-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ncc_termmeta`
--

CREATE TABLE `ncc_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ncc_terms`
--

CREATE TABLE `ncc_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ncc_terms`
--

INSERT INTO `ncc_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ncc_term_relationships`
--

CREATE TABLE `ncc_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ncc_term_relationships`
--

INSERT INTO `ncc_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 2, 0),
(5, 2, 0),
(15, 2, 0),
(14, 2, 0),
(13, 2, 0),
(19, 2, 0),
(33, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ncc_term_taxonomy`
--

CREATE TABLE `ncc_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ncc_term_taxonomy`
--

INSERT INTO `ncc_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `ncc_usermeta`
--

CREATE TABLE `ncc_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ncc_usermeta`
--

INSERT INTO `ncc_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'nccadmin'),
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
(12, 1, 'ncc_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'ncc_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'ncc_dashboard_quick_press_last_post_id', '23'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"103.41.26.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'ncc_user-settings', 'editor=html&libraryContent=browse'),
(23, 1, 'ncc_user-settings-time', '1523292109'),
(24, 1, 'default_password_nag', ''),
(25, 1, 'session_tokens', 'a:1:{s:64:\"96d47b2fdda77e34f1ddd84935e3d723d83535634ba1742be882df9cf7e6d103\";a:4:{s:10:\"expiration\";i:1523421259;s:2:\"ip\";s:12:\"103.75.60.73\";s:2:\"ua\";s:102:\"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36\";s:5:\"login\";i:1523248459;}}');

-- --------------------------------------------------------

--
-- Table structure for table `ncc_users`
--

CREATE TABLE `ncc_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ncc_users`
--

INSERT INTO `ncc_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'nccadmin', '$P$BpL1/yXTi0P8o9rVcgd/H82SLj0Sa5/', 'nccadmin', 'kaushal83anil@gmail.com', '', '2018-03-25 08:24:10', '', 0, 'nccadmin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ncc_commentmeta`
--
ALTER TABLE `ncc_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ncc_comments`
--
ALTER TABLE `ncc_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `ncc_links`
--
ALTER TABLE `ncc_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `ncc_options`
--
ALTER TABLE `ncc_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `ncc_postmeta`
--
ALTER TABLE `ncc_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ncc_posts`
--
ALTER TABLE `ncc_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `ncc_termmeta`
--
ALTER TABLE `ncc_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ncc_terms`
--
ALTER TABLE `ncc_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `ncc_term_relationships`
--
ALTER TABLE `ncc_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `ncc_term_taxonomy`
--
ALTER TABLE `ncc_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `ncc_usermeta`
--
ALTER TABLE `ncc_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ncc_users`
--
ALTER TABLE `ncc_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ncc_commentmeta`
--
ALTER TABLE `ncc_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ncc_comments`
--
ALTER TABLE `ncc_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ncc_links`
--
ALTER TABLE `ncc_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ncc_options`
--
ALTER TABLE `ncc_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `ncc_postmeta`
--
ALTER TABLE `ncc_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `ncc_posts`
--
ALTER TABLE `ncc_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `ncc_termmeta`
--
ALTER TABLE `ncc_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ncc_terms`
--
ALTER TABLE `ncc_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ncc_term_taxonomy`
--
ALTER TABLE `ncc_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ncc_usermeta`
--
ALTER TABLE `ncc_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ncc_users`
--
ALTER TABLE `ncc_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
