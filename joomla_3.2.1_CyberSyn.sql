{\rtf1\ansi\ansicpg1252\cocoartf1265
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural

\f0\fs24 \cf0 -- phpMyAdmin SQL Dump\
-- version 4.0.6\
-- http://www.phpmyadmin.net\
--\
-- Servidor: localhost\
-- Tiempo de generaci\'f3n: 27-01-2014 a las 14:11:43\
-- Versi\'f3n del servidor: 5.5.33\
-- Versi\'f3n de PHP: 5.5.3\
\
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";\
SET time_zone = "+00:00";\
\
--\
-- Base de datos: `joomla_3.2.1_CyberSyn`\
--\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_assets`\
--\
\
CREATE TABLE `r0dnb_assets` (\
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',\
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',\
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',\
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',\
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',\
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\\n',\
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',\
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',\
  PRIMARY KEY (`id`),\
  UNIQUE KEY `idx_asset_name` (`name`),\
  KEY `idx_lft_rgt` (`lft`,`rgt`),\
  KEY `idx_parent_id` (`parent_id`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=84 ;\
\
--\
-- Volcado de datos para la tabla `r0dnb_assets`\
--\
\
INSERT INTO `r0dnb_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES\
(1, 0, 0, 165, 0, 'root.1', 'Root Asset', '\{"core.login.site":\{"6":1,"2":1\},"core.login.admin":\{"6":1\},"core.login.offline":\{"6":1\},"core.admin":\{"8":1\},"core.manage":\{"7":1\},"core.create":\{"6":1,"3":1\},"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\},"core.edit.own":\{"6":1,"3":1\}\}'),\
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '\{\}'),\
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '\{"core.admin":\{"7":1\},"core.manage":\{"6":1\},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '\{"core.admin":\{"7":1\},"core.manage":\{"7":1\}\}'),\
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '\{"core.admin":\{"7":1\},"core.manage":\{"7":1\}\}'),\
(6, 1, 11, 12, 1, 'com_config', 'com_config', '\{\}'),\
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '\{"core.admin":\{"7":1\},"core.manage":\{"6":1\},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]\}'),\
(8, 1, 17, 52, 1, 'com_content', 'com_content', '\{"core.admin":\{"7":1\},"core.manage":\{"6":1\},"core.create":\{"3":1\},"core.delete":[],"core.edit":\{"4":1\},"core.edit.state":\{"5":1\},"core.edit.own":[]\}'),\
(9, 1, 53, 54, 1, 'com_cpanel', 'com_cpanel', '\{\}'),\
(10, 1, 55, 56, 1, 'com_installer', 'com_installer', '\{"core.admin":[],"core.manage":\{"7":0\},"core.delete":\{"7":0\},"core.edit.state":\{"7":0\}\}'),\
(11, 1, 57, 58, 1, 'com_languages', 'com_languages', '\{"core.admin":\{"7":1\},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(12, 1, 59, 60, 1, 'com_login', 'com_login', '\{\}'),\
(13, 1, 61, 62, 1, 'com_mailto', 'com_mailto', '\{\}'),\
(14, 1, 63, 64, 1, 'com_massmail', 'com_massmail', '\{\}'),\
(15, 1, 65, 66, 1, 'com_media', 'com_media', '\{"core.admin":\{"7":1\},"core.manage":\{"6":1\},"core.create":\{"3":1\},"core.delete":\{"5":1\}\}'),\
(16, 1, 67, 68, 1, 'com_menus', 'com_menus', '\{"core.admin":\{"7":1\},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(17, 1, 69, 70, 1, 'com_messages', 'com_messages', '\{"core.admin":\{"7":1\},"core.manage":\{"7":1\}\}'),\
(18, 1, 71, 130, 1, 'com_modules', 'com_modules', '\{"core.admin":\{"7":1\},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(19, 1, 131, 134, 1, 'com_newsfeeds', 'com_newsfeeds', '\{"core.admin":\{"7":1\},"core.manage":\{"6":1\},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]\}'),\
(20, 1, 135, 136, 1, 'com_plugins', 'com_plugins', '\{"core.admin":\{"7":1\},"core.manage":[],"core.edit":[],"core.edit.state":[]\}'),\
(21, 1, 137, 138, 1, 'com_redirect', 'com_redirect', '\{"core.admin":\{"7":1\},"core.manage":[]\}'),\
(22, 1, 139, 140, 1, 'com_search', 'com_search', '\{"core.admin":\{"7":1\},"core.manage":\{"6":1\}\}'),\
(23, 1, 141, 142, 1, 'com_templates', 'com_templates', '\{"core.admin":\{"7":1\},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(24, 1, 143, 146, 1, 'com_users', 'com_users', '\{"core.admin":\{"7":1\},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(25, 1, 147, 150, 1, 'com_weblinks', 'com_weblinks', '\{"core.admin":\{"7":1\},"core.manage":\{"6":1\},"core.create":\{"3":1\},"core.delete":[],"core.edit":\{"4":1\},"core.edit.state":\{"5":1\},"core.edit.own":[]\}'),\
(26, 1, 151, 152, 1, 'com_wrapper', 'com_wrapper', '\{\}'),\
(27, 8, 18, 39, 2, 'com_content.category.2', 'Uncategorised', '\{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]\}'),\
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '\{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '\{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]\}'),\
(30, 19, 132, 133, 2, 'com_newsfeeds.category.5', 'Uncategorised', '\{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]\}'),\
(31, 25, 148, 149, 2, 'com_weblinks.category.6', 'Uncategorised', '\{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]\}'),\
(32, 24, 144, 145, 1, 'com_users.category.7', 'Uncategorised', '\{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(33, 1, 153, 154, 1, 'com_finder', 'com_finder', '\{"core.admin":\{"7":1\},"core.manage":\{"6":1\}\}'),\
(34, 1, 155, 156, 1, 'com_joomlaupdate', 'com_joomlaupdate', '\{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]\}'),\
(35, 1, 157, 158, 1, 'com_tags', 'com_tags', '\{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]\}'),\
(36, 1, 159, 160, 1, 'com_contenthistory', 'com_contenthistory', '\{\}'),\
(37, 1, 161, 162, 1, 'com_ajax', 'com_ajax', '\{\}'),\
(38, 1, 163, 164, 1, 'com_postinstall', 'com_postinstall', '\{\}'),\
(39, 18, 72, 73, 2, 'com_modules.module.1', 'Main Menu', '\{"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(40, 18, 74, 75, 2, 'com_modules.module.2', 'Login', '\{"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(41, 18, 76, 77, 2, 'com_modules.module.3', 'Popular Articles', '\{"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(42, 18, 78, 79, 2, 'com_modules.module.4', 'Recently Added Articles', '\{"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(43, 18, 80, 81, 2, 'com_modules.module.8', 'Toolbar', '\{"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(44, 18, 82, 83, 2, 'com_modules.module.9', 'Quick Icons', '\{"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(45, 18, 84, 85, 2, 'com_modules.module.10', 'Logged-in Users', '\{"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(46, 18, 86, 87, 2, 'com_modules.module.12', 'Admin Menu', '\{"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(47, 18, 88, 89, 2, 'com_modules.module.13', 'Admin Submenu', '\{"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(48, 18, 90, 91, 2, 'com_modules.module.14', 'User Status', '\{"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(49, 18, 92, 93, 2, 'com_modules.module.15', 'Title', '\{"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(50, 18, 94, 95, 2, 'com_modules.module.16', 'Login Form', '\{"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(51, 18, 96, 97, 2, 'com_modules.module.17', 'Breadcrumbs', '\{"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(52, 18, 98, 99, 2, 'com_modules.module.79', 'Multilanguage status', '\{"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(53, 18, 100, 101, 2, 'com_modules.module.86', 'Joomla Version', '\{"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(54, 18, 102, 103, 2, 'com_modules.module.87', 'Language Switcher', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(55, 18, 104, 105, 2, 'com_modules.module.88', 'IceMegaMenu espanol', '\{"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(56, 18, 106, 107, 2, 'com_modules.module.89', 'IceCarosuel Module Esp', '\{"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(57, 18, 108, 109, 2, 'com_modules.module.90', 'IceMegaMenu ingles', '\{"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(58, 27, 19, 20, 3, 'com_content.article.1', 'Inicio', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(59, 27, 21, 22, 3, 'com_content.article.2', 'Home', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(60, 27, 23, 24, 3, 'com_content.article.3', 'Servicios', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(61, 27, 25, 26, 3, 'com_content.article.4', 'Services', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(62, 27, 27, 28, 3, 'com_content.article.5', 'Partners', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(63, 27, 29, 30, 3, 'com_content.article.6', 'Partners', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(64, 27, 31, 32, 3, 'com_content.article.7', 'Contactanos', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(65, 27, 33, 34, 3, 'com_content.article.8', 'Contact Us', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(66, 27, 35, 36, 3, 'com_content.article.9', 'Community', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(67, 27, 37, 38, 3, 'com_content.article.10', 'Comunidad', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(68, 18, 110, 111, 2, 'com_modules.module.91', 'IceCarosuel Module Eng', '\{"core.delete":[],"core.edit":[],"core.edit.state":[]\}'),\
(69, 8, 40, 45, 2, 'com_content.category.8', 'Imagenes IceCaurosel Esp', '\{"core.create":\{"6":1,"3":1\},"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\},"core.edit.own":\{"6":1,"3":1\}\}'),\
(70, 69, 41, 42, 3, 'com_content.article.11', 'DevOps es el futuro', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(71, 69, 43, 44, 3, 'com_content.article.12', 'Continuous Delivery es el futuro', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(72, 8, 46, 51, 2, 'com_content.category.9', 'Imagenes IceCaurosel Eng', '\{"core.create":\{"6":1,"3":1\},"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\},"core.edit.own":\{"6":1,"3":1\}\}'),\
(73, 72, 47, 48, 3, 'com_content.article.13', 'DevOps is the future', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(74, 72, 49, 50, 3, 'com_content.article.14', 'Continuous Delivery is the future', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(75, 18, 112, 113, 2, 'com_modules.module.92', 'DevOps is the law', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(76, 18, 114, 115, 2, 'com_modules.module.93', 'Pretotype is the law', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(77, 18, 116, 117, 2, 'com_modules.module.94', 'lean is the law', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(78, 18, 118, 119, 2, 'com_modules.module.95', 'Lean es lo maximo', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(79, 18, 120, 121, 2, 'com_modules.module.96', 'Pretotype es lo maximo', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(80, 18, 122, 123, 2, 'com_modules.module.97', 'DevOps es lo maximo', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(81, 18, 124, 125, 2, 'com_modules.module.98', 'Blog', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(82, 18, 126, 127, 2, 'com_modules.module.99', 'Blog', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}'),\
(83, 18, 128, 129, 2, 'com_modules.module.100', 'Esto es una prueba', '\{"core.delete":\{"6":1\},"core.edit":\{"6":1,"4":1\},"core.edit.state":\{"6":1,"5":1\}\}');\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_associations`\
--\
\
CREATE TABLE `r0dnb_associations` (\
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',\
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',\
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',\
  PRIMARY KEY (`context`,`id`),\
  KEY `idx_key` (`key`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
--\
-- Volcado de datos para la tabla `r0dnb_associations`\
--\
\
INSERT INTO `r0dnb_associations` (`id`, `context`, `key`) VALUES\
(12, 'com_content.item', '09ae2721d198064030f0b07fafbb0295'),\
(14, 'com_content.item', '0fef760812b64db50374369bad4c3f2b'),\
(10, 'com_content.item', '2b695da5652df0c1f2ca6c68c15425b3'),\
(11, 'com_content.item', '434984c54e6ca33fdf1197a5052bbdd0'),\
(8, 'com_categories.item', '561c77e358dcd7d1fa24a922f1f1227c'),\
(7, 'com_content.item', '68e34ddd45e9e270649bbde238148450'),\
(2, 'com_content.item', '6e2e1575dcac0e67d78b838170a36037'),\
(5, 'com_content.item', '72e64c2f86157c288c6ce983668fa58b'),\
(1, 'com_content.item', '73ae3bb9ad77ec850463f5fcf2334593'),\
(9, 'com_categories.item', '9478985a32ca0ec4174e9a179c6c52a6'),\
(13, 'com_content.item', '9d62a01491840a9aa9130384614dca6e'),\
(9, 'com_content.item', 'ac45236d53bb0fcea72fca96d5e9d2fb'),\
(6, 'com_content.item', 'e68023736d3476b96e6ec25279a00602'),\
(3, 'com_content.item', 'ebf392631dd121a29b788929bfabb403'),\
(8, 'com_content.item', 'f06c6930ed49ab9cd60f93d2c7ae1caf'),\
(4, 'com_content.item', 'f4a1c82e1c9e05c16842ca3b54dd0fb4');\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_banners`\
--\
\
CREATE TABLE `r0dnb_banners` (\
  `id` int(11) NOT NULL AUTO_INCREMENT,\
  `cid` int(11) NOT NULL DEFAULT '0',\
  `type` int(11) NOT NULL DEFAULT '0',\
  `name` varchar(255) NOT NULL DEFAULT '',\
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',\
  `imptotal` int(11) NOT NULL DEFAULT '0',\
  `impmade` int(11) NOT NULL DEFAULT '0',\
  `clicks` int(11) NOT NULL DEFAULT '0',\
  `clickurl` varchar(200) NOT NULL DEFAULT '',\
  `state` tinyint(3) NOT NULL DEFAULT '0',\
  `catid` int(10) unsigned NOT NULL DEFAULT '0',\
  `description` text NOT NULL,\
  `custombannercode` varchar(2048) NOT NULL,\
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',\
  `ordering` int(11) NOT NULL DEFAULT '0',\
  `metakey` text NOT NULL,\
  `params` text NOT NULL,\
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',\
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',\
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',\
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',\
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',\
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',\
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `language` char(7) NOT NULL DEFAULT '',\
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',\
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',\
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',\
  `version` int(10) unsigned NOT NULL DEFAULT '1',\
  PRIMARY KEY (`id`),\
  KEY `idx_state` (`state`),\
  KEY `idx_own_prefix` (`own_prefix`),\
  KEY `idx_metakey_prefix` (`metakey_prefix`),\
  KEY `idx_banner_catid` (`catid`),\
  KEY `idx_language` (`language`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_banner_clients`\
--\
\
CREATE TABLE `r0dnb_banner_clients` (\
  `id` int(11) NOT NULL AUTO_INCREMENT,\
  `name` varchar(255) NOT NULL DEFAULT '',\
  `contact` varchar(255) NOT NULL DEFAULT '',\
  `email` varchar(255) NOT NULL DEFAULT '',\
  `extrainfo` text NOT NULL,\
  `state` tinyint(3) NOT NULL DEFAULT '0',\
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',\
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `metakey` text NOT NULL,\
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',\
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',\
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',\
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',\
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',\
  PRIMARY KEY (`id`),\
  KEY `idx_own_prefix` (`own_prefix`),\
  KEY `idx_metakey_prefix` (`metakey_prefix`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_banner_tracks`\
--\
\
CREATE TABLE `r0dnb_banner_tracks` (\
  `track_date` datetime NOT NULL,\
  `track_type` int(10) unsigned NOT NULL,\
  `banner_id` int(10) unsigned NOT NULL,\
  `count` int(10) unsigned NOT NULL DEFAULT '0',\
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),\
  KEY `idx_track_date` (`track_date`),\
  KEY `idx_track_type` (`track_type`),\
  KEY `idx_banner_id` (`banner_id`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_categories`\
--\
\
CREATE TABLE `r0dnb_categories` (\
  `id` int(11) NOT NULL AUTO_INCREMENT,\
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',\
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',\
  `lft` int(11) NOT NULL DEFAULT '0',\
  `rgt` int(11) NOT NULL DEFAULT '0',\
  `level` int(10) unsigned NOT NULL DEFAULT '0',\
  `path` varchar(255) NOT NULL DEFAULT '',\
  `extension` varchar(50) NOT NULL DEFAULT '',\
  `title` varchar(255) NOT NULL,\
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',\
  `note` varchar(255) NOT NULL DEFAULT '',\
  `description` mediumtext NOT NULL,\
  `published` tinyint(1) NOT NULL DEFAULT '0',\
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',\
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `access` int(10) unsigned NOT NULL DEFAULT '0',\
  `params` text NOT NULL,\
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',\
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',\
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',\
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',\
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',\
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `hits` int(10) unsigned NOT NULL DEFAULT '0',\
  `language` char(7) NOT NULL,\
  `version` int(10) unsigned NOT NULL DEFAULT '1',\
  PRIMARY KEY (`id`),\
  KEY `cat_idx` (`extension`,`published`,`access`),\
  KEY `idx_access` (`access`),\
  KEY `idx_checkout` (`checked_out`),\
  KEY `idx_path` (`path`),\
  KEY `idx_left_right` (`lft`,`rgt`),\
  KEY `idx_alias` (`alias`),\
  KEY `idx_language` (`language`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;\
\
--\
-- Volcado de datos para la tabla `r0dnb_categories`\
--\
\
INSERT INTO `r0dnb_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES\
(1, 0, 0, 0, 17, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '\{\}', '', '', '', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),\
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '\{"target":"","image":""\}', '', '', '\{"page_title":"","author":"","robots":""\}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),\
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '\{"target":"","image":"","foobar":""\}', '', '', '\{"page_title":"","author":"","robots":""\}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),\
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '\{"target":"","image":""\}', '', '', '\{"page_title":"","author":"","robots":""\}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),\
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '\{"target":"","image":""\}', '', '', '\{"page_title":"","author":"","robots":""\}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),\
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '\{"target":"","image":""\}', '', '', '\{"page_title":"","author":"","robots":""\}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),\
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '\{"target":"","image":""\}', '', '', '\{"page_title":"","author":"","robots":""\}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),\
(8, 69, 1, 13, 14, 1, 'imagenes-icecaurosel', 'com_content', 'Imagenes IceCaurosel Esp', 'imagenes-icecaurosel', '', '', 1, 0, '0000-00-00 00:00:00', 1, '\{"category_layout":"","image":""\}', '', '', '\{"author":"","robots":""\}', 880, '2014-01-23 12:17:53', 880, '2014-01-23 12:22:41', 0, 'es-ES', 1),\
(9, 72, 1, 15, 16, 1, 'imagenes-icecaurosel-eng', 'com_content', 'Imagenes IceCaurosel Eng', 'imagenes-icecaurosel-eng', '', '', 1, 0, '0000-00-00 00:00:00', 1, '\{"category_layout":"","image":""\}', '', '', '\{"author":"","robots":""\}', 880, '2014-01-23 12:22:28', 0, '0000-00-00 00:00:00', 0, 'en-GB', 1);\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_contact_details`\
--\
\
CREATE TABLE `r0dnb_contact_details` (\
  `id` int(11) NOT NULL AUTO_INCREMENT,\
  `name` varchar(255) NOT NULL DEFAULT '',\
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',\
  `con_position` varchar(255) DEFAULT NULL,\
  `address` text,\
  `suburb` varchar(100) DEFAULT NULL,\
  `state` varchar(100) DEFAULT NULL,\
  `country` varchar(100) DEFAULT NULL,\
  `postcode` varchar(100) DEFAULT NULL,\
  `telephone` varchar(255) DEFAULT NULL,\
  `fax` varchar(255) DEFAULT NULL,\
  `misc` mediumtext,\
  `image` varchar(255) DEFAULT NULL,\
  `email_to` varchar(255) DEFAULT NULL,\
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',\
  `published` tinyint(1) NOT NULL DEFAULT '0',\
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',\
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `ordering` int(11) NOT NULL DEFAULT '0',\
  `params` text NOT NULL,\
  `user_id` int(11) NOT NULL DEFAULT '0',\
  `catid` int(11) NOT NULL DEFAULT '0',\
  `access` int(10) unsigned NOT NULL DEFAULT '0',\
  `mobile` varchar(255) NOT NULL DEFAULT '',\
  `webpage` varchar(255) NOT NULL DEFAULT '',\
  `sortname1` varchar(255) NOT NULL,\
  `sortname2` varchar(255) NOT NULL,\
  `sortname3` varchar(255) NOT NULL,\
  `language` char(7) NOT NULL,\
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',\
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',\
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',\
  `metakey` text NOT NULL,\
  `metadesc` text NOT NULL,\
  `metadata` text NOT NULL,\
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',\
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',\
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `version` int(10) unsigned NOT NULL DEFAULT '1',\
  `hits` int(10) unsigned NOT NULL DEFAULT '0',\
  PRIMARY KEY (`id`),\
  KEY `idx_access` (`access`),\
  KEY `idx_checkout` (`checked_out`),\
  KEY `idx_state` (`published`),\
  KEY `idx_catid` (`catid`),\
  KEY `idx_createdby` (`created_by`),\
  KEY `idx_featured_catid` (`featured`,`catid`),\
  KEY `idx_language` (`language`),\
  KEY `idx_xreference` (`xreference`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_content`\
--\
\
CREATE TABLE `r0dnb_content` (\
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,\
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',\
  `title` varchar(255) NOT NULL DEFAULT '',\
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',\
  `introtext` mediumtext NOT NULL,\
  `fulltext` mediumtext NOT NULL,\
  `state` tinyint(3) NOT NULL DEFAULT '0',\
  `catid` int(10) unsigned NOT NULL DEFAULT '0',\
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',\
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',\
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',\
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',\
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `images` text NOT NULL,\
  `urls` text NOT NULL,\
  `attribs` varchar(5120) NOT NULL,\
  `version` int(10) unsigned NOT NULL DEFAULT '1',\
  `ordering` int(11) NOT NULL DEFAULT '0',\
  `metakey` text NOT NULL,\
  `metadesc` text NOT NULL,\
  `access` int(10) unsigned NOT NULL DEFAULT '0',\
  `hits` int(10) unsigned NOT NULL DEFAULT '0',\
  `metadata` text NOT NULL,\
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',\
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',\
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',\
  PRIMARY KEY (`id`),\
  KEY `idx_access` (`access`),\
  KEY `idx_checkout` (`checked_out`),\
  KEY `idx_state` (`state`),\
  KEY `idx_catid` (`catid`),\
  KEY `idx_createdby` (`created_by`),\
  KEY `idx_featured_catid` (`featured`,`catid`),\
  KEY `idx_language` (`language`),\
  KEY `idx_xreference` (`xreference`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;\
\
--\
-- Volcado de datos para la tabla `r0dnb_content`\
--\
\
INSERT INTO `r0dnb_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES\
(1, 58, 'Inicio', 'inicio', '<p>Este es el inicio en espa\'f1ol</p>', '', 1, 2, '2014-01-22 21:13:32', 880, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-01-22 21:13:32', '0000-00-00 00:00:00', '\{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""\}', '\{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""\}', '\{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""\}', 1, 9, '', '', 1, 166, '\{"robots":"","author":"","rights":"","xreference":""\}', 0, 'es-ES', ''),\
(2, 59, 'Home', 'home', '<p>This is the home for english language</p>', '', 1, 2, '2014-01-22 21:14:13', 880, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-01-22 21:14:13', '0000-00-00 00:00:00', '\{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""\}', '\{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""\}', '\{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""\}', 1, 8, '', '', 1, 81, '\{"robots":"","author":"","rights":"","xreference":""\}', 0, 'en-GB', ''),\
(3, 60, 'Servicios', 'servicios', '<p>Esta es la pagina de servicios</p>', '', 1, 2, '2014-01-22 21:32:45', 880, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-01-22 21:32:45', '0000-00-00 00:00:00', '\{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""\}', '\{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""\}', '\{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""\}', 1, 7, '', '', 1, 9, '\{"robots":"","author":"","rights":"","xreference":""\}', 0, 'es-ES', ''),\
(4, 61, 'Services', 'services', '<p>This is the services page</p>', '', 1, 2, '2014-01-22 21:33:24', 880, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-01-22 21:33:24', '0000-00-00 00:00:00', '\{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""\}', '\{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""\}', '\{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""\}', 1, 6, '', '', 1, 6, '\{"robots":"","author":"","rights":"","xreference":""\}', 0, 'en-GB', ''),\
(5, 62, 'Partners', 'partners', '<p>This is the partners page</p>', '', 1, 2, '2014-01-22 21:40:30', 880, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-01-22 21:40:30', '0000-00-00 00:00:00', '\{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""\}', '\{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""\}', '\{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""\}', 1, 5, '', '', 1, 4, '\{"robots":"","author":"","rights":"","xreference":""\}', 0, 'en-GB', ''),\
(6, 63, 'Partners', 'partners-es', '<p>Esta es la pagina sobre partners</p>', '', 1, 2, '2014-01-22 21:41:09', 880, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-01-22 21:41:09', '0000-00-00 00:00:00', '\{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""\}', '\{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""\}', '\{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""\}', 1, 4, '', '', 1, 5, '\{"robots":"","author":"","rights":"","xreference":""\}', 0, 'es-ES', ''),\
(7, 64, 'Contactanos', 'contactanos', '<p>En esta pagina podras contactarnos</p>', '', 1, 2, '2014-01-22 21:42:13', 880, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-01-22 21:42:13', '0000-00-00 00:00:00', '\{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""\}', '\{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""\}', '\{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""\}', 1, 3, '', '', 1, 5, '\{"robots":"","author":"","rights":"","xreference":""\}', 0, 'es-ES', ''),\
(8, 65, 'Contact Us', 'contact-us', '<p>In this page you will be able to contact us</p>', '', 1, 2, '2014-01-22 21:42:51', 880, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-01-22 21:42:51', '0000-00-00 00:00:00', '\{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""\}', '\{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""\}', '\{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""\}', 1, 2, '', '', 1, 4, '\{"robots":"","author":"","rights":"","xreference":""\}', 0, 'en-GB', ''),\
(9, 66, 'Community', 'community', '<p>This page will have a forum</p>', '', 1, 2, '2014-01-22 21:43:16', 880, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-01-22 21:43:16', '0000-00-00 00:00:00', '\{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""\}', '\{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""\}', '\{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""\}', 1, 1, '', '', 1, 4, '\{"robots":"","author":"","rights":"","xreference":""\}', 0, 'en-GB', ''),\
(10, 67, 'Comunidad', 'comunidad', '<p>Esta pagina tendra un foro</p>', '', 1, 2, '2014-01-22 21:43:42', 880, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-01-22 21:43:42', '0000-00-00 00:00:00', '\{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""\}', '\{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""\}', '\{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""\}', 1, 0, '', '', 1, 5, '\{"robots":"","author":"","rights":"","xreference":""\}', 0, 'es-ES', ''),\
(11, 70, 'DevOps es el futuro', 'devops-es-el-futuro', '<p><img src="images/IceCaurosel/devops.jpg" alt="" /></p>', '', 1, 8, '2014-01-23 12:20:12', 880, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-01-23 12:20:12', '0000-00-00 00:00:00', '\{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""\}', '\{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""\}', '\{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""\}', 1, 1, '', '', 1, 14, '\{"robots":"","author":"","rights":"","xreference":""\}', 0, 'es-ES', ''),\
(12, 71, 'Continuous Delivery es el futuro', 'continuous-delivery-es-el-futuro', '<p><img src="images/IceCaurosel/continuous-delivery.png" alt="" /><span style="line-height: 1.3em;"><br /></span></p>', '', 1, 8, '2014-01-23 12:21:08', 880, '', '2014-01-25 12:47:14', 880, 0, '0000-00-00 00:00:00', '2014-01-23 12:21:08', '0000-00-00 00:00:00', '\{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""\}', '\{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""\}', '\{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""\}', 9, 0, '', '', 1, 17, '\{"robots":"","author":"","rights":"","xreference":""\}', 0, 'es-ES', ''),\
(13, 73, 'DevOps is the future', 'devops-is-the-future', '<p><img src="images/IceCaurosel/devops.jpg" alt="" /></p>', '', 1, 9, '2014-01-23 12:23:42', 880, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-01-23 12:23:42', '0000-00-00 00:00:00', '\{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""\}', '\{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""\}', '\{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""\}', 1, 1, '', '', 1, 6, '\{"robots":"","author":"","rights":"","xreference":""\}', 0, 'en-GB', ''),\
(14, 74, 'Continuous Delivery is the future', 'continuous-delivery-is-the-future', '<p><img src="images/IceCaurosel/continuous-delivery.png" alt="" /></p>', '', 1, 9, '2014-01-23 12:24:24', 880, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-01-23 12:24:24', '0000-00-00 00:00:00', '\{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""\}', '\{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""\}', '\{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""\}', 1, 0, '', '', 1, 7, '\{"robots":"","author":"","rights":"","xreference":""\}', 0, 'en-GB', '');\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_contentitem_tag_map`\
--\
\
CREATE TABLE `r0dnb_contentitem_tag_map` (\
  `type_alias` varchar(255) NOT NULL DEFAULT '',\
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',\
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',\
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',\
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',\
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',\
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),\
  KEY `idx_tag_type` (`tag_id`,`type_id`),\
  KEY `idx_date_id` (`tag_date`,`tag_id`),\
  KEY `idx_tag` (`tag_id`),\
  KEY `idx_type` (`type_id`),\
  KEY `idx_core_content_id` (`core_content_id`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_content_frontpage`\
--\
\
CREATE TABLE `r0dnb_content_frontpage` (\
  `content_id` int(11) NOT NULL DEFAULT '0',\
  `ordering` int(11) NOT NULL DEFAULT '0',\
  PRIMARY KEY (`content_id`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_content_rating`\
--\
\
CREATE TABLE `r0dnb_content_rating` (\
  `content_id` int(11) NOT NULL DEFAULT '0',\
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',\
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',\
  `lastip` varchar(50) NOT NULL DEFAULT '',\
  PRIMARY KEY (`content_id`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_content_types`\
--\
\
CREATE TABLE `r0dnb_content_types` (\
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,\
  `type_title` varchar(255) NOT NULL DEFAULT '',\
  `type_alias` varchar(255) NOT NULL DEFAULT '',\
  `table` varchar(255) NOT NULL DEFAULT '',\
  `rules` text NOT NULL,\
  `field_mappings` text NOT NULL,\
  `router` varchar(255) NOT NULL DEFAULT '',\
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',\
  PRIMARY KEY (`type_id`),\
  KEY `idx_alias` (`type_alias`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10000 ;\
\
--\
-- Volcado de datos para la tabla `r0dnb_content_types`\
--\
\
INSERT INTO `r0dnb_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES\
(1, 'Article', 'com_content.article', '\{"special":\{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"\},"common":\{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"\}\}', '', '\{"common":\{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"\}, "special":\{"fulltext":"fulltext"\}\}', 'ContentHelperRoute::getArticleRoute', '\{"formFile":"administrator\\\\/components\\\\/com_content\\\\/models\\\\/forms\\\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[\{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"\},\{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\},\{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"\},\{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\} ]\}'),\
(2, 'Weblink', 'com_weblinks.weblink', '\{"special":\{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"\},"common":\{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"\}\}', '', '\{"common":\{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"\}, "special":\{\}\}', 'WeblinksHelperRoute::getWeblinkRoute', '\{"formFile":"administrator\\\\/components\\\\/com_weblinks\\\\/models\\\\/forms\\\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[\{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"\},\{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\},\{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"\},\{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\} ]\}'),\
(3, 'Contact', 'com_contact.contact', '\{"special":\{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"\},"common":\{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"\}\}', '', '\{"common":\{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"\}, "special":\{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"\}\}', 'ContactHelperRoute::getContactRoute', '\{"formFile":"administrator\\\\/components\\\\/com_contact\\\\/models\\\\/forms\\\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ \{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\},\{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"\},\{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\},\{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"\},\{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\} ] \}'),\
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '\{"special":\{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"\},"common":\{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"\}\}', '', '\{"common":\{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"\}, "special":\{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"\}\}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '\{"formFile":"administrator\\\\/components\\\\/com_newsfeeds\\\\/models\\\\/forms\\\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[\{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"\},\{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\},\{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"\},\{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\} ]\}'),\
(5, 'User', 'com_users.user', '\{"special":\{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"\},"common":\{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"\}\}', '', '\{"common":\{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"\}, "special":\{\}\}', 'UsersHelperRoute::getUserRoute', ''),\
(6, 'Article Category', 'com_content.category', '\{"special":\{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"\},"common":\{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"\}\}', '', '\{"common":\{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"\}, "special":\{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"\}\}', 'ContentHelperRoute::getCategoryRoute', '\{"formFile":"administrator\\\\/components\\\\/com_categories\\\\/models\\\\/forms\\\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[\{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\},\{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"\},\{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\},\{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"\}]\}'),\
(7, 'Contact Category', 'com_contact.category', '\{"special":\{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"\},"common":\{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"\}\}', '', '\{"common":\{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"\}, "special":\{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"\}\}', 'ContactHelperRoute::getCategoryRoute', '\{"formFile":"administrator\\\\/components\\\\/com_categories\\\\/models\\\\/forms\\\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[\{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\},\{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"\},\{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\},\{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"\}]\}'),\
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '\{"special":\{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"\},"common":\{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"\}\}', '', '\{"common":\{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"\}, "special":\{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"\}\}', 'NewsfeedsHelperRoute::getCategoryRoute', '\{"formFile":"administrator\\\\/components\\\\/com_categories\\\\/models\\\\/forms\\\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[\{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\},\{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"\},\{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\},\{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"\}]\}'),\
(9, 'Weblinks Category', 'com_weblinks.category', '\{"special":\{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"\},"common":\{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"\}\}', '', '\{"common":\{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"\}, "special":\{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"\}\}', 'WeblinksHelperRoute::getCategoryRoute', '\{"formFile":"administrator\\\\/components\\\\/com_categories\\\\/models\\\\/forms\\\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[\{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\},\{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"\},\{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\},\{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"\}]\}'),\
(10, 'Tag', 'com_tags.tag', '\{"special":\{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"\},"common":\{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"\}\}', '', '\{"common":\{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"\}, "special":\{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"\}\}', 'TagsHelperRoute::getTagRoute', '\{"formFile":"administrator\\\\/components\\\\/com_tags\\\\/models\\\\/forms\\\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[\{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\}, \{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"\}, \{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\}]\}'),\
(11, 'Banner', 'com_banners.banner', '\{"special":\{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"\},"common":\{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"\}\}', '', '\{"common":\{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"\}, "special":\{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"\}\}', '', '\{"formFile":"administrator\\\\/components\\\\/com_banners\\\\/models\\\\/forms\\\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[\{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"\}, \{"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"\}, \{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\},\{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\} ]\}'),\
(12, 'Banners Category', 'com_banners.category', '\{"special":\{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"\},"common":\{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"\}\}', '', '\{"common":\{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"\}, "special": \{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"\}\}', '', '\{"formFile":"administrator\\\\/components\\\\/com_categories\\\\/models\\\\/forms\\\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[\{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\},\{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"\},\{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\},\{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"\}]\}'),\
(13, 'Banner Client', 'com_banners.client', '\{"special":\{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"\}\}', '', '', '', '\{"formFile":"administrator\\\\/components\\\\/com_banners\\\\/models\\\\/forms\\\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]\}'),\
(14, 'User Notes', 'com_users.note', '\{"special":\{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"\}\}', '', '', '', '\{"formFile":"administrator\\\\/components\\\\/com_users\\\\/models\\\\/forms\\\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[\{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"\}, \{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\}, \{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\}, \{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\}]\}'),\
(15, 'User Notes Category', 'com_users.category', '\{"special":\{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"\},"common":\{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"\}\}', '', '\{"common":\{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"\}, "special":\{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"\}\}', '', '\{"formFile":"administrator\\\\/components\\\\/com_categories\\\\/models\\\\/forms\\\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[\{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\}, \{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"\},\{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"\},\{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"\}]\}');\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_core_log_searches`\
--\
\
CREATE TABLE `r0dnb_core_log_searches` (\
  `search_term` varchar(128) NOT NULL DEFAULT '',\
  `hits` int(10) unsigned NOT NULL DEFAULT '0'\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_extensions`\
--\
\
CREATE TABLE `r0dnb_extensions` (\
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,\
  `name` varchar(100) NOT NULL,\
  `type` varchar(20) NOT NULL,\
  `element` varchar(100) NOT NULL,\
  `folder` varchar(100) NOT NULL,\
  `client_id` tinyint(3) NOT NULL,\
  `enabled` tinyint(3) NOT NULL DEFAULT '1',\
  `access` int(10) unsigned NOT NULL DEFAULT '1',\
  `protected` tinyint(3) NOT NULL DEFAULT '0',\
  `manifest_cache` text NOT NULL,\
  `params` text NOT NULL,\
  `custom_data` text NOT NULL,\
  `system_data` text NOT NULL,\
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',\
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `ordering` int(11) DEFAULT '0',\
  `state` int(11) DEFAULT '0',\
  PRIMARY KEY (`extension_id`),\
  KEY `element_clientid` (`element`,`client_id`),\
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),\
  KEY `extension` (`type`,`element`,`folder`,`client_id`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10007 ;\
\
--\
-- Volcado de datos para la tabla `r0dnb_extensions`\
--\
\
INSERT INTO `r0dnb_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES\
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '\{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '\{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\n\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '\{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\n\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '\{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\n\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""\}', '\{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '\{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '\{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '\{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\\\n\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '\{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\n\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""\}', '\{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '\{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '\{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '\{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\n\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""\}', '\{"administrator":"en-GB","site":"en-GB"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '\{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '\{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""\}', '\{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\\\/jpeg,image\\\\/gif,image\\\\/png,image\\\\/bmp,application\\\\/x-shockwave-flash,application\\\\/msword,application\\\\/excel,application\\\\/pdf,application\\\\/powerpoint,text\\\\/plain,application\\\\/x-zip","upload_mime_illegal":"text\\\\/html"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '\{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '\{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '\{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '\{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""\}', '\{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '\{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '\{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\n\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""\}', '\{"enabled":"0","show_date":"1"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '\{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""\}', '\{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '\{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\n\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""\}', '\{"target":"0","save_history":"1","history_limit":5,"count_clicks":"1","icons":1,"link_icons":"","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '\{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""\}', '\{"article_layout":"_:default","show_title":"0","link_titles":"0","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_tags":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '\{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""\}', '\{"filters":\{"1":\{"filter_type":"NH","filter_tags":"","filter_attributes":""\},"6":\{"filter_type":"BL","filter_tags":"","filter_attributes":""\},"7":\{"filter_type":"NONE","filter_tags":"","filter_attributes":""\},"2":\{"filter_type":"NH","filter_tags":"","filter_attributes":""\},"3":\{"filter_type":"BL","filter_tags":"","filter_attributes":""\},"4":\{"filter_type":"BL","filter_tags":"","filter_attributes":""\},"5":\{"filter_type":"BL","filter_tags":"","filter_attributes":""\},"10":\{"filter_type":"BL","filter_tags":"","filter_attributes":""\},"12":\{"filter_type":"BL","filter_tags":"","filter_attributes":""\},"8":\{"filter_type":"NONE","filter_tags":"","filter_attributes":""\}\}\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '\{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '\{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""\}', '\{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"13","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '\{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""\}', '\{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '\{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '\{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":""\}', '\{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '\{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '\{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '\{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '\{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\\\/\\\\/github.com\\\\/PHPMailer\\\\/PHPMailer","version":"5.2.6","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '\{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\\\/\\\\/simplepie.org\\\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '\{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\\\/\\\\/sourceforge.net\\\\/projects\\\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '\{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\\\/\\\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""\}', '\{"mediaversion":"7a87dc8e4e23c28966d31b2c73bc0f8b"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '\{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\\\/\\\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\\\/\\\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '\{"name":"FOF","type":"library","creationDate":"2013-12-14","author":"Nicholas K. Dionysopoulos \\\\/ Akeeba Ltd","copyright":"(C)2011-2013 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\\\/\\\\/www.akeebabackup.com","version":"2.1.1","description":"LIB_FOF_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '\{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters.\\\\n\\\\t\\\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '\{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '\{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '\{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '\{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '\{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '\{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '\{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '\{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '\{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '\{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '\{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '\{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '\{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '\{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '\{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '\{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '\{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '\{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '\{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '\{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '\{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '\{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '\{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '\{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '\{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '\{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '\{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '\{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '\{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '\{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '\{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '\{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '\{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '\{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '\{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '\{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""\}', '\{"cache":"0"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '\{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""\}', '\{"format":"short","product":"1","cache":"0"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '\{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""\}', '\{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '\{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":""\}', '\{"maximum":"5","timeframe":"alltime","owncache":"1"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '\{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":""\}', '\{"maximum":"5","matchtype":"any","owncache":"1"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '\{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""\}', '\{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""\}', '', '', 0, '0000-00-00 00:00:00', 1, 0),\
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '\{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '\{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""\}', '\{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"\}', '', '', 0, '0000-00-00 00:00:00', 3, 0),\
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '\{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""\}', '\{"mode":"1"\}', '', '', 0, '0000-00-00 00:00:00', 1, 0),\
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '\{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""\}', '\{"style":"xhtml"\}', '', '', 0, '2011-09-18 15:22:50', 0, 0),\
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '\{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""\}', '\{"title":"1","multipage_toc":"1","showall":"1"\}', '', '', 0, '0000-00-00 00:00:00', 4, 0),\
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '\{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""\}', '\{"position":"1"\}', '', '', 0, '0000-00-00 00:00:00', 5, 0),\
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '\{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),\
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '\{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\\\/A","authorUrl":"","version":"3.15","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""\}', '\{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"\}', '', '', 0, '0000-00-00 00:00:00', 1, 0),\
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '\{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),\
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '\{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.0.10","description":"PLG_TINY_XML_DESCRIPTION","group":""\}', '\{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""\}', '', '', 0, '0000-00-00 00:00:00', 3, 0),\
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '\{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),\
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '\{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),\
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '\{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),\
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '\{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),\
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '\{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""\}', '\{"search_limit":"50","search_content":"1","search_archived":"1"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0);\
INSERT INTO `r0dnb_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES\
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '\{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""\}', '\{"search_limit":"50","search_content":"1","search_archived":"1"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '\{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""\}', '\{"search_limit":"50","search_content":"1","search_archived":"1"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '\{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""\}', '\{"search_limit":"50","search_content":"1","search_archived":"1"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '\{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""\}', '\{"search_limit":"50","search_content":"1","search_archived":"1"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 1, 1, 1, '\{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),\
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '\{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""\}', '\{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"\}', '', '', 0, '0000-00-00 00:00:00', 2, 0),\
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '\{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""\}', '\{"browsercache":"0","cachetime":"15"\}', '', '', 0, '0000-00-00 00:00:00', 9, 0),\
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '\{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""\}', '\{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""\}', '', '', 0, '0000-00-00 00:00:00', 4, 0),\
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '\{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),\
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '\{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),\
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '\{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),\
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '\{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),\
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '\{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),\
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '\{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""\}', '\{"autowebpage":"","category":"34","autopublish":"0"\}', '', '', 0, '0000-00-00 00:00:00', 1, 0),\
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '\{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""\}', '\{"strong_passwords":"1","autoregister":"1"\}', '', '', 0, '0000-00-00 00:00:00', 2, 0),\
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '\{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""\}', '\{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '\{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),\
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '\{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '\{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),\
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '\{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '\{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '\{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""\}', '\{"public_key":"","private_key":"","theme":"clean"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '\{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),\
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '\{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '\{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),\
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '\{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),\
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '\{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),\
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '\{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),\
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '\{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),\
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '\{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '\{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '\{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '\{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '\{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\\\/\\\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""\}', '\{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '\{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\\\/\\\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""\}', '\{"showSiteName":"0","colourChoice":"0","boldText":"0"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '\{"name":"protostar","type":"template","creationDate":"4\\\\/30\\\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""\}', '\{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '\{"name":"isis","type":"template","creationDate":"3\\\\/30\\\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""\}', '\{"templateColor":"","logoFile":""\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '\{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.1","description":"en-GB site language","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '\{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.1","description":"en-GB administrator language","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '\{"name":"files_joomla","type":"file","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""\}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(10000, 'SpanishES', 'language', 'es-ES', '', 0, 1, 0, 0, '\{"name":"Spanish (ES)","type":"language","creationDate":"2013-12-18","author":"Spanish Translation Team: Comunidad Joomla","copyright":"Copyright (C) 2005 - 2013 Open Source Matters and comunidadjoomla.org. All rights reserved.","authorEmail":"info@comunidadjoomla.org","authorUrl":"www.comunidadjoomla.org","version":"3.2.1.1","description":"Spanish language pack for Joomla! 3.2.1 - Site","group":""\}', '\{\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(10001, 'SpanishES', 'language', 'es-ES', '', 1, 1, 0, 0, '\{"name":"Spanish (ES)","type":"language","creationDate":"2013-12-18","author":"Spanish Translation Team: Comunidad Joomla","copyright":"Copyright (C) 2005 - 2013 Open Source Matters and comunidadjoomla.org. All rights reserved.","authorEmail":"info@comunidadjoomla.org","authorUrl":"www.comunidadjoomla.org","version":"3.2.1.1","description":"Spanish language pack for Joomla! 3.2.1 - Administrator","group":""\}', '\{\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(10002, 'es-ES', 'package', 'pkg_es-ES', '', 0, 1, 1, 0, '\{"name":"Spanish Language Pack","type":"package","creationDate":"18 de diciembre del 2013","author":"Spanish Translation Team: comunidadjoomla.org","copyright":"Copyright (C) 2005 - 2013 comunidadjoomla.org and Open Source Matters. All rights reserved.","authorEmail":"info@comunidadjoomla.org","authorUrl":"www.comunidadjoomla.org","version":"3.2.1.1","description":"\\\\n\\\\t\\\\t<div style=\\\\"text-align:left;\\\\">\\\\n\\\\t\\\\t<h2>Successfully installed the spanish language pack for Joomla! 3.2.1.<\\\\/h2>\\\\n\\\\t\\\\t<p><\\\\/p>\\\\n\\\\t\\\\t<p>Please report any bugs or issues at the Comunidad Joomla! <a href=\\\\"http:\\\\/\\\\/foro.comunidadjoomla.org\\\\/traduccion-ext\\\\/\\\\" target=\\\\"_blank\\\\">Translation forum<\\\\/a><\\\\/p>\\\\n\\\\t\\\\t<p><\\\\/p>\\\\n\\\\t\\\\t<p>Translated by: <a href=\\\\"http:\\\\/\\\\/www.comunidadjoomla.org\\\\" target=\\\\"_blank\\\\" title=\\\\"\\\\">The spanish translation team of Comunidad Joomla!<\\\\/a><\\\\/p>\\\\n\\\\t\\\\t<h2>El paquete en espa\\\\u00f1ol para Joomla! 3.2.1 se ha instalado correctamente.<\\\\/h2>\\\\n\\\\t\\\\t<p><\\\\/p>\\\\n\\\\t\\\\t<p>Por favor, reporte cualquier bug o asunto relacionado a nuestro <a href=\\\\"http:\\\\/\\\\/foro.comunidadjoomla.org\\\\/traduccion-ext\\\\/\\\\" target=\\\\"_blank\\\\">Foro de traducciones<\\\\/a><\\\\/p>\\\\n\\\\t\\\\t<p><\\\\/p>\\\\n\\\\t\\\\t<p>Traducci\\\\u00f3n: <a href=\\\\"http:\\\\/\\\\/www.comunidadjoomla.org\\\\" target=\\\\"_blank\\\\" title=\\\\"\\\\">El equipo de traducci\\\\u00f3n de Comunidad Joomla!<\\\\/a><\\\\/p>\\\\n\\\\t\\\\t<\\\\/div>\\\\n\\\\t\\\\t","group":""\}', '\{\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(10003, 'ice_future', 'template', 'ice_future', '', 0, 1, 1, 0, '\{"name":"ice_future","type":"template","creationDate":"10\\\\/31\\\\/2012","author":"IceTheme","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"support@icetheme.com","authorUrl":"","version":"1.0","description":"TPL_XML_DESCRIPTION","group":""\}', '\{"TemplateStyle":"style1","styleswitcher":"1","logo":"","":"","go2top":"1","responsive_template":"1","social_fb":"1","social_fb_user":"icetheme","social_tw":"1","social_tw_user":"icetheme","icelogo":"1"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(10004, 'IceMegaMenu Module', 'module', 'mod_icemegamenu', '', 0, 1, 0, 0, '\{"name":"IceMegaMenu Module","type":"module","creationDate":"March 2011","author":"IceTheme","copyright":"GNU \\\\/ GPL","authorEmail":"info@icetheme.com","authorUrl":"http:\\\\/\\\\/www.icetheme.com","version":"3.0.0","description":"IceMegaMenu extension is a powerful Joomla (module + plugin) to help you take the most from the navigation system. Top features includes ability to split dropdown columns, option to load modules inside the dropdown, works without JavaScript and much more.","group":""\}', '\{"theme_style":"","startLevel":"1","endLevel":"0","showAllChildren":"1","resizable_menu":"1","":"","class_sfx":"","window_open":"","tag_id":"","moduleclass_sfx":"","cache":"1","cache_time":"30","enable_bootrap":"0"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(10005, 'IceMegaMenu Plugin', 'plugin', 'icemegamenu', 'system', 0, 1, 1, 0, '\{"name":"IceMegaMenu Plugin","type":"plugin","creationDate":"Mrch 2011","author":"www.icetheme.com","copyright":"Copyright (C) Copyright  2008 - 2011 IceTheme.com. All rights reserved.","authorEmail":"info@icethemes.com","authorUrl":"http:\\\\/\\\\/www.icethemes.com","version":"3.0.0","description":"IceMegaMenu plugin used in conjuction with the IceMegaMenu Module. You may change the paramters to each menu item throught the Menu Manager","group":""\}', '\{\}', '', '', 0, '0000-00-00 00:00:00', 0, 0),\
(10006, 'IceCarosuel Module', 'module', 'mod_ice_carousel', '', 0, 1, 0, 0, '\{"name":"IceCarosuel Module","type":"module","creationDate":"November 2010","author":"IceTheme","copyright":"GNU \\\\/ GPL","authorEmail":"info@icetheme.com","authorUrl":"http:\\\\/\\\\/www.icetheme.com","version":"3.0.0","description":"\\\\n\\\\t\\\\n\\\\t <a target=\\\\"_blank\\\\" href=\\\\"icetheme.com\\\\"><b>IceCarosuel  Module<\\\\/b><\\\\/a> <\\\\/br><br>IceCarosuel Module can display a set of articles in a small area on your website in an accordion way. This Module is released under the GPL license.<br><br><ul><li><a target=\\\\"_blank\\\\" href=\\\\"http:\\\\/\\\\/icetheme.com\\\\/Joomla-Extensions\\\\/icecarousel.html\\\\">IceCarosuel Page<\\\\/a><\\\\/li><li><a target=\\\\"_blank\\\\" href=\\\\"http:\\\\/\\\\/icetheme.com\\\\/Forums\\\\">Discussion<\\\\/a><\\\\/li><\\\\/ul><\\\\/li><\\\\/ul> <script type=\\\\"text\\\\/javascript\\\\" src=\\\\"..\\\\/modules\\\\/mod_ice_carousel\\\\/assets\\\\/form.js\\\\"><\\\\/script> <style>.lof-group\{ padding:2px;color:#666;background:#CCC;cursor:hand; font-weight:bold; cursor:pointer\}<\\\\/style>\\\\n\\\\t\\\\n\\\\t","group":""\}', '\{"theme":"- Use Default -","":"","main_width":"600","main_height":"300","auto_renderthumb":"1","alway_render_thumb":"0","image_quanlity":"75","data_source":"content","source_from":"catid","catid":"","ordering":"a.publish_up","display_arrows":"1","display_caption":"1","limit_items":"5","title_max_chars":"100","description_max_chars":"100","strip_tags":"1","interval":"5000","effect":"Slide Next","auto_start":"0","moduleclass_sfx":"","enable_cache":"0","cache_time":"15","enable_bootrap":"0"\}', '', '', 0, '0000-00-00 00:00:00', 0, 0);\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_filters`\
--\
\
CREATE TABLE `r0dnb_finder_filters` (\
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,\
  `title` varchar(255) NOT NULL,\
  `alias` varchar(255) NOT NULL,\
  `state` tinyint(1) NOT NULL DEFAULT '1',\
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `created_by` int(10) unsigned NOT NULL,\
  `created_by_alias` varchar(255) NOT NULL,\
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',\
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',\
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',\
  `data` text NOT NULL,\
  `params` mediumtext,\
  PRIMARY KEY (`filter_id`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_links`\
--\
\
CREATE TABLE `r0dnb_finder_links` (\
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,\
  `url` varchar(255) NOT NULL,\
  `route` varchar(255) NOT NULL,\
  `title` varchar(255) DEFAULT NULL,\
  `description` varchar(255) DEFAULT NULL,\
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `md5sum` varchar(32) DEFAULT NULL,\
  `published` tinyint(1) NOT NULL DEFAULT '1',\
  `state` int(5) DEFAULT '1',\
  `access` int(5) DEFAULT '0',\
  `language` varchar(8) NOT NULL,\
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `list_price` double unsigned NOT NULL DEFAULT '0',\
  `sale_price` double unsigned NOT NULL DEFAULT '0',\
  `type_id` int(11) NOT NULL,\
  `object` mediumblob NOT NULL,\
  PRIMARY KEY (`link_id`),\
  KEY `idx_type` (`type_id`),\
  KEY `idx_title` (`title`),\
  KEY `idx_md5` (`md5sum`),\
  KEY `idx_url` (`url`(75)),\
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),\
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_links_terms0`\
--\
\
CREATE TABLE `r0dnb_finder_links_terms0` (\
  `link_id` int(10) unsigned NOT NULL,\
  `term_id` int(10) unsigned NOT NULL,\
  `weight` float unsigned NOT NULL,\
  PRIMARY KEY (`link_id`,`term_id`),\
  KEY `idx_term_weight` (`term_id`,`weight`),\
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_links_terms1`\
--\
\
CREATE TABLE `r0dnb_finder_links_terms1` (\
  `link_id` int(10) unsigned NOT NULL,\
  `term_id` int(10) unsigned NOT NULL,\
  `weight` float unsigned NOT NULL,\
  PRIMARY KEY (`link_id`,`term_id`),\
  KEY `idx_term_weight` (`term_id`,`weight`),\
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_links_terms2`\
--\
\
CREATE TABLE `r0dnb_finder_links_terms2` (\
  `link_id` int(10) unsigned NOT NULL,\
  `term_id` int(10) unsigned NOT NULL,\
  `weight` float unsigned NOT NULL,\
  PRIMARY KEY (`link_id`,`term_id`),\
  KEY `idx_term_weight` (`term_id`,`weight`),\
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_links_terms3`\
--\
\
CREATE TABLE `r0dnb_finder_links_terms3` (\
  `link_id` int(10) unsigned NOT NULL,\
  `term_id` int(10) unsigned NOT NULL,\
  `weight` float unsigned NOT NULL,\
  PRIMARY KEY (`link_id`,`term_id`),\
  KEY `idx_term_weight` (`term_id`,`weight`),\
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_links_terms4`\
--\
\
CREATE TABLE `r0dnb_finder_links_terms4` (\
  `link_id` int(10) unsigned NOT NULL,\
  `term_id` int(10) unsigned NOT NULL,\
  `weight` float unsigned NOT NULL,\
  PRIMARY KEY (`link_id`,`term_id`),\
  KEY `idx_term_weight` (`term_id`,`weight`),\
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_links_terms5`\
--\
\
CREATE TABLE `r0dnb_finder_links_terms5` (\
  `link_id` int(10) unsigned NOT NULL,\
  `term_id` int(10) unsigned NOT NULL,\
  `weight` float unsigned NOT NULL,\
  PRIMARY KEY (`link_id`,`term_id`),\
  KEY `idx_term_weight` (`term_id`,`weight`),\
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_links_terms6`\
--\
\
CREATE TABLE `r0dnb_finder_links_terms6` (\
  `link_id` int(10) unsigned NOT NULL,\
  `term_id` int(10) unsigned NOT NULL,\
  `weight` float unsigned NOT NULL,\
  PRIMARY KEY (`link_id`,`term_id`),\
  KEY `idx_term_weight` (`term_id`,`weight`),\
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_links_terms7`\
--\
\
CREATE TABLE `r0dnb_finder_links_terms7` (\
  `link_id` int(10) unsigned NOT NULL,\
  `term_id` int(10) unsigned NOT NULL,\
  `weight` float unsigned NOT NULL,\
  PRIMARY KEY (`link_id`,`term_id`),\
  KEY `idx_term_weight` (`term_id`,`weight`),\
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_links_terms8`\
--\
\
CREATE TABLE `r0dnb_finder_links_terms8` (\
  `link_id` int(10) unsigned NOT NULL,\
  `term_id` int(10) unsigned NOT NULL,\
  `weight` float unsigned NOT NULL,\
  PRIMARY KEY (`link_id`,`term_id`),\
  KEY `idx_term_weight` (`term_id`,`weight`),\
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_links_terms9`\
--\
\
CREATE TABLE `r0dnb_finder_links_terms9` (\
  `link_id` int(10) unsigned NOT NULL,\
  `term_id` int(10) unsigned NOT NULL,\
  `weight` float unsigned NOT NULL,\
  PRIMARY KEY (`link_id`,`term_id`),\
  KEY `idx_term_weight` (`term_id`,`weight`),\
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_links_termsa`\
--\
\
CREATE TABLE `r0dnb_finder_links_termsa` (\
  `link_id` int(10) unsigned NOT NULL,\
  `term_id` int(10) unsigned NOT NULL,\
  `weight` float unsigned NOT NULL,\
  PRIMARY KEY (`link_id`,`term_id`),\
  KEY `idx_term_weight` (`term_id`,`weight`),\
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_links_termsb`\
--\
\
CREATE TABLE `r0dnb_finder_links_termsb` (\
  `link_id` int(10) unsigned NOT NULL,\
  `term_id` int(10) unsigned NOT NULL,\
  `weight` float unsigned NOT NULL,\
  PRIMARY KEY (`link_id`,`term_id`),\
  KEY `idx_term_weight` (`term_id`,`weight`),\
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_links_termsc`\
--\
\
CREATE TABLE `r0dnb_finder_links_termsc` (\
  `link_id` int(10) unsigned NOT NULL,\
  `term_id` int(10) unsigned NOT NULL,\
  `weight` float unsigned NOT NULL,\
  PRIMARY KEY (`link_id`,`term_id`),\
  KEY `idx_term_weight` (`term_id`,`weight`),\
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_links_termsd`\
--\
\
CREATE TABLE `r0dnb_finder_links_termsd` (\
  `link_id` int(10) unsigned NOT NULL,\
  `term_id` int(10) unsigned NOT NULL,\
  `weight` float unsigned NOT NULL,\
  PRIMARY KEY (`link_id`,`term_id`),\
  KEY `idx_term_weight` (`term_id`,`weight`),\
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_links_termse`\
--\
\
CREATE TABLE `r0dnb_finder_links_termse` (\
  `link_id` int(10) unsigned NOT NULL,\
  `term_id` int(10) unsigned NOT NULL,\
  `weight` float unsigned NOT NULL,\
  PRIMARY KEY (`link_id`,`term_id`),\
  KEY `idx_term_weight` (`term_id`,`weight`),\
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_links_termsf`\
--\
\
CREATE TABLE `r0dnb_finder_links_termsf` (\
  `link_id` int(10) unsigned NOT NULL,\
  `term_id` int(10) unsigned NOT NULL,\
  `weight` float unsigned NOT NULL,\
  PRIMARY KEY (`link_id`,`term_id`),\
  KEY `idx_term_weight` (`term_id`,`weight`),\
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_taxonomy`\
--\
\
CREATE TABLE `r0dnb_finder_taxonomy` (\
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,\
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',\
  `title` varchar(255) NOT NULL,\
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',\
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',\
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',\
  PRIMARY KEY (`id`),\
  KEY `parent_id` (`parent_id`),\
  KEY `state` (`state`),\
  KEY `ordering` (`ordering`),\
  KEY `access` (`access`),\
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;\
\
--\
-- Volcado de datos para la tabla `r0dnb_finder_taxonomy`\
--\
\
INSERT INTO `r0dnb_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES\
(1, 0, 'ROOT', 0, 0, 0);\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_taxonomy_map`\
--\
\
CREATE TABLE `r0dnb_finder_taxonomy_map` (\
  `link_id` int(10) unsigned NOT NULL,\
  `node_id` int(10) unsigned NOT NULL,\
  PRIMARY KEY (`link_id`,`node_id`),\
  KEY `link_id` (`link_id`),\
  KEY `node_id` (`node_id`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_terms`\
--\
\
CREATE TABLE `r0dnb_finder_terms` (\
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,\
  `term` varchar(75) NOT NULL,\
  `stem` varchar(75) NOT NULL,\
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',\
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',\
  `weight` float unsigned NOT NULL DEFAULT '0',\
  `soundex` varchar(75) NOT NULL,\
  `links` int(10) NOT NULL DEFAULT '0',\
  `language` char(3) NOT NULL DEFAULT '',\
  PRIMARY KEY (`term_id`),\
  UNIQUE KEY `idx_term` (`term`),\
  KEY `idx_term_phrase` (`term`,`phrase`),\
  KEY `idx_stem_phrase` (`stem`,`phrase`),\
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_terms_common`\
--\
\
CREATE TABLE `r0dnb_finder_terms_common` (\
  `term` varchar(75) NOT NULL,\
  `language` varchar(3) NOT NULL,\
  KEY `idx_word_lang` (`term`,`language`),\
  KEY `idx_lang` (`language`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
--\
-- Volcado de datos para la tabla `r0dnb_finder_terms_common`\
--\
\
INSERT INTO `r0dnb_finder_terms_common` (`term`, `language`) VALUES\
('a', 'en'),\
('about', 'en'),\
('after', 'en'),\
('ago', 'en'),\
('all', 'en'),\
('am', 'en'),\
('an', 'en'),\
('and', 'en'),\
('ani', 'en'),\
('any', 'en'),\
('are', 'en'),\
('aren''t', 'en'),\
('as', 'en'),\
('at', 'en'),\
('be', 'en'),\
('but', 'en'),\
('by', 'en'),\
('for', 'en'),\
('from', 'en'),\
('get', 'en'),\
('go', 'en'),\
('how', 'en'),\
('if', 'en'),\
('in', 'en'),\
('into', 'en'),\
('is', 'en'),\
('isn''t', 'en'),\
('it', 'en'),\
('its', 'en'),\
('me', 'en'),\
('more', 'en'),\
('most', 'en'),\
('must', 'en'),\
('my', 'en'),\
('new', 'en'),\
('no', 'en'),\
('none', 'en'),\
('not', 'en'),\
('noth', 'en'),\
('nothing', 'en'),\
('of', 'en'),\
('off', 'en'),\
('often', 'en'),\
('old', 'en'),\
('on', 'en'),\
('onc', 'en'),\
('once', 'en'),\
('onli', 'en'),\
('only', 'en'),\
('or', 'en'),\
('other', 'en'),\
('our', 'en'),\
('ours', 'en'),\
('out', 'en'),\
('over', 'en'),\
('page', 'en'),\
('she', 'en'),\
('should', 'en'),\
('small', 'en'),\
('so', 'en'),\
('some', 'en'),\
('than', 'en'),\
('thank', 'en'),\
('that', 'en'),\
('the', 'en'),\
('their', 'en'),\
('theirs', 'en'),\
('them', 'en'),\
('then', 'en'),\
('there', 'en'),\
('these', 'en'),\
('they', 'en'),\
('this', 'en'),\
('those', 'en'),\
('thus', 'en'),\
('time', 'en'),\
('times', 'en'),\
('to', 'en'),\
('too', 'en'),\
('true', 'en'),\
('under', 'en'),\
('until', 'en'),\
('up', 'en'),\
('upon', 'en'),\
('use', 'en'),\
('user', 'en'),\
('users', 'en'),\
('veri', 'en'),\
('version', 'en'),\
('very', 'en'),\
('via', 'en'),\
('want', 'en'),\
('was', 'en'),\
('way', 'en'),\
('were', 'en'),\
('what', 'en'),\
('when', 'en'),\
('where', 'en'),\
('whi', 'en'),\
('which', 'en'),\
('who', 'en'),\
('whom', 'en'),\
('whose', 'en'),\
('why', 'en'),\
('wide', 'en'),\
('will', 'en'),\
('with', 'en'),\
('within', 'en'),\
('without', 'en'),\
('would', 'en'),\
('yes', 'en'),\
('yet', 'en'),\
('you', 'en'),\
('your', 'en'),\
('yours', 'en');\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_tokens`\
--\
\
CREATE TABLE `r0dnb_finder_tokens` (\
  `term` varchar(75) NOT NULL,\
  `stem` varchar(75) NOT NULL,\
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',\
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',\
  `weight` float unsigned NOT NULL DEFAULT '1',\
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',\
  `language` char(3) NOT NULL DEFAULT '',\
  KEY `idx_word` (`term`),\
  KEY `idx_context` (`context`)\
) ENGINE=MEMORY DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_tokens_aggregate`\
--\
\
CREATE TABLE `r0dnb_finder_tokens_aggregate` (\
  `term_id` int(10) unsigned NOT NULL,\
  `map_suffix` char(1) NOT NULL,\
  `term` varchar(75) NOT NULL,\
  `stem` varchar(75) NOT NULL,\
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',\
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',\
  `term_weight` float unsigned NOT NULL,\
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',\
  `context_weight` float unsigned NOT NULL,\
  `total_weight` float unsigned NOT NULL,\
  `language` char(3) NOT NULL DEFAULT '',\
  KEY `token` (`term`),\
  KEY `keyword_id` (`term_id`)\
) ENGINE=MEMORY DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_finder_types`\
--\
\
CREATE TABLE `r0dnb_finder_types` (\
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,\
  `title` varchar(100) NOT NULL,\
  `mime` varchar(100) NOT NULL,\
  PRIMARY KEY (`id`),\
  UNIQUE KEY `title` (`title`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_languages`\
--\
\
CREATE TABLE `r0dnb_languages` (\
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,\
  `lang_code` char(7) NOT NULL,\
  `title` varchar(50) NOT NULL,\
  `title_native` varchar(50) NOT NULL,\
  `sef` varchar(50) NOT NULL,\
  `image` varchar(50) NOT NULL,\
  `description` varchar(512) NOT NULL,\
  `metakey` text NOT NULL,\
  `metadesc` text NOT NULL,\
  `sitename` varchar(1024) NOT NULL DEFAULT '',\
  `published` int(11) NOT NULL DEFAULT '0',\
  `access` int(10) unsigned NOT NULL DEFAULT '0',\
  `ordering` int(11) NOT NULL DEFAULT '0',\
  PRIMARY KEY (`lang_id`),\
  UNIQUE KEY `idx_sef` (`sef`),\
  UNIQUE KEY `idx_image` (`image`),\
  UNIQUE KEY `idx_langcode` (`lang_code`),\
  KEY `idx_access` (`access`),\
  KEY `idx_ordering` (`ordering`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;\
\
--\
-- Volcado de datos para la tabla `r0dnb_languages`\
--\
\
INSERT INTO `r0dnb_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES\
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1),\
(2, 'es-ES', 'Spanish (ES)', 'Spanish (ES)', 'ES', 'es', '', '', '', '', 1, 1, 0);\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_menu`\
--\
\
CREATE TABLE `r0dnb_menu` (\
  `id` int(11) NOT NULL AUTO_INCREMENT,\
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',\
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',\
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',\
  `note` varchar(255) NOT NULL DEFAULT '',\
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',\
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',\
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',\
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',\
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',\
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',\
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',\
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',\
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',\
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',\
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',\
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',\
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',\
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',\
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',\
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',\
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',\
  `language` char(7) NOT NULL DEFAULT '',\
  `client_id` tinyint(4) NOT NULL DEFAULT '0',\
  PRIMARY KEY (`id`),\
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),\
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),\
  KEY `idx_menutype` (`menutype`),\
  KEY `idx_left_right` (`lft`,`rgt`),\
  KEY `idx_alias` (`alias`),\
  KEY `idx_path` (`path`(255)),\
  KEY `idx_language` (`language`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=113 ;\
\
--\
-- Volcado de datos para la tabla `r0dnb_menu`\
--\
\
INSERT INTO `r0dnb_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES\
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 71, 0, '*', 0),\
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),\
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),\
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),\
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),\
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),\
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),\
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),\
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),\
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),\
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),\
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),\
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),\
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),\
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),\
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),\
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),\
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 33, 38, 0, '*', 1),\
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 34, 35, 0, '*', 1),\
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 36, 37, 0, '*', 1),\
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 39, 40, 0, '*', 1),\
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),\
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 43, 44, 0, '', 1),\
(24, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 45, 46, 0, '*', 1),\
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '\{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"icemega_subtitle":"","icemega_cols":"1","icemega_width":"","icemega_colwidth":"","icemega_cols_items":"","icemega_subtype":"menu"\}', 47, 48, 1, '*', 0),\
(102, 'menu-espanol', 'Inicio', 'inicio', '', 'inicio', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '\{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"icemega_subtitle":"","icemega_cols":"1","icemega_width":"","icemega_colwidth":"","icemega_cols_items":"","icemega_subtype":"menu"\}', 49, 50, 1, 'es-ES', 0),\
(103, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=article&id=2', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '\{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"icemega_subtitle":"","icemega_cols":"1","icemega_width":"","icemega_colwidth":"","icemega_cols_items":"","icemega_subtype":"menu"\}', 51, 52, 0, 'es-ES', 0),\
(104, 'menu-ingles', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '\{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"icemega_subtitle":"","icemega_cols":"1","icemega_width":"","icemega_colwidth":"","icemega_cols_items":"","icemega_subtype":"menu"\}', 53, 54, 1, 'en-GB', 0),\
(105, 'menu-espanol', 'Servicios', 'servicios', '', 'servicios', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '\{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"icemega_subtitle":"","icemega_cols":"1","icemega_width":"","icemega_colwidth":"","icemega_cols_items":"","icemega_subtype":"menu"\}', 55, 56, 0, 'es-ES', 0),\
(106, 'menu-ingles', 'Services', 'services', '', 'services', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '\{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"icemega_subtitle":"","icemega_cols":"1","icemega_width":"","icemega_colwidth":"","icemega_cols_items":"","icemega_subtype":"menu"\}', 57, 58, 0, 'en-GB', 0),\
(107, 'menu-espanol', 'Partners', 'partners', '', 'partners', 'index.php?option=com_content&view=article&id=6', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '\{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"icemega_subtitle":"","icemega_cols":"1","icemega_width":"","icemega_colwidth":"","icemega_cols_items":"","icemega_subtype":"menu"\}', 59, 60, 0, 'es-ES', 0),\
(108, 'menu-espanol', 'Contactanos', 'contactanos', '', 'contactanos', 'index.php?option=com_content&view=article&id=7', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '\{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"icemega_subtitle":"","icemega_cols":"1","icemega_width":"","icemega_colwidth":"","icemega_cols_items":"","icemega_subtype":"menu"\}', 61, 62, 0, 'es-ES', 0),\
(109, 'menu-espanol', 'Comunidad', 'comunidad', '', 'comunidad', 'index.php?option=com_content&view=article&id=10', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '\{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"icemega_subtitle":"","icemega_cols":"1","icemega_width":"","icemega_colwidth":"","icemega_cols_items":"","icemega_subtype":"menu"\}', 63, 64, 0, 'es-ES', 0),\
(110, 'menu-ingles', 'Partners', 'partners', '', 'partners', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '\{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"icemega_subtitle":"","icemega_cols":"1","icemega_width":"","icemega_colwidth":"","icemega_cols_items":"","icemega_subtype":"menu"\}', 65, 66, 0, 'en-GB', 0),\
(111, 'menu-ingles', 'Contact Us', 'contact-us', '', 'contact-us', 'index.php?option=com_content&view=article&id=8', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '\{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"icemega_subtitle":"","icemega_cols":"1","icemega_width":"","icemega_colwidth":"","icemega_cols_items":"","icemega_subtype":"menu"\}', 67, 68, 0, 'en-GB', 0),\
(112, 'menu-ingles', 'Community', 'community', '', 'community', 'index.php?option=com_content&view=article&id=9', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '\{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"icemega_subtitle":"","icemega_cols":"1","icemega_width":"","icemega_colwidth":"","icemega_cols_items":"","icemega_subtype":"menu"\}', 69, 70, 0, 'en-GB', 0);\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_menu_types`\
--\
\
CREATE TABLE `r0dnb_menu_types` (\
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,\
  `menutype` varchar(24) NOT NULL,\
  `title` varchar(48) NOT NULL,\
  `description` varchar(255) NOT NULL DEFAULT '',\
  PRIMARY KEY (`id`),\
  UNIQUE KEY `idx_menutype` (`menutype`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;\
\
--\
-- Volcado de datos para la tabla `r0dnb_menu_types`\
--\
\
INSERT INTO `r0dnb_menu_types` (`id`, `menutype`, `title`, `description`) VALUES\
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),\
(2, 'menu-espanol', 'Menu espanol', 'Menu es espanol'),\
(3, 'menu-ingles', 'Menu ingles', 'menu en ingles');\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_messages`\
--\
\
CREATE TABLE `r0dnb_messages` (\
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,\
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',\
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',\
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',\
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `state` tinyint(1) NOT NULL DEFAULT '0',\
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',\
  `subject` varchar(255) NOT NULL DEFAULT '',\
  `message` text NOT NULL,\
  PRIMARY KEY (`message_id`),\
  KEY `useridto_state` (`user_id_to`,`state`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_messages_cfg`\
--\
\
CREATE TABLE `r0dnb_messages_cfg` (\
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',\
  `cfg_name` varchar(100) NOT NULL DEFAULT '',\
  `cfg_value` varchar(255) NOT NULL DEFAULT '',\
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_modules`\
--\
\
CREATE TABLE `r0dnb_modules` (\
  `id` int(11) NOT NULL AUTO_INCREMENT,\
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',\
  `title` varchar(100) NOT NULL DEFAULT '',\
  `note` varchar(255) NOT NULL DEFAULT '',\
  `content` text NOT NULL,\
  `ordering` int(11) NOT NULL DEFAULT '0',\
  `position` varchar(50) NOT NULL DEFAULT '',\
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',\
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `published` tinyint(1) NOT NULL DEFAULT '0',\
  `module` varchar(50) DEFAULT NULL,\
  `access` int(10) unsigned NOT NULL DEFAULT '0',\
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',\
  `params` text NOT NULL,\
  `client_id` tinyint(4) NOT NULL DEFAULT '0',\
  `language` char(7) NOT NULL,\
  PRIMARY KEY (`id`),\
  KEY `published` (`published`,`access`),\
  KEY `newsfeeds` (`module`,`published`),\
  KEY `idx_language` (`language`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;\
\
--\
-- Volcado de datos para la tabla `r0dnb_modules`\
--\
\
INSERT INTO `r0dnb_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES\
(1, 55, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '\{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"\}', 0, '*'),\
(2, 56, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),\
(3, 57, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '\{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"\}', 1, '*'),\
(4, 58, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '\{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"\}', 1, '*'),\
(8, 59, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),\
(9, 60, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),\
(10, 61, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '\{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"\}', 1, '*'),\
(12, 62, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '\{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"\}', 1, '*'),\
(13, 63, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),\
(14, 64, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),\
(15, 65, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),\
(16, 66, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '\{"greeting":"1","name":"0"\}', 0, '*'),\
(17, 67, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '\{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"\}', 0, '*'),\
(79, 68, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '\{"layout":"_:default","moduleclass_sfx":"","cache":"0"\}', 1, '*'),\
(86, 69, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '\{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"\}', 1, '*'),\
(87, 54, 'Language Switcher', '', '', 1, 'search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_languages', 1, 0, '\{"header_text":"","footer_text":"","dropdown":"0","image":"1","inline":"1","show_active":"1","full_name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"\}', 0, '*'),\
(88, 55, 'IceMegaMenu espanol', '', '', 1, 'mainmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_icemegamenu', 1, 1, '\{"theme_style":"default","menutype":"menu-espanol","startLevel":"1","endLevel":"0","showAllChildren":"1","resizable_menu":"1","class_sfx":"","window_open":"","tag_id":"","moduleclass_sfx":"","cache":"1","cache_time":"30","enable_bootrap":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"\}', 0, 'es-ES'),\
(89, 56, 'IceCarosuel Module Esp', '', '', 1, 'icecarousel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_ice_carousel', 1, 1, '\{"theme":"dark","main_width":"1175","main_height":"330","auto_renderthumb":"1","alway_render_thumb":"0","image_quanlity":"75","data_source":"content","source_from":"catid","article_id":"","catid":["8"],"ordering":"a.ordering__ASC","display_arrows":"1","display_caption":"1","limit_items":"5","title_max_chars":"100","description_max_chars":"100","link_titles":"0","strip_tags":"1","interval":"5000","effect":"Slide Next","auto_start":"0","moduleclass_sfx":"","enable_cache":"0","cache_time":"15","enable_bootrap":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"\}', 0, 'es-ES'),\
(90, 57, 'IceMegaMenu ingles', '', '', 1, 'mainmenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_icemegamenu', 1, 1, '\{"theme_style":"default","menutype":"menu-ingles","startLevel":"1","endLevel":"0","showAllChildren":"1","resizable_menu":"1","class_sfx":"","window_open":"","tag_id":"","moduleclass_sfx":"","cache":"1","cache_time":"30","enable_bootrap":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"\}', 0, 'en-GB'),\
(91, 68, 'IceCarosuel Module Eng', '', '', 1, 'icecarousel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_ice_carousel', 1, 1, '\{"theme":"dark","main_width":"1175","main_height":"330","auto_renderthumb":"1","alway_render_thumb":"0","image_quanlity":"75","data_source":"content","source_from":"catid","article_id":"","catid":["9"],"ordering":"a.ordering__ASC","display_arrows":"1","display_caption":"1","limit_items":"5","title_max_chars":"100","description_max_chars":"100","link_titles":"0","strip_tags":"1","interval":"5000","effect":"Slide Next","auto_start":"0","moduleclass_sfx":"","enable_cache":"0","cache_time":"15","enable_bootrap":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"\}', 0, 'en-GB'),\
(92, 75, 'DevOps is the law', '', '<p>Devops is the law because it is</p>', 1, 'promo1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '\{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"\}', 0, 'en-GB'),\
(93, 76, 'Pretotype is the law', '', '<p>Pretotype is the law because it is</p>', 0, 'promo2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '\{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"\}', 0, 'en-GB'),\
(94, 77, 'lean is the law', '', '<p>Lean is the law because it is</p>', 1, 'promo3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '\{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"\}', 0, 'en-GB'),\
(95, 78, 'Lean es lo maximo', '', '<p>Lean es lo maximo porque lo es</p>', 1, 'promo3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '\{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"\}', 0, 'es-ES'),\
(96, 79, 'Pretotype es lo maximo', '', '<p>Pretotype es lo maximo porque lo es</p>', 1, 'promo1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '\{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"\}', 0, 'es-ES'),\
(97, 80, 'DevOps es lo maximo', '', '<p>DevOps es lo maximo porque lo es</p>', 1, 'promo2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '\{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"\}', 0, 'es-ES'),\
(98, 81, 'Blog', '', '<p>Un blog (en espa\'f1ol,1 tambi\'e9n bit\'e1cora digital, cuaderno de bit\'e1cora, ciber bit\'e1cora, ciber diario, o web blog 1 ) es un sitio web en el que uno o varios autores publican cronol\'f3gicamente textos o art\'edculos, apareciendo primero el m\'e1s reciente, donde el autor conserva siempre la libertad de dejar publicado lo que crea pertinente y donde suele ser habitual que los propios lectores participen activamente a trav\'e9s de sus comentarios. Un blog puede servir para publicar de ideas propias y opiniones sobre diversos temas.</p>', 0, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '\{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"\}', 0, 'es-ES'),\
(99, 82, 'Blog', '', '<p>A blog (a truncation of the expression web log)[1] is a discussion or informational site published on the World Wide Web and consisting of discrete entries ("posts") typically displayed in reverse chronological order (the most recent post appears first). Until 2009 blogs were usually the work of a single individual, occasionally of a small group, and often covered a single subject. More recently "multi-author blogs" (MABs) have developed, with posts written by large numbers of authors and professionally edited. MABs from newspapers, other media outlets, universities, think tanks, advocacy groups and similar institutions account for an increasing quantity of blog traffic</p>', 0, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '\{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"\}', 0, 'en-GB'),\
(100, 83, 'Esto es una prueba', '', '<p>Esto es una prueba para ver si funciona linkear dentro de ice carousel</p>', 0, 'prueba', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '\{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"\}', 0, 'es-ES');\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_modules_menu`\
--\
\
CREATE TABLE `r0dnb_modules_menu` (\
  `moduleid` int(11) NOT NULL DEFAULT '0',\
  `menuid` int(11) NOT NULL DEFAULT '0',\
  PRIMARY KEY (`moduleid`,`menuid`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
--\
-- Volcado de datos para la tabla `r0dnb_modules_menu`\
--\
\
INSERT INTO `r0dnb_modules_menu` (`moduleid`, `menuid`) VALUES\
(1, 0),\
(2, 0),\
(3, 0),\
(4, 0),\
(6, 0),\
(7, 0),\
(8, 0),\
(9, 0),\
(10, 0),\
(12, 0),\
(13, 0),\
(14, 0),\
(15, 0),\
(16, 0),\
(17, 0),\
(79, 0),\
(86, 0),\
(87, 0),\
(88, 102),\
(88, 105),\
(88, 107),\
(88, 108),\
(88, 109),\
(89, 102),\
(90, 104),\
(90, 106),\
(90, 110),\
(90, 111),\
(90, 112),\
(91, 104),\
(92, 104),\
(93, 104),\
(94, 104),\
(95, 102),\
(96, 102),\
(97, 102),\
(98, 102),\
(99, 104),\
(100, 0);\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_newsfeeds`\
--\
\
CREATE TABLE `r0dnb_newsfeeds` (\
  `catid` int(11) NOT NULL DEFAULT '0',\
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,\
  `name` varchar(100) NOT NULL DEFAULT '',\
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',\
  `link` varchar(200) NOT NULL DEFAULT '',\
  `published` tinyint(1) NOT NULL DEFAULT '0',\
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',\
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',\
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',\
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `ordering` int(11) NOT NULL DEFAULT '0',\
  `rtl` tinyint(4) NOT NULL DEFAULT '0',\
  `access` int(10) unsigned NOT NULL DEFAULT '0',\
  `language` char(7) NOT NULL DEFAULT '',\
  `params` text NOT NULL,\
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',\
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',\
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',\
  `metakey` text NOT NULL,\
  `metadesc` text NOT NULL,\
  `metadata` text NOT NULL,\
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',\
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `description` text NOT NULL,\
  `version` int(10) unsigned NOT NULL DEFAULT '1',\
  `hits` int(10) unsigned NOT NULL DEFAULT '0',\
  `images` text NOT NULL,\
  PRIMARY KEY (`id`),\
  KEY `idx_access` (`access`),\
  KEY `idx_checkout` (`checked_out`),\
  KEY `idx_state` (`published`),\
  KEY `idx_catid` (`catid`),\
  KEY `idx_createdby` (`created_by`),\
  KEY `idx_language` (`language`),\
  KEY `idx_xreference` (`xreference`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_overrider`\
--\
\
CREATE TABLE `r0dnb_overrider` (\
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',\
  `constant` varchar(255) NOT NULL,\
  `string` text NOT NULL,\
  `file` varchar(255) NOT NULL,\
  PRIMARY KEY (`id`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_postinstall_messages`\
--\
\
CREATE TABLE `r0dnb_postinstall_messages` (\
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,\
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',\
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',\
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',\
  `action_key` varchar(255) NOT NULL DEFAULT '',\
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',\
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',\
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',\
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',\
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',\
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',\
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',\
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',\
  `enabled` tinyint(3) NOT NULL DEFAULT '1',\
  PRIMARY KEY (`postinstall_message_id`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;\
\
--\
-- Volcado de datos para la tabla `r0dnb_postinstall_messages`\
--\
\
INSERT INTO `r0dnb_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES\
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),\
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),\
(3, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1);\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_redirect_links`\
--\
\
CREATE TABLE `r0dnb_redirect_links` (\
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,\
  `old_url` varchar(255) NOT NULL,\
  `new_url` varchar(255) NOT NULL,\
  `referer` varchar(150) NOT NULL,\
  `comment` varchar(255) NOT NULL,\
  `hits` int(10) unsigned NOT NULL DEFAULT '0',\
  `published` tinyint(4) NOT NULL,\
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  PRIMARY KEY (`id`),\
  UNIQUE KEY `idx_link_old` (`old_url`),\
  KEY `idx_link_modifed` (`modified_date`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_schemas`\
--\
\
CREATE TABLE `r0dnb_schemas` (\
  `extension_id` int(11) NOT NULL,\
  `version_id` varchar(20) NOT NULL,\
  PRIMARY KEY (`extension_id`,`version_id`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
--\
-- Volcado de datos para la tabla `r0dnb_schemas`\
--\
\
INSERT INTO `r0dnb_schemas` (`extension_id`, `version_id`) VALUES\
(700, '3.2.1');\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_session`\
--\
\
CREATE TABLE `r0dnb_session` (\
  `session_id` varchar(200) NOT NULL DEFAULT '',\
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',\
  `guest` tinyint(4) unsigned DEFAULT '1',\
  `time` varchar(14) DEFAULT '',\
  `data` mediumtext,\
  `userid` int(11) DEFAULT '0',\
  `username` varchar(150) DEFAULT '',\
  PRIMARY KEY (`session_id`),\
  KEY `userid` (`userid`),\
  KEY `time` (`time`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
--\
-- Volcado de datos para la tabla `r0dnb_session`\
--\
\
INSERT INTO `r0dnb_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES\
('78852b00f6ce7ff52e56416ab627df5f', 1, 0, '1390827371', '__default|a:8:\{s:15:"session.counter";i:48;s:19:"session.timer.start";i:1390656157;s:18:"session.timer.last";i:1390827367;s:17:"session.timer.now";i:1390827369;s:22:"session.client.browser";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.77 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:\{s:7:"\\\\0\\\\0\\\\0data";O:8:"stdClass":4:\{s:11:"application";O:8:"stdClass":1:\{s:4:"lang";s:0:"";\}s:13:"com_installer";O:8:"stdClass":2:\{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";\}s:13:"com_templates";O:8:"stdClass":1:\{s:4:"edit";O:8:"stdClass":1:\{s:5:"style";O:8:"stdClass":2:\{s:2:"id";a:0:\{\}s:4:"data";N;\}\}\}s:10:"com_config";O:8:"stdClass":1:\{s:6:"config";O:8:"stdClass":1:\{s:6:"global";O:8:"stdClass":1:\{s:4:"data";N;\}\}\}\}\}s:4:"user";O:5:"JUser":26:\{s:9:"\\\\0\\\\0\\\\0isRoot";b:1;s:2:"id";s:3:"880";s:4:"name";s:10:"Super User";s:8:"username";s:9:"ritchie20";s:5:"email";s:24:"oscar.rubio.ma@gmail.com";s:8:"password";s:34:"$P$DdXL.lZpQXajt4lE7SJuk4vikTeWpI0";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-01-22 19:58:08";s:13:"lastvisitDate";s:19:"2014-01-25 12:09:25";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:\{i:8;s:1:"8";\}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\\\\0\\\\0\\\\0_params";O:9:"JRegistry":1:\{s:7:"\\\\0\\\\0\\\\0data";O:8:"stdClass":0:\{\}\}s:14:"\\\\0\\\\0\\\\0_authGroups";a:2:\{i:0;i:1;i:1;i:8;\}s:14:"\\\\0\\\\0\\\\0_authLevels";a:5:\{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;\}s:15:"\\\\0\\\\0\\\\0_authActions";N;s:12:"\\\\0\\\\0\\\\0_errorMsg";N;s:10:"\\\\0\\\\0\\\\0_errors";a:0:\{\}s:3:"aid";i:0;s:6:"otpKey";s:0:"";s:4:"otep";s:0:"";\}s:13:"session.token";s:32:"c42aa03102529c62552e272c61a3ea4b";\}', 880, 'ritchie20');\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_tags`\
--\
\
CREATE TABLE `r0dnb_tags` (\
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,\
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',\
  `lft` int(11) NOT NULL DEFAULT '0',\
  `rgt` int(11) NOT NULL DEFAULT '0',\
  `level` int(10) unsigned NOT NULL DEFAULT '0',\
  `path` varchar(255) NOT NULL DEFAULT '',\
  `title` varchar(255) NOT NULL,\
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',\
  `note` varchar(255) NOT NULL DEFAULT '',\
  `description` mediumtext NOT NULL,\
  `published` tinyint(1) NOT NULL DEFAULT '0',\
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',\
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `access` int(10) unsigned NOT NULL DEFAULT '0',\
  `params` text NOT NULL,\
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',\
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',\
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',\
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',\
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',\
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',\
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `images` text NOT NULL,\
  `urls` text NOT NULL,\
  `hits` int(10) unsigned NOT NULL DEFAULT '0',\
  `language` char(7) NOT NULL,\
  `version` int(10) unsigned NOT NULL DEFAULT '1',\
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  PRIMARY KEY (`id`),\
  KEY `tag_idx` (`published`,`access`),\
  KEY `idx_access` (`access`),\
  KEY `idx_checkout` (`checked_out`),\
  KEY `idx_path` (`path`),\
  KEY `idx_left_right` (`lft`,`rgt`),\
  KEY `idx_alias` (`alias`),\
  KEY `idx_language` (`language`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;\
\
--\
-- Volcado de datos para la tabla `r0dnb_tags`\
--\
\
INSERT INTO `r0dnb_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES\
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '\{\}', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_template_styles`\
--\
\
CREATE TABLE `r0dnb_template_styles` (\
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,\
  `template` varchar(50) NOT NULL DEFAULT '',\
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',\
  `home` char(7) NOT NULL DEFAULT '0',\
  `title` varchar(255) NOT NULL DEFAULT '',\
  `params` text NOT NULL,\
  PRIMARY KEY (`id`),\
  KEY `idx_template` (`template`),\
  KEY `idx_home` (`home`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;\
\
--\
-- Volcado de datos para la tabla `r0dnb_template_styles`\
--\
\
INSERT INTO `r0dnb_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES\
(4, 'beez3', 0, '0', 'Beez3 - Default', '\{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"\}'),\
(5, 'hathor', 1, '0', 'Hathor - Default', '\{"showSiteName":"0","colourChoice":"","boldText":"0"\}'),\
(7, 'protostar', 0, '0', 'protostar - Default', '\{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"\}'),\
(8, 'isis', 1, '1', 'isis - Default', '\{"templateColor":"","logoFile":""\}'),\
(9, 'ice_future', 0, '1', 'ice_future - Default', '\{"TemplateStyle":"style3","styleswitcher":1,"logo":"images\\\\/logo_Synco.jpg","go2top":1,"responsive_template":1,"social_fb":1,"social_fb_user":"icetheme","social_tw":1,"social_tw_user":"icetheme","icelogo":0\}');\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_ucm_base`\
--\
\
CREATE TABLE `r0dnb_ucm_base` (\
  `ucm_id` int(10) unsigned NOT NULL,\
  `ucm_item_id` int(10) NOT NULL,\
  `ucm_type_id` int(11) NOT NULL,\
  `ucm_language_id` int(11) NOT NULL,\
  PRIMARY KEY (`ucm_id`),\
  KEY `idx_ucm_item_id` (`ucm_item_id`),\
  KEY `idx_ucm_type_id` (`ucm_type_id`),\
  KEY `idx_ucm_language_id` (`ucm_language_id`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_ucm_content`\
--\
\
CREATE TABLE `r0dnb_ucm_content` (\
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,\
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',\
  `core_title` varchar(255) NOT NULL,\
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',\
  `core_body` mediumtext NOT NULL,\
  `core_state` tinyint(1) NOT NULL DEFAULT '0',\
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',\
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',\
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',\
  `core_params` text NOT NULL,\
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',\
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',\
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',\
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',\
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',\
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `core_language` char(7) NOT NULL,\
  `core_publish_up` datetime NOT NULL,\
  `core_publish_down` datetime NOT NULL,\
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',\
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',\
  `core_images` text NOT NULL,\
  `core_urls` text NOT NULL,\
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',\
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',\
  `core_ordering` int(11) NOT NULL DEFAULT '0',\
  `core_metakey` text NOT NULL,\
  `core_metadesc` text NOT NULL,\
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',\
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',\
  `core_type_id` int(10) unsigned DEFAULT NULL,\
  PRIMARY KEY (`core_content_id`),\
  KEY `tag_idx` (`core_state`,`core_access`),\
  KEY `idx_access` (`core_access`),\
  KEY `idx_alias` (`core_alias`),\
  KEY `idx_language` (`core_language`),\
  KEY `idx_title` (`core_title`),\
  KEY `idx_modified_time` (`core_modified_time`),\
  KEY `idx_created_time` (`core_created_time`),\
  KEY `idx_content_type` (`core_type_alias`),\
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),\
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),\
  KEY `idx_core_created_user_id` (`core_created_user_id`),\
  KEY `idx_core_type_id` (`core_type_id`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_ucm_history`\
--\
\
CREATE TABLE `r0dnb_ucm_history` (\
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,\
  `ucm_item_id` int(10) unsigned NOT NULL,\
  `ucm_type_id` int(10) unsigned NOT NULL,\
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',\
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',\
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',\
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',\
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',\
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',\
  PRIMARY KEY (`version_id`),\
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),\
  KEY `idx_save_date` (`save_date`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;\
\
--\
-- Volcado de datos para la tabla `r0dnb_ucm_history`\
--\
\
INSERT INTO `r0dnb_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES\
(1, 1, 1, '', '2014-01-22 21:13:32', 880, 1678, 'a8595c3124dfd3cd1742cb5a28ca11bdd3c755b4', '\{"id":1,"asset_id":58,"title":"Inicio","alias":"inicio","introtext":"<p>Este es el inicio en espa\\\\u00f1ol<\\\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-01-22 21:13:32","created_by":"880","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-01-22 21:13:32","publish_down":"0000-00-00 00:00:00","images":"\{\\\\"image_intro\\\\":\\\\"\\\\",\\\\"float_intro\\\\":\\\\"\\\\",\\\\"image_intro_alt\\\\":\\\\"\\\\",\\\\"image_intro_caption\\\\":\\\\"\\\\",\\\\"image_fulltext\\\\":\\\\"\\\\",\\\\"float_fulltext\\\\":\\\\"\\\\",\\\\"image_fulltext_alt\\\\":\\\\"\\\\",\\\\"image_fulltext_caption\\\\":\\\\"\\\\"\}","urls":"\{\\\\"urla\\\\":false,\\\\"urlatext\\\\":\\\\"\\\\",\\\\"targeta\\\\":\\\\"\\\\",\\\\"urlb\\\\":false,\\\\"urlbtext\\\\":\\\\"\\\\",\\\\"targetb\\\\":\\\\"\\\\",\\\\"urlc\\\\":false,\\\\"urlctext\\\\":\\\\"\\\\",\\\\"targetc\\\\":\\\\"\\\\"\}","attribs":"\{\\\\"show_title\\\\":\\\\"\\\\",\\\\"link_titles\\\\":\\\\"\\\\",\\\\"show_tags\\\\":\\\\"\\\\",\\\\"show_intro\\\\":\\\\"\\\\",\\\\"info_block_position\\\\":\\\\"\\\\",\\\\"show_category\\\\":\\\\"\\\\",\\\\"link_category\\\\":\\\\"\\\\",\\\\"show_parent_category\\\\":\\\\"\\\\",\\\\"link_parent_category\\\\":\\\\"\\\\",\\\\"show_author\\\\":\\\\"\\\\",\\\\"link_author\\\\":\\\\"\\\\",\\\\"show_create_date\\\\":\\\\"\\\\",\\\\"show_modify_date\\\\":\\\\"\\\\",\\\\"show_publish_date\\\\":\\\\"\\\\",\\\\"show_item_navigation\\\\":\\\\"\\\\",\\\\"show_icons\\\\":\\\\"\\\\",\\\\"show_print_icon\\\\":\\\\"\\\\",\\\\"show_email_icon\\\\":\\\\"\\\\",\\\\"show_vote\\\\":\\\\"\\\\",\\\\"show_hits\\\\":\\\\"\\\\",\\\\"show_noauth\\\\":\\\\"\\\\",\\\\"urls_position\\\\":\\\\"\\\\",\\\\"alternative_readmore\\\\":\\\\"\\\\",\\\\"article_layout\\\\":\\\\"\\\\",\\\\"show_publishing_options\\\\":\\\\"\\\\",\\\\"show_article_options\\\\":\\\\"\\\\",\\\\"show_urls_images_backend\\\\":\\\\"\\\\",\\\\"show_urls_images_frontend\\\\":\\\\"\\\\"\}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"\{\\\\"robots\\\\":\\\\"\\\\",\\\\"author\\\\":\\\\"\\\\",\\\\"rights\\\\":\\\\"\\\\",\\\\"xreference\\\\":\\\\"\\\\"\}","featured":"0","language":"es-ES","xreference":""\}', 0),\
(2, 2, 1, '', '2014-01-22 21:14:13', 880, 1678, '9ad8824aa31bf39e9a2b39b9f6a9e195d20c9e9b', '\{"id":2,"asset_id":59,"title":"Home","alias":"home","introtext":"<p>This is the home for english language<\\\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-01-22 21:14:13","created_by":"880","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-01-22 21:14:13","publish_down":"0000-00-00 00:00:00","images":"\{\\\\"image_intro\\\\":\\\\"\\\\",\\\\"float_intro\\\\":\\\\"\\\\",\\\\"image_intro_alt\\\\":\\\\"\\\\",\\\\"image_intro_caption\\\\":\\\\"\\\\",\\\\"image_fulltext\\\\":\\\\"\\\\",\\\\"float_fulltext\\\\":\\\\"\\\\",\\\\"image_fulltext_alt\\\\":\\\\"\\\\",\\\\"image_fulltext_caption\\\\":\\\\"\\\\"\}","urls":"\{\\\\"urla\\\\":false,\\\\"urlatext\\\\":\\\\"\\\\",\\\\"targeta\\\\":\\\\"\\\\",\\\\"urlb\\\\":false,\\\\"urlbtext\\\\":\\\\"\\\\",\\\\"targetb\\\\":\\\\"\\\\",\\\\"urlc\\\\":false,\\\\"urlctext\\\\":\\\\"\\\\",\\\\"targetc\\\\":\\\\"\\\\"\}","attribs":"\{\\\\"show_title\\\\":\\\\"\\\\",\\\\"link_titles\\\\":\\\\"\\\\",\\\\"show_tags\\\\":\\\\"\\\\",\\\\"show_intro\\\\":\\\\"\\\\",\\\\"info_block_position\\\\":\\\\"\\\\",\\\\"show_category\\\\":\\\\"\\\\",\\\\"link_category\\\\":\\\\"\\\\",\\\\"show_parent_category\\\\":\\\\"\\\\",\\\\"link_parent_category\\\\":\\\\"\\\\",\\\\"show_author\\\\":\\\\"\\\\",\\\\"link_author\\\\":\\\\"\\\\",\\\\"show_create_date\\\\":\\\\"\\\\",\\\\"show_modify_date\\\\":\\\\"\\\\",\\\\"show_publish_date\\\\":\\\\"\\\\",\\\\"show_item_navigation\\\\":\\\\"\\\\",\\\\"show_icons\\\\":\\\\"\\\\",\\\\"show_print_icon\\\\":\\\\"\\\\",\\\\"show_email_icon\\\\":\\\\"\\\\",\\\\"show_vote\\\\":\\\\"\\\\",\\\\"show_hits\\\\":\\\\"\\\\",\\\\"show_noauth\\\\":\\\\"\\\\",\\\\"urls_position\\\\":\\\\"\\\\",\\\\"alternative_readmore\\\\":\\\\"\\\\",\\\\"article_layout\\\\":\\\\"\\\\",\\\\"show_publishing_options\\\\":\\\\"\\\\",\\\\"show_article_options\\\\":\\\\"\\\\",\\\\"show_urls_images_backend\\\\":\\\\"\\\\",\\\\"show_urls_images_frontend\\\\":\\\\"\\\\"\}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"\{\\\\"robots\\\\":\\\\"\\\\",\\\\"author\\\\":\\\\"\\\\",\\\\"rights\\\\":\\\\"\\\\",\\\\"xreference\\\\":\\\\"\\\\"\}","featured":"0","language":"en-GB","xreference":""\}', 0),\
(3, 3, 1, '', '2014-01-22 21:32:45', 880, 1681, 'b16460e6eea6203197b9e0a31d5ac35cc87f6cd7', '\{"id":3,"asset_id":60,"title":"Servicios","alias":"servicios","introtext":"<p>Esta es la pagina de servicios<\\\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-01-22 21:32:45","created_by":"880","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-01-22 21:32:45","publish_down":"0000-00-00 00:00:00","images":"\{\\\\"image_intro\\\\":\\\\"\\\\",\\\\"float_intro\\\\":\\\\"\\\\",\\\\"image_intro_alt\\\\":\\\\"\\\\",\\\\"image_intro_caption\\\\":\\\\"\\\\",\\\\"image_fulltext\\\\":\\\\"\\\\",\\\\"float_fulltext\\\\":\\\\"\\\\",\\\\"image_fulltext_alt\\\\":\\\\"\\\\",\\\\"image_fulltext_caption\\\\":\\\\"\\\\"\}","urls":"\{\\\\"urla\\\\":false,\\\\"urlatext\\\\":\\\\"\\\\",\\\\"targeta\\\\":\\\\"\\\\",\\\\"urlb\\\\":false,\\\\"urlbtext\\\\":\\\\"\\\\",\\\\"targetb\\\\":\\\\"\\\\",\\\\"urlc\\\\":false,\\\\"urlctext\\\\":\\\\"\\\\",\\\\"targetc\\\\":\\\\"\\\\"\}","attribs":"\{\\\\"show_title\\\\":\\\\"\\\\",\\\\"link_titles\\\\":\\\\"\\\\",\\\\"show_tags\\\\":\\\\"\\\\",\\\\"show_intro\\\\":\\\\"\\\\",\\\\"info_block_position\\\\":\\\\"\\\\",\\\\"show_category\\\\":\\\\"\\\\",\\\\"link_category\\\\":\\\\"\\\\",\\\\"show_parent_category\\\\":\\\\"\\\\",\\\\"link_parent_category\\\\":\\\\"\\\\",\\\\"show_author\\\\":\\\\"\\\\",\\\\"link_author\\\\":\\\\"\\\\",\\\\"show_create_date\\\\":\\\\"\\\\",\\\\"show_modify_date\\\\":\\\\"\\\\",\\\\"show_publish_date\\\\":\\\\"\\\\",\\\\"show_item_navigation\\\\":\\\\"\\\\",\\\\"show_icons\\\\":\\\\"\\\\",\\\\"show_print_icon\\\\":\\\\"\\\\",\\\\"show_email_icon\\\\":\\\\"\\\\",\\\\"show_vote\\\\":\\\\"\\\\",\\\\"show_hits\\\\":\\\\"\\\\",\\\\"show_noauth\\\\":\\\\"\\\\",\\\\"urls_position\\\\":\\\\"\\\\",\\\\"alternative_readmore\\\\":\\\\"\\\\",\\\\"article_layout\\\\":\\\\"\\\\",\\\\"show_publishing_options\\\\":\\\\"\\\\",\\\\"show_article_options\\\\":\\\\"\\\\",\\\\"show_urls_images_backend\\\\":\\\\"\\\\",\\\\"show_urls_images_frontend\\\\":\\\\"\\\\"\}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"\{\\\\"robots\\\\":\\\\"\\\\",\\\\"author\\\\":\\\\"\\\\",\\\\"rights\\\\":\\\\"\\\\",\\\\"xreference\\\\":\\\\"\\\\"\}","featured":"0","language":"es-ES","xreference":""\}', 0),\
(4, 4, 1, '', '2014-01-22 21:33:24', 880, 1674, '9aaee77b545c57267e9926a3a301c6954cb4dd97', '\{"id":4,"asset_id":61,"title":"Services","alias":"services","introtext":"<p>This is the services page<\\\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-01-22 21:33:24","created_by":"880","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-01-22 21:33:24","publish_down":"0000-00-00 00:00:00","images":"\{\\\\"image_intro\\\\":\\\\"\\\\",\\\\"float_intro\\\\":\\\\"\\\\",\\\\"image_intro_alt\\\\":\\\\"\\\\",\\\\"image_intro_caption\\\\":\\\\"\\\\",\\\\"image_fulltext\\\\":\\\\"\\\\",\\\\"float_fulltext\\\\":\\\\"\\\\",\\\\"image_fulltext_alt\\\\":\\\\"\\\\",\\\\"image_fulltext_caption\\\\":\\\\"\\\\"\}","urls":"\{\\\\"urla\\\\":false,\\\\"urlatext\\\\":\\\\"\\\\",\\\\"targeta\\\\":\\\\"\\\\",\\\\"urlb\\\\":false,\\\\"urlbtext\\\\":\\\\"\\\\",\\\\"targetb\\\\":\\\\"\\\\",\\\\"urlc\\\\":false,\\\\"urlctext\\\\":\\\\"\\\\",\\\\"targetc\\\\":\\\\"\\\\"\}","attribs":"\{\\\\"show_title\\\\":\\\\"\\\\",\\\\"link_titles\\\\":\\\\"\\\\",\\\\"show_tags\\\\":\\\\"\\\\",\\\\"show_intro\\\\":\\\\"\\\\",\\\\"info_block_position\\\\":\\\\"\\\\",\\\\"show_category\\\\":\\\\"\\\\",\\\\"link_category\\\\":\\\\"\\\\",\\\\"show_parent_category\\\\":\\\\"\\\\",\\\\"link_parent_category\\\\":\\\\"\\\\",\\\\"show_author\\\\":\\\\"\\\\",\\\\"link_author\\\\":\\\\"\\\\",\\\\"show_create_date\\\\":\\\\"\\\\",\\\\"show_modify_date\\\\":\\\\"\\\\",\\\\"show_publish_date\\\\":\\\\"\\\\",\\\\"show_item_navigation\\\\":\\\\"\\\\",\\\\"show_icons\\\\":\\\\"\\\\",\\\\"show_print_icon\\\\":\\\\"\\\\",\\\\"show_email_icon\\\\":\\\\"\\\\",\\\\"show_vote\\\\":\\\\"\\\\",\\\\"show_hits\\\\":\\\\"\\\\",\\\\"show_noauth\\\\":\\\\"\\\\",\\\\"urls_position\\\\":\\\\"\\\\",\\\\"alternative_readmore\\\\":\\\\"\\\\",\\\\"article_layout\\\\":\\\\"\\\\",\\\\"show_publishing_options\\\\":\\\\"\\\\",\\\\"show_article_options\\\\":\\\\"\\\\",\\\\"show_urls_images_backend\\\\":\\\\"\\\\",\\\\"show_urls_images_frontend\\\\":\\\\"\\\\"\}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"\{\\\\"robots\\\\":\\\\"\\\\",\\\\"author\\\\":\\\\"\\\\",\\\\"rights\\\\":\\\\"\\\\",\\\\"xreference\\\\":\\\\"\\\\"\}","featured":"0","language":"en-GB","xreference":""\}', 0),\
(5, 5, 1, '', '2014-01-22 21:40:30', 880, 1674, '92b5ced5ec69838a09441b55c311613b8d292f31', '\{"id":5,"asset_id":62,"title":"Partners","alias":"partners","introtext":"<p>This is the partners page<\\\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-01-22 21:40:30","created_by":"880","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-01-22 21:40:30","publish_down":"0000-00-00 00:00:00","images":"\{\\\\"image_intro\\\\":\\\\"\\\\",\\\\"float_intro\\\\":\\\\"\\\\",\\\\"image_intro_alt\\\\":\\\\"\\\\",\\\\"image_intro_caption\\\\":\\\\"\\\\",\\\\"image_fulltext\\\\":\\\\"\\\\",\\\\"float_fulltext\\\\":\\\\"\\\\",\\\\"image_fulltext_alt\\\\":\\\\"\\\\",\\\\"image_fulltext_caption\\\\":\\\\"\\\\"\}","urls":"\{\\\\"urla\\\\":false,\\\\"urlatext\\\\":\\\\"\\\\",\\\\"targeta\\\\":\\\\"\\\\",\\\\"urlb\\\\":false,\\\\"urlbtext\\\\":\\\\"\\\\",\\\\"targetb\\\\":\\\\"\\\\",\\\\"urlc\\\\":false,\\\\"urlctext\\\\":\\\\"\\\\",\\\\"targetc\\\\":\\\\"\\\\"\}","attribs":"\{\\\\"show_title\\\\":\\\\"\\\\",\\\\"link_titles\\\\":\\\\"\\\\",\\\\"show_tags\\\\":\\\\"\\\\",\\\\"show_intro\\\\":\\\\"\\\\",\\\\"info_block_position\\\\":\\\\"\\\\",\\\\"show_category\\\\":\\\\"\\\\",\\\\"link_category\\\\":\\\\"\\\\",\\\\"show_parent_category\\\\":\\\\"\\\\",\\\\"link_parent_category\\\\":\\\\"\\\\",\\\\"show_author\\\\":\\\\"\\\\",\\\\"link_author\\\\":\\\\"\\\\",\\\\"show_create_date\\\\":\\\\"\\\\",\\\\"show_modify_date\\\\":\\\\"\\\\",\\\\"show_publish_date\\\\":\\\\"\\\\",\\\\"show_item_navigation\\\\":\\\\"\\\\",\\\\"show_icons\\\\":\\\\"\\\\",\\\\"show_print_icon\\\\":\\\\"\\\\",\\\\"show_email_icon\\\\":\\\\"\\\\",\\\\"show_vote\\\\":\\\\"\\\\",\\\\"show_hits\\\\":\\\\"\\\\",\\\\"show_noauth\\\\":\\\\"\\\\",\\\\"urls_position\\\\":\\\\"\\\\",\\\\"alternative_readmore\\\\":\\\\"\\\\",\\\\"article_layout\\\\":\\\\"\\\\",\\\\"show_publishing_options\\\\":\\\\"\\\\",\\\\"show_article_options\\\\":\\\\"\\\\",\\\\"show_urls_images_backend\\\\":\\\\"\\\\",\\\\"show_urls_images_frontend\\\\":\\\\"\\\\"\}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"\{\\\\"robots\\\\":\\\\"\\\\",\\\\"author\\\\":\\\\"\\\\",\\\\"rights\\\\":\\\\"\\\\",\\\\"xreference\\\\":\\\\"\\\\"\}","featured":"0","language":"en-GB","xreference":""\}', 0),\
(6, 6, 1, '', '2014-01-22 21:41:09', 880, 1684, '4fb5757969b0821b46f58b5a7231d8a2cdc04dbd', '\{"id":6,"asset_id":63,"title":"Partners","alias":"partners-es","introtext":"<p>Esta es la pagina sobre partners<\\\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-01-22 21:41:09","created_by":"880","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-01-22 21:41:09","publish_down":"0000-00-00 00:00:00","images":"\{\\\\"image_intro\\\\":\\\\"\\\\",\\\\"float_intro\\\\":\\\\"\\\\",\\\\"image_intro_alt\\\\":\\\\"\\\\",\\\\"image_intro_caption\\\\":\\\\"\\\\",\\\\"image_fulltext\\\\":\\\\"\\\\",\\\\"float_fulltext\\\\":\\\\"\\\\",\\\\"image_fulltext_alt\\\\":\\\\"\\\\",\\\\"image_fulltext_caption\\\\":\\\\"\\\\"\}","urls":"\{\\\\"urla\\\\":false,\\\\"urlatext\\\\":\\\\"\\\\",\\\\"targeta\\\\":\\\\"\\\\",\\\\"urlb\\\\":false,\\\\"urlbtext\\\\":\\\\"\\\\",\\\\"targetb\\\\":\\\\"\\\\",\\\\"urlc\\\\":false,\\\\"urlctext\\\\":\\\\"\\\\",\\\\"targetc\\\\":\\\\"\\\\"\}","attribs":"\{\\\\"show_title\\\\":\\\\"\\\\",\\\\"link_titles\\\\":\\\\"\\\\",\\\\"show_tags\\\\":\\\\"\\\\",\\\\"show_intro\\\\":\\\\"\\\\",\\\\"info_block_position\\\\":\\\\"\\\\",\\\\"show_category\\\\":\\\\"\\\\",\\\\"link_category\\\\":\\\\"\\\\",\\\\"show_parent_category\\\\":\\\\"\\\\",\\\\"link_parent_category\\\\":\\\\"\\\\",\\\\"show_author\\\\":\\\\"\\\\",\\\\"link_author\\\\":\\\\"\\\\",\\\\"show_create_date\\\\":\\\\"\\\\",\\\\"show_modify_date\\\\":\\\\"\\\\",\\\\"show_publish_date\\\\":\\\\"\\\\",\\\\"show_item_navigation\\\\":\\\\"\\\\",\\\\"show_icons\\\\":\\\\"\\\\",\\\\"show_print_icon\\\\":\\\\"\\\\",\\\\"show_email_icon\\\\":\\\\"\\\\",\\\\"show_vote\\\\":\\\\"\\\\",\\\\"show_hits\\\\":\\\\"\\\\",\\\\"show_noauth\\\\":\\\\"\\\\",\\\\"urls_position\\\\":\\\\"\\\\",\\\\"alternative_readmore\\\\":\\\\"\\\\",\\\\"article_layout\\\\":\\\\"\\\\",\\\\"show_publishing_options\\\\":\\\\"\\\\",\\\\"show_article_options\\\\":\\\\"\\\\",\\\\"show_urls_images_backend\\\\":\\\\"\\\\",\\\\"show_urls_images_frontend\\\\":\\\\"\\\\"\}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"\{\\\\"robots\\\\":\\\\"\\\\",\\\\"author\\\\":\\\\"\\\\",\\\\"rights\\\\":\\\\"\\\\",\\\\"xreference\\\\":\\\\"\\\\"\}","featured":"0","language":"es-ES","xreference":""\}', 0),\
(7, 7, 1, '', '2014-01-22 21:42:13', 880, 1689, 'ec7b728ac1e35d4c69302200b6040c9ffb04e039', '\{"id":7,"asset_id":64,"title":"Contactanos","alias":"contactanos","introtext":"<p>En esta pagina podras contactarnos<\\\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-01-22 21:42:13","created_by":"880","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-01-22 21:42:13","publish_down":"0000-00-00 00:00:00","images":"\{\\\\"image_intro\\\\":\\\\"\\\\",\\\\"float_intro\\\\":\\\\"\\\\",\\\\"image_intro_alt\\\\":\\\\"\\\\",\\\\"image_intro_caption\\\\":\\\\"\\\\",\\\\"image_fulltext\\\\":\\\\"\\\\",\\\\"float_fulltext\\\\":\\\\"\\\\",\\\\"image_fulltext_alt\\\\":\\\\"\\\\",\\\\"image_fulltext_caption\\\\":\\\\"\\\\"\}","urls":"\{\\\\"urla\\\\":false,\\\\"urlatext\\\\":\\\\"\\\\",\\\\"targeta\\\\":\\\\"\\\\",\\\\"urlb\\\\":false,\\\\"urlbtext\\\\":\\\\"\\\\",\\\\"targetb\\\\":\\\\"\\\\",\\\\"urlc\\\\":false,\\\\"urlctext\\\\":\\\\"\\\\",\\\\"targetc\\\\":\\\\"\\\\"\}","attribs":"\{\\\\"show_title\\\\":\\\\"\\\\",\\\\"link_titles\\\\":\\\\"\\\\",\\\\"show_tags\\\\":\\\\"\\\\",\\\\"show_intro\\\\":\\\\"\\\\",\\\\"info_block_position\\\\":\\\\"\\\\",\\\\"show_category\\\\":\\\\"\\\\",\\\\"link_category\\\\":\\\\"\\\\",\\\\"show_parent_category\\\\":\\\\"\\\\",\\\\"link_parent_category\\\\":\\\\"\\\\",\\\\"show_author\\\\":\\\\"\\\\",\\\\"link_author\\\\":\\\\"\\\\",\\\\"show_create_date\\\\":\\\\"\\\\",\\\\"show_modify_date\\\\":\\\\"\\\\",\\\\"show_publish_date\\\\":\\\\"\\\\",\\\\"show_item_navigation\\\\":\\\\"\\\\",\\\\"show_icons\\\\":\\\\"\\\\",\\\\"show_print_icon\\\\":\\\\"\\\\",\\\\"show_email_icon\\\\":\\\\"\\\\",\\\\"show_vote\\\\":\\\\"\\\\",\\\\"show_hits\\\\":\\\\"\\\\",\\\\"show_noauth\\\\":\\\\"\\\\",\\\\"urls_position\\\\":\\\\"\\\\",\\\\"alternative_readmore\\\\":\\\\"\\\\",\\\\"article_layout\\\\":\\\\"\\\\",\\\\"show_publishing_options\\\\":\\\\"\\\\",\\\\"show_article_options\\\\":\\\\"\\\\",\\\\"show_urls_images_backend\\\\":\\\\"\\\\",\\\\"show_urls_images_frontend\\\\":\\\\"\\\\"\}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"\{\\\\"robots\\\\":\\\\"\\\\",\\\\"author\\\\":\\\\"\\\\",\\\\"rights\\\\":\\\\"\\\\",\\\\"xreference\\\\":\\\\"\\\\"\}","featured":"0","language":"es-ES","xreference":""\}', 0),\
(8, 8, 1, '', '2014-01-22 21:42:51', 880, 1696, 'f925953cb87e719170d5212ecedf07dbebff7674', '\{"id":8,"asset_id":65,"title":"Contact Us","alias":"contact-us","introtext":"<p>In this page you will be able to contact us<\\\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-01-22 21:42:51","created_by":"880","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-01-22 21:42:51","publish_down":"0000-00-00 00:00:00","images":"\{\\\\"image_intro\\\\":\\\\"\\\\",\\\\"float_intro\\\\":\\\\"\\\\",\\\\"image_intro_alt\\\\":\\\\"\\\\",\\\\"image_intro_caption\\\\":\\\\"\\\\",\\\\"image_fulltext\\\\":\\\\"\\\\",\\\\"float_fulltext\\\\":\\\\"\\\\",\\\\"image_fulltext_alt\\\\":\\\\"\\\\",\\\\"image_fulltext_caption\\\\":\\\\"\\\\"\}","urls":"\{\\\\"urla\\\\":false,\\\\"urlatext\\\\":\\\\"\\\\",\\\\"targeta\\\\":\\\\"\\\\",\\\\"urlb\\\\":false,\\\\"urlbtext\\\\":\\\\"\\\\",\\\\"targetb\\\\":\\\\"\\\\",\\\\"urlc\\\\":false,\\\\"urlctext\\\\":\\\\"\\\\",\\\\"targetc\\\\":\\\\"\\\\"\}","attribs":"\{\\\\"show_title\\\\":\\\\"\\\\",\\\\"link_titles\\\\":\\\\"\\\\",\\\\"show_tags\\\\":\\\\"\\\\",\\\\"show_intro\\\\":\\\\"\\\\",\\\\"info_block_position\\\\":\\\\"\\\\",\\\\"show_category\\\\":\\\\"\\\\",\\\\"link_category\\\\":\\\\"\\\\",\\\\"show_parent_category\\\\":\\\\"\\\\",\\\\"link_parent_category\\\\":\\\\"\\\\",\\\\"show_author\\\\":\\\\"\\\\",\\\\"link_author\\\\":\\\\"\\\\",\\\\"show_create_date\\\\":\\\\"\\\\",\\\\"show_modify_date\\\\":\\\\"\\\\",\\\\"show_publish_date\\\\":\\\\"\\\\",\\\\"show_item_navigation\\\\":\\\\"\\\\",\\\\"show_icons\\\\":\\\\"\\\\",\\\\"show_print_icon\\\\":\\\\"\\\\",\\\\"show_email_icon\\\\":\\\\"\\\\",\\\\"show_vote\\\\":\\\\"\\\\",\\\\"show_hits\\\\":\\\\"\\\\",\\\\"show_noauth\\\\":\\\\"\\\\",\\\\"urls_position\\\\":\\\\"\\\\",\\\\"alternative_readmore\\\\":\\\\"\\\\",\\\\"article_layout\\\\":\\\\"\\\\",\\\\"show_publishing_options\\\\":\\\\"\\\\",\\\\"show_article_options\\\\":\\\\"\\\\",\\\\"show_urls_images_backend\\\\":\\\\"\\\\",\\\\"show_urls_images_frontend\\\\":\\\\"\\\\"\}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"\{\\\\"robots\\\\":\\\\"\\\\",\\\\"author\\\\":\\\\"\\\\",\\\\"rights\\\\":\\\\"\\\\",\\\\"xreference\\\\":\\\\"\\\\"\}","featured":"0","language":"en-GB","xreference":""\}', 0),\
(9, 9, 1, '', '2014-01-22 21:43:16', 880, 1678, '5ea0e3f7dcf6ecdc6a4e326e3da94b54376ef1fa', '\{"id":9,"asset_id":66,"title":"Community","alias":"community","introtext":"<p>This page will have a forum<\\\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-01-22 21:43:16","created_by":"880","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-01-22 21:43:16","publish_down":"0000-00-00 00:00:00","images":"\{\\\\"image_intro\\\\":\\\\"\\\\",\\\\"float_intro\\\\":\\\\"\\\\",\\\\"image_intro_alt\\\\":\\\\"\\\\",\\\\"image_intro_caption\\\\":\\\\"\\\\",\\\\"image_fulltext\\\\":\\\\"\\\\",\\\\"float_fulltext\\\\":\\\\"\\\\",\\\\"image_fulltext_alt\\\\":\\\\"\\\\",\\\\"image_fulltext_caption\\\\":\\\\"\\\\"\}","urls":"\{\\\\"urla\\\\":false,\\\\"urlatext\\\\":\\\\"\\\\",\\\\"targeta\\\\":\\\\"\\\\",\\\\"urlb\\\\":false,\\\\"urlbtext\\\\":\\\\"\\\\",\\\\"targetb\\\\":\\\\"\\\\",\\\\"urlc\\\\":false,\\\\"urlctext\\\\":\\\\"\\\\",\\\\"targetc\\\\":\\\\"\\\\"\}","attribs":"\{\\\\"show_title\\\\":\\\\"\\\\",\\\\"link_titles\\\\":\\\\"\\\\",\\\\"show_tags\\\\":\\\\"\\\\",\\\\"show_intro\\\\":\\\\"\\\\",\\\\"info_block_position\\\\":\\\\"\\\\",\\\\"show_category\\\\":\\\\"\\\\",\\\\"link_category\\\\":\\\\"\\\\",\\\\"show_parent_category\\\\":\\\\"\\\\",\\\\"link_parent_category\\\\":\\\\"\\\\",\\\\"show_author\\\\":\\\\"\\\\",\\\\"link_author\\\\":\\\\"\\\\",\\\\"show_create_date\\\\":\\\\"\\\\",\\\\"show_modify_date\\\\":\\\\"\\\\",\\\\"show_publish_date\\\\":\\\\"\\\\",\\\\"show_item_navigation\\\\":\\\\"\\\\",\\\\"show_icons\\\\":\\\\"\\\\",\\\\"show_print_icon\\\\":\\\\"\\\\",\\\\"show_email_icon\\\\":\\\\"\\\\",\\\\"show_vote\\\\":\\\\"\\\\",\\\\"show_hits\\\\":\\\\"\\\\",\\\\"show_noauth\\\\":\\\\"\\\\",\\\\"urls_position\\\\":\\\\"\\\\",\\\\"alternative_readmore\\\\":\\\\"\\\\",\\\\"article_layout\\\\":\\\\"\\\\",\\\\"show_publishing_options\\\\":\\\\"\\\\",\\\\"show_article_options\\\\":\\\\"\\\\",\\\\"show_urls_images_backend\\\\":\\\\"\\\\",\\\\"show_urls_images_frontend\\\\":\\\\"\\\\"\}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"\{\\\\"robots\\\\":\\\\"\\\\",\\\\"author\\\\":\\\\"\\\\",\\\\"rights\\\\":\\\\"\\\\",\\\\"xreference\\\\":\\\\"\\\\"\}","featured":"0","language":"en-GB","xreference":""\}', 0),\
(10, 10, 1, '', '2014-01-22 21:43:42', 880, 1678, '72c6e5dfbc6e2a86930f7fb0637d235b66261442', '\{"id":10,"asset_id":67,"title":"Comunidad","alias":"comunidad","introtext":"<p>Esta pagina tendra un foro<\\\\/p>","fulltext":"","state":1,"catid":"2","created":"2014-01-22 21:43:42","created_by":"880","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-01-22 21:43:42","publish_down":"0000-00-00 00:00:00","images":"\{\\\\"image_intro\\\\":\\\\"\\\\",\\\\"float_intro\\\\":\\\\"\\\\",\\\\"image_intro_alt\\\\":\\\\"\\\\",\\\\"image_intro_caption\\\\":\\\\"\\\\",\\\\"image_fulltext\\\\":\\\\"\\\\",\\\\"float_fulltext\\\\":\\\\"\\\\",\\\\"image_fulltext_alt\\\\":\\\\"\\\\",\\\\"image_fulltext_caption\\\\":\\\\"\\\\"\}","urls":"\{\\\\"urla\\\\":false,\\\\"urlatext\\\\":\\\\"\\\\",\\\\"targeta\\\\":\\\\"\\\\",\\\\"urlb\\\\":false,\\\\"urlbtext\\\\":\\\\"\\\\",\\\\"targetb\\\\":\\\\"\\\\",\\\\"urlc\\\\":false,\\\\"urlctext\\\\":\\\\"\\\\",\\\\"targetc\\\\":\\\\"\\\\"\}","attribs":"\{\\\\"show_title\\\\":\\\\"\\\\",\\\\"link_titles\\\\":\\\\"\\\\",\\\\"show_tags\\\\":\\\\"\\\\",\\\\"show_intro\\\\":\\\\"\\\\",\\\\"info_block_position\\\\":\\\\"\\\\",\\\\"show_category\\\\":\\\\"\\\\",\\\\"link_category\\\\":\\\\"\\\\",\\\\"show_parent_category\\\\":\\\\"\\\\",\\\\"link_parent_category\\\\":\\\\"\\\\",\\\\"show_author\\\\":\\\\"\\\\",\\\\"link_author\\\\":\\\\"\\\\",\\\\"show_create_date\\\\":\\\\"\\\\",\\\\"show_modify_date\\\\":\\\\"\\\\",\\\\"show_publish_date\\\\":\\\\"\\\\",\\\\"show_item_navigation\\\\":\\\\"\\\\",\\\\"show_icons\\\\":\\\\"\\\\",\\\\"show_print_icon\\\\":\\\\"\\\\",\\\\"show_email_icon\\\\":\\\\"\\\\",\\\\"show_vote\\\\":\\\\"\\\\",\\\\"show_hits\\\\":\\\\"\\\\",\\\\"show_noauth\\\\":\\\\"\\\\",\\\\"urls_position\\\\":\\\\"\\\\",\\\\"alternative_readmore\\\\":\\\\"\\\\",\\\\"article_layout\\\\":\\\\"\\\\",\\\\"show_publishing_options\\\\":\\\\"\\\\",\\\\"show_article_options\\\\":\\\\"\\\\",\\\\"show_urls_images_backend\\\\":\\\\"\\\\",\\\\"show_urls_images_frontend\\\\":\\\\"\\\\"\}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"\{\\\\"robots\\\\":\\\\"\\\\",\\\\"author\\\\":\\\\"\\\\",\\\\"rights\\\\":\\\\"\\\\",\\\\"xreference\\\\":\\\\"\\\\"\}","featured":"0","language":"es-ES","xreference":""\}', 0),\
(11, 8, 6, '', '2014-01-23 12:17:53', 880, 541, '824ebfdde0ba4683d69bb65e1e0a430097608399', '\{"id":8,"asset_id":69,"parent_id":"1","lft":"13","rgt":14,"level":1,"path":null,"extension":"com_content","title":"Imagenes IceCaurosel","alias":"imagenes-icecaurosel","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"\{\\\\"category_layout\\\\":\\\\"\\\\",\\\\"image\\\\":\\\\"\\\\"\}","metadesc":"","metakey":"","metadata":"\{\\\\"author\\\\":\\\\"\\\\",\\\\"robots\\\\":\\\\"\\\\"\}","created_user_id":"880","created_time":"2014-01-23 12:17:53","modified_user_id":null,"modified_time":null,"hits":"0","language":"*","version":null\}', 0),\
(12, 11, 1, '', '2014-01-23 12:20:12', 880, 1729, 'e193063c07bc91f22343b4ad937e92837c07b48d', '\{"id":11,"asset_id":70,"title":"DevOps es el futuro","alias":"devops-es-el-futuro","introtext":"<p><img src=\\\\"images\\\\/IceCaurosel\\\\/devops.jpg\\\\" alt=\\\\"\\\\" \\\\/><\\\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-01-23 12:20:12","created_by":"880","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-01-23 12:20:12","publish_down":"0000-00-00 00:00:00","images":"\{\\\\"image_intro\\\\":\\\\"\\\\",\\\\"float_intro\\\\":\\\\"\\\\",\\\\"image_intro_alt\\\\":\\\\"\\\\",\\\\"image_intro_caption\\\\":\\\\"\\\\",\\\\"image_fulltext\\\\":\\\\"\\\\",\\\\"float_fulltext\\\\":\\\\"\\\\",\\\\"image_fulltext_alt\\\\":\\\\"\\\\",\\\\"image_fulltext_caption\\\\":\\\\"\\\\"\}","urls":"\{\\\\"urla\\\\":false,\\\\"urlatext\\\\":\\\\"\\\\",\\\\"targeta\\\\":\\\\"\\\\",\\\\"urlb\\\\":false,\\\\"urlbtext\\\\":\\\\"\\\\",\\\\"targetb\\\\":\\\\"\\\\",\\\\"urlc\\\\":false,\\\\"urlctext\\\\":\\\\"\\\\",\\\\"targetc\\\\":\\\\"\\\\"\}","attribs":"\{\\\\"show_title\\\\":\\\\"\\\\",\\\\"link_titles\\\\":\\\\"\\\\",\\\\"show_tags\\\\":\\\\"\\\\",\\\\"show_intro\\\\":\\\\"\\\\",\\\\"info_block_position\\\\":\\\\"\\\\",\\\\"show_category\\\\":\\\\"\\\\",\\\\"link_category\\\\":\\\\"\\\\",\\\\"show_parent_category\\\\":\\\\"\\\\",\\\\"link_parent_category\\\\":\\\\"\\\\",\\\\"show_author\\\\":\\\\"\\\\",\\\\"link_author\\\\":\\\\"\\\\",\\\\"show_create_date\\\\":\\\\"\\\\",\\\\"show_modify_date\\\\":\\\\"\\\\",\\\\"show_publish_date\\\\":\\\\"\\\\",\\\\"show_item_navigation\\\\":\\\\"\\\\",\\\\"show_icons\\\\":\\\\"\\\\",\\\\"show_print_icon\\\\":\\\\"\\\\",\\\\"show_email_icon\\\\":\\\\"\\\\",\\\\"show_vote\\\\":\\\\"\\\\",\\\\"show_hits\\\\":\\\\"\\\\",\\\\"show_noauth\\\\":\\\\"\\\\",\\\\"urls_position\\\\":\\\\"\\\\",\\\\"alternative_readmore\\\\":\\\\"\\\\",\\\\"article_layout\\\\":\\\\"\\\\",\\\\"show_publishing_options\\\\":\\\\"\\\\",\\\\"show_article_options\\\\":\\\\"\\\\",\\\\"show_urls_images_backend\\\\":\\\\"\\\\",\\\\"show_urls_images_frontend\\\\":\\\\"\\\\"\}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"\{\\\\"robots\\\\":\\\\"\\\\",\\\\"author\\\\":\\\\"\\\\",\\\\"rights\\\\":\\\\"\\\\",\\\\"xreference\\\\":\\\\"\\\\"\}","featured":"0","language":"es-ES","xreference":""\}', 0),\
(13, 12, 1, '', '2014-01-23 12:21:08', 880, 1768, '911210e4c326d181ce3acd1473abd7e3c2d37a98', '\{"id":12,"asset_id":71,"title":"Continuous Delivery es el futuro","alias":"continuous-delivery-es-el-futuro","introtext":"<p><img src=\\\\"images\\\\/IceCaurosel\\\\/continuous-delivery.png\\\\" alt=\\\\"\\\\" \\\\/><\\\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-01-23 12:21:08","created_by":"880","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-01-23 12:21:08","publish_down":"0000-00-00 00:00:00","images":"\{\\\\"image_intro\\\\":\\\\"\\\\",\\\\"float_intro\\\\":\\\\"\\\\",\\\\"image_intro_alt\\\\":\\\\"\\\\",\\\\"image_intro_caption\\\\":\\\\"\\\\",\\\\"image_fulltext\\\\":\\\\"\\\\",\\\\"float_fulltext\\\\":\\\\"\\\\",\\\\"image_fulltext_alt\\\\":\\\\"\\\\",\\\\"image_fulltext_caption\\\\":\\\\"\\\\"\}","urls":"\{\\\\"urla\\\\":false,\\\\"urlatext\\\\":\\\\"\\\\",\\\\"targeta\\\\":\\\\"\\\\",\\\\"urlb\\\\":false,\\\\"urlbtext\\\\":\\\\"\\\\",\\\\"targetb\\\\":\\\\"\\\\",\\\\"urlc\\\\":false,\\\\"urlctext\\\\":\\\\"\\\\",\\\\"targetc\\\\":\\\\"\\\\"\}","attribs":"\{\\\\"show_title\\\\":\\\\"\\\\",\\\\"link_titles\\\\":\\\\"\\\\",\\\\"show_tags\\\\":\\\\"\\\\",\\\\"show_intro\\\\":\\\\"\\\\",\\\\"info_block_position\\\\":\\\\"\\\\",\\\\"show_category\\\\":\\\\"\\\\",\\\\"link_category\\\\":\\\\"\\\\",\\\\"show_parent_category\\\\":\\\\"\\\\",\\\\"link_parent_category\\\\":\\\\"\\\\",\\\\"show_author\\\\":\\\\"\\\\",\\\\"link_author\\\\":\\\\"\\\\",\\\\"show_create_date\\\\":\\\\"\\\\",\\\\"show_modify_date\\\\":\\\\"\\\\",\\\\"show_publish_date\\\\":\\\\"\\\\",\\\\"show_item_navigation\\\\":\\\\"\\\\",\\\\"show_icons\\\\":\\\\"\\\\",\\\\"show_print_icon\\\\":\\\\"\\\\",\\\\"show_email_icon\\\\":\\\\"\\\\",\\\\"show_vote\\\\":\\\\"\\\\",\\\\"show_hits\\\\":\\\\"\\\\",\\\\"show_noauth\\\\":\\\\"\\\\",\\\\"urls_position\\\\":\\\\"\\\\",\\\\"alternative_readmore\\\\":\\\\"\\\\",\\\\"article_layout\\\\":\\\\"\\\\",\\\\"show_publishing_options\\\\":\\\\"\\\\",\\\\"show_article_options\\\\":\\\\"\\\\",\\\\"show_urls_images_backend\\\\":\\\\"\\\\",\\\\"show_urls_images_frontend\\\\":\\\\"\\\\"\}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"\{\\\\"robots\\\\":\\\\"\\\\",\\\\"author\\\\":\\\\"\\\\",\\\\"rights\\\\":\\\\"\\\\",\\\\"xreference\\\\":\\\\"\\\\"\}","featured":"0","language":"es-ES","xreference":""\}', 0),\
(14, 8, 6, '', '2014-01-23 12:21:29', 880, 604, '2e088e9761a5e59fcd13abe30e3ae7951c9b2a4a', '\{"id":8,"asset_id":"69","parent_id":"1","lft":"13","rgt":"14","level":"1","path":"imagenes-icecaurosel","extension":"com_content","title":"Imagenes IceCaurosel Esp","alias":"imagenes-icecaurosel","note":"","description":"","published":"1","checked_out":"880","checked_out_time":"2014-01-23 12:21:21","access":"1","params":"\{\\\\"category_layout\\\\":\\\\"\\\\",\\\\"image\\\\":\\\\"\\\\"\}","metadesc":"","metakey":"","metadata":"\{\\\\"author\\\\":\\\\"\\\\",\\\\"robots\\\\":\\\\"\\\\"\}","created_user_id":"880","created_time":"2014-01-23 12:17:53","modified_user_id":"880","modified_time":"2014-01-23 12:21:29","hits":"0","language":"*","version":"1"\}', 0),\
(15, 9, 6, '', '2014-01-23 12:22:28', 880, 553, '4ebcf138596280ae4fd9f485bfb765bcdcd62dbb', '\{"id":9,"asset_id":72,"parent_id":"1","lft":"15","rgt":16,"level":1,"path":null,"extension":"com_content","title":"Imagenes IceCaurosel Eng","alias":"imagenes-icecaurosel-eng","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"\{\\\\"category_layout\\\\":\\\\"\\\\",\\\\"image\\\\":\\\\"\\\\"\}","metadesc":"","metakey":"","metadata":"\{\\\\"author\\\\":\\\\"\\\\",\\\\"robots\\\\":\\\\"\\\\"\}","created_user_id":"880","created_time":"2014-01-23 12:22:28","modified_user_id":null,"modified_time":null,"hits":"0","language":"en-GB","version":null\}', 0),\
(16, 8, 6, '', '2014-01-23 12:22:41', 880, 608, 'f8fd91e3f122605ef9a3a5b55d6108043844eff8', '\{"id":8,"asset_id":"69","parent_id":"1","lft":"13","rgt":"14","level":"1","path":"imagenes-icecaurosel","extension":"com_content","title":"Imagenes IceCaurosel Esp","alias":"imagenes-icecaurosel","note":"","description":"","published":"1","checked_out":"880","checked_out_time":"2014-01-23 12:22:32","access":"1","params":"\{\\\\"category_layout\\\\":\\\\"\\\\",\\\\"image\\\\":\\\\"\\\\"\}","metadesc":"","metakey":"","metadata":"\{\\\\"author\\\\":\\\\"\\\\",\\\\"robots\\\\":\\\\"\\\\"\}","created_user_id":"880","created_time":"2014-01-23 12:17:53","modified_user_id":"880","modified_time":"2014-01-23 12:22:41","hits":"0","language":"es-ES","version":"1"\}', 0),\
(17, 13, 1, '', '2014-01-23 12:23:42', 880, 1731, '4494d4b0ec729ba8f264811c4cbe082c8dbbd4b6', '\{"id":13,"asset_id":73,"title":"DevOps is the future","alias":"devops-is-the-future","introtext":"<p><img src=\\\\"images\\\\/IceCaurosel\\\\/devops.jpg\\\\" alt=\\\\"\\\\" \\\\/><\\\\/p>","fulltext":"","state":1,"catid":"9","created":"2014-01-23 12:23:42","created_by":"880","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-01-23 12:23:42","publish_down":"0000-00-00 00:00:00","images":"\{\\\\"image_intro\\\\":\\\\"\\\\",\\\\"float_intro\\\\":\\\\"\\\\",\\\\"image_intro_alt\\\\":\\\\"\\\\",\\\\"image_intro_caption\\\\":\\\\"\\\\",\\\\"image_fulltext\\\\":\\\\"\\\\",\\\\"float_fulltext\\\\":\\\\"\\\\",\\\\"image_fulltext_alt\\\\":\\\\"\\\\",\\\\"image_fulltext_caption\\\\":\\\\"\\\\"\}","urls":"\{\\\\"urla\\\\":false,\\\\"urlatext\\\\":\\\\"\\\\",\\\\"targeta\\\\":\\\\"\\\\",\\\\"urlb\\\\":false,\\\\"urlbtext\\\\":\\\\"\\\\",\\\\"targetb\\\\":\\\\"\\\\",\\\\"urlc\\\\":false,\\\\"urlctext\\\\":\\\\"\\\\",\\\\"targetc\\\\":\\\\"\\\\"\}","attribs":"\{\\\\"show_title\\\\":\\\\"\\\\",\\\\"link_titles\\\\":\\\\"\\\\",\\\\"show_tags\\\\":\\\\"\\\\",\\\\"show_intro\\\\":\\\\"\\\\",\\\\"info_block_position\\\\":\\\\"\\\\",\\\\"show_category\\\\":\\\\"\\\\",\\\\"link_category\\\\":\\\\"\\\\",\\\\"show_parent_category\\\\":\\\\"\\\\",\\\\"link_parent_category\\\\":\\\\"\\\\",\\\\"show_author\\\\":\\\\"\\\\",\\\\"link_author\\\\":\\\\"\\\\",\\\\"show_create_date\\\\":\\\\"\\\\",\\\\"show_modify_date\\\\":\\\\"\\\\",\\\\"show_publish_date\\\\":\\\\"\\\\",\\\\"show_item_navigation\\\\":\\\\"\\\\",\\\\"show_icons\\\\":\\\\"\\\\",\\\\"show_print_icon\\\\":\\\\"\\\\",\\\\"show_email_icon\\\\":\\\\"\\\\",\\\\"show_vote\\\\":\\\\"\\\\",\\\\"show_hits\\\\":\\\\"\\\\",\\\\"show_noauth\\\\":\\\\"\\\\",\\\\"urls_position\\\\":\\\\"\\\\",\\\\"alternative_readmore\\\\":\\\\"\\\\",\\\\"article_layout\\\\":\\\\"\\\\",\\\\"show_publishing_options\\\\":\\\\"\\\\",\\\\"show_article_options\\\\":\\\\"\\\\",\\\\"show_urls_images_backend\\\\":\\\\"\\\\",\\\\"show_urls_images_frontend\\\\":\\\\"\\\\"\}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"\{\\\\"robots\\\\":\\\\"\\\\",\\\\"author\\\\":\\\\"\\\\",\\\\"rights\\\\":\\\\"\\\\",\\\\"xreference\\\\":\\\\"\\\\"\}","featured":"0","language":"en-GB","xreference":""\}', 0),\
(18, 14, 1, '', '2014-01-23 12:24:24', 880, 1770, '6e95fe890706bb715ba6f393dc19e3ff8493c0a3', '\{"id":14,"asset_id":74,"title":"Continuous Delivery is the future","alias":"continuous-delivery-is-the-future","introtext":"<p><img src=\\\\"images\\\\/IceCaurosel\\\\/continuous-delivery.png\\\\" alt=\\\\"\\\\" \\\\/><\\\\/p>","fulltext":"","state":1,"catid":"9","created":"2014-01-23 12:24:24","created_by":"880","created_by_alias":"","modified":"","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2014-01-23 12:24:24","publish_down":"0000-00-00 00:00:00","images":"\{\\\\"image_intro\\\\":\\\\"\\\\",\\\\"float_intro\\\\":\\\\"\\\\",\\\\"image_intro_alt\\\\":\\\\"\\\\",\\\\"image_intro_caption\\\\":\\\\"\\\\",\\\\"image_fulltext\\\\":\\\\"\\\\",\\\\"float_fulltext\\\\":\\\\"\\\\",\\\\"image_fulltext_alt\\\\":\\\\"\\\\",\\\\"image_fulltext_caption\\\\":\\\\"\\\\"\}","urls":"\{\\\\"urla\\\\":false,\\\\"urlatext\\\\":\\\\"\\\\",\\\\"targeta\\\\":\\\\"\\\\",\\\\"urlb\\\\":false,\\\\"urlbtext\\\\":\\\\"\\\\",\\\\"targetb\\\\":\\\\"\\\\",\\\\"urlc\\\\":false,\\\\"urlctext\\\\":\\\\"\\\\",\\\\"targetc\\\\":\\\\"\\\\"\}","attribs":"\{\\\\"show_title\\\\":\\\\"\\\\",\\\\"link_titles\\\\":\\\\"\\\\",\\\\"show_tags\\\\":\\\\"\\\\",\\\\"show_intro\\\\":\\\\"\\\\",\\\\"info_block_position\\\\":\\\\"\\\\",\\\\"show_category\\\\":\\\\"\\\\",\\\\"link_category\\\\":\\\\"\\\\",\\\\"show_parent_category\\\\":\\\\"\\\\",\\\\"link_parent_category\\\\":\\\\"\\\\",\\\\"show_author\\\\":\\\\"\\\\",\\\\"link_author\\\\":\\\\"\\\\",\\\\"show_create_date\\\\":\\\\"\\\\",\\\\"show_modify_date\\\\":\\\\"\\\\",\\\\"show_publish_date\\\\":\\\\"\\\\",\\\\"show_item_navigation\\\\":\\\\"\\\\",\\\\"show_icons\\\\":\\\\"\\\\",\\\\"show_print_icon\\\\":\\\\"\\\\",\\\\"show_email_icon\\\\":\\\\"\\\\",\\\\"show_vote\\\\":\\\\"\\\\",\\\\"show_hits\\\\":\\\\"\\\\",\\\\"show_noauth\\\\":\\\\"\\\\",\\\\"urls_position\\\\":\\\\"\\\\",\\\\"alternative_readmore\\\\":\\\\"\\\\",\\\\"article_layout\\\\":\\\\"\\\\",\\\\"show_publishing_options\\\\":\\\\"\\\\",\\\\"show_article_options\\\\":\\\\"\\\\",\\\\"show_urls_images_backend\\\\":\\\\"\\\\",\\\\"show_urls_images_frontend\\\\":\\\\"\\\\"\}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"\{\\\\"robots\\\\":\\\\"\\\\",\\\\"author\\\\":\\\\"\\\\",\\\\"rights\\\\":\\\\"\\\\",\\\\"xreference\\\\":\\\\"\\\\"\}","featured":"0","language":"en-GB","xreference":""\}', 0),\
(19, 12, 1, '', '2014-01-23 12:58:54', 880, 1806, '18f8aa8c2297c81aecab826d04fb7f21a51bfffb', '\{"id":12,"asset_id":"71","title":"Continuous Delivery es el futuro","alias":"continuous-delivery-es-el-futuro","introtext":"<p><img src=\\\\"images\\\\/IceCaurosel\\\\/continuous-delivery.png\\\\" alt=\\\\"\\\\" \\\\/><\\\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-01-23 12:21:08","created_by":"880","created_by_alias":"","modified":"2014-01-23 12:58:54","modified_by":"880","checked_out":"880","checked_out_time":"2014-01-23 12:58:49","publish_up":"2014-01-23 12:21:08","publish_down":"0000-00-00 00:00:00","images":"\{\\\\"image_intro\\\\":\\\\"\\\\",\\\\"float_intro\\\\":\\\\"\\\\",\\\\"image_intro_alt\\\\":\\\\"\\\\",\\\\"image_intro_caption\\\\":\\\\"\\\\",\\\\"image_fulltext\\\\":\\\\"\\\\",\\\\"float_fulltext\\\\":\\\\"\\\\",\\\\"image_fulltext_alt\\\\":\\\\"\\\\",\\\\"image_fulltext_caption\\\\":\\\\"\\\\"\}","urls":"\{\\\\"urla\\\\":false,\\\\"urlatext\\\\":\\\\"\\\\",\\\\"targeta\\\\":\\\\"\\\\",\\\\"urlb\\\\":false,\\\\"urlbtext\\\\":\\\\"\\\\",\\\\"targetb\\\\":\\\\"\\\\",\\\\"urlc\\\\":false,\\\\"urlctext\\\\":\\\\"\\\\",\\\\"targetc\\\\":\\\\"\\\\"\}","attribs":"\{\\\\"show_title\\\\":\\\\"\\\\",\\\\"link_titles\\\\":\\\\"\\\\",\\\\"show_tags\\\\":\\\\"\\\\",\\\\"show_intro\\\\":\\\\"\\\\",\\\\"info_block_position\\\\":\\\\"\\\\",\\\\"show_category\\\\":\\\\"\\\\",\\\\"link_category\\\\":\\\\"\\\\",\\\\"show_parent_category\\\\":\\\\"\\\\",\\\\"link_parent_category\\\\":\\\\"\\\\",\\\\"show_author\\\\":\\\\"\\\\",\\\\"link_author\\\\":\\\\"\\\\",\\\\"show_create_date\\\\":\\\\"\\\\",\\\\"show_modify_date\\\\":\\\\"\\\\",\\\\"show_publish_date\\\\":\\\\"\\\\",\\\\"show_item_navigation\\\\":\\\\"\\\\",\\\\"show_icons\\\\":\\\\"\\\\",\\\\"show_print_icon\\\\":\\\\"\\\\",\\\\"show_email_icon\\\\":\\\\"\\\\",\\\\"show_vote\\\\":\\\\"\\\\",\\\\"show_hits\\\\":\\\\"\\\\",\\\\"show_noauth\\\\":\\\\"\\\\",\\\\"urls_position\\\\":\\\\"\\\\",\\\\"alternative_readmore\\\\":\\\\"\\\\",\\\\"article_layout\\\\":\\\\"\\\\",\\\\"show_publishing_options\\\\":\\\\"\\\\",\\\\"show_article_options\\\\":\\\\"\\\\",\\\\"show_urls_images_backend\\\\":\\\\"\\\\",\\\\"show_urls_images_frontend\\\\":\\\\"\\\\"\}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"\{\\\\"robots\\\\":\\\\"\\\\",\\\\"author\\\\":\\\\"\\\\",\\\\"rights\\\\":\\\\"\\\\",\\\\"xreference\\\\":\\\\"\\\\"\}","featured":"1","language":"es-ES","xreference":""\}', 0),\
(20, 12, 1, '', '2014-01-25 12:34:45', 880, 1871, '38a4ea0880c245edb690f15d614f7c7f017d966b', '\{"id":12,"asset_id":"71","title":"Continuous Delivery es el futuro","alias":"continuous-delivery-es-el-futuro","introtext":"<p><img src=\\\\"images\\\\/IceCaurosel\\\\/continuous-delivery.png\\\\" alt=\\\\"\\\\" \\\\/><span style=\\\\"line-height: 1.3em;\\\\">(loadposition prueba)<\\\\/span><\\\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-01-23 12:21:08","created_by":"880","created_by_alias":"","modified":"2014-01-25 12:34:45","modified_by":"880","checked_out":"880","checked_out_time":"2014-01-25 12:34:11","publish_up":"2014-01-23 12:21:08","publish_down":"0000-00-00 00:00:00","images":"\{\\\\"image_intro\\\\":\\\\"\\\\",\\\\"float_intro\\\\":\\\\"\\\\",\\\\"image_intro_alt\\\\":\\\\"\\\\",\\\\"image_intro_caption\\\\":\\\\"\\\\",\\\\"image_fulltext\\\\":\\\\"\\\\",\\\\"float_fulltext\\\\":\\\\"\\\\",\\\\"image_fulltext_alt\\\\":\\\\"\\\\",\\\\"image_fulltext_caption\\\\":\\\\"\\\\"\}","urls":"\{\\\\"urla\\\\":false,\\\\"urlatext\\\\":\\\\"\\\\",\\\\"targeta\\\\":\\\\"\\\\",\\\\"urlb\\\\":false,\\\\"urlbtext\\\\":\\\\"\\\\",\\\\"targetb\\\\":\\\\"\\\\",\\\\"urlc\\\\":false,\\\\"urlctext\\\\":\\\\"\\\\",\\\\"targetc\\\\":\\\\"\\\\"\}","attribs":"\{\\\\"show_title\\\\":\\\\"\\\\",\\\\"link_titles\\\\":\\\\"\\\\",\\\\"show_tags\\\\":\\\\"\\\\",\\\\"show_intro\\\\":\\\\"\\\\",\\\\"info_block_position\\\\":\\\\"\\\\",\\\\"show_category\\\\":\\\\"\\\\",\\\\"link_category\\\\":\\\\"\\\\",\\\\"show_parent_category\\\\":\\\\"\\\\",\\\\"link_parent_category\\\\":\\\\"\\\\",\\\\"show_author\\\\":\\\\"\\\\",\\\\"link_author\\\\":\\\\"\\\\",\\\\"show_create_date\\\\":\\\\"\\\\",\\\\"show_modify_date\\\\":\\\\"\\\\",\\\\"show_publish_date\\\\":\\\\"\\\\",\\\\"show_item_navigation\\\\":\\\\"\\\\",\\\\"show_icons\\\\":\\\\"\\\\",\\\\"show_print_icon\\\\":\\\\"\\\\",\\\\"show_email_icon\\\\":\\\\"\\\\",\\\\"show_vote\\\\":\\\\"\\\\",\\\\"show_hits\\\\":\\\\"\\\\",\\\\"show_noauth\\\\":\\\\"\\\\",\\\\"urls_position\\\\":\\\\"\\\\",\\\\"alternative_readmore\\\\":\\\\"\\\\",\\\\"article_layout\\\\":\\\\"\\\\",\\\\"show_publishing_options\\\\":\\\\"\\\\",\\\\"show_article_options\\\\":\\\\"\\\\",\\\\"show_urls_images_backend\\\\":\\\\"\\\\",\\\\"show_urls_images_frontend\\\\":\\\\"\\\\"\}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"4","metadata":"\{\\\\"robots\\\\":\\\\"\\\\",\\\\"author\\\\":\\\\"\\\\",\\\\"rights\\\\":\\\\"\\\\",\\\\"xreference\\\\":\\\\"\\\\"\}","featured":"0","language":"es-ES","xreference":""\}', 0),\
(21, 12, 1, '', '2014-01-25 12:37:32', 880, 1871, '10af93d3719a2afdf0f250a55c86716f1df79956', '\{"id":12,"asset_id":"71","title":"Continuous Delivery es el futuro","alias":"continuous-delivery-es-el-futuro","introtext":"<p><img src=\\\\"images\\\\/IceCaurosel\\\\/continuous-delivery.png\\\\" alt=\\\\"\\\\" \\\\/>\{<span style=\\\\"line-height: 1.3em;\\\\">loadposition prueba\}<\\\\/span><\\\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-01-23 12:21:08","created_by":"880","created_by_alias":"","modified":"2014-01-25 12:37:32","modified_by":"880","checked_out":"880","checked_out_time":"2014-01-25 12:37:09","publish_up":"2014-01-23 12:21:08","publish_down":"0000-00-00 00:00:00","images":"\{\\\\"image_intro\\\\":\\\\"\\\\",\\\\"float_intro\\\\":\\\\"\\\\",\\\\"image_intro_alt\\\\":\\\\"\\\\",\\\\"image_intro_caption\\\\":\\\\"\\\\",\\\\"image_fulltext\\\\":\\\\"\\\\",\\\\"float_fulltext\\\\":\\\\"\\\\",\\\\"image_fulltext_alt\\\\":\\\\"\\\\",\\\\"image_fulltext_caption\\\\":\\\\"\\\\"\}","urls":"\{\\\\"urla\\\\":false,\\\\"urlatext\\\\":\\\\"\\\\",\\\\"targeta\\\\":\\\\"\\\\",\\\\"urlb\\\\":false,\\\\"urlbtext\\\\":\\\\"\\\\",\\\\"targetb\\\\":\\\\"\\\\",\\\\"urlc\\\\":false,\\\\"urlctext\\\\":\\\\"\\\\",\\\\"targetc\\\\":\\\\"\\\\"\}","attribs":"\{\\\\"show_title\\\\":\\\\"\\\\",\\\\"link_titles\\\\":\\\\"\\\\",\\\\"show_tags\\\\":\\\\"\\\\",\\\\"show_intro\\\\":\\\\"\\\\",\\\\"info_block_position\\\\":\\\\"\\\\",\\\\"show_category\\\\":\\\\"\\\\",\\\\"link_category\\\\":\\\\"\\\\",\\\\"show_parent_category\\\\":\\\\"\\\\",\\\\"link_parent_category\\\\":\\\\"\\\\",\\\\"show_author\\\\":\\\\"\\\\",\\\\"link_author\\\\":\\\\"\\\\",\\\\"show_create_date\\\\":\\\\"\\\\",\\\\"show_modify_date\\\\":\\\\"\\\\",\\\\"show_publish_date\\\\":\\\\"\\\\",\\\\"show_item_navigation\\\\":\\\\"\\\\",\\\\"show_icons\\\\":\\\\"\\\\",\\\\"show_print_icon\\\\":\\\\"\\\\",\\\\"show_email_icon\\\\":\\\\"\\\\",\\\\"show_vote\\\\":\\\\"\\\\",\\\\"show_hits\\\\":\\\\"\\\\",\\\\"show_noauth\\\\":\\\\"\\\\",\\\\"urls_position\\\\":\\\\"\\\\",\\\\"alternative_readmore\\\\":\\\\"\\\\",\\\\"article_layout\\\\":\\\\"\\\\",\\\\"show_publishing_options\\\\":\\\\"\\\\",\\\\"show_article_options\\\\":\\\\"\\\\",\\\\"show_urls_images_backend\\\\":\\\\"\\\\",\\\\"show_urls_images_frontend\\\\":\\\\"\\\\"\}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"\{\\\\"robots\\\\":\\\\"\\\\",\\\\"author\\\\":\\\\"\\\\",\\\\"rights\\\\":\\\\"\\\\",\\\\"xreference\\\\":\\\\"\\\\"\}","featured":"0","language":"es-ES","xreference":""\}', 0),\
(22, 12, 1, '', '2014-01-25 12:39:38', 880, 1869, 'd4a8dba05294896c40329609d7f65bc2c41e41ae', '\{"id":12,"asset_id":"71","title":"Continuous Delivery es el futuro","alias":"continuous-delivery-es-el-futuro","introtext":"<p><img src=\\\\"images\\\\/IceCaurosel\\\\/continuous-delivery.png\\\\" alt=\\\\"\\\\" \\\\/>\{<span style=\\\\"line-height: 1.3em;\\\\">loadmodule prueba\}<\\\\/span><\\\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-01-23 12:21:08","created_by":"880","created_by_alias":"","modified":"2014-01-25 12:39:38","modified_by":"880","checked_out":"880","checked_out_time":"2014-01-25 12:39:24","publish_up":"2014-01-23 12:21:08","publish_down":"0000-00-00 00:00:00","images":"\{\\\\"image_intro\\\\":\\\\"\\\\",\\\\"float_intro\\\\":\\\\"\\\\",\\\\"image_intro_alt\\\\":\\\\"\\\\",\\\\"image_intro_caption\\\\":\\\\"\\\\",\\\\"image_fulltext\\\\":\\\\"\\\\",\\\\"float_fulltext\\\\":\\\\"\\\\",\\\\"image_fulltext_alt\\\\":\\\\"\\\\",\\\\"image_fulltext_caption\\\\":\\\\"\\\\"\}","urls":"\{\\\\"urla\\\\":false,\\\\"urlatext\\\\":\\\\"\\\\",\\\\"targeta\\\\":\\\\"\\\\",\\\\"urlb\\\\":false,\\\\"urlbtext\\\\":\\\\"\\\\",\\\\"targetb\\\\":\\\\"\\\\",\\\\"urlc\\\\":false,\\\\"urlctext\\\\":\\\\"\\\\",\\\\"targetc\\\\":\\\\"\\\\"\}","attribs":"\{\\\\"show_title\\\\":\\\\"\\\\",\\\\"link_titles\\\\":\\\\"\\\\",\\\\"show_tags\\\\":\\\\"\\\\",\\\\"show_intro\\\\":\\\\"\\\\",\\\\"info_block_position\\\\":\\\\"\\\\",\\\\"show_category\\\\":\\\\"\\\\",\\\\"link_category\\\\":\\\\"\\\\",\\\\"show_parent_category\\\\":\\\\"\\\\",\\\\"link_parent_category\\\\":\\\\"\\\\",\\\\"show_author\\\\":\\\\"\\\\",\\\\"link_author\\\\":\\\\"\\\\",\\\\"show_create_date\\\\":\\\\"\\\\",\\\\"show_modify_date\\\\":\\\\"\\\\",\\\\"show_publish_date\\\\":\\\\"\\\\",\\\\"show_item_navigation\\\\":\\\\"\\\\",\\\\"show_icons\\\\":\\\\"\\\\",\\\\"show_print_icon\\\\":\\\\"\\\\",\\\\"show_email_icon\\\\":\\\\"\\\\",\\\\"show_vote\\\\":\\\\"\\\\",\\\\"show_hits\\\\":\\\\"\\\\",\\\\"show_noauth\\\\":\\\\"\\\\",\\\\"urls_position\\\\":\\\\"\\\\",\\\\"alternative_readmore\\\\":\\\\"\\\\",\\\\"article_layout\\\\":\\\\"\\\\",\\\\"show_publishing_options\\\\":\\\\"\\\\",\\\\"show_article_options\\\\":\\\\"\\\\",\\\\"show_urls_images_backend\\\\":\\\\"\\\\",\\\\"show_urls_images_frontend\\\\":\\\\"\\\\"\}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"8","metadata":"\{\\\\"robots\\\\":\\\\"\\\\",\\\\"author\\\\":\\\\"\\\\",\\\\"rights\\\\":\\\\"\\\\",\\\\"xreference\\\\":\\\\"\\\\"\}","featured":"0","language":"es-ES","xreference":""\}', 0),\
(23, 12, 1, '', '2014-01-25 12:42:40', 880, 1858, '8dacb5b1f14aa6ac73a01c0e4924b9c450b48c47', '\{"id":12,"asset_id":"71","title":"Continuous Delivery es el futuro","alias":"continuous-delivery-es-el-futuro","introtext":"<p><img src=\\\\"images\\\\/IceCaurosel\\\\/continuous-delivery.png\\\\" alt=\\\\"\\\\" \\\\/><span style=\\\\"line-height: 1.3em;\\\\"><br \\\\/><\\\\/span><\\\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-01-23 12:21:08","created_by":"880","created_by_alias":"","modified":"2014-01-25 12:42:40","modified_by":"880","checked_out":"880","checked_out_time":"2014-01-25 12:42:20","publish_up":"2014-01-23 12:21:08","publish_down":"0000-00-00 00:00:00","images":"\{\\\\"image_intro\\\\":\\\\"\\\\",\\\\"float_intro\\\\":\\\\"\\\\",\\\\"image_intro_alt\\\\":\\\\"\\\\",\\\\"image_intro_caption\\\\":\\\\"\\\\",\\\\"image_fulltext\\\\":\\\\"\\\\",\\\\"float_fulltext\\\\":\\\\"\\\\",\\\\"image_fulltext_alt\\\\":\\\\"\\\\",\\\\"image_fulltext_caption\\\\":\\\\"\\\\"\}","urls":"\{\\\\"urla\\\\":false,\\\\"urlatext\\\\":\\\\"\\\\",\\\\"targeta\\\\":\\\\"\\\\",\\\\"urlb\\\\":false,\\\\"urlbtext\\\\":\\\\"\\\\",\\\\"targetb\\\\":\\\\"\\\\",\\\\"urlc\\\\":false,\\\\"urlctext\\\\":\\\\"\\\\",\\\\"targetc\\\\":\\\\"\\\\"\}","attribs":"\{\\\\"show_title\\\\":\\\\"\\\\",\\\\"link_titles\\\\":\\\\"\\\\",\\\\"show_tags\\\\":\\\\"\\\\",\\\\"show_intro\\\\":\\\\"\\\\",\\\\"info_block_position\\\\":\\\\"\\\\",\\\\"show_category\\\\":\\\\"\\\\",\\\\"link_category\\\\":\\\\"\\\\",\\\\"show_parent_category\\\\":\\\\"\\\\",\\\\"link_parent_category\\\\":\\\\"\\\\",\\\\"show_author\\\\":\\\\"\\\\",\\\\"link_author\\\\":\\\\"\\\\",\\\\"show_create_date\\\\":\\\\"\\\\",\\\\"show_modify_date\\\\":\\\\"\\\\",\\\\"show_publish_date\\\\":\\\\"\\\\",\\\\"show_item_navigation\\\\":\\\\"\\\\",\\\\"show_icons\\\\":\\\\"\\\\",\\\\"show_print_icon\\\\":\\\\"\\\\",\\\\"show_email_icon\\\\":\\\\"\\\\",\\\\"show_vote\\\\":\\\\"\\\\",\\\\"show_hits\\\\":\\\\"\\\\",\\\\"show_noauth\\\\":\\\\"\\\\",\\\\"urls_position\\\\":\\\\"\\\\",\\\\"alternative_readmore\\\\":\\\\"\\\\",\\\\"article_layout\\\\":\\\\"\\\\",\\\\"show_publishing_options\\\\":\\\\"\\\\",\\\\"show_article_options\\\\":\\\\"\\\\",\\\\"show_urls_images_backend\\\\":\\\\"\\\\",\\\\"show_urls_images_frontend\\\\":\\\\"\\\\"\}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"10","metadata":"\{\\\\"robots\\\\":\\\\"\\\\",\\\\"author\\\\":\\\\"\\\\",\\\\"rights\\\\":\\\\"\\\\",\\\\"xreference\\\\":\\\\"\\\\"\}","featured":"0","language":"es-ES","xreference":""\}', 0),\
(24, 12, 1, '', '2014-01-25 12:46:29', 880, 1911, '9d4df93b9a7de94992afdabc4eac7af9651488a5', '\{"id":12,"asset_id":"71","title":"Continuous Delivery es el futuro","alias":"continuous-delivery-es-el-futuro","introtext":"<p><img src=\\\\"images\\\\/IceCaurosel\\\\/continuous-delivery.png\\\\" alt=\\\\"\\\\" \\\\/><span style=\\\\"line-height: 1.3em;\\\\"><br \\\\/><\\\\/span><\\\\/p>\\\\r\\\\n<p><a href=\\\\"..\\\\/google.cl\\\\">Learn More<\\\\/a><\\\\/p>","fulltext":"","state":1,"catid":"8","created":"2014-01-23 12:21:08","created_by":"880","created_by_alias":"","modified":"2014-01-25 12:46:29","modified_by":"880","checked_out":"880","checked_out_time":"2014-01-25 12:45:50","publish_up":"2014-01-23 12:21:08","publish_down":"0000-00-00 00:00:00","images":"\{\\\\"image_intro\\\\":\\\\"\\\\",\\\\"float_intro\\\\":\\\\"\\\\",\\\\"image_intro_alt\\\\":\\\\"\\\\",\\\\"image_intro_caption\\\\":\\\\"\\\\",\\\\"image_fulltext\\\\":\\\\"\\\\",\\\\"float_fulltext\\\\":\\\\"\\\\",\\\\"image_fulltext_alt\\\\":\\\\"\\\\",\\\\"image_fulltext_caption\\\\":\\\\"\\\\"\}","urls":"\{\\\\"urla\\\\":false,\\\\"urlatext\\\\":\\\\"\\\\",\\\\"targeta\\\\":\\\\"\\\\",\\\\"urlb\\\\":false,\\\\"urlbtext\\\\":\\\\"\\\\",\\\\"targetb\\\\":\\\\"\\\\",\\\\"urlc\\\\":false,\\\\"urlctext\\\\":\\\\"\\\\",\\\\"targetc\\\\":\\\\"\\\\"\}","attribs":"\{\\\\"show_title\\\\":\\\\"\\\\",\\\\"link_titles\\\\":\\\\"\\\\",\\\\"show_tags\\\\":\\\\"\\\\",\\\\"show_intro\\\\":\\\\"\\\\",\\\\"info_block_position\\\\":\\\\"\\\\",\\\\"show_category\\\\":\\\\"\\\\",\\\\"link_category\\\\":\\\\"\\\\",\\\\"show_parent_category\\\\":\\\\"\\\\",\\\\"link_parent_category\\\\":\\\\"\\\\",\\\\"show_author\\\\":\\\\"\\\\",\\\\"link_author\\\\":\\\\"\\\\",\\\\"show_create_date\\\\":\\\\"\\\\",\\\\"show_modify_date\\\\":\\\\"\\\\",\\\\"show_publish_date\\\\":\\\\"\\\\",\\\\"show_item_navigation\\\\":\\\\"\\\\",\\\\"show_icons\\\\":\\\\"\\\\",\\\\"show_print_icon\\\\":\\\\"\\\\",\\\\"show_email_icon\\\\":\\\\"\\\\",\\\\"show_vote\\\\":\\\\"\\\\",\\\\"show_hits\\\\":\\\\"\\\\",\\\\"show_noauth\\\\":\\\\"\\\\",\\\\"urls_position\\\\":\\\\"\\\\",\\\\"alternative_readmore\\\\":\\\\"\\\\",\\\\"article_layout\\\\":\\\\"\\\\",\\\\"show_publishing_options\\\\":\\\\"\\\\",\\\\"show_article_options\\\\":\\\\"\\\\",\\\\"show_urls_images_backend\\\\":\\\\"\\\\",\\\\"show_urls_images_frontend\\\\":\\\\"\\\\"\}","version":8,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"11","metadata":"\{\\\\"robots\\\\":\\\\"\\\\",\\\\"author\\\\":\\\\"\\\\",\\\\"rights\\\\":\\\\"\\\\",\\\\"xreference\\\\":\\\\"\\\\"\}","featured":"0","language":"es-ES","xreference":""\}', 0);\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_updates`\
--\
\
CREATE TABLE `r0dnb_updates` (\
  `update_id` int(11) NOT NULL AUTO_INCREMENT,\
  `update_site_id` int(11) DEFAULT '0',\
  `extension_id` int(11) DEFAULT '0',\
  `name` varchar(100) DEFAULT '',\
  `description` text NOT NULL,\
  `element` varchar(100) DEFAULT '',\
  `type` varchar(20) DEFAULT '',\
  `folder` varchar(20) DEFAULT '',\
  `client_id` tinyint(3) DEFAULT '0',\
  `version` varchar(10) DEFAULT '',\
  `data` text NOT NULL,\
  `detailsurl` text NOT NULL,\
  `infourl` text NOT NULL,\
  PRIMARY KEY (`update_id`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=49 ;\
\
--\
-- Volcado de datos para la tabla `r0dnb_updates`\
--\
\
INSERT INTO `r0dnb_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES\
(1, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/ms-MY_details.xml', ''),\
(2, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/ro-RO_details.xml', ''),\
(3, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.2.1.2', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),\
(4, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),\
(5, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),\
(6, 3, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),\
(7, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.2.0.1', '', 'http://update.joomla.org/language/details3/el-GR_details.xml', ''),\
(8, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),\
(9, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/he-IL_details.xml', ''),\
(10, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),\
(11, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.2.0.1', '', 'http://update.joomla.org/language/details3/af-ZA_details.xml', ''),\
(12, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.2.1.2', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),\
(13, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/be-BY_details.xml', ''),\
(14, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/bg-BG_details.xml', ''),\
(15, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.2.0.1', '', 'http://update.joomla.org/language/details3/ca-ES_details.xml', ''),\
(16, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),\
(17, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),\
(18, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/cs-CZ_details.xml', ''),\
(19, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),\
(20, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),\
(21, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.1.0.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),\
(22, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.1.0.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),\
(23, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),\
(24, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),\
(25, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.2.1.0', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),\
(26, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),\
(27, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),\
(28, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.2.0.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),\
(29, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', ''),\
(30, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),\
(31, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.2.1.5', '', 'http://update.joomla.org/language/details3/ru-RU_details.xml', ''),\
(32, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),\
(33, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),\
(34, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),\
(35, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),\
(36, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),\
(37, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),\
(38, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.2.0.6', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),\
(39, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.2.0.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', ''),\
(40, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/sq-AL_details.xml', ''),\
(41, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),\
(42, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.2.0.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),\
(43, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),\
(44, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),\
(45, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.1.4.1', '', 'http://update.joomla.org/language/details3/id-ID_details.xml', ''),\
(46, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),\
(47, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/sw-KE_details.xml', ''),\
(48, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/srp-ME_details.xml', '');\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_update_sites`\
--\
\
CREATE TABLE `r0dnb_update_sites` (\
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,\
  `name` varchar(100) DEFAULT '',\
  `type` varchar(20) DEFAULT '',\
  `location` text NOT NULL,\
  `enabled` int(11) DEFAULT '0',\
  `last_check_timestamp` bigint(20) DEFAULT '0',\
  PRIMARY KEY (`update_site_id`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=4 ;\
\
--\
-- Volcado de datos para la tabla `r0dnb_update_sites`\
--\
\
INSERT INTO `r0dnb_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES\
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1390827369),\
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1390827369),\
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1390827369);\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_update_sites_extensions`\
--\
\
CREATE TABLE `r0dnb_update_sites_extensions` (\
  `update_site_id` int(11) NOT NULL DEFAULT '0',\
  `extension_id` int(11) NOT NULL DEFAULT '0',\
  PRIMARY KEY (`update_site_id`,`extension_id`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';\
\
--\
-- Volcado de datos para la tabla `r0dnb_update_sites_extensions`\
--\
\
INSERT INTO `r0dnb_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES\
(1, 700),\
(2, 700),\
(3, 600),\
(3, 10002);\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_usergroups`\
--\
\
CREATE TABLE `r0dnb_usergroups` (\
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',\
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',\
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',\
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',\
  `title` varchar(100) NOT NULL DEFAULT '',\
  PRIMARY KEY (`id`),\
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),\
  KEY `idx_usergroup_title_lookup` (`title`),\
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),\
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;\
\
--\
-- Volcado de datos para la tabla `r0dnb_usergroups`\
--\
\
INSERT INTO `r0dnb_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES\
(1, 0, 1, 18, 'Public'),\
(2, 1, 8, 15, 'Registered'),\
(3, 2, 9, 14, 'Author'),\
(4, 3, 10, 13, 'Editor'),\
(5, 4, 11, 12, 'Publisher'),\
(6, 1, 4, 7, 'Manager'),\
(7, 6, 5, 6, 'Administrator'),\
(8, 1, 16, 17, 'Super Users'),\
(9, 1, 2, 3, 'Guest');\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_users`\
--\
\
CREATE TABLE `r0dnb_users` (\
  `id` int(11) NOT NULL AUTO_INCREMENT,\
  `name` varchar(255) NOT NULL DEFAULT '',\
  `username` varchar(150) NOT NULL DEFAULT '',\
  `email` varchar(100) NOT NULL DEFAULT '',\
  `password` varchar(100) NOT NULL DEFAULT '',\
  `block` tinyint(4) NOT NULL DEFAULT '0',\
  `sendEmail` tinyint(4) DEFAULT '0',\
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `activation` varchar(100) NOT NULL DEFAULT '',\
  `params` text NOT NULL,\
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',\
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',\
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',\
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',\
  PRIMARY KEY (`id`),\
  KEY `idx_name` (`name`),\
  KEY `idx_block` (`block`),\
  KEY `username` (`username`),\
  KEY `email` (`email`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=881 ;\
\
--\
-- Volcado de datos para la tabla `r0dnb_users`\
--\
\
INSERT INTO `r0dnb_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`) VALUES\
(880, 'Super User', 'ritchie20', 'oscar.rubio.ma@gmail.com', '$P$DdXL.lZpQXajt4lE7SJuk4vikTeWpI0', 0, 1, '2014-01-22 19:58:08', '2014-01-25 13:22:44', '0', '', '0000-00-00 00:00:00', 0, '', '');\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_user_keys`\
--\
\
CREATE TABLE `r0dnb_user_keys` (\
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,\
  `user_id` varchar(255) NOT NULL,\
  `token` varchar(255) NOT NULL,\
  `series` varchar(255) NOT NULL,\
  `invalid` tinyint(4) NOT NULL,\
  `time` varchar(200) NOT NULL,\
  `uastring` varchar(255) NOT NULL,\
  PRIMARY KEY (`id`),\
  UNIQUE KEY `series` (`series`),\
  UNIQUE KEY `series_2` (`series`),\
  UNIQUE KEY `series_3` (`series`),\
  KEY `user_id` (`user_id`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_user_notes`\
--\
\
CREATE TABLE `r0dnb_user_notes` (\
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,\
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',\
  `catid` int(10) unsigned NOT NULL DEFAULT '0',\
  `subject` varchar(100) NOT NULL DEFAULT '',\
  `body` text NOT NULL,\
  `state` tinyint(3) NOT NULL DEFAULT '0',\
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',\
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',\
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `modified_user_id` int(10) unsigned NOT NULL,\
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  PRIMARY KEY (`id`),\
  KEY `idx_user_id` (`user_id`),\
  KEY `idx_category_id` (`catid`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_user_profiles`\
--\
\
CREATE TABLE `r0dnb_user_profiles` (\
  `user_id` int(11) NOT NULL,\
  `profile_key` varchar(100) NOT NULL,\
  `profile_value` varchar(255) NOT NULL,\
  `ordering` int(11) NOT NULL DEFAULT '0',\
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_user_usergroup_map`\
--\
\
CREATE TABLE `r0dnb_user_usergroup_map` (\
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',\
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',\
  PRIMARY KEY (`user_id`,`group_id`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
--\
-- Volcado de datos para la tabla `r0dnb_user_usergroup_map`\
--\
\
INSERT INTO `r0dnb_user_usergroup_map` (`user_id`, `group_id`) VALUES\
(880, 8);\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_viewlevels`\
--\
\
CREATE TABLE `r0dnb_viewlevels` (\
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',\
  `title` varchar(100) NOT NULL DEFAULT '',\
  `ordering` int(11) NOT NULL DEFAULT '0',\
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',\
  PRIMARY KEY (`id`),\
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;\
\
--\
-- Volcado de datos para la tabla `r0dnb_viewlevels`\
--\
\
INSERT INTO `r0dnb_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES\
(1, 'Public', 0, '[1]'),\
(2, 'Registered', 1, '[6,2,8]'),\
(3, 'Special', 2, '[6,3,8]'),\
(5, 'Guest', 0, '[9]'),\
(6, 'Super Users', 0, '[8]');\
\
-- --------------------------------------------------------\
\
--\
-- Estructura de tabla para la tabla `r0dnb_weblinks`\
--\
\
CREATE TABLE `r0dnb_weblinks` (\
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,\
  `catid` int(11) NOT NULL DEFAULT '0',\
  `title` varchar(250) NOT NULL DEFAULT '',\
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',\
  `url` varchar(250) NOT NULL DEFAULT '',\
  `description` text NOT NULL,\
  `hits` int(11) NOT NULL DEFAULT '0',\
  `state` tinyint(1) NOT NULL DEFAULT '0',\
  `checked_out` int(11) NOT NULL DEFAULT '0',\
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `ordering` int(11) NOT NULL DEFAULT '0',\
  `access` int(11) NOT NULL DEFAULT '1',\
  `params` text NOT NULL,\
  `language` char(7) NOT NULL DEFAULT '',\
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',\
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',\
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',\
  `metakey` text NOT NULL,\
  `metadesc` text NOT NULL,\
  `metadata` text NOT NULL,\
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',\
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',\
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',\
  `version` int(10) unsigned NOT NULL DEFAULT '1',\
  `images` text NOT NULL,\
  PRIMARY KEY (`id`),\
  KEY `idx_access` (`access`),\
  KEY `idx_checkout` (`checked_out`),\
  KEY `idx_state` (`state`),\
  KEY `idx_catid` (`catid`),\
  KEY `idx_createdby` (`created_by`),\
  KEY `idx_featured_catid` (`featured`,`catid`),\
  KEY `idx_language` (`language`),\
  KEY `idx_xreference` (`xreference`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;\
}