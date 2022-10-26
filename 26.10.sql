-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 26 2022 г., 00:25
-- Версия сервера: 8.0.24
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `evoblog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_active_users`
--

CREATE TABLE `i6cn_active_users` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int NOT NULL DEFAULT '0',
  `action` varchar(10) NOT NULL DEFAULT '',
  `id` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_active_users`
--

INSERT INTO `i6cn_active_users` (`sid`, `internalKey`, `username`, `lasthit`, `action`, `id`) VALUES
('99kuu130ma8q5h429jevs7bmadob2pbv', 1, 'admin', 1666732162, '76', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_active_user_locks`
--

CREATE TABLE `i6cn_active_user_locks` (
  `id` int NOT NULL,
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int NOT NULL DEFAULT '0',
  `elementType` int NOT NULL DEFAULT '0',
  `elementId` int NOT NULL DEFAULT '0',
  `lasthit` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_active_user_locks`
--

INSERT INTO `i6cn_active_user_locks` (`id`, `sid`, `internalKey`, `elementType`, `elementId`, `lasthit`) VALUES
(1, '99kuu130ma8q5h429jevs7bmadob2pbv', 1, 7, 1, 1666727927),
(3, '99kuu130ma8q5h429jevs7bmadob2pbv', 1, 7, 5, 1666728203);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_active_user_sessions`
--

CREATE TABLE `i6cn_active_user_sessions` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int NOT NULL DEFAULT '0',
  `lasthit` int NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_active_user_sessions`
--

INSERT INTO `i6cn_active_user_sessions` (`sid`, `internalKey`, `lasthit`, `ip`) VALUES
('99kuu130ma8q5h429jevs7bmadob2pbv', 1, 1666732162, '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_categories`
--

CREATE TABLE `i6cn_categories` (
  `id` int NOT NULL,
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_categories`
--

INSERT INTO `i6cn_categories` (`id`, `category`, `rank`) VALUES
(1, 'Manager and Admin', 0),
(2, 'Content', 0),
(3, 'Navigation', 0),
(4, 'Шаблоны', 0),
(5, 'SEO', 0),
(6, 'Контент', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_documentgroup_names`
--

CREATE TABLE `i6cn_documentgroup_names` (
  `id` int NOT NULL,
  `name` varchar(245) NOT NULL DEFAULT '',
  `private_memgroup` int DEFAULT '0' COMMENT 'determine whether the document group is private to manager users',
  `private_webgroup` int DEFAULT '0' COMMENT 'determines whether the document is private to web users'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_document_groups`
--

CREATE TABLE `i6cn_document_groups` (
  `id` int NOT NULL,
  `document_group` int NOT NULL DEFAULT '0',
  `document` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_event_log`
--

CREATE TABLE `i6cn_event_log` (
  `id` int NOT NULL,
  `eventid` int DEFAULT '0',
  `createdon` int NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '1' COMMENT '1- information, 2 - warning, 3- error',
  `user` int NOT NULL DEFAULT '0' COMMENT 'link to user table',
  `usertype` int NOT NULL DEFAULT '0' COMMENT '0 - manager, 1 - web',
  `source` varchar(50) NOT NULL DEFAULT '',
  `description` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_event_log`
--

INSERT INTO `i6cn_event_log` (`id`, `eventid`, `createdon`, `type`, `user`, `usertype`, `source`, `description`) VALUES
(1, 0, 1666603048, 3, 1, 0, 'Parser / require(): Failed opening required \'D:/OS', '<b>require(): Failed opening required \'D:/OSP/domains/evoblog.localhost/public/manager//routes.php\' (include_path=\'.\')</b><br />\r\n<h2 style=\"color:red\">&laquo; Evolution CMS Parse Error &raquo;</h2><h3 style=\"color:red\">require(): Failed opening required \'D:/OSP/domains/evoblog.localhost/public/manager//routes.php\' (include_path=\'.\')</h3>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>File</td>\n		<td>D:\\OSP\\domains\\evoblog.localhost\\core\\vendor\\illuminate\\routing\\RouteFileRegistrar.php</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Line</td>\n		<td>35</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://evoblog.localhost/manager/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Current time</td>\n		<td>2022-10-24 12:17:28</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0000 s (0 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.1777 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.1777 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.5988998413086 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>EvolutionCMS\\ExceptionHandler->handleShutdown</strong>()<br /> on line </td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>EvolutionCMS\\ExceptionHandler->fatalExceptionFromError</strong>()<br />D:/OSP/domains/evoblog.localhost/core/src/ExceptionHandler.php on line 51</td>\n	</tr>\n</table>\n'),
(2, 0, 1666727164, 3, 1, 0, 'Системные файлы были изменены.', 'Вы включили проверку системных файлов на наличие изменений, характерных для взломанных сайтов. Это не значит, что сайт был взломан, но желательно просмотреть измененные файлы.(index.php, .htaccess, manager/index.php, manager/includes/config.inc.php) index.php, .htaccess, manager/index.php, /core/config/database/connections/default.php');

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_manager_log`
--

CREATE TABLE `i6cn_manager_log` (
  `id` int NOT NULL,
  `timestamp` int NOT NULL DEFAULT '0',
  `internalKey` int NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `action` int NOT NULL DEFAULT '0',
  `itemid` varchar(10) DEFAULT '0',
  `itemname` varchar(255) DEFAULT NULL,
  `message` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(15) DEFAULT NULL,
  `useragent` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_manager_log`
--

INSERT INTO `i6cn_manager_log` (`id`, `timestamp`, `internalKey`, `username`, `action`, `itemid`, `itemname`, `message`, `ip`, `useragent`) VALUES
(1, 1666264827, 1, 'admin', 58, '-', 'EVO', 'Logged in', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(2, 1666264827, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(3, 1666264861, 1, 'admin', 30, '-', '-', 'Saving settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(4, 1666603064, 1, 'admin', 53, '-', '-', 'Viewing system info', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(5, 1666603336, 1, 'admin', 53, '-', '-', 'Viewing system info', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(6, 1666603339, 1, 'admin', 31, '-', '-', 'Using file manager', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(7, 1666603826, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(8, 1666603868, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(9, 1666603870, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(10, 1666603872, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(11, 1666603874, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(12, 1666603912, 1, 'admin', 30, '-', '-', 'Saving settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(13, 1666603915, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(14, 1666604362, 1, 'admin', 30, '-', '-', 'Saving settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(15, 1666604365, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(16, 1666604436, 1, 'admin', 30, '-', '-', 'Saving settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(17, 1666605278, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(18, 1666605283, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(19, 1666605285, 1, 'admin', 26, '-', '-', 'Refreshing site', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(20, 1666605290, 1, 'admin', 31, '-', '-', 'Using file manager', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(21, 1666607046, 1, 'admin', 112, '1', 'Extras', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(22, 1666607102, 1, 'admin', 112, '1', 'Extras', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(23, 1666607158, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(24, 1666607160, 1, 'admin', 112, '1', 'Extras', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(25, 1666607229, 1, 'admin', 13, '-', 'Extras', 'Viewing logging', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(26, 1666607232, 1, 'admin', 112, '1', 'Extras', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(27, 1666607445, 1, 'admin', 112, '1', 'Extras', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(28, 1666610029, 1, 'admin', 19, '-', 'Новый шаблон', 'Creating a new template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(29, 1666610631, 1, 'admin', 20, '-', 'Главная страница', 'Saving template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(30, 1666610631, 1, 'admin', 16, '2', 'Главная страница', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(31, 1666610952, 1, 'admin', 20, '2', 'Главная страница', 'Saving template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(32, 1666610952, 1, 'admin', 16, '2', 'Главная страница', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(33, 1666610953, 1, 'admin', 19, '-', 'Новый шаблон', 'Creating a new template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(34, 1666610968, 1, 'admin', 20, '-', 'Все блоги', 'Saving template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(35, 1666610969, 1, 'admin', 16, '3', 'Все блоги', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(36, 1666610974, 1, 'admin', 19, '-', 'Новый шаблон', 'Creating a new template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(37, 1666610987, 1, 'admin', 20, '-', 'Пост в блоге', 'Saving template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(38, 1666610987, 1, 'admin', 16, '4', 'Пост в блоге', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(39, 1666610991, 1, 'admin', 19, '-', 'Новый шаблон', 'Creating a new template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(40, 1666611001, 1, 'admin', 20, '-', 'Контакты', 'Saving template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(41, 1666611001, 1, 'admin', 16, '5', 'Контакты', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(42, 1666611006, 1, 'admin', 19, '-', 'Новый шаблон', 'Creating a new template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(43, 1666611016, 1, 'admin', 20, '-', 'Все теги', 'Saving template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(44, 1666611016, 1, 'admin', 16, '6', 'Все теги', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(45, 1666611022, 1, 'admin', 20, '6', 'Все теги', 'Saving template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(46, 1666611022, 1, 'admin', 16, '6', 'Все теги', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(47, 1666611027, 1, 'admin', 19, '-', 'Новый шаблон', 'Creating a new template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(48, 1666611040, 1, 'admin', 20, '-', 'Тег', 'Saving template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(49, 1666611040, 1, 'admin', 16, '7', 'Тег', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(50, 1666611043, 1, 'admin', 16, '7', 'Тег', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(51, 1666611044, 1, 'admin', 76, '-', '-', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(52, 1666611046, 1, 'admin', 16, '7', 'Тег', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(53, 1666611050, 1, 'admin', 20, '7', 'Тег', 'Saving template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(54, 1666611050, 1, 'admin', 16, '7', 'Тег', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(55, 1666611052, 1, 'admin', 20, '7', 'Тег', 'Saving template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(56, 1666611052, 1, 'admin', 16, '7', 'Тег', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(57, 1666611054, 1, 'admin', 76, '-', '-', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(58, 1666611418, 1, 'admin', 27, '1', 'Evolution CMS Install Success', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(59, 1666611422, 1, 'admin', 27, '1', 'Evolution CMS Install Success', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(60, 1666611474, 1, 'admin', 5, '1', 'Evolution CMS Install Success', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(61, 1666611474, 1, 'admin', 27, '1', 'Evolution CMS Install Success', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(62, 1666611555, 1, 'admin', 27, '1', 'Evolution CMS Install Success', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(63, 1666611590, 1, 'admin', 5, '1', 'Главная страница блога', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(64, 1666611591, 1, 'admin', 27, '1', 'Главная страница блога', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(65, 1666611610, 1, 'admin', 5, '1', 'Главная страница блога', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(66, 1666611610, 1, 'admin', 27, '1', 'Главная страница блога', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(67, 1666611663, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(68, 1666611669, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(69, 1666611669, 1, 'admin', 67, '-', '-', 'Removing locks', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(70, 1666612248, 1, 'admin', 5, '-', 'Блоги', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(71, 1666612248, 1, 'admin', 27, '2', 'Блоги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(72, 1666612253, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(73, 1666612257, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(74, 1666612257, 1, 'admin', 67, '-', '-', 'Removing locks', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(75, 1666612269, 1, 'admin', 5, '-', 'Теги', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(76, 1666612269, 1, 'admin', 27, '3', 'Теги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(77, 1666612271, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(78, 1666612278, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(79, 1666612279, 1, 'admin', 67, '-', '-', 'Removing locks', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(80, 1666612281, 1, 'admin', 5, '-', 'Контакты', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(81, 1666612281, 1, 'admin', 27, '4', 'Контакты', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(82, 1666612285, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(83, 1666612297, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(84, 1666612297, 1, 'admin', 67, '-', '-', 'Removing locks', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(85, 1666612299, 1, 'admin', 5, '-', 'Пост в блоге', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(86, 1666612299, 1, 'admin', 27, '5', 'Пост в блоге', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(87, 1666612301, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(88, 1666612303, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(89, 1666612303, 1, 'admin', 67, '-', '-', 'Removing locks', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(90, 1666612307, 1, 'admin', 5, '-', 'Тег', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(91, 1666612308, 1, 'admin', 27, '6', 'Тег', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(92, 1666612475, 1, 'admin', 27, '4', 'Контакты', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(93, 1666612477, 1, 'admin', 5, '4', 'Контакты', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(94, 1666612477, 1, 'admin', 27, '4', 'Контакты', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(95, 1666612483, 1, 'admin', 27, '6', 'Тег', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(96, 1666612500, 1, 'admin', 5, '6', 'Какой-то тег', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(97, 1666612501, 1, 'admin', 27, '6', 'Какой-то тег', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(98, 1666612503, 1, 'admin', 27, '5', 'Пост в блоге', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(99, 1666612510, 1, 'admin', 5, '5', 'Пост о чём-то', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(100, 1666612510, 1, 'admin', 27, '5', 'Пост о чём-то', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(101, 1666612513, 1, 'admin', 5, '5', 'Пост о чём-то', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(102, 1666612513, 1, 'admin', 27, '5', 'Пост о чём-то', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(103, 1666614419, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(104, 1666614515, 1, 'admin', 30, '-', '-', 'Saving settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(105, 1666614519, 1, 'admin', 27, '5', 'Пост о чём-то', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(106, 1666614623, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(107, 1666614630, 1, 'admin', 30, '-', '-', 'Saving settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(108, 1666614643, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(109, 1666614645, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(110, 1666614647, 1, 'admin', 27, '5', 'Пост о чём-то', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(111, 1666614657, 1, 'admin', 27, '5', 'Пост о чём-то', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(112, 1666614966, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(113, 1666727164, 1, 'admin', 58, '-', 'EVO', 'Logged in', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(114, 1666727174, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(115, 1666727184, 1, 'admin', 30, '-', '-', 'Saving settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(116, 1666727193, 1, 'admin', 300, '-', 'Новый шаблон', 'Create Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(117, 1666727368, 1, 'admin', 302, '-', 'Meta title', 'Save Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(118, 1666727368, 1, 'admin', 301, '1', 'Meta title', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(119, 1666727435, 1, 'admin', 304, '1', 'metatitle Копия', 'Duplicate Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(120, 1666727436, 1, 'admin', 301, '2', 'Meta title Duplicate ', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(121, 1666727456, 1, 'admin', 302, '2', 'Meta Description', 'Save Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(122, 1666727456, 1, 'admin', 301, '2', 'Meta Description', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(123, 1666727501, 1, 'admin', 302, '2', 'Meta Description', 'Save Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(124, 1666727501, 1, 'admin', 301, '2', 'Meta Description', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(125, 1666727508, 1, 'admin', 300, '-', 'Новый шаблон', 'Create Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(126, 1666727643, 1, 'admin', 302, '-', 'Главное фото', 'Save Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(127, 1666727643, 1, 'admin', 301, '3', 'Главное фото', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(128, 1666727648, 1, 'admin', 300, '-', 'Новый шаблон', 'Create Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(129, 1666727715, 1, 'admin', 302, '-', 'Теги', 'Save Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(130, 1666727715, 1, 'admin', 301, '4', 'Теги', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(131, 1666727927, 1, 'admin', 27, '1', 'Главная страница блога', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(132, 1666728044, 1, 'admin', 27, '5', 'Пост о чём-то', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(133, 1666728139, 1, 'admin', 301, '2', 'Meta Description', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(134, 1666728145, 1, 'admin', 301, '4', 'Теги', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(135, 1666728155, 1, 'admin', 302, '4', 'Теги', 'Save Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(136, 1666728155, 1, 'admin', 301, '4', 'Теги', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(137, 1666728159, 1, 'admin', 27, '5', 'Пост о чём-то', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(138, 1666728203, 1, 'admin', 5, '5', 'Пост о чём-то', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(139, 1666728203, 1, 'admin', 27, '5', 'Пост о чём-то', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(140, 1666731801, 1, 'admin', 19, '-', 'Новый шаблон', 'Creating a new template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(141, 1666732162, 1, 'admin', 76, '-', '-', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36');

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_membergroup_access`
--

CREATE TABLE `i6cn_membergroup_access` (
  `id` int NOT NULL,
  `membergroup` int NOT NULL DEFAULT '0',
  `documentgroup` int NOT NULL DEFAULT '0',
  `context` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_membergroup_names`
--

CREATE TABLE `i6cn_membergroup_names` (
  `id` int NOT NULL,
  `name` varchar(245) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_member_groups`
--

CREATE TABLE `i6cn_member_groups` (
  `id` int NOT NULL,
  `user_group` int NOT NULL DEFAULT '0',
  `member` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_migrations_install`
--

CREATE TABLE `i6cn_migrations_install` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_migrations_install`
--

INSERT INTO `i6cn_migrations_install` (`id`, `migration`, `batch`) VALUES
(1, '2018_06_29_182342_create_active_user_locks_table', 1),
(2, '2018_06_29_182342_create_active_user_sessions_table', 1),
(3, '2018_06_29_182342_create_active_users_table', 1),
(4, '2018_06_29_182342_create_categories_table', 1),
(5, '2018_06_29_182342_create_document_groups_table', 1),
(6, '2018_06_29_182342_create_documentgroup_names_table', 1),
(7, '2018_06_29_182342_create_event_log_table', 1),
(8, '2018_06_29_182342_create_manager_log_table', 1),
(9, '2018_06_29_182342_create_manager_users_table', 1),
(10, '2018_06_29_182342_create_member_groups_table', 1),
(11, '2018_06_29_182342_create_membergroup_access_table', 1),
(12, '2018_06_29_182342_create_membergroup_names_table', 1),
(13, '2018_06_29_182342_create_permissions_groups_table', 1),
(14, '2018_06_29_182342_create_permissions_table', 1),
(15, '2018_06_29_182342_create_role_permissions_table', 1),
(16, '2018_06_29_182342_create_site_content_table', 1),
(17, '2018_06_29_182342_create_site_htmlsnippets_table', 1),
(18, '2018_06_29_182342_create_site_module_access_table', 1),
(19, '2018_06_29_182342_create_site_module_depobj_table', 1),
(20, '2018_06_29_182342_create_site_modules_table', 1),
(21, '2018_06_29_182342_create_site_plugin_events_table', 1),
(22, '2018_06_29_182342_create_site_plugins_table', 1),
(23, '2018_06_29_182342_create_site_snippets_table', 1),
(24, '2018_06_29_182342_create_site_templates_table', 1),
(25, '2018_06_29_182342_create_site_tmplvar_access_table', 1),
(26, '2018_06_29_182342_create_site_tmplvar_contentvalues_table', 1),
(27, '2018_06_29_182342_create_site_tmplvar_templates_table', 1),
(28, '2018_06_29_182342_create_site_tmplvars_table', 1),
(29, '2018_06_29_182342_create_system_eventnames_table', 1),
(30, '2018_06_29_182342_create_system_settings_table', 1),
(31, '2018_06_29_182342_create_user_attributes_table', 1),
(32, '2018_06_29_182342_create_user_roles_table', 1),
(33, '2018_06_29_182342_create_user_settings_table', 1),
(34, '2018_06_29_182342_create_web_groups_table', 1),
(35, '2018_06_29_182342_create_web_user_attributes_table', 1),
(36, '2018_06_29_182342_create_web_user_settings_table', 1),
(37, '2018_06_29_182342_create_web_users_table', 1),
(38, '2018_06_29_182342_create_webgroup_access_table', 1),
(39, '2018_06_29_182342_create_webgroup_names_table', 1),
(40, '2020_09_12_110820_create_site_content_closure', 1),
(41, '2020_09_16_110820_update_web_user_attributes_table', 1),
(42, '2020_10_05_124820_second_update_web_user_attributes_table', 1),
(43, '2020_10_05_154230_drop_manager_user_tables', 1),
(44, '2020_10_05_162325_rename_web_user_tables', 1),
(45, '2020_10_08_112342_remove_column_from_role_table', 1),
(46, '2020_10_12_065655_make_guid_nullable_in_modules', 1),
(47, '2020_10_12_065655_make_moduleguid_nullable_in_plugins', 1),
(48, '2020_10_28_154230_drop_webuser_group_tables', 1),
(49, '2020_10_30_065655_make_dob_nullable_in_userattributes', 1),
(50, '2020_11_02_100555_add_token_columns_to_user_table', 1),
(51, '2020_11_10_110555_add_verified_columns_to_user_table', 1),
(52, '2020_11_22_114803_create_user_role_vars', 1),
(53, '2020_11_22_114809_create_user_values', 1),
(54, '2020_12_23_065655_make_display_nullable_in_tmplvars', 1),
(55, '2021_02_05_121655_add_index_to_pubdate_column_content_table', 1),
(56, '2021_02_10_060454_add_properties_column_to_site_tmplvars', 1),
(57, '2021_02_17_102610_rename_donthit_column_in_site_content_table', 1),
(58, '2022_04_17_133922_add_context_column_to_membergroup_access', 1),
(59, '2018_06_29_182342_create_permissions_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_permissions`
--

CREATE TABLE `i6cn_permissions` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `lang_key` varchar(255) NOT NULL DEFAULT '',
  `group_id` int DEFAULT NULL,
  `disabled` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_permissions`
--

INSERT INTO `i6cn_permissions` (`id`, `name`, `key`, `lang_key`, `group_id`, `disabled`, `created_at`, `updated_at`) VALUES
(1, 'Request manager frames', 'frames', 'role_frames', 1, 1, NULL, NULL),
(2, 'Request manager intro page', 'home', 'role_home', 1, 1, NULL, NULL),
(3, 'Log out of the manager', 'logout', 'role_logout', 1, 1, NULL, NULL),
(4, 'View help pages', 'help', 'role_help', 1, 0, NULL, NULL),
(5, 'View action completed screen', 'action_ok', 'role_actionok', 1, 1, NULL, NULL),
(6, 'View error dialog', 'error_dialog', 'role_errors', 1, 1, NULL, NULL),
(7, 'View the about page', 'about', 'role_about', 1, 1, NULL, NULL),
(8, 'View credits', 'credits', 'role_credits', 1, 1, NULL, NULL),
(9, 'Change password', 'change_password', 'role_change_password', 1, 0, NULL, NULL),
(10, 'Save password', 'save_password', 'role_save_password', 1, 0, NULL, NULL),
(11, 'View a Resource\'s data', 'view_document', 'role_view_docdata', 2, 1, NULL, NULL),
(12, 'Create new Resources', 'new_document', 'role_create_doc', 2, 0, NULL, NULL),
(13, 'Edit a Resource', 'edit_document', 'role_edit_doc', 2, 0, NULL, NULL),
(14, 'Change Resource-Type', 'change_resourcetype', 'role_change_resourcetype', 2, 0, NULL, NULL),
(15, 'Save Resources', 'save_document', 'role_save_doc', 2, 0, NULL, NULL),
(16, 'Publish Resources', 'publish_document', 'role_publish_doc', 2, 0, NULL, NULL),
(17, 'Delete Resources', 'delete_document', 'role_delete_doc', 2, 0, NULL, NULL),
(18, 'Permanently purge deleted Resources', 'empty_trash', 'role_empty_trash', 2, 0, NULL, NULL),
(19, 'Empty the site\'s cache', 'empty_cache', 'role_cache_refresh', 2, 0, NULL, NULL),
(20, 'View Unpublished Resources', 'view_unpublished', 'role_view_unpublished', 2, 0, NULL, NULL),
(21, 'Use the file manager (full root access)', 'file_manager', 'role_file_manager', 3, 0, NULL, NULL),
(22, 'Manage assets/files', 'assets_files', 'role_assets_files', 3, 0, NULL, NULL),
(23, 'Manage assets/images', 'assets_images', 'role_assets_images', 3, 0, NULL, NULL),
(24, 'Use the Category Manager', 'category_manager', 'role_category_manager', 4, 0, NULL, NULL),
(25, 'Create new Module', 'new_module', 'role_new_module', 5, 0, NULL, NULL),
(26, 'Edit Module', 'edit_module', 'role_edit_module', 5, 0, NULL, NULL),
(27, 'Save Module', 'save_module', 'role_save_module', 5, 0, NULL, NULL),
(28, 'Delete Module', 'delete_module', 'role_delete_module', 5, 0, NULL, NULL),
(29, 'Run Module', 'exec_module', 'role_run_module', 5, 0, NULL, NULL),
(30, 'List Module', 'list_module', 'role_list_module', 5, 0, NULL, NULL),
(31, 'Create new site Templates', 'new_template', 'role_create_template', 6, 0, NULL, NULL),
(32, 'Edit site Templates', 'edit_template', 'role_edit_template', 6, 0, NULL, NULL),
(33, 'Save Templates', 'save_template', 'role_save_template', 6, 0, NULL, NULL),
(34, 'Delete Templates', 'delete_template', 'role_delete_template', 6, 0, NULL, NULL),
(35, 'Create new Snippets', 'new_snippet', 'role_create_snippet', 7, 0, NULL, NULL),
(36, 'Edit Snippets', 'edit_snippet', 'role_edit_snippet', 7, 0, NULL, NULL),
(37, 'Save Snippets', 'save_snippet', 'role_save_snippet', 7, 0, NULL, NULL),
(38, 'Delete Snippets', 'delete_snippet', 'role_delete_snippet', 7, 0, NULL, NULL),
(39, 'Create new Chunks', 'new_chunk', 'role_create_chunk', 8, 0, NULL, NULL),
(40, 'Edit Chunks', 'edit_chunk', 'role_edit_chunk', 8, 0, NULL, NULL),
(41, 'Save Chunks', 'save_chunk', 'role_save_chunk', 8, 0, NULL, NULL),
(42, 'Delete Chunks', 'delete_chunk', 'role_delete_chunk', 8, 0, NULL, NULL),
(43, 'Create new Plugins', 'new_plugin', 'role_create_plugin', 9, 0, NULL, NULL),
(44, 'Edit Plugins', 'edit_plugin', 'role_edit_plugin', 9, 0, NULL, NULL),
(45, 'Save Plugins', 'save_plugin', 'role_save_plugin', 9, 0, NULL, NULL),
(46, 'Delete Plugins', 'delete_plugin', 'role_delete_plugin', 9, 0, NULL, NULL),
(47, 'Create new users', 'new_user', 'role_new_user', 10, 0, NULL, NULL),
(48, 'Edit users', 'edit_user', 'role_edit_user', 10, 0, NULL, NULL),
(49, 'Save users', 'save_user', 'role_save_user', 10, 0, NULL, NULL),
(50, 'Delete users', 'delete_user', 'role_delete_user', 10, 0, NULL, NULL),
(51, 'Manager access permissions', 'access_permissions', 'manager_access_permissions', 11, 0, NULL, NULL),
(52, 'Manage document and user groups', 'manage_groups', 'manage_groups', 11, 0, NULL, NULL),
(53, 'Manage document permissions', 'manage_document_permissions', 'manage_document_permissions', 11, 0, NULL, NULL),
(54, 'Manage module permissions', 'manage_module_permissions', 'manage_module_permissions', 11, 0, NULL, NULL),
(55, 'Manage TV permissions', 'manage_tv_permissions', 'manage_tv_permissions', 11, 0, NULL, NULL),
(56, 'Create new roles', 'new_role', 'role_new_role', 12, 0, NULL, NULL),
(57, 'Edit roles', 'edit_role', 'role_edit_role', 12, 0, NULL, NULL),
(58, 'Save roles', 'save_role', 'role_save_role', 12, 0, NULL, NULL),
(59, 'Delete roles', 'delete_role', 'role_delete_role', 12, 0, NULL, NULL),
(60, 'View event log', 'view_eventlog', 'role_view_eventlog', 13, 0, NULL, NULL),
(61, 'Delete event log', 'delete_eventlog', 'role_delete_eventlog', 13, 0, NULL, NULL),
(62, 'View system logs', 'logs', 'role_view_logs', 14, 0, NULL, NULL),
(63, 'Change site settings', 'settings', 'role_edit_settings', 14, 0, NULL, NULL),
(64, 'Use the Backup Manager', 'bk_manager', 'role_bk_manager', 14, 0, NULL, NULL),
(65, 'Remove Locks', 'remove_locks', 'role_remove_locks', 14, 0, NULL, NULL),
(66, 'Display Locks', 'display_locks', 'role_display_locks', 14, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_permissions_groups`
--

CREATE TABLE `i6cn_permissions_groups` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `lang_key` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_permissions_groups`
--

INSERT INTO `i6cn_permissions_groups` (`id`, `name`, `lang_key`, `created_at`, `updated_at`) VALUES
(1, 'General', 'page_data_general', NULL, NULL),
(2, 'Content Management', 'role_content_management', NULL, NULL),
(3, 'File Management', 'role_file_management', NULL, NULL),
(4, 'Category Management', 'category_management', NULL, NULL),
(5, 'Module Management', 'role_module_management', NULL, NULL),
(6, 'Template Management', 'role_template_management', NULL, NULL),
(7, 'Snippet Management', 'role_snippet_management', NULL, NULL),
(8, 'Chunk Management', 'role_chunk_management', NULL, NULL),
(9, 'Plugin Management', 'role_plugin_management', NULL, NULL),
(10, 'User Management', 'role_user_management', NULL, NULL),
(11, 'Permissions', 'role_udperms', NULL, NULL),
(12, 'Role Management', 'role_role_management', NULL, NULL),
(13, 'Events Log Management', 'role_eventlog_management', NULL, NULL),
(14, 'Config Management', 'role_config_management', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_role_permissions`
--

CREATE TABLE `i6cn_role_permissions` (
  `id` int NOT NULL,
  `permission` varchar(255) NOT NULL,
  `role_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_role_permissions`
--

INSERT INTO `i6cn_role_permissions` (`id`, `permission`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'frames', 1, NULL, NULL),
(2, 'home', 1, NULL, NULL),
(3, 'logout', 1, NULL, NULL),
(4, 'help', 1, NULL, NULL),
(5, 'role_actionok', 1, NULL, NULL),
(6, 'error_dialog', 1, NULL, NULL),
(7, 'about', 1, NULL, NULL),
(8, 'credits', 1, NULL, NULL),
(9, 'change_password', 1, NULL, NULL),
(10, 'save_password', 1, NULL, NULL),
(11, 'view_document', 1, NULL, NULL),
(12, 'new_document', 1, NULL, NULL),
(13, 'edit_document', 1, NULL, NULL),
(14, 'change_resourcetype', 1, NULL, NULL),
(15, 'save_document', 1, NULL, NULL),
(16, 'publish_document', 1, NULL, NULL),
(17, 'delete_document', 1, NULL, NULL),
(18, 'empty_trash', 1, NULL, NULL),
(19, 'empty_cache', 1, NULL, NULL),
(20, 'view_unpublished', 1, NULL, NULL),
(21, 'file_manager', 1, NULL, NULL),
(22, 'assets_files', 1, NULL, NULL),
(23, 'assets_images', 1, NULL, NULL),
(24, 'category_manager', 1, NULL, NULL),
(25, 'new_module', 1, NULL, NULL),
(26, 'edit_module', 1, NULL, NULL),
(27, 'save_module', 1, NULL, NULL),
(28, 'delete_module', 1, NULL, NULL),
(29, 'exec_module', 1, NULL, NULL),
(30, 'list_module', 1, NULL, NULL),
(31, 'new_template', 1, NULL, NULL),
(32, 'edit_template', 1, NULL, NULL),
(33, 'save_template', 1, NULL, NULL),
(34, 'delete_template', 1, NULL, NULL),
(35, 'new_snippet', 1, NULL, NULL),
(36, 'edit_snippet', 1, NULL, NULL),
(37, 'save_snippet', 1, NULL, NULL),
(38, 'delete_snippet', 1, NULL, NULL),
(39, 'new_chunk', 1, NULL, NULL),
(40, 'edit_chunk', 1, NULL, NULL),
(41, 'save_chunk', 1, NULL, NULL),
(42, 'delete_chunk', 1, NULL, NULL),
(43, 'new_plugin', 1, NULL, NULL),
(44, 'edit_plugin', 1, NULL, NULL),
(45, 'save_plugin', 1, NULL, NULL),
(46, 'delete_plugin', 1, NULL, NULL),
(47, 'new_user', 1, NULL, NULL),
(48, 'edit_user', 1, NULL, NULL),
(49, 'save_user', 1, NULL, NULL),
(50, 'delete_user', 1, NULL, NULL),
(51, 'access_permissions', 1, NULL, NULL),
(52, 'manage_groups', 1, NULL, NULL),
(53, 'manage_document_permissions', 1, NULL, NULL),
(54, 'manage_module_permissions', 1, NULL, NULL),
(55, 'manage_tv_permissions', 1, NULL, NULL),
(56, 'new_role', 1, NULL, NULL),
(57, 'edit_role', 1, NULL, NULL),
(58, 'save_role', 1, NULL, NULL),
(59, 'delete_role', 1, NULL, NULL),
(60, 'view_eventlog', 1, NULL, NULL),
(61, 'delete_eventlog', 1, NULL, NULL),
(62, 'logs', 1, NULL, NULL),
(63, 'settings', 1, NULL, NULL),
(64, 'bk_manager', 1, NULL, NULL),
(65, 'remove_locks', 1, NULL, NULL),
(66, 'display_locks', 1, NULL, NULL),
(67, 'frames', 2, NULL, NULL),
(68, 'home', 2, NULL, NULL),
(69, 'logout', 2, NULL, NULL),
(70, 'help', 2, NULL, NULL),
(71, 'role_actionok', 2, NULL, NULL),
(72, 'error_dialog', 2, NULL, NULL),
(73, 'about', 2, NULL, NULL),
(74, 'credits', 2, NULL, NULL),
(75, 'change_password', 2, NULL, NULL),
(76, 'save_password', 2, NULL, NULL),
(77, 'view_document', 2, NULL, NULL),
(78, 'new_document', 2, NULL, NULL),
(79, 'edit_document', 2, NULL, NULL),
(80, 'change_resourcetype', 2, NULL, NULL),
(81, 'save_document', 2, NULL, NULL),
(82, 'publish_document', 2, NULL, NULL),
(83, 'delete_document', 2, NULL, NULL),
(84, 'empty_cache', 2, NULL, NULL),
(85, 'view_unpublished', 2, NULL, NULL),
(86, 'file_manager', 2, NULL, NULL),
(87, 'assets_files', 2, NULL, NULL),
(88, 'assets_images', 2, NULL, NULL),
(89, 'exec_module', 2, NULL, NULL),
(90, 'list_module', 2, NULL, NULL),
(91, 'edit_chunk', 2, NULL, NULL),
(92, 'save_chunk', 2, NULL, NULL),
(93, 'remove_locks', 2, NULL, NULL),
(94, 'display_locks', 2, NULL, NULL),
(95, 'access_permissions', 2, NULL, NULL),
(96, 'manage_document_permissions', 2, NULL, NULL),
(97, 'frames', 3, NULL, NULL),
(98, 'home', 3, NULL, NULL),
(99, 'logout', 3, NULL, NULL),
(100, 'help', 3, NULL, NULL),
(101, 'role_actionok', 3, NULL, NULL),
(102, 'error_dialog', 3, NULL, NULL),
(103, 'about', 3, NULL, NULL),
(104, 'credits', 3, NULL, NULL),
(105, 'change_password', 3, NULL, NULL),
(106, 'save_password', 3, NULL, NULL),
(107, 'view_document', 3, NULL, NULL),
(108, 'new_document', 3, NULL, NULL),
(109, 'edit_document', 3, NULL, NULL),
(110, 'change_resourcetype', 3, NULL, NULL),
(111, 'save_document', 3, NULL, NULL),
(112, 'publish_document', 3, NULL, NULL),
(113, 'delete_document', 3, NULL, NULL),
(114, 'empty_trash', 3, NULL, NULL),
(115, 'empty_cache', 3, NULL, NULL),
(116, 'view_unpublished', 3, NULL, NULL),
(117, 'file_manager', 3, NULL, NULL),
(118, 'assets_files', 3, NULL, NULL),
(119, 'assets_images', 3, NULL, NULL),
(120, 'exec_module', 3, NULL, NULL),
(121, 'list_module', 3, NULL, NULL),
(122, 'new_template', 3, NULL, NULL),
(123, 'edit_template', 3, NULL, NULL),
(124, 'save_template', 3, NULL, NULL),
(125, 'delete_template', 3, NULL, NULL),
(126, 'new_chunk', 3, NULL, NULL),
(127, 'edit_chunk', 3, NULL, NULL),
(128, 'save_chunk', 3, NULL, NULL),
(129, 'delete_chunk', 3, NULL, NULL),
(130, 'new_user', 3, NULL, NULL),
(131, 'edit_user', 3, NULL, NULL),
(132, 'save_user', 3, NULL, NULL),
(133, 'delete_user', 3, NULL, NULL),
(134, 'logs', 3, NULL, NULL),
(135, 'settings', 3, NULL, NULL),
(136, 'bk_manager', 3, NULL, NULL),
(137, 'remove_locks', 3, NULL, NULL),
(138, 'display_locks', 3, NULL, NULL),
(139, 'access_permissions', 3, NULL, NULL),
(140, 'manage_document_permissions', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_site_content`
--

CREATE TABLE `i6cn_site_content` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(245) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '' COMMENT 'Link attriubtes',
  `published` int NOT NULL DEFAULT '0',
  `pub_date` int NOT NULL DEFAULT '0',
  `unpub_date` int NOT NULL DEFAULT '0',
  `parent` int NOT NULL DEFAULT '0',
  `isfolder` int NOT NULL DEFAULT '0',
  `introtext` text COMMENT 'Used to provide quick summary of the document',
  `content` longtext,
  `richtext` tinyint(1) NOT NULL DEFAULT '1',
  `template` int NOT NULL DEFAULT '0',
  `menuindex` int NOT NULL DEFAULT '0',
  `searchable` int NOT NULL DEFAULT '1',
  `cacheable` int NOT NULL DEFAULT '1',
  `createdby` int NOT NULL DEFAULT '0',
  `createdon` int NOT NULL DEFAULT '0',
  `editedby` int NOT NULL DEFAULT '0',
  `editedon` int NOT NULL DEFAULT '0',
  `deleted` int NOT NULL DEFAULT '0',
  `deletedon` int NOT NULL DEFAULT '0',
  `deletedby` int NOT NULL DEFAULT '0',
  `publishedon` int NOT NULL DEFAULT '0' COMMENT 'Date the document was published',
  `publishedby` int NOT NULL DEFAULT '0' COMMENT 'ID of user who published the document',
  `menutitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Menu title',
  `hide_from_tree` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Disable page hit count',
  `privateweb` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private web document',
  `privatemgr` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private manager document',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-inline, 1-attachment',
  `hidemenu` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Hide document from menu',
  `alias_visible` int NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_site_content`
--

INSERT INTO `i6cn_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `hide_from_tree`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `alias_visible`) VALUES
(1, 'document', 'text/html', 'Главная страница блога', '', '', 'minimal-base', '', 1, 0, 0, 0, 0, '', '<h3>Install Successful!</h3>\r\n<p>You have successfully installed Evolution CMS.</p>\r\n\r\n<h3>Getting Help</h3>\r\n<p>The <a href=\"http://evo.im/\" target=\"_blank\">Evolution CMS Community</a> provides a great starting point to learn all things Evolution CMS, or you can also <a href=\"http://evo.im/\">see some great learning resources</a> (books, tutorials, blogs and screencasts).</p>\r\n<p>Welcome to Evolution CMS!</p>\r\n', 1, 2, 0, 1, 1, 1, 1666264537, 1, 1666611610, 0, 0, 0, 1130304721, 1, '', 0, 0, 0, 0, 0, 1),
(2, 'document', 'text/html', 'Блоги', '', '', 'blogs', '', 1, 0, 0, 0, 1, '', '', 1, 3, 1, 1, 1, 1, 1666612248, 1, 1666728202, 0, 0, 0, 1666612248, 1, '', 0, 0, 0, 0, 0, 1),
(3, 'document', 'text/html', 'Теги', '', '', 'tags', '', 1, 0, 0, 0, 1, '', '', 1, 6, 2, 1, 1, 1, 1666612269, 1, 1666612500, 0, 0, 0, 1666612269, 1, '', 0, 0, 0, 0, 0, 1),
(4, 'document', 'text/html', 'Контакты', '', '', 'contacts', '', 1, 0, 0, 0, 0, '', '', 1, 5, 3, 1, 1, 1, 1666612281, 1, 1666612477, 0, 0, 0, 1666612281, 1, '', 0, 0, 0, 0, 0, 1),
(5, 'document', 'text/html', 'Пост о чём-то', '', '', 'post-o-chyom-to', '', 1, 0, 0, 2, 0, '', '', 1, 4, 0, 1, 1, 1, 1666612298, 1, 1666728202, 0, 0, 0, 1666612298, 1, '', 0, 0, 0, 0, 0, 1),
(6, 'document', 'text/html', 'Какой-то тег', '', '', 'kakoj-to-teg', '', 1, 0, 0, 3, 0, '', '', 1, 7, 0, 1, 1, 1, 1666612307, 1, 1666612500, 0, 0, 0, 1666612307, 1, '', 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_site_content_closure`
--

CREATE TABLE `i6cn_site_content_closure` (
  `closure_id` int UNSIGNED NOT NULL,
  `ancestor` int UNSIGNED NOT NULL,
  `descendant` int UNSIGNED NOT NULL,
  `depth` int UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_site_content_closure`
--

INSERT INTO `i6cn_site_content_closure` (`closure_id`, `ancestor`, `descendant`, `depth`) VALUES
(1, 1, 1, 0),
(2, 2, 2, 0),
(3, 3, 3, 0),
(4, 4, 4, 0),
(7, 2, 5, 1),
(6, 5, 5, 0),
(10, 3, 6, 1),
(9, 6, 6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_site_htmlsnippets`
--

CREATE TABLE `i6cn_site_htmlsnippets` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `editor_name` varchar(50) NOT NULL DEFAULT 'none',
  `category` int NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `createdon` int NOT NULL DEFAULT '0',
  `editedon` int NOT NULL DEFAULT '0',
  `disabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Disables the snippet'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_site_modules`
--

CREATE TABLE `i6cn_site_modules` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `editor_type` int NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0' COMMENT 'category id',
  `wrap` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to module icon',
  `enable_resource` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'enables the resource file feature',
  `resourcefile` varchar(255) NOT NULL DEFAULT '' COMMENT 'a physical link to a resource file',
  `createdon` int NOT NULL DEFAULT '0',
  `editedon` int NOT NULL DEFAULT '0',
  `guid` varchar(32) DEFAULT '' COMMENT 'globally unique identifier',
  `enable_sharedparams` tinyint(1) NOT NULL DEFAULT '0',
  `properties` text,
  `modulecode` mediumtext COMMENT 'module boot up code'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_site_modules`
--

INSERT INTO `i6cn_site_modules` (`id`, `name`, `description`, `editor_type`, `disabled`, `category`, `wrap`, `locked`, `icon`, `enable_resource`, `resourcefile`, `createdon`, `editedon`, `guid`, `enable_sharedparams`, `properties`, `modulecode`) VALUES
(1, 'Extras', '<strong>0.1.3</strong> first repository for Evolution CMS', 0, 0, 1, 0, 0, '', 0, '', 1666264537, 1666264537, 'store435243542tf542t5t', 1, '', ' \r\n/**\r\n * Extras\r\n * \r\n * first repository for Evolution CMS\r\n * \r\n * @category	module\r\n * @version 	0.1.3\r\n * @internal	@properties\r\n * @internal	@guid store435243542tf542t5t	\r\n * @internal	@shareparams 1\r\n * @internal	@dependencies requires files located at /assets/modules/store/\r\n * @internal	@modx_category Manager and Admin\r\n * @internal    @installset base, sample\r\n * @lastupdate  25/11/2016\r\n */\r\n\r\n//AUTHORS: Bumkaka & Dmi3yy \r\ninclude_once(\'../assets/modules/store/core.php\');'),
(2, 'ClientSettings', '<strong>2.1.1</strong> Customizable set of fields for user settings', 0, 0, 1, 0, 0, '', 0, '', 1666607167, 1666607167, 'clsee234523g354f542t5t', 1, '{\"prefix\":[{\"label\":\"Prefix for settings\",\"type\":\"text\",\"value\":\"client_\",\"default\":\"client_\",\"desc\":\"\"}],\"config_path\":[{\"label\":\"Path to configuration files\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}', '\n\nrequire_once MODX_BASE_PATH . \'assets/modules/clientsettings/core/src/ClientSettings.php\';\n\nif (!$modx->hasPermission(\'exec_module\')) {\n    $modx->sendRedirect(\'index.php?a=106\');\n}\n\nif (!is_array($modx->event->params)) {\n    $modx->event->params = [];\n}\n\nif (!function_exists(\'renderFormElement\')) {\n    include_once MODX_MANAGER_PATH . \'includes/tmplvars.commands.inc.php\';\n    include_once MODX_MANAGER_PATH . \'includes/tmplvars.inc.php\';\n}\n\nif (isset($_REQUEST[\'stay\'])) {\n    $_SESSION[\'stay\'] = $_REQUEST[\'stay\'];\n} else if (isset($_SESSION[\'stay\'])) {\n    $_REQUEST[\'stay\'] = $_SESSION[\'stay\'];\n}\n\n(new ClientSettings($params))->processRequest();\n');

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_site_module_access`
--

CREATE TABLE `i6cn_site_module_access` (
  `id` int UNSIGNED NOT NULL,
  `module` int NOT NULL DEFAULT '0',
  `usergroup` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_site_module_depobj`
--

CREATE TABLE `i6cn_site_module_depobj` (
  `id` int NOT NULL,
  `module` int NOT NULL DEFAULT '0',
  `resource` int NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '0' COMMENT '10-chunks, 20-docs, 30-plugins, 40-snips, 50-tpls, 60-tvs'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_site_module_depobj`
--

INSERT INTO `i6cn_site_module_depobj` (`id`, `module`, `resource`, `type`) VALUES
(1, 2, 6, 30);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_site_plugins`
--

CREATE TABLE `i6cn_site_plugins` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Plugin',
  `editor_type` int NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `plugincode` mediumtext,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `disabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Disables the plugin',
  `moduleguid` varchar(32) DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  `createdon` int NOT NULL DEFAULT '0',
  `editedon` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_site_plugins`
--

INSERT INTO `i6cn_site_plugins` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `createdon`, `editedon`) VALUES
(1, 'CodeMirror', '<strong>1.6</strong> JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.33 (released on 21-12-2017)', 0, 1, 0, '\r\n/**\r\n * CodeMirror\r\n *\r\n * JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.33 (released on 21-12-2017)\r\n *\r\n * @category    plugin\r\n * @version     1.6\r\n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\r\n * @package     evo\r\n * @internal    @events OnDocFormRender,OnChunkFormRender,OnModFormRender,OnPluginFormRender,OnSnipFormRender,OnTempFormRender,OnRichTextEditorInit,OnTVFormRender\r\n * @internal    @modx_category Manager and Admin\r\n * @internal    @properties &theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;default &darktheme=Dark Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;one-dark &fontSize=Font-size;list;10,11,12,13,14,15,16,17,18;14 &lineHeight=Line-height;list;1,1.1,1.2,1.3,1.4,1.5;1.3 &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;true &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;false &indentWithTabs=indentWithTabs;list;true,false;true &undoDepth=undoDepth;int;200 &historyEventDelay=historyEventDelay;int;1250\r\n * @internal    @installset base\r\n * @reportissues https://github.com/evolution-cms/evolution/issues/\r\n * @documentation Official docs https://codemirror.net/doc/manual.html\r\n * @author      hansek from http://www.modxcms.cz\r\n * @author      update Mihanik71\r\n * @author      update Deesen\r\n * @author      update 64j\r\n * @lastupdate  08-01-2018\r\n */\r\n\r\n$_CM_BASE = \'assets/plugins/codemirror/\';\r\n\r\n$_CM_URL = MODX_SITE_URL . $_CM_BASE;\r\n\r\nrequire(MODX_BASE_PATH. $_CM_BASE .\'codemirror.plugin.php\');\r\n', 0, '{\"theme\":[{\"label\":\"Theme\",\"type\":\"list\",\"value\":\"default\",\"options\":\"default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light\",\"default\":\"default\",\"desc\":\"\"}],\"darktheme\":[{\"label\":\"Dark Theme\",\"type\":\"list\",\"value\":\"one-dark\",\"options\":\"default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light\",\"default\":\"one-dark\",\"desc\":\"\"}],\"fontSize\":[{\"label\":\"Font-size\",\"type\":\"list\",\"value\":\"14\",\"options\":\"10,11,12,13,14,15,16,17,18\",\"default\":\"14\",\"desc\":\"\"}],\"lineHeight\":[{\"label\":\"Line-height\",\"type\":\"list\",\"value\":\"1.3\",\"options\":\"1,1.1,1.2,1.3,1.4,1.5\",\"default\":\"1.3\",\"desc\":\"\"}],\"indentUnit\":[{\"label\":\"Indent unit\",\"type\":\"int\",\"value\":\"4\",\"default\":\"4\",\"desc\":\"\"}],\"tabSize\":[{\"label\":\"The width of a tab character\",\"type\":\"int\",\"value\":\"4\",\"default\":\"4\",\"desc\":\"\"}],\"lineWrapping\":[{\"label\":\"lineWrapping\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"matchBrackets\":[{\"label\":\"matchBrackets\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"activeLine\":[{\"label\":\"activeLine\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"emmet\":[{\"label\":\"emmet\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"search\":[{\"label\":\"search\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"indentWithTabs\":[{\"label\":\"indentWithTabs\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"undoDepth\":[{\"label\":\"undoDepth\",\"type\":\"int\",\"value\":\"200\",\"default\":\"200\",\"desc\":\"\"}],\"historyEventDelay\":[{\"label\":\"historyEventDelay\",\"type\":\"int\",\"value\":\"1250\",\"default\":\"1250\",\"desc\":\"\"}]}', 0, '', 1666264537, 1666264537),
(2, 'OutdatedExtrasCheck', '<strong>1.4.6</strong> Check for Outdated critical extras not compatible with EVO 1.4.6', 0, 1, 0, '/**\r\n * OutdatedExtrasCheck\r\n *\r\n * Check for Outdated critical extras not compatible with EVO 1.4.6\r\n *\r\n * @category	plugin\r\n * @version     1.4.6\r\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\r\n * @package     evo\r\n * @author      Author: Nicola Lambathakis\r\n * @internal    @events OnManagerWelcomeHome\r\n * @internal    @properties &wdgVisibility=Show widget for:;menu;All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly;AdminOnly &ThisRole=Run only for this role:;string;;;(role id) &ThisUser=Run only for this user:;string;;;(username)\r\n * @internal    @modx_category Manager and Admin\r\n * @internal    @installset base\r\n * @internal    @disabled 0\r\n */\r\n\r\nrequire MODX_BASE_PATH . \'assets/plugins/extrascheck/OutdatedExtrasCheck.plugin.php\';\r\n', 0, '{\"wdgVisibility\":[{\"label\":\"Show widget for:\",\"type\":\"menu\",\"value\":\"AdminOnly\",\"options\":\"All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly\",\"default\":\"AdminOnly\",\"desc\":\"\"}],\"ThisRole\":[{\"label\":\"Run only for this role:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ThisUser\":[{\"label\":\"Run only for this user:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}', 0, '', 1666264537, 1666264537),
(3, 'TransAlias', '<strong>1.0.4</strong> Human readible URL translation supporting multiple languages and overrides', 0, 1, 0, 'require MODX_BASE_PATH.\'assets/plugins/transalias/plugin.transalias.php\';', 0, '{\"table_name\":[{\"label\":\"Trans table\",\"type\":\"list\",\"value\":\"russian\",\"options\":\"common,russian,dutch,german,czech,utf8,utf8lowercase\",\"default\":\"russian\",\"desc\":\"\"}],\"char_restrict\":[{\"label\":\"Restrict alias to\",\"type\":\"list\",\"value\":\"lowercase alphanumeric\",\"options\":\"lowercase alphanumeric,alphanumeric,legal characters\",\"default\":\"lowercase alphanumeric\",\"desc\":\"\"}],\"remove_periods\":[{\"label\":\"Remove Periods\",\"type\":\"list\",\"value\":\"No\",\"options\":\"Yes,No\",\"default\":\"No\",\"desc\":\"\"}],\"word_separator\":[{\"label\":\"Word Separator\",\"type\":\"list\",\"value\":\"dash\",\"options\":\"dash,underscore,none\",\"default\":\"dash\",\"desc\":\"\"}],\"override_tv\":[{\"label\":\"Override TV name\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}', 0, '', 1666264537, 1666264537),
(4, 'Updater', '<strong>0.8.5</strong> show message about outdated CMS version', 0, 1, 0, 'require MODX_BASE_PATH.\'assets/plugins/updater/plugin.updater.php\';\r\n', 0, '{\"version\":[{\"label\":\"Version:\",\"type\":\"text\",\"value\":\"evocms-community\\/evolution\",\"default\":\"evocms-community\\/evolution\",\"desc\":\"\"}],\"wdgVisibility\":[{\"label\":\"Show widget for:\",\"type\":\"menu\",\"value\":\"All\",\"options\":\"All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly\",\"default\":\"All\",\"desc\":\"\"}],\"ThisRole\":[{\"label\":\"Show only to this role id:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ThisUser\":[{\"label\":\"Show only to this username:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"showButton\":[{\"label\":\"Show Update Button:\",\"type\":\"menu\",\"value\":\"AdminOnly\",\"options\":\"show,hide,AdminOnly\",\"default\":\"AdminOnly\",\"desc\":\"\"}],\"type\":[{\"label\":\"Type:\",\"type\":\"menu\",\"value\":\"tags\",\"options\":\"tags,releases,commits\",\"default\":\"tags\",\"desc\":\"\"}],\"branch\":[{\"label\":\"Commit branch:\",\"type\":\"text\",\"value\":\"develop\",\"default\":\"develop\",\"desc\":\"\"}],\"stableOnly\":[{\"label\":\"Offer upgrade to stable version only:\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}]}', 0, '', 1666264537, 1666264537),
(5, 'userHelper', '<strong>1.19.3</strong> addition to FormLister', 0, 2, 0, 'require MODX_BASE_PATH.\'assets/snippets/FormLister/plugin.userHelper.php\';\n', 0, '{\"model\":[{\"label\":\"Model\",\"type\":\"text\",\"value\":\"\\\\\\\\modUsers\",\"default\":\"\\\\\\\\modUsers\",\"desc\":\"\"}],\"logoutKey\":[{\"label\":\"Request key\",\"type\":\"text\",\"value\":\"logout\",\"default\":\"logout\",\"desc\":\"\"}],\"cookieName\":[{\"label\":\"Cookie Name\",\"type\":\"text\",\"value\":\"WebLoginPE\",\"default\":\"WebLoginPE\",\"desc\":\"\"}],\"cookieLifetime\":[{\"label\":\"Cookie Lifetime, seconds\",\"type\":\"text\",\"value\":\"157680000\",\"default\":\"157680000\",\"desc\":\"\"}],\"maxFails\":[{\"label\":\"Max failed logins\",\"type\":\"text\",\"value\":\"3\",\"default\":\"3\",\"desc\":\"\"}],\"blockTime\":[{\"label\":\"Block for, seconds\",\"type\":\"text\",\"value\":\"3600\",\"default\":\"3600\",\"desc\":\"\"}],\"trackWebUserActivity\":[{\"label\":\"Track web user activity\",\"type\":\"list\",\"value\":\"No\",\"options\":\"No,Yes\",\"default\":\"No\",\"desc\":\"\"}]}', 1, '', 1666607110, 1666607110),
(6, 'ClientSettings', '<strong>2.1.1</strong> Creates menu item for user module ClientSettings', 0, 1, 0, '\n\nif ($modx->event->name == \'OnManagerMenuPrerender\') {\n    require_once MODX_BASE_PATH . \'assets/modules/clientsettings/core/src/ClientSettings.php\';\n\n    $cs   = new ClientSettings($params);\n    $mid  = $cs->getModuleId();\n    $lang = $cs->loadLang();\n    $tabs = $cs->loadStructure();\n\n    if (!empty($tabs)) {\n        $menuparams = [\'client_settings\', \'main\', \'<i class=\"fa fa-cog\"></i>\' . $lang[\'cs.module_title\'], \'index.php?a=112&id=\' . $mid . \'&type=default\', $lang[\'cs.module_title\'], \'\', \'\', \'main\', 0, 100, \'\'];\n\n        if (count($tabs) > 1) {\n            $menuparams[3] = \'javscript:;\';\n            $menuparams[5] = \'return false;\';\n            $sort = 0;\n\n            $params[\'menu\'][\'client_settings_main\'] = [\'client_settings_main\', \'client_settings\', \'<i class=\"fa fa-cog\"></i>\' . $lang[\'cs.module_title\'], \'index.php?a=112&id=\' . $mid . \'&type=default\', $lang[\'cs.module_title\'], \'\', \'\', \'main\', 0, $sort, \'\'];\n\n            foreach ($tabs as $alias => $item) {\n                if ($alias != \'default\') {\n                    $params[\'menu\'][\'client_settings_\' . $alias] = [\'client_settings_\' . $alias, \'client_settings\', \'<i class=\"fa \' . (isset($item[\'menu\'][\'icon\']) ? $item[\'menu\'][\'icon\'] : \'fa-cog\') . \'\"></i>\' . $item[\'menu\'][\'caption\'], \'index.php?a=112&id=\' . $mid . \'&type=\' . $alias, $item[\'menu\'][\'caption\'], \'\', \'\', \'main\', 0, $sort += 10, \'\'];\n                }\n            }\n        }\n\n        $params[\'menu\'][\'client_settings\'] = $menuparams;\n        $modx->event->output(serialize($params[\'menu\']));\n    }\n\n    return;\n}\n\n', 0, '', 0, 'clsee234523g354f542t5t', 1666607167, 1666607167);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_site_plugin_events`
--

CREATE TABLE `i6cn_site_plugin_events` (
  `pluginid` int NOT NULL,
  `evtid` int NOT NULL DEFAULT '0',
  `priority` int NOT NULL DEFAULT '0' COMMENT 'determines plugin run order'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_site_plugin_events`
--

INSERT INTO `i6cn_site_plugin_events` (`pluginid`, `evtid`, `priority`) VALUES
(1, 30, 0),
(1, 24, 0),
(1, 71, 0),
(1, 39, 0),
(1, 45, 0),
(1, 51, 0),
(1, 88, 0),
(1, 57, 0),
(2, 110, 0),
(3, 105, 0),
(4, 110, 1),
(4, 127, 0),
(4, 68, 0),
(5, 77, 0),
(5, 90, 0),
(5, 127, 1),
(5, 4, 0),
(5, 7, 0),
(6, 122, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_site_snippets`
--

CREATE TABLE `i6cn_site_snippets` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Snippet',
  `editor_type` int NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` int NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters',
  `createdon` int NOT NULL DEFAULT '0',
  `editedon` int NOT NULL DEFAULT '0',
  `disabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Disables the snippet'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_site_snippets`
--

INSERT INTO `i6cn_site_snippets` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `createdon`, `editedon`, `disabled`) VALUES
(1, 'DDocInfo', '<strong>1</strong> DDocInfo', 0, 2, 0, '$id = isset($id) ? (int)$id : $modx->documentObject[\'id\'];\n$field = isset($field) ? (string)$field : \'id\';\nif($field == \'id\'){\n    $out = $id;\n}else{\n    if($modx->documentObject[\'id\'] == $id){\n        $out = isset($modx->documentObject[$field]) ? $modx->documentObject[$field] : \'\';\n        if(is_array($out)){\n           $out = isset($out[1]) ? $out[1] : \'\';\n        }\n    }else{\n        $out = $modx->doc->edit($id)->get($field);\n    }\n}\nreturn (string)$out;', 0, '', '', 0, 0, 0),
(2, 'DLBeforeAfter', '<strong>1</strong> Navigation between post and upcoming events relative to the current date.', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLBeforeAfter.php\';', 0, '', '', 0, 0, 0),
(3, 'DLCrumbs', '<strong>1.2</strong> DLCrumbs', 0, 3, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLCrumbs.php\';\n', 0, '', '', 0, 0, 0),
(4, 'DLGlossary', '<strong>0.1</strong> Filtering documents by the first character', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLGlossary.php\';', 0, '', '', 0, 0, 0),
(5, 'DLMenu', '<strong>1.4.0</strong> Snippet to build menu with DocLister', 0, 3, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLMenu.php\';\n', 0, '', '', 0, 0, 0),
(6, 'DLPrevNext', '<strong>1.1</strong> DLPrevNext', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLPrevNext.php\';', 0, '', '', 0, 0, 0),
(7, 'DLReflect', '<strong>2</strong> Building a list of dates to filter documents', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLReflect.php\';', 0, '', '', 0, 0, 0),
(8, 'DLReflectFilter', '<strong>2</strong> Filtering documents by dates provided by DLReflect snippet', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLReflectFilter.php\';', 0, '', '', 0, 0, 0),
(9, 'DLSitemap', '<strong>1.0.2</strong> Snippet to build XML sitemap', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLSitemap.php\';\n', 0, '', '', 0, 0, 0),
(10, 'DLTemplate', '<strong>1</strong> DLTemplate', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLTemplate.php\';', 0, '', '', 0, 0, 0),
(11, 'DLValuelist', '<strong>1.1</strong> DLValuelist', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DLValuelist.php\';', 0, '', '', 0, 0, 0),
(12, 'DocLister', '<strong>2.7.2</strong> Snippet to display the information of the tables by the description rules. The main goal - replacing Ditto and CatalogView', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/DocLister/snippet.DocLister.php\';\n', 0, '', '', 0, 0, 0),
(13, 'summary', '<strong>2.0.2</strong> Truncates the string to the specified length', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/summary/snippet.summary.php\';', 0, '', '', 0, 0, 0),
(14, 'FormLister', '<strong>1.19.3</strong> Form processor', 0, 2, 0, 'return require MODX_BASE_PATH.\'assets/snippets/FormLister/snippet.FormLister.php\';\n', 0, '', '', 0, 0, 0),
(15, 'multiTV', '<strong>2.0.16</strong> Custom Template Variabe containing a sortable multi item list or a datatable', 0, 2, 0, 'return require MODX_BASE_PATH . \'assets/tvs/multitv/multitv.snippet.php\';\n', 0, '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_site_templates`
--

CREATE TABLE `i6cn_site_templates` (
  `id` int NOT NULL,
  `templatename` varchar(100) NOT NULL DEFAULT '',
  `templatealias` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int NOT NULL DEFAULT '0' COMMENT 'category id',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to icon file',
  `template_type` int NOT NULL DEFAULT '0' COMMENT '0-page,1-content',
  `content` mediumtext,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `selectable` tinyint(1) NOT NULL DEFAULT '1',
  `createdon` int NOT NULL DEFAULT '0',
  `editedon` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_site_templates`
--

INSERT INTO `i6cn_site_templates` (`id`, `templatename`, `templatealias`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `selectable`, `createdon`, `editedon`) VALUES
(1, 'Minimal Template', '', 'Default minimal empty template (content returned only)', 0, 0, '', 0, '[*content*]', 0, 1, 0, 0),
(2, 'Главная страница', 'main', 'Для отображения главной', 0, 4, '', 0, '', 0, 1, 1666610631, 1666610631),
(3, 'Все блоги', 'blogs', 'Лента блогов', 0, 4, '', 0, '', 0, 1, 1666610968, 1666610968),
(4, 'Пост в блоге', 'post', 'Пост в блоге', 0, 4, '', 0, '', 0, 1, 1666610987, 1666610987),
(5, 'Контакты', 'contacts', 'Контакты', 0, 4, '', 0, '', 0, 1, 1666611001, 1666611001),
(6, 'Все теги', 'tags', 'Лента тегов', 0, 4, '', 0, '', 0, 1, 1666611016, 1666611022),
(7, 'Тег', 'tag', 'Страница тега', 0, 4, '', 0, '', 0, 1, 1666611039, 1666611050);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_site_tmplvars`
--

CREATE TABLE `i6cn_site_tmplvars` (
  `id` int NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int NOT NULL DEFAULT '0' COMMENT 'category id',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int NOT NULL DEFAULT '0',
  `display` varchar(32) DEFAULT '' COMMENT 'Display Control',
  `display_params` text COMMENT 'Display Control Properties',
  `default_text` text,
  `createdon` int NOT NULL DEFAULT '0',
  `editedon` int NOT NULL DEFAULT '0',
  `properties` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_site_tmplvars`
--

INSERT INTO `i6cn_site_tmplvars` (`id`, `type`, `name`, `caption`, `description`, `editor_type`, `category`, `locked`, `elements`, `rank`, `display`, `display_params`, `default_text`, `createdon`, `editedon`, `properties`) VALUES
(1, 'text', 'metatitle', 'Meta title', 'Содержимое тега title', 0, 5, 0, '', 0, '', '', '', 1666727368, 1666727368, '[]'),
(2, 'text', 'metadescription', 'Meta Description', 'Содержимое тега Description', 0, 5, 0, '', 0, '', '', '', 1666727435, 1666727455, '[]'),
(3, 'image', 'post_mainphoto', 'Главное фото', '', 0, 6, 0, '', 0, '', '', '', 1666727643, 1666727643, '[]'),
(4, 'custom_tv:selector', 'post_tags', 'Теги', '', 0, 6, 0, '', 0, '', '', '', 1666727715, 1666727715, '[]');

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_site_tmplvar_access`
--

CREATE TABLE `i6cn_site_tmplvar_access` (
  `id` int NOT NULL,
  `tmplvarid` int NOT NULL DEFAULT '0',
  `documentgroup` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_site_tmplvar_contentvalues`
--

CREATE TABLE `i6cn_site_tmplvar_contentvalues` (
  `id` int NOT NULL,
  `tmplvarid` int NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `contentid` int NOT NULL DEFAULT '0' COMMENT 'Site Content Id',
  `value` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_site_tmplvar_contentvalues`
--

INSERT INTO `i6cn_site_tmplvar_contentvalues` (`id`, `tmplvarid`, `contentid`, `value`) VALUES
(1, 3, 5, 'assets/images/newsvolifematters.png');

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_site_tmplvar_templates`
--

CREATE TABLE `i6cn_site_tmplvar_templates` (
  `tmplvarid` int NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `templateid` int NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_site_tmplvar_templates`
--

INSERT INTO `i6cn_site_tmplvar_templates` (`tmplvarid`, `templateid`, `rank`) VALUES
(1, 3, 0),
(1, 6, 0),
(1, 2, 0),
(1, 5, 0),
(1, 4, 0),
(1, 7, 0),
(2, 3, 0),
(2, 5, 0),
(2, 2, 0),
(2, 7, 0),
(2, 6, 0),
(2, 4, 0),
(3, 4, 0),
(4, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_system_eventnames`
--

CREATE TABLE `i6cn_system_eventnames` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `service` int NOT NULL DEFAULT '0' COMMENT 'System Service number',
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_system_eventnames`
--

INSERT INTO `i6cn_system_eventnames` (`id`, `name`, `service`, `groupname`) VALUES
(1, 'OnDocPublished', 5, ''),
(2, 'OnDocUnPublished', 5, ''),
(3, 'OnWebPagePrerender', 5, ''),
(4, 'OnWebLogin', 3, ''),
(5, 'OnBeforeWebLogout', 3, ''),
(6, 'OnWebLogout', 3, ''),
(7, 'OnWebSaveUser', 3, ''),
(8, 'OnWebDeleteUser', 3, ''),
(9, 'OnWebChangePassword', 3, ''),
(10, 'OnWebCreateGroup', 3, ''),
(11, 'OnManagerLogin', 2, ''),
(12, 'OnBeforeManagerLogout', 2, ''),
(13, 'OnManagerLogout', 2, ''),
(14, 'OnManagerSaveUser', 2, ''),
(15, 'OnManagerDeleteUser', 2, ''),
(16, 'OnManagerChangePassword', 2, ''),
(17, 'OnManagerCreateGroup', 2, ''),
(18, 'OnBeforeCacheUpdate', 4, ''),
(19, 'OnCacheUpdate', 4, ''),
(20, 'OnMakePageCacheKey', 4, ''),
(21, 'OnLoadWebPageCache', 4, ''),
(22, 'OnBeforeSaveWebPageCache', 4, ''),
(23, 'OnChunkFormPrerender', 1, 'Chunks'),
(24, 'OnChunkFormRender', 1, 'Chunks'),
(25, 'OnBeforeChunkFormSave', 1, 'Chunks'),
(26, 'OnChunkFormSave', 1, 'Chunks'),
(27, 'OnBeforeChunkFormDelete', 1, 'Chunks'),
(28, 'OnChunkFormDelete', 1, 'Chunks'),
(29, 'OnDocFormPrerender', 1, 'Documents'),
(30, 'OnDocFormRender', 1, 'Documents'),
(31, 'OnBeforeDocFormSave', 1, 'Documents'),
(32, 'OnDocFormSave', 1, 'Documents'),
(33, 'OnBeforeDocFormDelete', 1, 'Documents'),
(34, 'OnDocFormDelete', 1, 'Documents'),
(35, 'OnDocFormUnDelete', 1, 'Documents'),
(36, 'onBeforeMoveDocument', 1, 'Documents'),
(37, 'onAfterMoveDocument', 1, 'Documents'),
(38, 'OnPluginFormPrerender', 1, 'Plugins'),
(39, 'OnPluginFormRender', 1, 'Plugins'),
(40, 'OnBeforePluginFormSave', 1, 'Plugins'),
(41, 'OnPluginFormSave', 1, 'Plugins'),
(42, 'OnBeforePluginFormDelete', 1, 'Plugins'),
(43, 'OnPluginFormDelete', 1, 'Plugins'),
(44, 'OnSnipFormPrerender', 1, 'Snippets'),
(45, 'OnSnipFormRender', 1, 'Snippets'),
(46, 'OnBeforeSnipFormSave', 1, 'Snippets'),
(47, 'OnSnipFormSave', 1, 'Snippets'),
(48, 'OnBeforeSnipFormDelete', 1, 'Snippets'),
(49, 'OnSnipFormDelete', 1, 'Snippets'),
(50, 'OnTempFormPrerender', 1, 'Templates'),
(51, 'OnTempFormRender', 1, 'Templates'),
(52, 'OnBeforeTempFormSave', 1, 'Templates'),
(53, 'OnTempFormSave', 1, 'Templates'),
(54, 'OnBeforeTempFormDelete', 1, 'Templates'),
(55, 'OnTempFormDelete', 1, 'Templates'),
(56, 'OnTVFormPrerender', 1, 'Template Variables'),
(57, 'OnTVFormRender', 1, 'Template Variables'),
(58, 'OnBeforeTVFormSave', 1, 'Template Variables'),
(59, 'OnTVFormSave', 1, 'Template Variables'),
(60, 'OnBeforeTVFormDelete', 1, 'Template Variables'),
(61, 'OnTVFormDelete', 1, 'Template Variables'),
(62, 'OnUserFormPrerender', 1, 'Users'),
(63, 'OnUserFormRender', 1, 'Users'),
(64, 'OnBeforeUserSave', 1, 'Users'),
(65, 'OnUserSave', 1, 'Users'),
(66, 'OnBeforeUserDelete', 1, 'Users'),
(67, 'OnUserDelete', 1, 'Users'),
(68, 'OnSiteRefresh', 1, ''),
(69, 'OnFileManagerUpload', 1, ''),
(70, 'OnModFormPrerender', 1, 'Modules'),
(71, 'OnModFormRender', 1, 'Modules'),
(72, 'OnBeforeModFormDelete', 1, 'Modules'),
(73, 'OnModFormDelete', 1, 'Modules'),
(74, 'OnBeforeModFormSave', 1, 'Modules'),
(75, 'OnModFormSave', 1, 'Modules'),
(76, 'OnBeforeWebLogin', 3, ''),
(77, 'OnWebAuthentication', 3, ''),
(78, 'OnBeforeManagerLogin', 2, ''),
(79, 'OnManagerAuthentication', 2, ''),
(80, 'OnSiteSettingsRender', 1, 'System Settings'),
(81, 'OnFriendlyURLSettingsRender', 1, 'System Settings'),
(82, 'OnUserSettingsRender', 1, 'System Settings'),
(83, 'OnInterfaceSettingsRender', 1, 'System Settings'),
(84, 'OnSecuritySettingsRender', 1, 'System Settings'),
(85, 'OnFileManagerSettingsRender', 1, 'System Settings'),
(86, 'OnMiscSettingsRender', 1, 'System Settings'),
(87, 'OnRichTextEditorRegister', 1, 'RichText Editor'),
(88, 'OnRichTextEditorInit', 1, 'RichText Editor'),
(89, 'OnManagerPageInit', 2, ''),
(90, 'OnWebPageInit', 5, ''),
(91, 'OnLoadDocumentObject', 5, ''),
(92, 'OnBeforeLoadDocumentObject', 5, ''),
(93, 'OnAfterLoadDocumentObject', 5, ''),
(94, 'OnLoadWebDocument', 5, ''),
(95, 'OnParseDocument', 5, ''),
(96, 'OnParseProperties', 5, ''),
(97, 'OnBeforeParseParams', 5, ''),
(98, 'OnManagerLoginFormRender', 2, ''),
(99, 'OnWebPageComplete', 5, ''),
(100, 'OnLogPageHit', 5, ''),
(101, 'OnBeforeManagerPageInit', 2, ''),
(102, 'OnBeforeEmptyTrash', 1, 'Documents'),
(103, 'OnEmptyTrash', 1, 'Documents'),
(104, 'OnManagerLoginFormPrerender', 2, ''),
(105, 'OnStripAlias', 1, 'Documents'),
(106, 'OnMakeDocUrl', 5, ''),
(107, 'OnBeforeLoadExtension', 5, ''),
(108, 'OnCreateDocGroup', 1, 'Documents'),
(109, 'OnManagerWelcomePrerender', 2, ''),
(110, 'OnManagerWelcomeHome', 2, ''),
(111, 'OnManagerWelcomeRender', 2, ''),
(112, 'OnBeforeDocDuplicate', 1, 'Documents'),
(113, 'OnDocDuplicate', 1, 'Documents'),
(114, 'OnManagerMainFrameHeaderHTMLBlock', 2, ''),
(115, 'OnManagerPreFrameLoader', 2, ''),
(116, 'OnManagerFrameLoader', 2, ''),
(117, 'OnManagerTreeInit', 2, ''),
(118, 'OnManagerTreePrerender', 2, ''),
(119, 'OnManagerTreeRender', 2, ''),
(120, 'OnManagerNodePrerender', 2, ''),
(121, 'OnManagerNodeRender', 2, ''),
(122, 'OnManagerMenuPrerender', 2, ''),
(123, 'OnManagerTopPrerender', 2, ''),
(124, 'OnDocFormTemplateRender', 1, 'Documents'),
(125, 'OnBeforeMinifyCss', 1, ''),
(126, 'OnPageUnauthorized', 1, ''),
(127, 'OnPageNotFound', 1, ''),
(128, 'OnFileBrowserUpload', 1, 'File Browser Events'),
(129, 'OnBeforeFileBrowserUpload', 1, 'File Browser Events'),
(130, 'OnFileBrowserDelete', 1, 'File Browser Events'),
(131, 'OnBeforeFileBrowserDelete', 1, 'File Browser Events'),
(132, 'OnFileBrowserInit', 1, 'File Browser Events'),
(133, 'OnFileBrowserMove', 1, 'File Browser Events'),
(134, 'OnBeforeFileBrowserMove', 1, 'File Browser Events'),
(135, 'OnFileBrowserCopy', 1, 'File Browser Events'),
(136, 'OnBeforeFileBrowserCopy', 1, 'File Browser Events'),
(137, 'OnBeforeFileBrowserRename', 1, 'File Browser Events'),
(138, 'OnFileBrowserRename', 1, 'File Browser Events'),
(139, 'OnLogEvent', 1, 'Log Event'),
(140, 'OnLoadSettings', 1, 'System Settings'),
(141, 'OnBeforeClientSettingsSave', 6, 'ClientSettings'),
(142, 'OnClientSettingsSave', 6, 'ClientSettings');

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_system_settings`
--

CREATE TABLE `i6cn_system_settings` (
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_system_settings`
--

INSERT INTO `i6cn_system_settings` (`setting_name`, `setting_value`) VALUES
('settings_version', '3.1.12'),
('server_offset_time', '0'),
('modx_charset', 'UTF-8'),
('site_name', 'Блог'),
('site_start', '1'),
('error_page', '1'),
('unauthorized_page', '1'),
('site_status', '1'),
('default_template', '1'),
('old_template', '1'),
('publish_default', '1'),
('friendly_urls', '1'),
('friendly_alias_urls', '1'),
('use_alias_path', '1'),
('cache_type', '2'),
('failed_login_attempts', '3'),
('blocked_minutes', '60'),
('use_captcha', '0'),
('use_editor', '1'),
('use_browser', '1'),
('fck_editor_toolbar', 'standard'),
('fck_editor_autolang', '0'),
('editor_css_path', ''),
('editor_css_selectors', ''),
('upload_maxsize', '10485760'),
('manager_layout', '4'),
('auto_menuindex', '1'),
('session.cookie.lifetime', '604800'),
('mail_check_timeperiod', '600'),
('manager_direction', 'ltr'),
('xhtml_urls', '0'),
('automatic_alias', '1'),
('datetime_format', 'dd-mm-YYYY'),
('warning_visibility', '0'),
('remember_last_tab', '1'),
('enable_bindings', '1'),
('seostrict', '1'),
('number_of_results', '30'),
('theme_refresher', ''),
('show_picker', '0'),
('show_newresource_btn', '0'),
('show_fullscreen_btn', '0'),
('email_sender_method', '1'),
('smtp_autotls', '0'),
('manager_language', 'ru'),
('auto_template_logic', 'sibling'),
('emailsender', 'admin@evoblog.localhost'),
('fe_editor_lang', 'ru'),
('site_id', '63512dd9b56ee'),
('manager_theme', 'default'),
('a', '30'),
('ControllerNamespace', ''),
('UpgradeRepository', ''),
('site_unavailable_page', ''),
('reload_site_unavailable', ''),
('siteunavailable_message_default', 'ru'),
('site_unavailable_message', 'В настоящее время сайт недоступен.'),
('chunk_processor', 'DLTemplate'),
('cache_default', '1'),
('search_default', '1'),
('custom_contenttype', 'application/rss+xml,application/pdf,application/vnd.ms-word,application/vnd.ms-excel,text/html,text/css,text/xml,text/javascript,text/plain,application/json'),
('docid_incrmnt_method', '0'),
('enable_cache', '2'),
('disable_chunk_cache', '0'),
('disable_snippet_cache', '0'),
('disable_plugins_cache', '0'),
('minifyphp_incache', '0'),
('server_protocol', 'http'),
('rss_url_news', 'https://github.com/evocms-community/evolution/releases.atom'),
('track_visitors', '0'),
('friendly_url_prefix', '.html'),
('friendly_url_suffix', ''),
('make_folders', '1'),
('full_aliaslisting', '0'),
('aliaslistingfolder', '0'),
('allow_duplicate_alias', '0'),
('manager_theme_mode', '3'),
('login_logo', ''),
('login_bg', ''),
('login_form_position', 'left'),
('login_form_style', 'dark'),
('manager_menu_position', 'top'),
('tree_page_click', '27'),
('use_breadcrumbs', '0'),
('global_tabs', '1'),
('group_tvs', '1'),
('resource_tree_node_name', 'pagetitle'),
('session_timeout', '15'),
('tree_show_protected', '0'),
('datepicker_offset', '-10'),
('number_of_logs', '100'),
('number_of_messages', '40'),
('which_editor', 'none'),
('use_udperms', '1'),
('udperms_allowroot', '0'),
('allow_eval', 'with_scan'),
('safe_functions_at_eval', 'time,date,strtotime,strftime'),
('check_files_onlogin', 'index.php\r\n.htaccess\r\nmanager/index.php\r\n/core/config/database/connections/default.php'),
('validate_referer', '1'),
('rss_url_security', 'https://github.com/extras-evolution/security-fix/releases.atom'),
('error_reporting', '1'),
('send_errormail', '0'),
('pwd_hash_algo', 'UNCRYPT'),
('reload_captcha_words', ''),
('captcha_words', 'EVO,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote'),
('captcha_words_default', 'EVO,Access,Better,BitCode,Chunk,Cache,Desc,Design,Excell,Enjoy,URLs,TechView,Gerald,Griff,Humphrey,Holiday,Intel,Integration,Joystick,Join(),Oscope,Genetic,Light,Likeness,Marit,Maaike,Niche,Netherlands,Ordinance,Oscillo,Parser,Phusion,Query,Question,Regalia,Righteous,Snippet,Sentinel,Template,Thespian,Unity,Enterprise,Verily,Tattoo,Veri,Website,WideWeb,Yap,Yellow,Zebra,Zygote'),
('filemanager_path', 'C:/work/OpenServer/domains/evoblog.localhost/'),
('upload_files', 'bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,fla,flv,swf,aac,au,avi,css,cache,doc,docx,gz,gzip,htaccess,htm,html,js,mp3,mp4,mpeg,mpg,ods,odp,odt,pdf,ppt,pptx,rar,tar,tgz,txt,wav,wmv,xls,xlsx,xml,z,zip,JPG,JPEG,PNG,GIF,svg,tpl'),
('upload_images', 'bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,svg'),
('upload_media', 'au,avi,mp3,mp4,mpeg,mpg,wav,wmv'),
('new_file_permissions', '0644'),
('new_folder_permissions', '0755'),
('which_browser', 'mcpuk'),
('rb_webuser', '0'),
('rb_base_dir', 'C:/work/OpenServer/domains/evoblog.localhost/assets/'),
('rb_base_url', 'assets/'),
('clean_uploaded_filename', '1'),
('strip_image_paths', '1'),
('maxImageWidth', '2600'),
('maxImageHeight', '2200'),
('clientResize', '0'),
('noThumbnailsRecreation', '0'),
('thumbWidth', '150'),
('thumbHeight', '150'),
('thumbsDir', '.thumbs'),
('jpegQuality', '90'),
('denyZipDownload', '0'),
('denyExtensionRename', '0'),
('showHiddenFiles', '0'),
('email_method', 'mail'),
('smtp_auth', '0'),
('smtp_secure', 'none'),
('smtp_host', 'smtp.example.com'),
('smtp_port', '25'),
('smtp_username', 'emailsender'),
('reload_emailsubject', ''),
('emailsubject_default', 'Данные для авторизации'),
('emailsubject', 'Данные для авторизации'),
('reload_websignupemail_message', ''),
('system_email_websignup_default', 'Здравствуйте, [+uid+]!\r\n\r\nВаши данные для авторизации на [+sname+]:\r\n\r\nИмя пользователя: [+uid+]\r\nПароль: [+pwd+]\r\n\r\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\r\n\r\nС уважением, Администрация'),
('websignupemail_message', 'Здравствуйте, [+uid+]!\r\n\r\nВаши данные для авторизации на [+sname+]:\r\n\r\nИмя пользователя: [+uid+]\r\nПароль: [+pwd+]\r\n\r\nПосле успешной авторизации на [+sname+] ([+surl+]), вы сможете изменить свой пароль.\r\n\r\nС уважением, Администрация'),
('reload_system_email_webreminder_message', ''),
('system_email_webreminder_default', 'Здравствуйте, [+uid+]!\r\n\r\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\r\n\r\n[+surl+]\r\n\r\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\r\n\r\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\r\n\r\nС уважением, Администрация'),
('webpwdreminder_message', 'Здравствуйте, [+uid+]!\r\n\r\nЧтобы активировать ваш новый пароль, перейдите по следующей ссылке:\r\n\r\n[+surl+]\r\n\r\nПозже вы сможете использовать следующий пароль для авторизации: [+pwd+]\r\n\r\nЕсли это письмо пришло к вам по ошибке, пожалуйста, проигнорируйте его.\r\n\r\nС уважением, Администрация'),
('allow_multiple_emails', '0'),
('lang_code', 'ru'),
('sys_files_checksum', 'a:4:{s:54:\"C:/work/OpenServer/domains/evoblog.localhost/index.php\";s:32:\"50d517851587d6e6cc08436daeeb32ca\";s:54:\"C:/work/OpenServer/domains/evoblog.localhost/.htaccess\";s:32:\"2f584ae80e3c43f2f0cc22bb94fa0a3e\";s:62:\"C:/work/OpenServer/domains/evoblog.localhost/manager/index.php\";s:32:\"2a9f68da5b69c7236c2987e97e7eabc5\";s:90:\"C:/work/OpenServer/domains/evoblog.localhost//core/config/database/connections/default.php\";s:32:\"b254949aebf87e2d7d3f2cff216bf469\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_users`
--

CREATE TABLE `i6cn_users` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '' COMMENT 'Store new unconfirmed password',
  `refresh_token` varchar(255) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `valid_to` timestamp NULL DEFAULT NULL,
  `verified_key` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_users`
--

INSERT INTO `i6cn_users` (`id`, `username`, `password`, `cachepwd`, `refresh_token`, `access_token`, `valid_to`, `verified_key`) VALUES
(1, 'admin', '$P$BjbEatuDPd5wdVR6uLDAGe1FwwLrsy/', '', 'e95b11fa0a1073582095346461070c3dfb15930de00aaa6e645a5e49a0ee6895', '8ca0caf451565add1ba24da9863a9a722af6ff24fc20893c56995f727d154da2', '2022-10-26 06:46:04', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_user_attributes`
--

CREATE TABLE `i6cn_user_attributes` (
  `id` int NOT NULL,
  `internalKey` int NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '1',
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `role` int NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int NOT NULL DEFAULT '0',
  `blockeduntil` int NOT NULL DEFAULT '0',
  `blockedafter` int NOT NULL DEFAULT '0',
  `logincount` int NOT NULL DEFAULT '0',
  `lastlogin` int NOT NULL DEFAULT '0',
  `thislogin` int NOT NULL DEFAULT '0',
  `failedlogincount` int NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int DEFAULT '0',
  `gender` int NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(25) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text,
  `createdon` int NOT NULL DEFAULT '0',
  `editedon` int NOT NULL DEFAULT '0',
  `verified` tinyint NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_user_attributes`
--

INSERT INTO `i6cn_user_attributes` (`id`, `internalKey`, `fullname`, `first_name`, `last_name`, `middle_name`, `role`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `country`, `street`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `createdon`, `editedon`, `verified`) VALUES
(1, 1, '1', NULL, NULL, NULL, 1, 'admin@evoblog.localhost', '', '', 0, 0, 0, 2, 1666727164, 1666727164, 0, '1', 0, 0, '', '', '', '', '', '', '', NULL, 1666264537, 1666727164, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_user_roles`
--

CREATE TABLE `i6cn_user_roles` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `i6cn_user_roles`
--

INSERT INTO `i6cn_user_roles` (`id`, `name`, `description`) VALUES
(1, 'Administrator', 'Site administrators have full access to all functions'),
(2, 'Editor', 'Limited to managing content'),
(3, 'Publisher', 'Editor with expanded permissions including manage users, update Elements and site settings');

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_user_role_vars`
--

CREATE TABLE `i6cn_user_role_vars` (
  `tmplvarid` int NOT NULL DEFAULT '0',
  `roleid` int NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_user_settings`
--

CREATE TABLE `i6cn_user_settings` (
  `user` int NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_user_values`
--

CREATE TABLE `i6cn_user_values` (
  `id` bigint UNSIGNED NOT NULL,
  `tmplvarid` int NOT NULL DEFAULT '0',
  `userid` int NOT NULL DEFAULT '0',
  `value` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `i6cn_active_users`
--
ALTER TABLE `i6cn_active_users`
  ADD PRIMARY KEY (`sid`);

--
-- Индексы таблицы `i6cn_active_user_locks`
--
ALTER TABLE `i6cn_active_user_locks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_element_id` (`elementType`,`elementId`,`sid`);

--
-- Индексы таблицы `i6cn_active_user_sessions`
--
ALTER TABLE `i6cn_active_user_sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Индексы таблицы `i6cn_categories`
--
ALTER TABLE `i6cn_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i6cn_documentgroup_names`
--
ALTER TABLE `i6cn_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `i6cn_document_groups`
--
ALTER TABLE `i6cn_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_dg_id` (`document_group`,`document`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Индексы таблицы `i6cn_event_log`
--
ALTER TABLE `i6cn_event_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_log_user_index` (`user`);

--
-- Индексы таблицы `i6cn_manager_log`
--
ALTER TABLE `i6cn_manager_log`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i6cn_membergroup_access`
--
ALTER TABLE `i6cn_membergroup_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i6cn_membergroup_names`
--
ALTER TABLE `i6cn_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `membergroup_names_name_unique` (`name`);

--
-- Индексы таблицы `i6cn_member_groups`
--
ALTER TABLE `i6cn_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_group_member` (`user_group`,`member`);

--
-- Индексы таблицы `i6cn_migrations_install`
--
ALTER TABLE `i6cn_migrations_install`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i6cn_permissions`
--
ALTER TABLE `i6cn_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i6cn_permissions_groups`
--
ALTER TABLE `i6cn_permissions_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i6cn_role_permissions`
--
ALTER TABLE `i6cn_role_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i6cn_site_content`
--
ALTER TABLE `i6cn_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `typeidx` (`type`),
  ADD KEY `aliasidx` (`alias`),
  ADD KEY `parent` (`parent`),
  ADD KEY `pub_unpub_published` (`pub_date`,`unpub_date`,`published`),
  ADD KEY `pub_unpub` (`pub_date`,`unpub_date`),
  ADD KEY `unpub` (`unpub_date`),
  ADD KEY `pub` (`pub_date`);
ALTER TABLE `i6cn_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`description`,`content`);

--
-- Индексы таблицы `i6cn_site_content_closure`
--
ALTER TABLE `i6cn_site_content_closure`
  ADD PRIMARY KEY (`closure_id`);

--
-- Индексы таблицы `i6cn_site_htmlsnippets`
--
ALTER TABLE `i6cn_site_htmlsnippets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i6cn_site_modules`
--
ALTER TABLE `i6cn_site_modules`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i6cn_site_module_access`
--
ALTER TABLE `i6cn_site_module_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i6cn_site_module_depobj`
--
ALTER TABLE `i6cn_site_module_depobj`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i6cn_site_plugins`
--
ALTER TABLE `i6cn_site_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i6cn_site_plugin_events`
--
ALTER TABLE `i6cn_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`evtid`);

--
-- Индексы таблицы `i6cn_site_snippets`
--
ALTER TABLE `i6cn_site_snippets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i6cn_site_templates`
--
ALTER TABLE `i6cn_site_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i6cn_site_tmplvars`
--
ALTER TABLE `i6cn_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indx_rank` (`rank`);

--
-- Индексы таблицы `i6cn_site_tmplvar_access`
--
ALTER TABLE `i6cn_site_tmplvar_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i6cn_site_tmplvar_contentvalues`
--
ALTER TABLE `i6cn_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_tvid_contentid` (`tmplvarid`,`contentid`),
  ADD KEY `idx_tmplvarid` (`tmplvarid`),
  ADD KEY `idx_id` (`contentid`);
ALTER TABLE `i6cn_site_tmplvar_contentvalues` ADD FULLTEXT KEY `content_ft_idx` (`value`);

--
-- Индексы таблицы `i6cn_site_tmplvar_templates`
--
ALTER TABLE `i6cn_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Индексы таблицы `i6cn_system_eventnames`
--
ALTER TABLE `i6cn_system_eventnames`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i6cn_system_settings`
--
ALTER TABLE `i6cn_system_settings`
  ADD PRIMARY KEY (`setting_name`);

--
-- Индексы таблицы `i6cn_users`
--
ALTER TABLE `i6cn_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_users_username_unique` (`username`);

--
-- Индексы таблицы `i6cn_user_attributes`
--
ALTER TABLE `i6cn_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `web_user_attributes_internalkey_index` (`internalKey`);

--
-- Индексы таблицы `i6cn_user_roles`
--
ALTER TABLE `i6cn_user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `i6cn_user_role_vars`
--
ALTER TABLE `i6cn_user_role_vars`
  ADD PRIMARY KEY (`tmplvarid`,`roleid`);

--
-- Индексы таблицы `i6cn_user_settings`
--
ALTER TABLE `i6cn_user_settings`
  ADD PRIMARY KEY (`user`,`setting_name`),
  ADD KEY `user_settings_user_index` (`user`),
  ADD KEY `setting_name` (`setting_name`);

--
-- Индексы таблицы `i6cn_user_values`
--
ALTER TABLE `i6cn_user_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_values_tmplvarid_userid_unique` (`tmplvarid`,`userid`),
  ADD KEY `user_values_tmplvarid_index` (`tmplvarid`),
  ADD KEY `user_values_userid_index` (`userid`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `i6cn_active_user_locks`
--
ALTER TABLE `i6cn_active_user_locks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `i6cn_categories`
--
ALTER TABLE `i6cn_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `i6cn_documentgroup_names`
--
ALTER TABLE `i6cn_documentgroup_names`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `i6cn_document_groups`
--
ALTER TABLE `i6cn_document_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `i6cn_event_log`
--
ALTER TABLE `i6cn_event_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `i6cn_manager_log`
--
ALTER TABLE `i6cn_manager_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT для таблицы `i6cn_membergroup_access`
--
ALTER TABLE `i6cn_membergroup_access`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `i6cn_membergroup_names`
--
ALTER TABLE `i6cn_membergroup_names`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `i6cn_member_groups`
--
ALTER TABLE `i6cn_member_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `i6cn_migrations_install`
--
ALTER TABLE `i6cn_migrations_install`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT для таблицы `i6cn_permissions`
--
ALTER TABLE `i6cn_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT для таблицы `i6cn_permissions_groups`
--
ALTER TABLE `i6cn_permissions_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `i6cn_role_permissions`
--
ALTER TABLE `i6cn_role_permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT для таблицы `i6cn_site_content`
--
ALTER TABLE `i6cn_site_content`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `i6cn_site_content_closure`
--
ALTER TABLE `i6cn_site_content_closure`
  MODIFY `closure_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `i6cn_site_htmlsnippets`
--
ALTER TABLE `i6cn_site_htmlsnippets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `i6cn_site_modules`
--
ALTER TABLE `i6cn_site_modules`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `i6cn_site_module_access`
--
ALTER TABLE `i6cn_site_module_access`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `i6cn_site_module_depobj`
--
ALTER TABLE `i6cn_site_module_depobj`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `i6cn_site_plugins`
--
ALTER TABLE `i6cn_site_plugins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `i6cn_site_snippets`
--
ALTER TABLE `i6cn_site_snippets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `i6cn_site_templates`
--
ALTER TABLE `i6cn_site_templates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `i6cn_site_tmplvars`
--
ALTER TABLE `i6cn_site_tmplvars`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `i6cn_site_tmplvar_access`
--
ALTER TABLE `i6cn_site_tmplvar_access`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `i6cn_site_tmplvar_contentvalues`
--
ALTER TABLE `i6cn_site_tmplvar_contentvalues`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `i6cn_system_eventnames`
--
ALTER TABLE `i6cn_system_eventnames`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT для таблицы `i6cn_users`
--
ALTER TABLE `i6cn_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `i6cn_user_attributes`
--
ALTER TABLE `i6cn_user_attributes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `i6cn_user_roles`
--
ALTER TABLE `i6cn_user_roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `i6cn_user_values`
--
ALTER TABLE `i6cn_user_values`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
