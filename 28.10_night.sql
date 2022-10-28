-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 28 2022 г., 21:45
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `i6cn_active_users`
--

INSERT INTO `i6cn_active_users` (`sid`, `internalKey`, `username`, `lasthit`, `action`, `id`) VALUES
('99kuu130ma8q5h429jevs7bmadob2pbv', 1, 'admin', 1666982457, '27', 3);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `i6cn_active_user_locks`
--

INSERT INTO `i6cn_active_user_locks` (`id`, `sid`, `internalKey`, `elementType`, `elementId`, `lasthit`) VALUES
(37, '99kuu130ma8q5h429jevs7bmadob2pbv', 1, 7, 3, 1666982457);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_active_user_sessions`
--

CREATE TABLE `i6cn_active_user_sessions` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int NOT NULL DEFAULT '0',
  `lasthit` int NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `i6cn_active_user_sessions`
--

INSERT INTO `i6cn_active_user_sessions` (`sid`, `internalKey`, `lasthit`, `ip`) VALUES
('99kuu130ma8q5h429jevs7bmadob2pbv', 1, 1666982457, '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_categories`
--

CREATE TABLE `i6cn_categories` (
  `id` int NOT NULL,
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `i6cn_categories`
--

INSERT INTO `i6cn_categories` (`id`, `category`, `rank`) VALUES
(1, 'Manager and Admin', 2),
(2, 'Content', 1),
(3, 'Navigation', 3),
(4, 'Шаблоны', 5),
(5, 'SEO', 6),
(6, 'Контент', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_documentgroup_names`
--

CREATE TABLE `i6cn_documentgroup_names` (
  `id` int NOT NULL,
  `name` varchar(245) NOT NULL DEFAULT '',
  `private_memgroup` int DEFAULT '0' COMMENT 'determine whether the document group is private to manager users',
  `private_webgroup` int DEFAULT '0' COMMENT 'determines whether the document is private to web users'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_document_groups`
--

CREATE TABLE `i6cn_document_groups` (
  `id` int NOT NULL,
  `document_group` int NOT NULL DEFAULT '0',
  `document` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `i6cn_event_log`
--

INSERT INTO `i6cn_event_log` (`id`, `eventid`, `createdon`, `type`, `user`, `usertype`, `source`, `description`) VALUES
(53, 0, 1666971115, 3, 0, 1, 'Parser - Snippet / PHP Parse Error', '<b>array_merge(): Expected parameter 1 to be an array, null given</b><br />\r\n<h2 style=\"color:red\">&laquo; Evolution CMS Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : array_merge(): Expected parameter 1 to be an array, null given</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\work\\OpenServer\\domains\\evoblog.localhost\\core\\custom\\packages\\main\\src\\Controllers\\BlogsController.php</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>29</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Source</td>\n		<td>Snippet</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://evoblog.localhost/blogs/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[2] <a href=\"http://evoblog.localhost/blogs/\" target=\"_blank\">Блоги</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://evoblog.localhost/tags/puteshestvie</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2022-10-28 18:31:55</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0000 s (0 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.2920 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.2920 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>3.6000366210938 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>EvolutionCMS\\Core->processRoutes</strong>()<br />index.php on line 137</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Routing\\Router->dispatch</strong>(Illuminate\\Http\\Request $var1)<br />core/src/Core.php on line 2703</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>Illuminate\\Routing\\Router->dispatchToRoute</strong>(Illuminate\\Http\\Request $var1)<br />core/vendor/illuminate/routing/Router.php on line 651</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Routing\\Router->runRoute</strong>(Illuminate\\Http\\Request $var1, Illuminate\\Routing\\Route $var2)<br />core/vendor/illuminate/routing/Router.php on line 662</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>Illuminate\\Routing\\Router->runRouteWithinStack</strong>(Illuminate\\Routing\\Route $var1, Illuminate\\Http\\Request $var2)<br />core/vendor/illuminate/routing/Router.php on line 698</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Pipeline\\Pipeline->then</strong>(Closure $var1)<br />core/vendor/illuminate/routing/Router.php on line 723</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}</strong>(Illuminate\\Http\\Request $var1)<br />core/vendor/illuminate/pipeline/Pipeline.php on line 103</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}</strong>(Illuminate\\Http\\Request $var1)<br />core/vendor/illuminate/pipeline/Pipeline.php on line 128</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>Illuminate\\Routing\\Route->run</strong>()<br />core/vendor/illuminate/routing/Router.php on line 721</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Routing\\Route->runCallable</strong>()<br />core/vendor/illuminate/routing/Route.php on line 208</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>EvolutionCMS\\Extensions\\Router->EvolutionCMS\\Extensions\\{closure}</strong>(\'blogs\')<br />core/vendor/illuminate/routing/Route.php on line 238</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>EvolutionCMS\\Core->executeParser</strong>()<br />core/src/Extensions/Router.php on line 25</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>EvolutionCMS\\Core->prepareResponse</strong>()<br />core/src/Core.php on line 2822</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Support\\Facades\\Facade::__callStatic</strong>(string $var1, array $var2)<br />core/src/Core.php on line 2918</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>EvolutionCMS\\TemplateProcessor->getBladeDocumentContent</strong>()<br />core/vendor/illuminate/support/Facades/Facade.php on line 261</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>EvolutionCMS\\AbstractLaravel->make</strong>(string $var1)<br />core/src/TemplateProcessor.php on line 63</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>Illuminate\\Container\\Container->make</strong>(string $var1, array $var2)<br />core/src/AbstractLaravel.php on line 473</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Container\\Container->resolve</strong>(string $var1, array $var2)<br />core/vendor/illuminate/container/Container.php on line 694</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>Illuminate\\Container\\Container->build</strong>(string $var1)<br />core/vendor/illuminate/container/Container.php on line 758</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>ReflectionClass->newInstanceArgs</strong>(array $var1)<br />core/vendor/illuminate/container/Container.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>EvolutionCMS\\Main\\Controllers\\BaseController->__construct</strong>()<br /> on line </td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>EvolutionCMS\\Main\\Controllers\\BlogsController->render</strong>()<br />core/custom/packages/main/src/Controllers/BaseController.php on line 12</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>EvolutionCMS\\Core->runSnippet</strong>(\'DocLister\', array $var2)<br />core/custom/packages/main/src/Controllers/BlogsController.php on line 36</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>EvolutionCMS\\Core->evalSnippet</strong>(string $var1, array $var2)<br />core/src/Core.php on line 4345</td>\n	</tr>\n</table>\n'),
(54, 0, 1666971133, 3, 0, 1, 'Parser - Snippet / PHP Parse Error', '<b>array_merge(): Expected parameter 1 to be an array, null given</b><br />\r\n<h2 style=\"color:red\">&laquo; Evolution CMS Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : array_merge(): Expected parameter 1 to be an array, null given</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\work\\OpenServer\\domains\\evoblog.localhost\\core\\custom\\packages\\main\\src\\Controllers\\BlogsController.php</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>29</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Source</td>\n		<td>Snippet</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://evoblog.localhost/blogs/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[2] <a href=\"http://evoblog.localhost/blogs/\" target=\"_blank\">Блоги</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://evoblog.localhost/tags/puteshestvie</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2022-10-28 18:32:13</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0000 s (0 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.3489 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.3489 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>3.5999145507812 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>EvolutionCMS\\Core->processRoutes</strong>()<br />index.php on line 137</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Routing\\Router->dispatch</strong>(Illuminate\\Http\\Request $var1)<br />core/src/Core.php on line 2703</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>Illuminate\\Routing\\Router->dispatchToRoute</strong>(Illuminate\\Http\\Request $var1)<br />core/vendor/illuminate/routing/Router.php on line 651</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Routing\\Router->runRoute</strong>(Illuminate\\Http\\Request $var1, Illuminate\\Routing\\Route $var2)<br />core/vendor/illuminate/routing/Router.php on line 662</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>Illuminate\\Routing\\Router->runRouteWithinStack</strong>(Illuminate\\Routing\\Route $var1, Illuminate\\Http\\Request $var2)<br />core/vendor/illuminate/routing/Router.php on line 698</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Pipeline\\Pipeline->then</strong>(Closure $var1)<br />core/vendor/illuminate/routing/Router.php on line 723</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}</strong>(Illuminate\\Http\\Request $var1)<br />core/vendor/illuminate/pipeline/Pipeline.php on line 103</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}</strong>(Illuminate\\Http\\Request $var1)<br />core/vendor/illuminate/pipeline/Pipeline.php on line 128</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>Illuminate\\Routing\\Route->run</strong>()<br />core/vendor/illuminate/routing/Router.php on line 721</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Routing\\Route->runCallable</strong>()<br />core/vendor/illuminate/routing/Route.php on line 208</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>EvolutionCMS\\Extensions\\Router->EvolutionCMS\\Extensions\\{closure}</strong>(\'blogs\')<br />core/vendor/illuminate/routing/Route.php on line 238</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>EvolutionCMS\\Core->executeParser</strong>()<br />core/src/Extensions/Router.php on line 25</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>EvolutionCMS\\Core->prepareResponse</strong>()<br />core/src/Core.php on line 2822</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Support\\Facades\\Facade::__callStatic</strong>(string $var1, array $var2)<br />core/src/Core.php on line 2918</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>EvolutionCMS\\TemplateProcessor->getBladeDocumentContent</strong>()<br />core/vendor/illuminate/support/Facades/Facade.php on line 261</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>EvolutionCMS\\AbstractLaravel->make</strong>(string $var1)<br />core/src/TemplateProcessor.php on line 63</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>Illuminate\\Container\\Container->make</strong>(string $var1, array $var2)<br />core/src/AbstractLaravel.php on line 473</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Container\\Container->resolve</strong>(string $var1, array $var2)<br />core/vendor/illuminate/container/Container.php on line 694</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>Illuminate\\Container\\Container->build</strong>(string $var1)<br />core/vendor/illuminate/container/Container.php on line 758</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>ReflectionClass->newInstanceArgs</strong>(array $var1)<br />core/vendor/illuminate/container/Container.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>EvolutionCMS\\Main\\Controllers\\BaseController->__construct</strong>()<br /> on line </td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>EvolutionCMS\\Main\\Controllers\\BlogsController->render</strong>()<br />core/custom/packages/main/src/Controllers/BaseController.php on line 12</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>EvolutionCMS\\Core->runSnippet</strong>(\'DocLister\', array $var2)<br />core/custom/packages/main/src/Controllers/BlogsController.php on line 36</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>EvolutionCMS\\Core->evalSnippet</strong>(string $var1, array $var2)<br />core/src/Core.php on line 4345</td>\n	</tr>\n</table>\n'),
(55, 0, 1666971196, 3, 0, 1, 'Parser - Snippet / PHP Parse Error', '<b>array_merge(): Expected parameter 1 to be an array, null given</b><br />\r\n<h2 style=\"color:red\">&laquo; Evolution CMS Parse Error &raquo;</h2><pre style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : array_merge(): Expected parameter 1 to be an array, null given</pre>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\work\\OpenServer\\domains\\evoblog.localhost\\core\\custom\\packages\\main\\src\\Controllers\\BlogsController.php</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>29</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Source</td>\n		<td>Snippet</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://evoblog.localhost/blogs/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[2] <a href=\"http://evoblog.localhost/blogs/\" target=\"_blank\">Блоги</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://evoblog.localhost/</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2022-10-28 18:33:16</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0000 s (0 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.4229 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.4229 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.6000823974609 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>EvolutionCMS\\Core->processRoutes</strong>()<br />index.php on line 137</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Routing\\Router->dispatch</strong>(Illuminate\\Http\\Request $var1)<br />core/src/Core.php on line 2703</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>Illuminate\\Routing\\Router->dispatchToRoute</strong>(Illuminate\\Http\\Request $var1)<br />core/vendor/illuminate/routing/Router.php on line 651</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Routing\\Router->runRoute</strong>(Illuminate\\Http\\Request $var1, Illuminate\\Routing\\Route $var2)<br />core/vendor/illuminate/routing/Router.php on line 662</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>Illuminate\\Routing\\Router->runRouteWithinStack</strong>(Illuminate\\Routing\\Route $var1, Illuminate\\Http\\Request $var2)<br />core/vendor/illuminate/routing/Router.php on line 698</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Pipeline\\Pipeline->then</strong>(Closure $var1)<br />core/vendor/illuminate/routing/Router.php on line 723</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}</strong>(Illuminate\\Http\\Request $var1)<br />core/vendor/illuminate/pipeline/Pipeline.php on line 103</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}</strong>(Illuminate\\Http\\Request $var1)<br />core/vendor/illuminate/pipeline/Pipeline.php on line 128</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>Illuminate\\Routing\\Route->run</strong>()<br />core/vendor/illuminate/routing/Router.php on line 721</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Routing\\Route->runCallable</strong>()<br />core/vendor/illuminate/routing/Route.php on line 208</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>EvolutionCMS\\Extensions\\Router->EvolutionCMS\\Extensions\\{closure}</strong>(\'blogs\')<br />core/vendor/illuminate/routing/Route.php on line 238</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>EvolutionCMS\\Core->executeParser</strong>()<br />core/src/Extensions/Router.php on line 25</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>EvolutionCMS\\Core->prepareResponse</strong>()<br />core/src/Core.php on line 2822</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Support\\Facades\\Facade::__callStatic</strong>(string $var1, array $var2)<br />core/src/Core.php on line 2918</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>EvolutionCMS\\TemplateProcessor->getBladeDocumentContent</strong>()<br />core/vendor/illuminate/support/Facades/Facade.php on line 261</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>EvolutionCMS\\AbstractLaravel->make</strong>(string $var1)<br />core/src/TemplateProcessor.php on line 63</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>Illuminate\\Container\\Container->make</strong>(string $var1, array $var2)<br />core/src/AbstractLaravel.php on line 473</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>Illuminate\\Container\\Container->resolve</strong>(string $var1, array $var2)<br />core/vendor/illuminate/container/Container.php on line 694</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>Illuminate\\Container\\Container->build</strong>(string $var1)<br />core/vendor/illuminate/container/Container.php on line 758</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>ReflectionClass->newInstanceArgs</strong>(array $var1)<br />core/vendor/illuminate/container/Container.php on line 917</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>EvolutionCMS\\Main\\Controllers\\BaseController->__construct</strong>()<br /> on line </td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>EvolutionCMS\\Main\\Controllers\\BlogsController->render</strong>()<br />core/custom/packages/main/src/Controllers/BaseController.php on line 12</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>EvolutionCMS\\Core->runSnippet</strong>(\'DocLister\', array $var2)<br />core/custom/packages/main/src/Controllers/BlogsController.php on line 36</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>EvolutionCMS\\Core->evalSnippet</strong>(string $var1, array $var2)<br />core/src/Core.php on line 4345</td>\n	</tr>\n</table>\n');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(141, 1666732162, 1, 'admin', 76, '-', '-', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(142, 1666772170, 1, 'admin', 67, '-', '-', 'Removing locks', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(143, 1666772172, 1, 'admin', 27, '5', 'Пост о чём-то', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(144, 1666778784, 1, 'admin', 27, '1', 'Главная страница блога', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(145, 1666779174, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(146, 1666779912, 1, 'admin', 27, '5', 'Пост о чём-то', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(147, 1666781194, 1, 'admin', 27, '2', 'Блоги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(148, 1666781258, 1, 'admin', 27, '4', 'Контакты', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(149, 1666781496, 1, 'admin', 27, '3', 'Теги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(150, 1666787722, 1, 'admin', 27, '5', 'Пост о чём-то', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(151, 1666787793, 1, 'admin', 301, '3', 'Главное фото', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(152, 1666787923, 1, 'admin', 112, '1', 'Extras', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(153, 1666787939, 1, 'admin', 112, '2', 'ClientSettings', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(154, 1666787942, 1, 'admin', 27, '5', 'Пост о чём-то', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(155, 1666787944, 1, 'admin', 27, '5', 'Пост о чём-то', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(156, 1666787946, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(157, 1666787953, 1, 'admin', 30, '-', '-', 'Saving settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(158, 1666787957, 1, 'admin', 27, '5', 'Пост о чём-то', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(159, 1666788020, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(160, 1666788371, 1, 'admin', 27, '5', 'Пост о чём-то', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(161, 1666788910, 1, 'admin', 27, '4', 'Контакты', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(162, 1666788964, 1, 'admin', 5, '4', 'Контакты', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(163, 1666788964, 1, 'admin', 27, '4', 'Контакты', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(164, 1666788991, 1, 'admin', 5, '4', 'Контакты', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(165, 1666788991, 1, 'admin', 27, '4', 'Контакты', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(166, 1666790551, 1, 'admin', 16, '2', 'Главная страница', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(167, 1666790609, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(168, 1666790616, 1, 'admin', 30, '-', '-', 'Saving settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(169, 1666790635, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(170, 1666790642, 1, 'admin', 30, '-', '-', 'Saving settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(171, 1666790648, 1, 'admin', 26, '-', '-', 'Refreshing site', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(172, 1666790653, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(173, 1666790662, 1, 'admin', 30, '-', '-', 'Saving settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(174, 1666790742, 1, 'admin', 16, '2', 'Главная страница', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(175, 1666865748, 1, 'admin', 58, '-', 'EVO', 'Logged in', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(176, 1666868138, 1, 'admin', 301, '3', 'Главное фото', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(177, 1666868179, 1, 'admin', 27, '5', 'Пост о чём-то', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(178, 1666868185, 1, 'admin', 5, '5', 'Пост о чём-то', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(179, 1666868185, 1, 'admin', 27, '5', 'Пост о чём-то', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(180, 1666869647, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(181, 1666869687, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(182, 1666870221, 1, 'admin', 27, '2', 'Блоги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(183, 1666870227, 1, 'admin', 16, '3', 'Все блоги', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(184, 1666870509, 1, 'admin', 27, '5', 'Пост о чём-то', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(185, 1666871712, 1, 'admin', 94, '5', 'Пост о чём-то Копия', 'Duplicate resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(186, 1666871713, 1, 'admin', 3, '7', 'Пост о чём-то Копия', 'Viewing data for resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(187, 1666871714, 1, 'admin', 27, '7', 'Пост о чём-то Копия', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(188, 1666871717, 1, 'admin', 5, '7', 'Пост о чём-то Копия', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(189, 1666871717, 1, 'admin', 27, '7', 'Пост о чём-то Копия', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(190, 1666890539, 1, 'admin', 16, '3', 'Все блоги', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(191, 1666890558, 1, 'admin', 26, '-', '-', 'Refreshing site', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(192, 1666890564, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(193, 1666890600, 1, 'admin', 27, '7', 'Пост о чём-то Копия', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(194, 1666890767, 1, 'admin', 22, '12', 'DocLister', 'Editing Snippet', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(195, 1666890774, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(196, 1666890890, 1, 'admin', 76, '-', '-', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(197, 1666890923, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(198, 1666890931, 1, 'admin', 30, '-', '-', 'Saving settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(199, 1666890941, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(200, 1666890949, 1, 'admin', 30, '-', '-', 'Saving settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(201, 1666890957, 1, 'admin', 26, '-', '-', 'Refreshing site', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(202, 1666891097, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(203, 1666891426, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(204, 1666891800, 1, 'admin', 114, '-', '-', 'View event log', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(205, 1666891802, 1, 'admin', 115, '48', '-', 'View event log details', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(206, 1666892164, 1, 'admin', 114, '-', '-', 'View event log', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(207, 1666892166, 1, 'admin', 116, '-', '-', 'Delete event log', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(208, 1666892166, 1, 'admin', 114, '-', '-', 'View event log', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(209, 1666892170, 1, 'admin', 114, '-', '-', 'View event log', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(210, 1666892310, 1, 'admin', 26, '-', '-', 'Refreshing site', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(211, 1666892337, 1, 'admin', 27, '2', 'Блоги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(212, 1666892349, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(213, 1666892365, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(214, 1666892381, 1, 'admin', 27, '2', 'Блоги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(215, 1666895021, 1, 'admin', 27, '7', 'Пост о чём-то Копия', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(216, 1666895129, 1, 'admin', 5, '7', 'В «Пятёрочках» и «Перекрёстках» начнут выписывать повестки на кассах', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(217, 1666895129, 1, 'admin', 27, '7', 'В «Пятёрочках» и «Перекрёстках» начнут выписывать повестки на кассах', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(218, 1666895140, 1, 'admin', 27, '5', 'Пост о чём-то', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(219, 1666895232, 1, 'admin', 5, '5', 'У спящих пассажиров поездов не будут проверять билеты', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(220, 1666895232, 1, 'admin', 27, '5', 'У спящих пассажиров поездов не будут проверять билеты', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(221, 1666895329, 1, 'admin', 5, '7', 'В «Пятёрочках» и «Перекрёстках» начнут выписывать повестки на кассах', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(222, 1666895330, 1, 'admin', 27, '7', 'В «Пятёрочках» и «Перекрёстках» начнут выписывать повестки на кассах', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(223, 1666895373, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(224, 1666895484, 1, 'admin', 5, '-', 'На Урале арестовали предпринимателя, продававшего безалкогольную водку', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(225, 1666895484, 1, 'admin', 27, '8', 'На Урале арестовали предпринимателя, продававшего безалкогольную водку', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(226, 1666895531, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(227, 1666895615, 1, 'admin', 5, '-', 'Финские пограничники отнимают у россиян зажигалки и сливают бензин', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(228, 1666895616, 1, 'admin', 27, '9', 'Финские пограничники отнимают у россиян зажигалки и сливают бензин', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(229, 1666895630, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(230, 1666895726, 1, 'admin', 5, '-', 'Новым законом о запрете пропаганды ЛГБТ вводится понятие «голубого уровня опасности»', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(231, 1666895727, 1, 'admin', 27, '10', 'Новым законом о запрете пропаганды ЛГБТ вводится понятие «голубого уровня опасности»', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(232, 1666895807, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(233, 1666896124, 1, 'admin', 5, '-', 'В ЗАГСах марш Мендельсона заменят «Прощанием славянки»', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36');
INSERT INTO `i6cn_manager_log` (`id`, `timestamp`, `internalKey`, `username`, `action`, `itemid`, `itemname`, `message`, `ip`, `useragent`) VALUES
(234, 1666896124, 1, 'admin', 27, '11', 'В ЗАГСах марш Мендельсона заменят «Прощанием славянки»', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(235, 1666896138, 1, 'admin', 5, '11', 'В ЗАГСах марш Мендельсона заменят «Прощанием славянки»', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(236, 1666896139, 1, 'admin', 27, '11', 'В ЗАГСах марш Мендельсона заменят «Прощанием славянки»', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(237, 1666896198, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(238, 1666896473, 1, 'admin', 5, '-', 'В Москве машинист метрополитена на поезде скрылся от сотрудника военкомата', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(239, 1666896474, 1, 'admin', 27, '12', 'В Москве машинист метрополитена на поезде скрылся от сотрудника военкомата', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(240, 1666896558, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(241, 1666896628, 1, 'admin', 5, '-', 'Чернороссии быть: источники подтвердили подготовку к созданию Африканского федерального округа', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(242, 1666896628, 1, 'admin', 27, '13', 'Чернороссии быть: источники подтвердили подготовку к созданию Африканского федерального округа', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(243, 1666896836, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(244, 1666896906, 1, 'admin', 5, '-', 'Киргизия вошла в топ-3 стран по числу IT-специалистов', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(245, 1666896907, 1, 'admin', 27, '14', 'Киргизия вошла в топ-3 стран по числу IT-специалистов', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(246, 1666897172, 1, 'admin', 5, '14', 'Киргизия вошла в топ-3 стран по числу IT-специалистов', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(247, 1666897173, 1, 'admin', 27, '14', 'Киргизия вошла в топ-3 стран по числу IT-специалистов', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(248, 1666897273, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(249, 1666897545, 1, 'admin', 5, '-', 'Российские феминистки требуют мобилизации женщин наравне с мужчинами', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(250, 1666897545, 1, 'admin', 27, '15', 'Российские феминистки требуют мобилизации женщин наравне с мужчинами', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(251, 1666898028, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(252, 1666898231, 1, 'admin', 5, '-', 'В Магадане первый урок «Разговоров о важном» провёл вор в законе', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(253, 1666898232, 1, 'admin', 27, '16', 'В Магадане первый урок «Разговоров о важном» провёл вор в законе', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.3.886 Yowser/2.5 Safari/537.36'),
(254, 1666946046, 1, 'admin', 26, '-', '-', 'Refreshing site', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(255, 1666946080, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(256, 1666946097, 1, 'admin', 30, '-', '-', 'Saving settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(257, 1666946111, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(258, 1666946159, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(259, 1666946163, 1, 'admin', 26, '-', '-', 'Refreshing site', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(260, 1666946168, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(261, 1666946171, 1, 'admin', 30, '-', '-', 'Saving settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(262, 1666946197, 1, 'admin', 17, '-', '-', 'Editing settings', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(263, 1666952133, 1, 'admin', 76, '-', '-', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(264, 1666952135, 1, 'admin', 16, '7', 'Тег', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(265, 1666952138, 1, 'admin', 16, '6', 'Все теги', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(266, 1666952543, 1, 'admin', 27, '6', 'Какой-то тег', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(267, 1666952620, 1, 'admin', 5, '6', 'политика', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(268, 1666952620, 1, 'admin', 27, '6', 'политика', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(269, 1666952622, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(270, 1666952648, 1, 'admin', 5, '-', 'Общество', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(271, 1666952649, 1, 'admin', 27, '17', 'Общество', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(272, 1666952651, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(273, 1666952679, 1, 'admin', 5, '-', 'Мужчины', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(274, 1666952680, 1, 'admin', 27, '18', 'Мужчины', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(275, 1666952682, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(276, 1666952712, 1, 'admin', 5, '-', 'Женщина', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(277, 1666952713, 1, 'admin', 27, '19', 'Женщина', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(278, 1666952718, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(279, 1666952820, 1, 'admin', 5, '-', 'Криминал', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(280, 1666952820, 1, 'admin', 27, '20', 'Криминал', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(281, 1666952831, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(282, 1666952878, 1, 'admin', 5, '-', 'Бизнес', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(283, 1666952878, 1, 'admin', 27, '21', 'Бизнес', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(284, 1666952889, 1, 'admin', 27, '6', 'политика', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(285, 1666952893, 1, 'admin', 5, '6', 'Политика', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(286, 1666952893, 1, 'admin', 27, '6', 'Политика', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(287, 1666952911, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(288, 1666953021, 1, 'admin', 5, '-', 'Газ', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(289, 1666953022, 1, 'admin', 27, '22', 'Газ', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(290, 1666953057, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(291, 1666953075, 1, 'admin', 5, '-', 'Брак', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(292, 1666953076, 1, 'admin', 27, '23', 'Брак', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(293, 1666953118, 1, 'admin', 27, '23', 'Брак', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(294, 1666953740, 1, 'admin', 301, '4', 'Теги', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(295, 1666953783, 1, 'admin', 27, '7', 'В «Пятёрочках» и «Перекрёстках» начнут выписывать повестки на кассах', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(296, 1666953840, 1, 'admin', 27, '7', 'В «Пятёрочках» и «Перекрёстках» начнут выписывать повестки на кассах', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(297, 1666953851, 1, 'admin', 27, '7', 'В «Пятёрочках» и «Перекрёстках» начнут выписывать повестки на кассах', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(298, 1666954003, 1, 'admin', 16, '7', 'Тег', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(299, 1666954109, 1, 'admin', 27, '7', 'В «Пятёрочках» и «Перекрёстках» начнут выписывать повестки на кассах', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(300, 1666954219, 1, 'admin', 27, '5', 'У спящих пассажиров поездов не будут проверять билеты', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(301, 1666954234, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(302, 1666954256, 1, 'admin', 5, '-', 'Путешествие', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(303, 1666954256, 1, 'admin', 27, '24', 'Путешествие', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(304, 1666954277, 1, 'admin', 5, '5', 'У спящих пассажиров поездов не будут проверять билеты', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(305, 1666954277, 1, 'admin', 27, '5', 'У спящих пассажиров поездов не будут проверять билеты', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(306, 1666954278, 1, 'admin', 27, '8', 'На Урале арестовали предпринимателя, продававшего безалкогольную водку', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(307, 1666954298, 1, 'admin', 5, '8', 'На Урале арестовали предпринимателя, продававшего безалкогольную водку', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(308, 1666954298, 1, 'admin', 27, '8', 'На Урале арестовали предпринимателя, продававшего безалкогольную водку', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(309, 1666954300, 1, 'admin', 27, '9', 'Финские пограничники отнимают у россиян зажигалки и сливают бензин', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(310, 1666954315, 1, 'admin', 5, '9', 'Финские пограничники отнимают у россиян зажигалки и сливают бензин', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(311, 1666954315, 1, 'admin', 27, '9', 'Финские пограничники отнимают у россиян зажигалки и сливают бензин', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(312, 1666954316, 1, 'admin', 27, '10', 'Новым законом о запрете пропаганды ЛГБТ вводится понятие «голубого уровня опасности»', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(313, 1666954332, 1, 'admin', 5, '10', 'Новым законом о запрете пропаганды ЛГБТ вводится понятие «голубого уровня опасности»', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(314, 1666954333, 1, 'admin', 27, '10', 'Новым законом о запрете пропаганды ЛГБТ вводится понятие «голубого уровня опасности»', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(315, 1666954334, 1, 'admin', 27, '11', 'В ЗАГСах марш Мендельсона заменят «Прощанием славянки»', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(316, 1666954356, 1, 'admin', 5, '11', 'В ЗАГСах марш Мендельсона заменят «Прощанием славянки»', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(317, 1666954356, 1, 'admin', 27, '11', 'В ЗАГСах марш Мендельсона заменят «Прощанием славянки»', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(318, 1666954358, 1, 'admin', 27, '12', 'В Москве машинист метрополитена на поезде скрылся от сотрудника военкомата', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(319, 1666954370, 1, 'admin', 5, '12', 'В Москве машинист метрополитена на поезде скрылся от сотрудника военкомата', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(320, 1666954370, 1, 'admin', 27, '12', 'В Москве машинист метрополитена на поезде скрылся от сотрудника военкомата', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(321, 1666954371, 1, 'admin', 27, '13', 'Чернороссии быть: источники подтвердили подготовку к созданию Африканского федерального округа', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(322, 1666954383, 1, 'admin', 5, '13', 'Чернороссии быть: источники подтвердили подготовку к созданию Африканского федерального округа', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(323, 1666954383, 1, 'admin', 27, '13', 'Чернороссии быть: источники подтвердили подготовку к созданию Африканского федерального округа', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(324, 1666954385, 1, 'admin', 27, '14', 'Киргизия вошла в топ-3 стран по числу IT-специалистов', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(325, 1666954406, 1, 'admin', 5, '14', 'Киргизия вошла в топ-3 стран по числу IT-специалистов', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(326, 1666954407, 1, 'admin', 27, '14', 'Киргизия вошла в топ-3 стран по числу IT-специалистов', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(327, 1666954407, 1, 'admin', 27, '15', 'Российские феминистки требуют мобилизации женщин наравне с мужчинами', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(328, 1666954423, 1, 'admin', 5, '15', 'Российские феминистки требуют мобилизации женщин наравне с мужчинами', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(329, 1666954424, 1, 'admin', 27, '15', 'Российские феминистки требуют мобилизации женщин наравне с мужчинами', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(330, 1666954425, 1, 'admin', 27, '16', 'В Магадане первый урок «Разговоров о важном» провёл вор в законе', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(331, 1666954435, 1, 'admin', 5, '16', 'В Магадане первый урок «Разговоров о важном» провёл вор в законе', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(332, 1666954435, 1, 'admin', 27, '16', 'В Магадане первый урок «Разговоров о важном» провёл вор в законе', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(333, 1666954444, 1, 'admin', 27, '3', 'Теги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(334, 1666956874, 1, 'admin', 301, '4', 'Теги', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(335, 1666962219, 1, 'admin', 27, '7', 'В «Пятёрочках» и «Перекрёстках» начнут выписывать повестки на кассах', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(336, 1666967760, 1, 'admin', 26, '-', '-', 'Refreshing site', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(337, 1666967807, 1, 'admin', 27, '1', 'Главная страница блога', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(338, 1666967814, 1, 'admin', 5, '1', 'Главная', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(339, 1666967815, 1, 'admin', 27, '1', 'Главная', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(340, 1666975451, 1, 'admin', 27, '1', 'Главная', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(341, 1666975465, 1, 'admin', 5, '1', 'Главная', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(342, 1666975465, 1, 'admin', 27, '1', 'Главная', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(343, 1666975467, 1, 'admin', 27, '2', 'Блоги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(344, 1666975509, 1, 'admin', 5, '2', 'Блоги', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(345, 1666975509, 1, 'admin', 27, '2', 'Блоги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(346, 1666975511, 1, 'admin', 27, '3', 'Теги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(347, 1666975543, 1, 'admin', 5, '3', 'Теги', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(348, 1666975543, 1, 'admin', 27, '3', 'Теги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(349, 1666975546, 1, 'admin', 27, '4', 'Контакты', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(350, 1666975561, 1, 'admin', 5, '4', 'Контакты', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(351, 1666975561, 1, 'admin', 27, '4', 'Контакты', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(352, 1666975570, 1, 'admin', 27, '7', 'В «Пятёрочках» и «Перекрёстках» начнут выписывать повестки на кассах', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(353, 1666975600, 1, 'admin', 5, '7', 'В «Пятёрочках» и «Перекрёстках» начнут выписывать повестки на кассах', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(354, 1666975601, 1, 'admin', 27, '7', 'В «Пятёрочках» и «Перекрёстках» начнут выписывать повестки на кассах', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(355, 1666975603, 1, 'admin', 27, '5', 'У спящих пассажиров поездов не будут проверять билеты', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(356, 1666975627, 1, 'admin', 5, '5', 'У спящих пассажиров поездов не будут проверять билеты', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(357, 1666975628, 1, 'admin', 27, '5', 'У спящих пассажиров поездов не будут проверять билеты', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(358, 1666975629, 1, 'admin', 27, '8', 'На Урале арестовали предпринимателя, продававшего безалкогольную водку', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(359, 1666975654, 1, 'admin', 5, '8', 'На Урале арестовали предпринимателя, продававшего безалкогольную водку', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(360, 1666975655, 1, 'admin', 27, '8', 'На Урале арестовали предпринимателя, продававшего безалкогольную водку', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(361, 1666975656, 1, 'admin', 27, '9', 'Финские пограничники отнимают у россиян зажигалки и сливают бензин', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(362, 1666975669, 1, 'admin', 5, '9', 'Финские пограничники отнимают у россиян зажигалки и сливают бензин', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(363, 1666975670, 1, 'admin', 27, '9', 'Финские пограничники отнимают у россиян зажигалки и сливают бензин', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(364, 1666975671, 1, 'admin', 27, '10', 'Новым законом о запрете пропаганды ЛГБТ вводится понятие «голубого уровня опасности»', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(365, 1666975685, 1, 'admin', 5, '10', 'Новым законом о запрете пропаганды ЛГБТ вводится понятие «голубого уровня опасности»', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(366, 1666975685, 1, 'admin', 27, '10', 'Новым законом о запрете пропаганды ЛГБТ вводится понятие «голубого уровня опасности»', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(367, 1666975687, 1, 'admin', 27, '11', 'В ЗАГСах марш Мендельсона заменят «Прощанием славянки»', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(368, 1666975698, 1, 'admin', 5, '11', 'В ЗАГСах марш Мендельсона заменят «Прощанием славянки»', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(369, 1666975699, 1, 'admin', 27, '11', 'В ЗАГСах марш Мендельсона заменят «Прощанием славянки»', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(370, 1666975700, 1, 'admin', 27, '12', 'В Москве машинист метрополитена на поезде скрылся от сотрудника военкомата', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(371, 1666975724, 1, 'admin', 5, '12', 'В Москве машинист метрополитена на поезде скрылся от сотрудника военкомата', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(372, 1666975724, 1, 'admin', 27, '12', 'В Москве машинист метрополитена на поезде скрылся от сотрудника военкомата', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(373, 1666975726, 1, 'admin', 27, '13', 'Чернороссии быть: источники подтвердили подготовку к созданию Африканского федерального округа', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(374, 1666975753, 1, 'admin', 5, '13', 'Чернороссии быть: источники подтвердили подготовку к созданию Африканского федерального округа', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(375, 1666975753, 1, 'admin', 27, '13', 'Чернороссии быть: источники подтвердили подготовку к созданию Африканского федерального округа', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(376, 1666975755, 1, 'admin', 27, '14', 'Киргизия вошла в топ-3 стран по числу IT-специалистов', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(377, 1666975786, 1, 'admin', 5, '14', 'Киргизия вошла в топ-3 стран по числу IT-специалистов', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(378, 1666975786, 1, 'admin', 27, '14', 'Киргизия вошла в топ-3 стран по числу IT-специалистов', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(379, 1666975788, 1, 'admin', 27, '15', 'Российские феминистки требуют мобилизации женщин наравне с мужчинами', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(380, 1666975804, 1, 'admin', 5, '15', 'Российские феминистки требуют мобилизации женщин наравне с мужчинами', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(381, 1666975804, 1, 'admin', 27, '15', 'Российские феминистки требуют мобилизации женщин наравне с мужчинами', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(382, 1666975806, 1, 'admin', 27, '16', 'В Магадане первый урок «Разговоров о важном» провёл вор в законе', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(383, 1666975816, 1, 'admin', 5, '16', 'В Магадане первый урок «Разговоров о важном» провёл вор в законе', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(384, 1666975816, 1, 'admin', 27, '16', 'В Магадане первый урок «Разговоров о важном» провёл вор в законе', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(385, 1666977952, 1, 'admin', 19, '-', 'Новый шаблон', 'Creating a new template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(386, 1666977978, 1, 'admin', 20, '-', 'Карта сайта HTML', 'Saving template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(387, 1666977979, 1, 'admin', 16, '8', 'Карта сайта HTML', 'Editing template', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(388, 1666978061, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(389, 1666978073, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(390, 1666978073, 1, 'admin', 67, '-', '-', 'Removing locks', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(391, 1666978079, 1, 'admin', 5, '-', 'Карта сайта HTML', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(392, 1666978080, 1, 'admin', 27, '25', 'Карта сайта HTML', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(393, 1666978260, 1, 'admin', 22, '9', 'DLSitemap', 'Editing Snippet', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(394, 1666978942, 1, 'admin', 27, '7', 'В «Пятёрочках» и «Перекрёстках» начнут выписывать повестки на кассах', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(395, 1666980243, 1, 'admin', 112, '1', 'Extras', 'Execute module', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(396, 1666980269, 1, 'admin', 76, '-', 'Extras', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(397, 1666980274, 1, 'admin', 80, '1', 'head_tags', 'Deleting Chunk (HTML Snippet)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(398, 1666980274, 1, 'admin', 76, '-', '-', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(399, 1666980275, 1, 'admin', 76, '-', '-', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(400, 1666980277, 1, 'admin', 76, '-', '-', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(401, 1666980282, 1, 'admin', 301, '2', 'Meta description', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(402, 1666980287, 1, 'admin', 76, '-', '-', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(403, 1666980292, 1, 'admin', 303, '5', 'keywords', 'Delete Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(404, 1666980293, 1, 'admin', 76, '-', '-', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(405, 1666980294, 1, 'admin', 76, '-', '-', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(406, 1666980298, 1, 'admin', 303, '6', 'noIndex', 'Delete Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(407, 1666980299, 1, 'admin', 76, '-', '-', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(408, 1666980300, 1, 'admin', 76, '-', '-', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(409, 1666980303, 1, 'admin', 303, '7', 'ogimage', 'Delete Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(410, 1666980303, 1, 'admin', 76, '-', '-', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(411, 1666980304, 1, 'admin', 76, '-', '-', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(412, 1666980306, 1, 'admin', 303, '11', 'title', 'Delete Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(413, 1666980307, 1, 'admin', 76, '-', '-', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(414, 1666980307, 1, 'admin', 76, '-', '-', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(415, 1666980310, 1, 'admin', 301, '8', 'Период обновления', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(416, 1666980416, 1, 'admin', 302, '8', 'Период обновления', 'Save Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(417, 1666980417, 1, 'admin', 301, '8', 'Период обновления', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(418, 1666980421, 1, 'admin', 301, '8', 'Период обновления', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(419, 1666980425, 1, 'admin', 301, '9', 'Отображение в sitemap', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(420, 1666980479, 1, 'admin', 302, '9', 'Отображение в sitemap', 'Save Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(421, 1666980480, 1, 'admin', 301, '9', 'Отображение в sitemap', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(422, 1666980495, 1, 'admin', 301, '10', 'Приоритет страницы', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(423, 1666980639, 1, 'admin', 302, '10', 'Приоритет страницы', 'Save Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(424, 1666980640, 1, 'admin', 301, '10', 'Приоритет страницы', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(425, 1666980645, 1, 'admin', 302, '9', 'Отображение в sitemap', 'Save Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(426, 1666980646, 1, 'admin', 301, '9', 'Отображение в sitemap', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(427, 1666980648, 1, 'admin', 76, '-', '-', 'Element management', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(428, 1666980653, 1, 'admin', 27, '7', 'В «Пятёрочках» и «Перекрёстках» начнут выписывать повестки на кассах', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(429, 1666980759, 1, 'admin', 120, '-', '-', 'Idle (unknown)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(430, 1666980767, 1, 'admin', 120, '-', '-', 'Idle (unknown)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(431, 1666980769, 1, 'admin', 27, '7', 'В «Пятёрочках» и «Перекрёстках» начнут выписывать повестки на кассах', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(432, 1666981083, 1, 'admin', 120, '-', '-', 'Idle (unknown)', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(433, 1666981309, 1, 'admin', 27, '1', 'Главная', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(434, 1666981315, 1, 'admin', 5, '1', 'Главная', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(435, 1666981316, 1, 'admin', 27, '1', 'Главная', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36');
INSERT INTO `i6cn_manager_log` (`id`, `timestamp`, `internalKey`, `username`, `action`, `itemid`, `itemname`, `message`, `ip`, `useragent`) VALUES
(436, 1666981350, 1, 'admin', 301, '9', 'Отображение в sitemap', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(437, 1666981358, 1, 'admin', 302, '9', 'Отображение в sitemap', 'Save Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(438, 1666981359, 1, 'admin', 301, '9', 'Отображение в sitemap', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(439, 1666981367, 1, 'admin', 302, '9', 'Отображение в sitemap', 'Save Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(440, 1666981368, 1, 'admin', 301, '9', 'Отображение в sitemap', 'Edit Template Variable', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(441, 1666981371, 1, 'admin', 27, '1', 'Главная', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(442, 1666981376, 1, 'admin', 5, '1', 'Главная', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(443, 1666981377, 1, 'admin', 27, '1', 'Главная', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(444, 1666981379, 1, 'admin', 27, '2', 'Блоги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(445, 1666981386, 1, 'admin', 5, '2', 'Блоги', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(446, 1666981387, 1, 'admin', 27, '2', 'Блоги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(447, 1666981555, 1, 'admin', 5, '2', 'Блоги', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(448, 1666981556, 1, 'admin', 27, '2', 'Блоги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(449, 1666981560, 1, 'admin', 5, '2', 'Блоги', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(450, 1666981560, 1, 'admin', 27, '2', 'Блоги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(451, 1666981565, 1, 'admin', 5, '2', 'Блоги', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(452, 1666981565, 1, 'admin', 27, '2', 'Блоги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(453, 1666981573, 1, 'admin', 5, '1', 'Главная', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(454, 1666981573, 1, 'admin', 27, '1', 'Главная', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(455, 1666981596, 1, 'admin', 27, '3', 'Теги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(456, 1666981607, 1, 'admin', 5, '3', 'Теги', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(457, 1666981608, 1, 'admin', 27, '3', 'Теги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(458, 1666981627, 1, 'admin', 5, '3', 'Теги', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(459, 1666981627, 1, 'admin', 27, '3', 'Теги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(460, 1666981873, 1, 'admin', 5, '1', 'Главная', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(461, 1666981873, 1, 'admin', 27, '1', 'Главная', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(462, 1666981884, 1, 'admin', 5, '1', 'Главная', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(463, 1666981884, 1, 'admin', 27, '1', 'Главная', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(464, 1666981888, 1, 'admin', 27, '2', 'Блоги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(465, 1666981892, 1, 'admin', 27, '3', 'Теги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(466, 1666981922, 1, 'admin', 5, '3', 'Теги', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(467, 1666981922, 1, 'admin', 27, '3', 'Теги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(468, 1666981939, 1, 'admin', 5, '3', 'Теги', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(469, 1666981939, 1, 'admin', 27, '3', 'Теги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(470, 1666981948, 1, 'admin', 5, '3', 'Теги', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(471, 1666981949, 1, 'admin', 27, '3', 'Теги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(472, 1666982457, 1, 'admin', 5, '3', 'Теги', 'Saving resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36'),
(473, 1666982458, 1, 'admin', 27, '3', 'Теги', 'Editing resource', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.124 YaBrowser/22.9.4.863 Yowser/2.5 Safari/537.36');

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_membergroup_access`
--

CREATE TABLE `i6cn_membergroup_access` (
  `id` int NOT NULL,
  `membergroup` int NOT NULL DEFAULT '0',
  `documentgroup` int NOT NULL DEFAULT '0',
  `context` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_membergroup_names`
--

CREATE TABLE `i6cn_membergroup_names` (
  `id` int NOT NULL,
  `name` varchar(245) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_member_groups`
--

CREATE TABLE `i6cn_member_groups` (
  `id` int NOT NULL,
  `user_group` int NOT NULL DEFAULT '0',
  `member` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_migrations_install`
--

CREATE TABLE `i6cn_migrations_install` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `i6cn_site_content`
--

INSERT INTO `i6cn_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `hide_from_tree`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `alias_visible`) VALUES
(1, 'document', 'text/html', 'Главная', '', '', 'minimal-base', '', 1, 0, 0, 0, 0, '', '<h3>Install Successful!</h3>\r\n<p>You have successfully installed Evolution CMS.</p>\r\n<h3>Getting Help</h3>\r\n<p>The <a href=\"http://evo.im/\" target=\"_blank\" rel=\"noopener\">Evolution CMS Community</a> provides a great starting point to learn all things Evolution CMS, or you can also <a href=\"http://evo.im/\">see some great learning resources</a> (books, tutorials, blogs and screencasts).</p>\r\n<p>Welcome to Evolution CMS!</p>', 1, 2, 0, 1, 1, 1, 1666264537, 1, 1666981884, 0, 0, 0, 1130304721, 1, '', 0, 0, 0, 0, 0, 1),
(2, 'document', 'text/html', 'Блоги', '', '', 'blogs', '', 1, 0, 0, 0, 1, '', '', 1, 3, 1, 1, 1, 1, 1666612248, 1, 1666981565, 0, 0, 0, 1666612248, 1, '', 0, 0, 0, 0, 0, 1),
(3, 'document', 'text/html', 'Теги', '', '', 'tags', '', 1, 0, 0, 0, 1, '', '', 1, 6, 2, 1, 1, 1, 1666612269, 1, 1666982457, 0, 0, 0, 1666612269, 1, '', 0, 0, 0, 0, 0, 1),
(4, 'document', 'text/html', 'Контакты', '', '', 'contacts', '', 1, 0, 0, 0, 0, '', '<p>Телефон: +7964-667-85-34</p>\r\n<p>Почта: <a href=\"mailto:example@example.com\">example@example.com</a></p>\r\n<p>Соцсети: <a href=\"https://www.youtube.com/evolutionlessons\">https://www.youtube.com/evolutionlessons</a></p>\r\n<p>Ответственный за разработку: <a href=\"https://github.com/0test\">1px</a></p>', 1, 5, 3, 1, 1, 1, 1666612281, 1, 1666975561, 0, 0, 0, 1666612281, 1, '', 0, 0, 0, 0, 0, 1),
(5, 'document', 'text/html', 'У спящих пассажиров поездов не будут проверять билеты', '', '', 'u-spyashhih-passazhirov-poezdov-ne-budut-proveryat-bilety', '', 1, 0, 0, 2, 0, 'Нововведения объясняют тем, что контролеры зачастую будят людей, уставших после рабочей смены', '<p><strong>Руководство РЖД разработало поправки к внутренним регламентам, согласно которым контролёры и проводники больше не смогут будить спящих пассажиров в вагонах электричек и обычных поездов с целью проверки проездных билетов. Кроме того, предполагается ввести штраф в размере 500 рублей для &laquo;имитирующих сон в целях бесплатного проезда&raquo;.</strong></p>\r\n<p>Нововведения объясняют тем, что контролеры зачастую будят людей, уставших после рабочей смены</p>\r\n<p>&laquo;Контролёры и проводники отвлекают от заслуженного отдыха просто для того, чтобы посмотреть билет. Знаете, это очень неприятно, &ndash; говорит глава РЖД Олег Белозёров. &ndash; Ехал я как-то в Петербурге от станции Ораниенбаум до Балтийского вокзала, задремал. Чувствую, кто-то трясет. Сначала подумал, может с поездом что? Или кто под рельсы попал, животное, человек там &ndash; такое часто бывает. А это контролёр меня будит и просит билет, представляете? Это неправильно. Такого быть не должно&raquo;.</p>', 1, 4, 1, 1, 1, 1, 1666612298, 1, 1666975627, 0, 0, 0, 1666612298, 1, '', 0, 0, 0, 0, 0, 1),
(6, 'document', 'text/html', 'Политика', '', '', 'politika', '', 1, 0, 0, 3, 0, 'Политика — искусство допустимого. История указывает на манипуляции и агрессивность политики многих правителей', '', 1, 7, 0, 1, 1, 1, 1666612307, 1, 1666952893, 0, 0, 0, 1666612307, 1, '', 0, 0, 0, 0, 0, 1),
(7, 'document', 'text/html', 'В «Пятёрочках» и «Перекрёстках» начнут выписывать повестки на кассах', '', '', 'v-pyatyorochkah-i-perekryostkah-nachnut-vypisyvat-povestki-na-kassah', '', 1, 0, 0, 2, 0, 'Новшество стало возможным, поскольку при покупке алкоголя и табака зачастую требуется предъявить паспорт или иное удостоверение личности.', '<p>Компания X5 Group заключила партнёрское соглашение с Минобороны &mdash; отныне сотрудники на кассах имеют право выписывать военнообязанным мужчинам повестки. Новшество стало возможным, поскольку при покупке алкоголя и табака зачастую требуется предъявить паспорт или иное удостоверение личности.</p>\r\n<p>К началу призывной компании 1 ноября ритейл уже готов, о чем гласит внутренняя информационная рассылка в компании. Информацию подтверждают дирекции розничного обслуживания франчайзи супермаркетов &laquo;Пятёрочка&raquo; и &laquo;Перекрёсток&raquo;.</p>\r\n<p>Согласно инструкции, кассирам надлежит пробивать в чек товар &laquo;ПОВЕСТКА ЧАСТМОБ 2022 1 шт&raquo; по штрих-коду, расположенному около сканера товаров. В бланке чека будет автоматически пропечатано требование явиться в ближайший к магазину военный комиссариат.</p>\r\n<p>Персональные данные призывника будут заполняться автоматически, по скидочной карте, либо вручную, исходя из информации в предъявленном удостоверении. Камеры на кассовой зоне в присутствии свидетелей &ndash; кассира и охранника &ndash; зафиксируют факт получения повестки. По окончании рабочего дня реестр выписанных повесток за текущий день будет автоматически передаваться в Генштаб.</p>', 1, 4, 0, 1, 1, 1, 1666871712, 1, 1666975600, 0, 0, 0, 1666871717, 1, '', 0, 0, 0, 0, 0, 1),
(8, 'document', 'text/html', 'На Урале арестовали предпринимателя, продававшего безалкогольную водку', '', '', 'na-urale-arestovali-predprinimatelya-prodavavshego-bezalkogolnuyu-vodku', '', 1, 0, 0, 2, 0, 'Согласно сообщениям потерпевших, выпивая следующие после 100 грамм рюмки, они не ощущали состояния дальнейшего опьянения. ', '<p><strong>Полиция Чебаркульского района Челябинской области возбудила уголовное дело против предпринимателя Иванова В.В., занимающегося реализацией спиртных напитков населению. Владельца алкомаркета и бара обвиняют в оказании услуг ненадлежащего качества населению.&nbsp;</strong></p>\r\n<p>Согласно сообщениям потерпевших, выпивая следующие после 100 грамм рюмки, они не ощущали состояния дальнейшего опьянения.&nbsp;</p>\r\n<p>&laquo;Действуя исключительно из преступных побуждений, Иванов подменял крепкие спиртные напитки посетителям бара водой, при этом взимал ту же оплату. В итоге посетители вместо сорокаградусного алкоголя получали обычную воду и уходили домой в трезвом состоянии&raquo;, &ndash; сообщили в пресс-службе МВД.&nbsp;</p>\r\n<p>Предприниматель сознался в содеянном, уточнив, что сам являлся алкоголиком в прошлом, но после вступления в религиозную секту бросил пить и решил приобщить к трезвому образу жизни горожан. Мужчина закупал крепкие спиртные напитки, выливал их, а потом заполнял ёмкости простой водой. Такие действия грозят ему пятилетним тюремным заключением.&nbsp; &nbsp;</p>', 1, 4, 2, 1, 1, 1, 1666895484, 1, 1666975654, 0, 0, 0, 1666895483, 1, '', 0, 0, 0, 0, 0, 1),
(9, 'document', 'text/html', 'Финские пограничники отнимают у россиян зажигалки и сливают бензин', '', '', 'finskie-pogranichniki-otnimayut-u-rossiyan-zazhigalki-i-slivayut-benzin', '', 1, 0, 0, 2, 0, 'Сотрудники таможни также требут слить топливо из зажигалок, включая и бензиновые, и газовые. Неразборные зажигалки положено сдать, оплатив сбор за утилизацию в размере 24 евро за единицу.', '<p><strong>На автомобильном погранпереходе&nbsp;Сювяоро &ndash; Париккала финские пограничники ограничили вывоз топлива в Россию. Как сообщают вернувшиеся в страну россияне, пограничные службы организовали сбор излишков топлива с российских автомобилей.&nbsp;</strong></p>\r\n<p>На легковых автомобилях разрешено оставить в бензобаке 4 литра топлива, на грузовых &ndash; в зависимости от тоннажа &ndash; от 5 до 40 литров. Этого объёма достаточно, чтобы добраться до ближайшей заправки на российской территории, если автомобиль идеально исправен, а водитель придерживается спокойного стиля вождения.</p>\r\n<p>Представитель таможни прапорщик Вильям Кельпийоки объяснил новые ограничения &laquo;распоряжением по линии министерства энергетики&raquo; и &laquo;санкциями Евросоюза&raquo;.</p>\r\n<p>Сотрудники таможни также требут слить топливо из зажигалок, включая и бензиновые, и газовые. Неразборные зажигалки положено сдать, оплатив сбор за утилизацию в размере 24 евро за единицу.</p>', 1, 4, 3, 1, 1, 1, 1666895615, 1, 1666975669, 0, 0, 0, 1666895615, 1, '', 0, 0, 0, 0, 0, 1),
(10, 'document', 'text/html', 'Новым законом о запрете пропаганды ЛГБТ вводится понятие «голубого уровня опасности»', '', '', 'novym-zakonom-o-zaprete-propagandy-lgbt-vvoditsya-ponyatie-golubogo-urovnya-opasnosti', '', 1, 0, 0, 2, 0, 'Голубой уровень опасности будет вводиться местными надзорными органами на срок не более чем на 15 суток на всей территории субъекта федерации', '<p><strong>В сеть утёк недавно принятый новый закон о запрете ЛГБТ-пропаганды. Подлинность текста уже подтвердили в Думе, уточнив, что будут разбираться, как документ попал в сеть в условиях запрета на публикацию принятых законов.</strong></p>\r\n<p>Пользователи обратили внимание на то, что законопроект предусматривает понятие &laquo;голубого уровня опасности&raquo;. Новый цветовой код будет объявляться в случае появления опасности информационной атаки со стороны ЛГБТ-сообщества даже в том случае, если эта информация пока не подтверждена.</p>\r\n<p>&laquo;В таких ситуациях лучше перебдеть, чем потом краснеть&raquo;, &ndash; заметил один из депутатов.</p>\r\n<p>Голубой уровень опасности будет вводиться местными надзорными органами на срок не более чем на 15 суток на всей территории субъекта федерации, подвергшегося информационной атаке. Отменить или повысить уровень опасности может губернатор региона или полномочный представитель федеральных властей.</p>', 1, 4, 4, 1, 1, 1, 1666895726, 1, 1666975685, 0, 0, 0, 1666895726, 1, '', 0, 0, 0, 0, 0, 1),
(11, 'document', 'text/html', 'В ЗАГСах марш Мендельсона заменят «Прощанием славянки»', '', '', 'v-zagsah-marsh-mendelsona-zamenyat-proshhaniem-slavyanki', '', 1, 0, 0, 2, 0, 'Ведомство рекомендовало женихам приходить на обряд бракосочетания в военной форме', '<p>Всероссийский союз бракосочетателей обратился в Минкульт с просьбой предложить музыкальную альтернативу для торжественной церемонии. Чиновники ведомства после консультаций с ведущими композиторами страны рекомендовали использовать для бракосочетаний марш &laquo;Прощание славянки&raquo;.</p>\r\n<p>&laquo;В текущей ситуации логично заменить иностранный марш отечественным. В нашем случае мы имеем идентичный музыкальный жанр, но в случае с&nbsp;&laquo;Прощанием славянки&raquo; даже выходит более патриотический вариант &ndash; молодые люди заключают союз и тут же отправляются защищать Родину. Это очень романтично&raquo;, &ndash; прокомментировала нововведение представитель Минкульта.</p>\r\n<p>Также ведомство рекомендовало женихам приходить на обряд бракосочетания в военной форме, но в Минкульте уточнили, что инициатива носит добровольный характер.</p>\r\n<p>Марш &laquo;Прощание&nbsp;славянки&raquo; написал Василий Агапкин в 1912 году. В это время началась очередная Балканская война, и музыкант стал свидетелем того, как провожали женщины добровольцев, отправлявшихся на Балканы.</p>', 1, 4, 5, 1, 1, 1, 1666896124, 1, 1666975698, 0, 0, 0, 1666896124, 1, '', 0, 0, 0, 0, 0, 1),
(12, 'document', 'text/html', 'В Москве машинист метрополитена на поезде скрылся от сотрудника военкомата', '', '', 'v-moskve-mashinist-metropolitena-na-poezde-skrylsya-ot-sotrudnika-voenkomata', '', 1, 0, 0, 2, 0, 'По словам источника в руководстве подземки, камеры видеонаблюдения засекли Судакова в переходе на правительственную ветку Метро-2, дальше его след затерялся.', '<p><strong>Курьёзный случай произошел в столичной подземке под конец мобилизации: 40-летний машинист московского метро Николай Судаков избежал получения повестки, уехав от сотрудника военкомата на вверенном ему поезде.</strong></p>\r\n<p>Представители Минобороны решили вручить повестку машинисту прямо на рабочем месте. Они спустились на станцию метро Аминьевская, где и поджидали Судакова, чтобы встретиться с ним во время его обеденного перерыва. Когда поезд прибыл на станцию и сотрудник военкомата подошёл к кабине, чтобы отдать повестку, машинист ответил:&nbsp;&laquo;Спасибо, не интересует&raquo;,&nbsp;&ndash; после чего закрыл двери вагонов и передвинул ручку в положение &laquo;Ход&raquo;. Под нарастающий стук колёс и вой сквозняка поезд скрылся во тьме тоннеля метро, напоследок сверкнув буферными фонарями.</p>\r\n<p>Состав заехал в оборотный тупик, который используется для разворота поездов, после чего машинист покинул кабину и исчез в подземных коммуникациях метрополитена. По словам источника в руководстве подземки, камеры видеонаблюдения засекли Судакова в переходе на правительственную ветку Метро-2, дальше его след затерялся.&nbsp;</p>\r\n<p>В кабине машиниста сотрудники правоохранительных органов обнаружили записку с искренней просьбой не заводить уголовное дело за угон поезда и захват заложников. С учётом того, что за счёт пассажиров поезда план по мобилизации на участке был даже перевыполнен, заводить дело действительно не стали. Поиски пропавшего машиниста продолжаются до сих пор.</p>', 1, 4, 6, 1, 1, 1, 1666896473, 1, 1666975724, 0, 0, 0, 1666896473, 1, '', 0, 0, 0, 0, 0, 1),
(13, 'document', 'text/html', 'Чернороссии быть: источники подтвердили подготовку к созданию Африканского федерального округа', '', '', 'chernorossii-byt-istochniki-podtverdili-podgotovku-k-sozdaniyu-afrikanskogo-federalnogo-okruga', '', 1, 0, 0, 2, 0, 'Африканцы ожидают, что после вхождения в состав РФ они получат важные геополитические и стратегические преимущества – например, еду.', '<p><strong>Сразу три страны могут войти в создаваемый в России Африканский федеральный округ. Помимо Буркина-Фасо, где власть недавно взяли ополченцы Народного военного фронта &laquo;Благополучие и дружба&raquo;, это также Мали и Нигер.</strong></p>\r\n<p>Африканцы ожидают, что после вхождения в состав РФ они получат важные геополитические и стратегические преимущества &ndash; например, еду.</p>\r\n<p>&laquo;Ради этого мы даже готовы вновь учить марксизм-ленинизм, или что там сейчас в России учат, &ndash; говорит лидер малийского политического блока &laquo;За процветание и суверенитет&raquo; Чарльз Бходи. &ndash; Воссоединение с братским советским народом &ndash; то, что нам необходимо, начиная с 1990-х годов&raquo;</p>\r\n<p>Новый регион уже неофициально называют Чернороссией, но в Москве, по некоторым данным, недовольны таким вариантом, поскольку боятся задеть национальные чувства жителей будущих российских регионов. В документах эти земли называют &laquo;АФО&raquo;, а их возрождение планируют профинансировать за счёт ряда благополучных субъектов Федерации, не нуждающихся в финансовых вливаниях &ndash; к примеру, Ивановской или Орловской областей.</p>', 1, 4, 7, 1, 1, 1, 1666896628, 1, 1666975753, 0, 0, 0, 1666896627, 1, '', 0, 0, 0, 0, 0, 1),
(14, 'document', 'text/html', 'Киргизия вошла в топ-3 стран по числу IT-специалистов', '', '', 'kirgiziya-voshla-v-top-3-stran-po-chislu-it-specialistov', '', 1, 0, 0, 2, 0, 'Количество программистов, СММ-специалистов и графических дизайнеров в стране оценивается в 2,1 млн человек, сообщил верховный шаман Бишкека Абайбек Мамытов', '<p><strong>Кыргызстан впервые в своей 3000-летней истории занял третье место среди стран по числу работающих на их территории IT-специалистов. Их опередили только США и Армения.</strong></p>\r\n<p>Количество программистов, СММ-специалистов и графических дизайнеров в стране оценивается в 2,1 млн человек, сообщил верховный шаман Бишкека Абайбек Мамытов. В связи с этим правительство страны решило создать госкорпорацию &laquo;Кыргызтех&raquo;, которую возглавит экс-техдиректор &laquo;Яндекса&raquo; Елена Бунина. Фирма займётся разработкой и внедрением программных продуктов для доставки еды, вызова такси, оплаты коммунальных платежей и штрафов, а также для онлайн-связи с духами предков.</p>\r\n<p>О создании онлайн-приложения в ближайшее время заявил также &laquo;Кыргызбанк&raquo;. По случаю создания первой в стране IT-корпорации были устроены праздничные конные игры, соревнования по перетягиванию туши козла и конкурс по выпиванию кумыса.</p>\r\n<p>&laquo;Неожиданно для себя мы оказались в технологическом авангарде планеты, опередив таких гигантов, как Китай, Индия и Грузия. Нам нужно воспользоваться этим историческим шансом и создать всю необходимую нам инфраструктуру до того, как айтишники уедут. В настоящее время мы предоставляем им не только работу, но и бесплатные юрты, служебного коня и молельные коврики &ndash; всё, что угодно, лишь бы работали и не уезжали из страны&raquo;, - заявил Абайбек Мамытов.</p>', 1, 4, 8, 1, 1, 1, 1666896906, 1, 1666975786, 0, 0, 0, 1666896906, 1, '', 0, 0, 0, 0, 0, 1),
(15, 'document', 'text/html', 'Российские феминистки требуют мобилизации женщин наравне с мужчинами', '', '', 'rossijskie-feministki-trebuyut-mobilizacii-zhenshhin-naravne-s-muzhchinami', '', 1, 0, 0, 2, 0, 'Феминистки потребовали, чтобы не менее 50% мобилизованных граждан были женщинами, причём особо отмечена необходимость призывать их не только на гражданские и медицинские должности, но и в пехотные, танковые и военно-воздушные войска.', '<p><strong>Возле здания Минобороны в Москве прошёл несанкционированный митинг с участием 150 сторонниц феминистического движения. Демонстрантки требовали отменить дискриминационные положения указа &laquo;О частичной мобилизации&raquo; и призывать женщин наравне с мужчинами.</strong></p>\r\n<p>Участницы пикета отметили, что равноправие мужчин и женщин гарантировано Конституцией и закреплено федеральными законами. Согласно указу &laquo;О частичной мобилизации&raquo;, подписанному Владимиром Путиным, в первую очередь будут мобилизованы мужчины с опытом военной службы, что является нарушением положений основного закона. Феминистки потребовали, чтобы не менее 50% мобилизованных граждан были женщинами, причём особо отмечена необходимость призывать их не только на гражданские и медицинские должности, но и в пехотные, танковые и военно-воздушные войска.</p>\r\n<p>&laquo;Если власти нас не услышат, мы обратимся в Конституционный суд. Дискриминационный закон президента не даёт женщинам возможности быть воительницами, защитницами Родины. Все лавры победителей опять достанутся мужчинам, а о роли русской женщины в победе учебники умолчат. Мы не позволим этому случиться и будем отстаивать свои права до конца. Если военком откажется выписать нам повестки, мы возьмём военкомат штурмом и под дулом автомата заставим его мобилизовать нас&raquo;, &ndash; заявила лидерка протестующих Надежда Арсеньева.</p>', 1, 4, 9, 1, 1, 1, 1666897545, 1, 1666975804, 0, 0, 0, 1666897544, 1, '', 0, 0, 0, 0, 0, 1),
(16, 'document', 'text/html', 'В Магадане первый урок «Разговоров о важном» провёл вор в законе', '', '', 'v-magadane-pervyj-urok-razgovorov-o-vazhnom-provyol-vor-v-zakone', '', 1, 0, 0, 2, 0, 'По данным Росстата, 38% жителей Магадана имеют судимость, поэтому правила поведения в местах лишения свободы являются одним из важнейших жизненных навыков, которому может научить ребёнка школа.', '<p>Рецидивист Николай Климов, более известный как Коля Хабаровский, провёл первый урок &laquo;Разговоров о важном&raquo; в магаданской средней школе номер 14. Авторитетный вор рассказал детям, как правильно входить в камеру, а также разъяснил основы тюремной иерархии.</p>\r\n<p>Согласно инструкции от Минпросвещения, новый урок должен быть посвящён общению школьников с интересными людьми на актуальные темы. По данным Росстата, 38% жителей Магадана имеют судимость, поэтому правила поведения в местах лишения свободы являются одним из важнейших жизненных навыков, которому может научить ребёнка школа.</p>\r\n<p>Чтобы просветить учеников на этот счёт, из колонии был доставлен известный вор Коля Хабаровский, который рассказал ученикам 9Б класса, что нужно делать с брошенным под ноги полотенцем, как ответить на вопрос о вилке и двух стульях, а также сколько сигарет нужно дать опущенному за его услуги.</p>\r\n<p>&laquo;Было очень интересно. Я думал, нам будут промывать мозги и показывать ток-шоу с Соловьёвым, а вместо этого была очень интересная встреча с авторитетным человеком, &ndash; рассказал учащийся Роман Ч. &ndash; Теперь я знаю, чем стукач отличается от падлы, почему нельзя крысятничать, и кто такой петух&raquo;.</p>', 1, 4, 10, 1, 1, 1, 1666898231, 1, 1666975816, 0, 0, 0, 1666898231, 1, '', 0, 0, 0, 0, 0, 1),
(17, 'document', 'text/html', 'Общество', '', '', 'obshhestvo', '', 1, 0, 0, 3, 0, 'Человеческая общность, специфику которой представляют отношения людей между собой, их формы взаимодействия и объединения.', '', 1, 7, 1, 1, 1, 1, 1666952648, 1, 1666952648, 0, 0, 0, 1666952648, 1, '', 0, 0, 0, 0, 0, 1),
(18, 'document', 'text/html', 'Мужчины', '', '', 'muzhchiny', '', 1, 0, 0, 3, 0, 'Мужчина — человек мужского пола. Тот, кто обладает функциональными и морфологическими признаками, которые определяют мужской пол', '', 1, 7, 2, 1, 1, 1, 1666952679, 1, 1666952679, 0, 0, 0, 1666952679, 1, '', 0, 0, 0, 0, 0, 1),
(19, 'document', 'text/html', 'Женщина', '', '', 'zhenshhina', '', 1, 0, 0, 3, 0, 'Женщина — взрослый человек женского пола. Слово «женщина» обычно обозначает взрослого человека, а для обозначения ребёнка или подростка используются слова «девочка» и «девушка».', '', 1, 7, 3, 1, 1, 1, 1666952712, 1, 1666952712, 0, 0, 0, 1666952712, 1, '', 0, 0, 0, 0, 0, 1),
(20, 'document', 'text/html', 'Криминал', '', '', 'kriminal', '', 1, 0, 0, 3, 0, 'Правонарушение, совершение которого влечёт применение к лицу мер уголовной ответственности', '', 1, 7, 4, 1, 1, 1, 1666952820, 1, 1666952820, 0, 0, 0, 1666952820, 1, '', 0, 0, 0, 0, 0, 1),
(21, 'document', 'text/html', 'Бизнес', '', '', 'biznes', '', 1, 0, 0, 3, 0, 'Бизнес — дело, занятие, деятельность, направленная на систематическое получение прибыли.', '', 1, 7, 5, 1, 1, 1, 1666952878, 1, 1666952878, 0, 0, 0, 1666952878, 1, '', 0, 0, 0, 0, 0, 1),
(22, 'document', 'text/html', 'Газ', '', '', 'gaz', '', 1, 0, 0, 3, 0, 'Газ — одно из четырёх основных агрегатных состояний вещества, характеризующееся очень слабыми связями между составляющими его частицами, а также их большой подвижностью', '', 1, 7, 6, 1, 1, 1, 1666953021, 1, 1666953021, 0, 0, 0, 1666953021, 1, '', 0, 0, 0, 0, 0, 1),
(23, 'document', 'text/html', 'Брак', '', '', 'brak', '', 1, 0, 0, 3, 0, 'Хорошее дело браком не назовут', '', 1, 7, 7, 1, 1, 1, 1666953075, 1, 1666953075, 0, 0, 0, 1666953075, 1, '', 0, 0, 0, 0, 0, 1),
(24, 'document', 'text/html', 'Путешествие', '', '', 'puteshestvie', '', 1, 0, 0, 3, 0, 'Путешествие - передвижение по какой-либо территории или акватории с целью их изучения, а также с общеобразовательными, познавательными, спортивными и другими целями.', '', 1, 7, 8, 1, 1, 1, 1666954256, 1, 1666954256, 0, 0, 0, 1666954255, 1, '', 0, 0, 0, 0, 0, 1),
(25, 'document', 'text/html', 'Карта сайта HTML', '', '', 'sitemap', '', 1, 0, 0, 0, 0, '', '', 1, 8, 4, 1, 1, 1, 1666978079, 1, 1666978079, 0, 0, 0, 1666978079, 1, '', 0, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_site_content_closure`
--

CREATE TABLE `i6cn_site_content_closure` (
  `closure_id` int UNSIGNED NOT NULL,
  `ancestor` int UNSIGNED NOT NULL,
  `descendant` int UNSIGNED NOT NULL,
  `depth` int UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(9, 6, 6, 0),
(13, 2, 7, 1),
(12, 7, 7, 0),
(16, 2, 8, 1),
(15, 8, 8, 0),
(19, 2, 9, 1),
(18, 9, 9, 0),
(22, 2, 10, 1),
(21, 10, 10, 0),
(25, 2, 11, 1),
(24, 11, 11, 0),
(28, 2, 12, 1),
(27, 12, 12, 0),
(31, 2, 13, 1),
(30, 13, 13, 0),
(34, 2, 14, 1),
(33, 14, 14, 0),
(37, 2, 15, 1),
(36, 15, 15, 0),
(40, 2, 16, 1),
(39, 16, 16, 0),
(43, 3, 17, 1),
(42, 17, 17, 0),
(46, 3, 18, 1),
(45, 18, 18, 0),
(49, 3, 19, 1),
(48, 19, 19, 0),
(52, 3, 20, 1),
(51, 20, 20, 0),
(55, 3, 21, 1),
(54, 21, 21, 0),
(58, 3, 22, 1),
(57, 22, 22, 0),
(61, 3, 23, 1),
(60, 23, 23, 0),
(64, 3, 24, 1),
(63, 24, 24, 0),
(65, 25, 25, 0);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_site_module_depobj`
--

CREATE TABLE `i6cn_site_module_depobj` (
  `id` int NOT NULL,
  `module` int NOT NULL DEFAULT '0',
  `resource` int NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '0' COMMENT '10-chunks, 20-docs, 30-plugins, 40-snips, 50-tpls, 60-tvs'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `i6cn_site_plugins`
--

INSERT INTO `i6cn_site_plugins` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `createdon`, `editedon`) VALUES
(1, 'CodeMirror', '<strong>1.6</strong> JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.33 (released on 21-12-2017)', 0, 1, 0, '\r\n/**\r\n * CodeMirror\r\n *\r\n * JavaScript library that can be used to create a relatively pleasant editor interface based on CodeMirror 5.33 (released on 21-12-2017)\r\n *\r\n * @category    plugin\r\n * @version     1.6\r\n * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\r\n * @package     evo\r\n * @internal    @events OnDocFormRender,OnChunkFormRender,OnModFormRender,OnPluginFormRender,OnSnipFormRender,OnTempFormRender,OnRichTextEditorInit,OnTVFormRender\r\n * @internal    @modx_category Manager and Admin\r\n * @internal    @properties &theme=Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;default &darktheme=Dark Theme;list;default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light;one-dark &fontSize=Font-size;list;10,11,12,13,14,15,16,17,18;14 &lineHeight=Line-height;list;1,1.1,1.2,1.3,1.4,1.5;1.3 &indentUnit=Indent unit;int;4 &tabSize=The width of a tab character;int;4 &lineWrapping=lineWrapping;list;true,false;true &matchBrackets=matchBrackets;list;true,false;true &activeLine=activeLine;list;true,false;false &emmet=emmet;list;true,false;true &search=search;list;true,false;false &indentWithTabs=indentWithTabs;list;true,false;true &undoDepth=undoDepth;int;200 &historyEventDelay=historyEventDelay;int;1250\r\n * @internal    @installset base\r\n * @reportissues https://github.com/evolution-cms/evolution/issues/\r\n * @documentation Official docs https://codemirror.net/doc/manual.html\r\n * @author      hansek from http://www.modxcms.cz\r\n * @author      update Mihanik71\r\n * @author      update Deesen\r\n * @author      update 64j\r\n * @lastupdate  08-01-2018\r\n */\r\n\r\n$_CM_BASE = \'assets/plugins/codemirror/\';\r\n\r\n$_CM_URL = MODX_SITE_URL . $_CM_BASE;\r\n\r\nrequire(MODX_BASE_PATH. $_CM_BASE .\'codemirror.plugin.php\');\r\n', 0, '{\"theme\":[{\"label\":\"Theme\",\"type\":\"list\",\"value\":\"default\",\"options\":\"default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light\",\"default\":\"default\",\"desc\":\"\"}],\"darktheme\":[{\"label\":\"Dark Theme\",\"type\":\"list\",\"value\":\"one-dark\",\"options\":\"default,ambiance,blackboard,cobalt,eclipse,elegant,erlang-dark,lesser-dark,midnight,monokai,neat,night,one-dark,rubyblue,solarized,twilight,vibrant-ink,xq-dark,xq-light\",\"default\":\"one-dark\",\"desc\":\"\"}],\"fontSize\":[{\"label\":\"Font-size\",\"type\":\"list\",\"value\":\"14\",\"options\":\"10,11,12,13,14,15,16,17,18\",\"default\":\"14\",\"desc\":\"\"}],\"lineHeight\":[{\"label\":\"Line-height\",\"type\":\"list\",\"value\":\"1.3\",\"options\":\"1,1.1,1.2,1.3,1.4,1.5\",\"default\":\"1.3\",\"desc\":\"\"}],\"indentUnit\":[{\"label\":\"Indent unit\",\"type\":\"int\",\"value\":\"4\",\"default\":\"4\",\"desc\":\"\"}],\"tabSize\":[{\"label\":\"The width of a tab character\",\"type\":\"int\",\"value\":\"4\",\"default\":\"4\",\"desc\":\"\"}],\"lineWrapping\":[{\"label\":\"lineWrapping\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"matchBrackets\":[{\"label\":\"matchBrackets\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"activeLine\":[{\"label\":\"activeLine\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"emmet\":[{\"label\":\"emmet\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"search\":[{\"label\":\"search\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"indentWithTabs\":[{\"label\":\"indentWithTabs\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}],\"undoDepth\":[{\"label\":\"undoDepth\",\"type\":\"int\",\"value\":\"200\",\"default\":\"200\",\"desc\":\"\"}],\"historyEventDelay\":[{\"label\":\"historyEventDelay\",\"type\":\"int\",\"value\":\"1250\",\"default\":\"1250\",\"desc\":\"\"}]}', 0, '', 1666264537, 1666264537),
(2, 'OutdatedExtrasCheck', '<strong>1.4.6</strong> Check for Outdated critical extras not compatible with EVO 1.4.6', 0, 1, 0, '/**\r\n * OutdatedExtrasCheck\r\n *\r\n * Check for Outdated critical extras not compatible with EVO 1.4.6\r\n *\r\n * @category	plugin\r\n * @version     1.4.6\r\n * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)\r\n * @package     evo\r\n * @author      Author: Nicola Lambathakis\r\n * @internal    @events OnManagerWelcomeHome\r\n * @internal    @properties &wdgVisibility=Show widget for:;menu;All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly;AdminOnly &ThisRole=Run only for this role:;string;;;(role id) &ThisUser=Run only for this user:;string;;;(username)\r\n * @internal    @modx_category Manager and Admin\r\n * @internal    @installset base\r\n * @internal    @disabled 0\r\n */\r\n\r\nrequire MODX_BASE_PATH . \'assets/plugins/extrascheck/OutdatedExtrasCheck.plugin.php\';\r\n', 0, '{\"wdgVisibility\":[{\"label\":\"Show widget for:\",\"type\":\"menu\",\"value\":\"AdminOnly\",\"options\":\"All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly\",\"default\":\"AdminOnly\",\"desc\":\"\"}],\"ThisRole\":[{\"label\":\"Run only for this role:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ThisUser\":[{\"label\":\"Run only for this user:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}', 0, '', 1666264537, 1666264537),
(3, 'TransAlias', '<strong>1.0.4</strong> Human readible URL translation supporting multiple languages and overrides', 0, 1, 0, 'require MODX_BASE_PATH.\'assets/plugins/transalias/plugin.transalias.php\';', 0, '{\"table_name\":[{\"label\":\"Trans table\",\"type\":\"list\",\"value\":\"russian\",\"options\":\"common,russian,dutch,german,czech,utf8,utf8lowercase\",\"default\":\"russian\",\"desc\":\"\"}],\"char_restrict\":[{\"label\":\"Restrict alias to\",\"type\":\"list\",\"value\":\"lowercase alphanumeric\",\"options\":\"lowercase alphanumeric,alphanumeric,legal characters\",\"default\":\"lowercase alphanumeric\",\"desc\":\"\"}],\"remove_periods\":[{\"label\":\"Remove Periods\",\"type\":\"list\",\"value\":\"No\",\"options\":\"Yes,No\",\"default\":\"No\",\"desc\":\"\"}],\"word_separator\":[{\"label\":\"Word Separator\",\"type\":\"list\",\"value\":\"dash\",\"options\":\"dash,underscore,none\",\"default\":\"dash\",\"desc\":\"\"}],\"override_tv\":[{\"label\":\"Override TV name\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}]}', 0, '', 1666264537, 1666264537),
(4, 'Updater', '<strong>0.8.5</strong> show message about outdated CMS version', 0, 1, 0, 'require MODX_BASE_PATH.\'assets/plugins/updater/plugin.updater.php\';\r\n', 0, '{\"version\":[{\"label\":\"Version:\",\"type\":\"text\",\"value\":\"evocms-community\\/evolution\",\"default\":\"evocms-community\\/evolution\",\"desc\":\"\"}],\"wdgVisibility\":[{\"label\":\"Show widget for:\",\"type\":\"menu\",\"value\":\"All\",\"options\":\"All,AdminOnly,AdminExcluded,ThisRoleOnly,ThisUserOnly\",\"default\":\"All\",\"desc\":\"\"}],\"ThisRole\":[{\"label\":\"Show only to this role id:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"ThisUser\":[{\"label\":\"Show only to this username:\",\"type\":\"string\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"showButton\":[{\"label\":\"Show Update Button:\",\"type\":\"menu\",\"value\":\"AdminOnly\",\"options\":\"show,hide,AdminOnly\",\"default\":\"AdminOnly\",\"desc\":\"\"}],\"type\":[{\"label\":\"Type:\",\"type\":\"menu\",\"value\":\"tags\",\"options\":\"tags,releases,commits\",\"default\":\"tags\",\"desc\":\"\"}],\"branch\":[{\"label\":\"Commit branch:\",\"type\":\"text\",\"value\":\"develop\",\"default\":\"develop\",\"desc\":\"\"}],\"stableOnly\":[{\"label\":\"Offer upgrade to stable version only:\",\"type\":\"list\",\"value\":\"true\",\"options\":\"true,false\",\"default\":\"true\",\"desc\":\"\"}]}', 0, '', 1666264537, 1666264537),
(5, 'userHelper', '<strong>1.19.3</strong> addition to FormLister', 0, 2, 0, 'require MODX_BASE_PATH.\'assets/snippets/FormLister/plugin.userHelper.php\';\n', 0, '{\"model\":[{\"label\":\"Model\",\"type\":\"text\",\"value\":\"\\\\\\\\modUsers\",\"default\":\"\\\\\\\\modUsers\",\"desc\":\"\"}],\"logoutKey\":[{\"label\":\"Request key\",\"type\":\"text\",\"value\":\"logout\",\"default\":\"logout\",\"desc\":\"\"}],\"cookieName\":[{\"label\":\"Cookie Name\",\"type\":\"text\",\"value\":\"WebLoginPE\",\"default\":\"WebLoginPE\",\"desc\":\"\"}],\"cookieLifetime\":[{\"label\":\"Cookie Lifetime, seconds\",\"type\":\"text\",\"value\":\"157680000\",\"default\":\"157680000\",\"desc\":\"\"}],\"maxFails\":[{\"label\":\"Max failed logins\",\"type\":\"text\",\"value\":\"3\",\"default\":\"3\",\"desc\":\"\"}],\"blockTime\":[{\"label\":\"Block for, seconds\",\"type\":\"text\",\"value\":\"3600\",\"default\":\"3600\",\"desc\":\"\"}],\"trackWebUserActivity\":[{\"label\":\"Track web user activity\",\"type\":\"list\",\"value\":\"No\",\"options\":\"No,Yes\",\"default\":\"No\",\"desc\":\"\"}]}', 1, '', 1666607110, 1666607110),
(6, 'ClientSettings', '<strong>2.1.1</strong> Creates menu item for user module ClientSettings', 0, 1, 0, '\n\nif ($modx->event->name == \'OnManagerMenuPrerender\') {\n    require_once MODX_BASE_PATH . \'assets/modules/clientsettings/core/src/ClientSettings.php\';\n\n    $cs   = new ClientSettings($params);\n    $mid  = $cs->getModuleId();\n    $lang = $cs->loadLang();\n    $tabs = $cs->loadStructure();\n\n    if (!empty($tabs)) {\n        $menuparams = [\'client_settings\', \'main\', \'<i class=\"fa fa-cog\"></i>\' . $lang[\'cs.module_title\'], \'index.php?a=112&id=\' . $mid . \'&type=default\', $lang[\'cs.module_title\'], \'\', \'\', \'main\', 0, 100, \'\'];\n\n        if (count($tabs) > 1) {\n            $menuparams[3] = \'javscript:;\';\n            $menuparams[5] = \'return false;\';\n            $sort = 0;\n\n            $params[\'menu\'][\'client_settings_main\'] = [\'client_settings_main\', \'client_settings\', \'<i class=\"fa fa-cog\"></i>\' . $lang[\'cs.module_title\'], \'index.php?a=112&id=\' . $mid . \'&type=default\', $lang[\'cs.module_title\'], \'\', \'\', \'main\', 0, $sort, \'\'];\n\n            foreach ($tabs as $alias => $item) {\n                if ($alias != \'default\') {\n                    $params[\'menu\'][\'client_settings_\' . $alias] = [\'client_settings_\' . $alias, \'client_settings\', \'<i class=\"fa \' . (isset($item[\'menu\'][\'icon\']) ? $item[\'menu\'][\'icon\'] : \'fa-cog\') . \'\"></i>\' . $item[\'menu\'][\'caption\'], \'index.php?a=112&id=\' . $mid . \'&type=\' . $alias, $item[\'menu\'][\'caption\'], \'\', \'\', \'main\', 0, $sort += 10, \'\'];\n                }\n            }\n        }\n\n        $params[\'menu\'][\'client_settings\'] = $menuparams;\n        $modx->event->output(serialize($params[\'menu\']));\n    }\n\n    return;\n}\n\n', 0, '', 0, 'clsee234523g354f542t5t', 1666607167, 1666607167),
(8, 'TinyMCE4', '<strong>4.9.11</strong> Javascript rich text editor', 0, 1, 0, 'if (!defined(\'MODX_BASE_PATH\')) { die(\'What are you doing? Get out of here!\'); }\n\nrequire(MODX_BASE_PATH.\"assets/plugins/tinymce4/plugin.tinymce.inc.php\");', 0, '{\"styleFormats\":[{\"label\":\"Custom Style Formats <b>RAW<\\/b><br\\/><br\\/><ul><li>leave empty to use below block\\/inline formats<\\/li><li>allows simple-format: <i>Title,cssClass|Title2,cssClass2<\\/i><\\/li><li>Also accepts full JSON-config as per TinyMCE4 docs \\/ configure \\/ content-formating \\/ style_formats<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"styleFormats_inline\":[{\"label\":\"Custom Style Formats <b>INLINE<\\/b><br\\/><br\\/><ul><li>will wrap selected text with span-tag + css-class<\\/li><li>simple-format only<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"InlineTitle,cssClass1|InlineTitle2,cssClass2\",\"default\":\"InlineTitle,cssClass1|InlineTitle2,cssClass2\",\"desc\":\"\"}],\"styleFormats_block\":[{\"label\":\"Custom Style Formats <b>BLOCK<\\/b><br\\/><br\\/><ul><li>will add css-class to selected block-element<\\/li><li>simple-format only<\\/li><\\/ul>\",\"type\":\"textarea\",\"value\":\"BlockTitle,cssClass3|BlockTitle2,cssClass4\",\"default\":\"BlockTitle,cssClass3|BlockTitle2,cssClass4\",\"desc\":\"\"}],\"customParams\":[{\"label\":\"Custom Parameters<br\\/><b>(Be careful or leave empty!)<\\/b>\",\"type\":\"textarea\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"entityEncoding\":[{\"label\":\"Entity Encoding\",\"type\":\"list\",\"value\":\"named\",\"options\":\"named,numeric,raw\",\"default\":\"named\",\"desc\":\"\"}],\"entities\":[{\"label\":\"Entities\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"pathOptions\":[{\"label\":\"Path Options\",\"type\":\"list\",\"value\":\"Site config\",\"options\":\"Site config,Absolute path,Root relative,URL,No convert\",\"default\":\"Site config\",\"desc\":\"\"}],\"resizing\":[{\"label\":\"Advanced Resizing\",\"type\":\"list\",\"value\":\"false\",\"options\":\"true,false\",\"default\":\"false\",\"desc\":\"\"}],\"disabledButtons\":[{\"label\":\"Disabled Buttons\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webTheme\":[{\"label\":\"Web Theme\",\"type\":\"test\",\"value\":\"webuser\",\"default\":\"webuser\",\"desc\":\"\"}],\"webPlugins\":[{\"label\":\"Web Plugins\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webButtons1\":[{\"label\":\"Web Buttons 1\",\"type\":\"text\",\"value\":\"bold italic underline strikethrough removeformat alignleft aligncenter alignright\",\"default\":\"bold italic underline strikethrough removeformat alignleft aligncenter alignright\",\"desc\":\"\"}],\"webButtons2\":[{\"label\":\"Web Buttons 2\",\"type\":\"text\",\"value\":\"link unlink image undo redo\",\"default\":\"link unlink image undo redo\",\"desc\":\"\"}],\"webButtons3\":[{\"label\":\"Web Buttons 3\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webButtons4\":[{\"label\":\"Web Buttons 4\",\"type\":\"text\",\"value\":\"\",\"default\":\"\",\"desc\":\"\"}],\"webAlign\":[{\"label\":\"Web Toolbar Alignment\",\"type\":\"list\",\"value\":\"ltr\",\"options\":\"ltr,rtl\",\"default\":\"ltr\",\"desc\":\"\"}],\"width\":[{\"label\":\"Width\",\"type\":\"text\",\"value\":\"100%\",\"default\":\"100%\",\"desc\":\"\"}],\"height\":[{\"label\":\"Height\",\"type\":\"text\",\"value\":\"400px\",\"default\":\"400px\",\"desc\":\"\"}],\"introtextRte\":[{\"label\":\"<b>Introtext RTE<\\/b><br\\/>add richtext-features to \\\"introtext\\\"\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"inlineMode\":[{\"label\":\"<b>Inline-Mode<\\/b>\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"inlineTheme\":[{\"label\":\"<b>Inline-Mode<\\/b><br\\/>Theme\",\"type\":\"text\",\"value\":\"inline\",\"default\":\"inline\",\"desc\":\"\"}],\"browser_spellcheck\":[{\"label\":\"<b>Browser Spellcheck<\\/b><br\\/>At least one dictionary must be installed inside your browser\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}],\"paste_as_text\":[{\"label\":\"<b>Force Paste as Text<\\/b>\",\"type\":\"list\",\"value\":\"disabled\",\"options\":\"enabled,disabled\",\"default\":\"disabled\",\"desc\":\"\"}]}', 0, '', 1666787931, 1666787931);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_site_plugin_events`
--

CREATE TABLE `i6cn_site_plugin_events` (
  `pluginid` int NOT NULL,
  `evtid` int NOT NULL DEFAULT '0',
  `priority` int NOT NULL DEFAULT '0' COMMENT 'determines plugin run order'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(6, 122, 0),
(8, 94, 0),
(8, 95, 0),
(8, 3, 0),
(8, 21, 0),
(8, 87, 0),
(8, 88, 1),
(8, 83, 0);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(7, 'Тег', 'tag', 'Страница тега', 0, 4, '', 0, '', 0, 1, 1666611039, 1666611050),
(8, 'Карта сайта HTML', 'htmlsitemap', '', 0, 5, '', 0, '', 0, 1, 1666977978, 1666977978);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `i6cn_site_tmplvars`
--

INSERT INTO `i6cn_site_tmplvars` (`id`, `type`, `name`, `caption`, `description`, `editor_type`, `category`, `locked`, `elements`, `rank`, `display`, `display_params`, `default_text`, `createdon`, `editedon`, `properties`) VALUES
(1, 'text', 'metatitle', 'Meta title', 'Содержимое тега title', 0, 5, 0, '', 0, '', '', '', 1666727368, 1666727368, '[]'),
(2, 'textareamini', 'metadescription', 'Meta description', 'Описание для поисковых машин', 0, 5, 0, '', 0, '', '', '', 1666727435, 1666980262, '[]'),
(3, 'image', 'post_mainphoto', 'Главное фото', '', 0, 6, 0, '', 0, '', '', '', 1666727643, 1666727643, '[]'),
(4, 'custom_tv:selector', 'post_tags', 'Теги', '', 0, 6, 0, '', 0, '', '', '', 1666727715, 1666727715, '[]'),
(8, 'dropdown', 'sitemap_changefreq', 'Период обновления', 'Для карты сайта', 0, 5, 0, 'always||hourly||daily||weekly||monthly||yearly||never', 0, '', '', 'weekly', 1666980262, 1666980416, '[]'),
(9, 'checkbox', 'sitemap_exclude', 'Отображение в sitemap', 'Для карты сайта', 0, 5, 0, 'Скрыть==1', 0, '', '', '0', 1666980262, 1666981367, '[]'),
(10, 'dropdown', 'sitemap_priority', 'Приоритет страницы', 'Для карты сайта', 0, 5, 0, '0.1||0.2||0.3||0.4||0.5||0.6||0.7||0.8||0.9||1', 0, '', '', '0.5', 1666980262, 1666980639, '[]');

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_site_tmplvar_access`
--

CREATE TABLE `i6cn_site_tmplvar_access` (
  `id` int NOT NULL,
  `tmplvarid` int NOT NULL DEFAULT '0',
  `documentgroup` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_site_tmplvar_contentvalues`
--

CREATE TABLE `i6cn_site_tmplvar_contentvalues` (
  `id` int NOT NULL,
  `tmplvarid` int NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `contentid` int NOT NULL DEFAULT '0' COMMENT 'Site Content Id',
  `value` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `i6cn_site_tmplvar_contentvalues`
--

INSERT INTO `i6cn_site_tmplvar_contentvalues` (`id`, `tmplvarid`, `contentid`, `value`) VALUES
(1, 3, 5, 'assets/images/150-10.jpg'),
(4, 3, 7, 'assets/images/maxresdefault.jpg'),
(6, 3, 8, 'assets/images/1_711561.jpg'),
(7, 3, 9, 'assets/images/grand_st_3.jpg'),
(8, 3, 10, 'assets/images/666.jpg'),
(9, 3, 11, 'assets/images/1363595135_1631449672.jpg'),
(10, 3, 12, 'assets/images/1625636256_58-phonoteka-org-p-metro-arti-krasivo-60.jpg'),
(11, 3, 13, 'assets/images/14609-main.jpg'),
(12, 3, 14, 'assets/images/original.jpg'),
(13, 3, 15, 'assets/images/495984672_8.10e5382a4c39b567a8039a2b6374ed0c.jpg'),
(14, 3, 16, 'assets/images/black-eagle-007-1280x853.jpg'),
(15, 4, 5, '24,17'),
(16, 4, 8, '20,21'),
(17, 4, 9, '6,22,24'),
(18, 4, 10, '17,19,18'),
(19, 4, 11, '17,19,18,23'),
(20, 4, 12, '18,24'),
(21, 4, 13, '6,21'),
(22, 4, 14, '21,24'),
(23, 4, 15, '19,17'),
(24, 4, 16, '17,20'),
(25, 1, 1, 'Блог про всякое'),
(26, 2, 1, 'Куча разных постов'),
(27, 1, 2, 'Посты обо всём на свете'),
(28, 2, 2, 'Посты обо всём на свете от политики до поездов'),
(29, 1, 3, 'Теги'),
(30, 2, 3, 'Теги с описанием'),
(31, 1, 4, 'Контакты'),
(32, 2, 4, 'Телефоны и почта'),
(33, 1, 7, 'В «Пятёрочках» и «Перекрёстках» начнут выписывать повестки на кассах'),
(34, 2, 7, 'Компания X5 Group заключила партнёрское соглашение с Минобороны — отныне сотрудники на кассах имеют право выписывать военнообязанным мужчинам повестки.'),
(35, 4, 7, '21'),
(36, 1, 5, 'У спящих пассажиров поездов не будут проверять билеты'),
(37, 2, 5, 'Руководство РЖД разработало поправки к внутренним регламентам, согласно которым контролёры и проводники больше не смогут будить спящих пассажиров в вагонах электричек и обычных поездов с целью проверки проездных билетов. Кроме того, предполагается ввести штраф в размере 500 рублей для «имитирующих сон в целях бесплатного проезда»'),
(38, 1, 8, 'На Урале арестовали предпринимателя, продававшего безалкогольную водку'),
(39, 2, 8, 'Полиция Чебаркульского района Челябинской области возбудила уголовное дело против предпринимателя Иванова В.В., занимающегося реализацией спиртных напитков населению'),
(40, 1, 9, 'Финские пограничники отнимают у россиян зажигалки и сливают бензин'),
(41, 2, 9, 'Сотрудники таможни также требут слить топливо из зажигалок, включая и бензиновые, и газовые. Неразборные зажигалки положено сдать, оплатив сбор за утилизацию в размере 24 евро за единицу.'),
(42, 1, 10, 'Новым законом о запрете пропаганды ЛГБТ вводится понятие «голубого уровня опасности»'),
(43, 2, 10, 'Новый цветовой код будет объявляться в случае появления опасности информационной атаки со стороны ЛГБТ-сообщества даже в том случае, если эта информация пока не подтверждена.'),
(44, 1, 11, 'В ЗАГСах марш Мендельсона заменят «Прощанием славянки»'),
(45, 2, 11, 'Всероссийский союз бракосочетателей обратился в Минкульт с просьбой предложить музыкальную альтернативу для торжественной церемонии. Чиновники ведомства после консультаций с ведущими композиторами страны рекомендовали использовать для бракосочетаний марш «Прощание славянки».'),
(46, 1, 12, 'В Москве машинист метрополитена на поезде скрылся от сотрудника военкомата'),
(47, 2, 12, 'Когда поезд прибыл на станцию и сотрудник военкомата подошёл к кабине, чтобы отдать повестку, машинист ответил: «Спасибо, не интересует», – после чего закрыл двери вагонов и передвинул ручку в положение «Ход».'),
(48, 1, 13, 'Чернороссии быть: источники подтвердили подготовку к созданию Африканского федерального округа'),
(49, 2, 13, 'Новый регион уже неофициально называют Чернороссией, но в Москве, по некоторым данным, недовольны таким вариантом, поскольку боятся задеть национальные чувства жителей будущих российских регионов.'),
(50, 1, 14, 'Киргизия вошла в топ-3 стран по числу IT-специалистов'),
(51, 2, 14, 'По случаю создания первой в стране IT-корпорации были устроены праздничные конные игры, соревнования по перетягиванию туши козла и конкурс по выпиванию кумыса.'),
(52, 1, 15, 'Российские феминистки требуют мобилизации женщин наравне с мужчинами'),
(53, 2, 15, 'Возле здания Минобороны в Москве прошёл несанкционированный митинг с участием 150 сторонниц феминистического движения. Демонстрантки требовали отменить дискриминационные положения указа «О частичной мобилизации» и призывать женщин наравне с мужчинами.'),
(57, 10, 2, '1'),
(56, 8, 2, 'daily'),
(58, 8, 1, 'daily');

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_site_tmplvar_templates`
--

CREATE TABLE `i6cn_site_tmplvar_templates` (
  `tmplvarid` int NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `templateid` int NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(4, 4, 0),
(8, 1, 0),
(8, 3, 0),
(8, 6, 0),
(8, 2, 0),
(8, 5, 0),
(8, 4, 0),
(8, 7, 0),
(8, 8, 0),
(10, 1, 0),
(10, 3, 0),
(10, 6, 0),
(10, 2, 0),
(10, 5, 0),
(10, 4, 0),
(10, 7, 0),
(10, 8, 0),
(9, 1, 0),
(9, 5, 0),
(9, 6, 0),
(9, 3, 0),
(9, 7, 0),
(9, 2, 0),
(9, 4, 0),
(9, 8, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_system_eventnames`
--

CREATE TABLE `i6cn_system_eventnames` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `service` int NOT NULL DEFAULT '0' COMMENT 'System Service number',
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
('ControllerNamespace', 'EvolutionCMS\\Main\\Controllers\\'),
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
('which_editor', 'TinyMCE4'),
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
('filemanager_path', '/'),
('upload_files', 'bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,fla,flv,swf,aac,au,avi,css,cache,doc,docx,gz,gzip,htaccess,htm,html,js,mp3,mp4,mpeg,mpg,ods,odp,odt,pdf,ppt,pptx,rar,tar,tgz,txt,wav,wmv,xls,xlsx,xml,z,zip,JPG,JPEG,PNG,GIF,svg,tpl'),
('upload_images', 'bmp,ico,gif,jpeg,jpg,png,psd,tif,tiff,svg'),
('upload_media', 'au,avi,mp3,mp4,mpeg,mpg,wav,wmv'),
('new_file_permissions', '0644'),
('new_folder_permissions', '0755'),
('which_browser', 'mcpuk'),
('rb_webuser', '0'),
('rb_base_dir', 'D:/OSP/domains/evoblog.localhost/assets/'),
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
('sys_files_checksum', 'a:4:{s:42:\"D:/OSP/domains/evoblog.localhost/index.php\";s:32:\"599511a98673763d066ea76b9e50fbb0\";s:42:\"D:/OSP/domains/evoblog.localhost/.htaccess\";s:32:\"4d525766cb6232034562a1732ec06a9c\";s:50:\"D:/OSP/domains/evoblog.localhost/manager/index.php\";s:32:\"19c60de055d5efeb3fdd9debde124cb7\";s:78:\"D:/OSP/domains/evoblog.localhost//core/config/database/connections/default.php\";s:32:\"1a9b6f6c575efd615194a3b37344b2ea\";}'),
('tinymce4_theme', 'custom'),
('tinymce4_skin', 'lightgray'),
('tinymce4_skintheme', 'inlite'),
('tinymce4_template_docs', ''),
('tinymce4_template_chunks', ''),
('tinymce4_entermode', 'p'),
('tinymce4_element_format', 'xhtml'),
('tinymce4_schema', 'html5'),
('tinymce4_custom_plugins', 'advlist autolink lists link image charmap print preview hr anchor pagebreak searchreplace wordcount visualblocks visualchars code fullscreen spellchecker insertdatetime media nonbreaking save table contextmenu directionality emoticons template paste textcolor codesample colorpicker textpattern imagetools paste modxlink youtube'),
('tinymce4_custom_buttons1', 'undo redo | cut copy paste | searchreplace | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent blockquote | styleselect'),
('tinymce4_custom_buttons2', 'link unlink anchor image media codesample table | hr removeformat | subscript superscript charmap | nonbreaking | visualchars visualblocks print preview fullscreen code formatselect'),
('tinymce4_custom_buttons3', ''),
('tinymce4_custom_buttons4', ''),
('tinymce4_blockFormats', 'Paragraph=p;Header 1=h1;Header 2=h2;Header 3=h3');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `i6cn_users`
--

INSERT INTO `i6cn_users` (`id`, `username`, `password`, `cachepwd`, `refresh_token`, `access_token`, `valid_to`, `verified_key`) VALUES
(1, 'admin', '$P$BjbEatuDPd5wdVR6uLDAGe1FwwLrsy/', '', '38f0c92c2ed2c0c055975acde14142c316acd986c04376cdcc06056945de1082', '70557e1c505ab4a920f9363f0e2003ce1cd27e95a73fa61e8a42696e9f0c5504', '2022-10-27 21:15:48', NULL);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `i6cn_user_attributes`
--

INSERT INTO `i6cn_user_attributes` (`id`, `internalKey`, `fullname`, `first_name`, `last_name`, `middle_name`, `role`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `country`, `street`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `createdon`, `editedon`, `verified`) VALUES
(1, 1, '1', NULL, NULL, NULL, 1, 'admin@evoblog.localhost', '', '', 0, 0, 0, 3, 1666865748, 1666865748, 0, '1', 0, 0, '', '', '', '', '', '', '', NULL, 1666264537, 1666865748, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_user_roles`
--

CREATE TABLE `i6cn_user_roles` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_user_settings`
--

CREATE TABLE `i6cn_user_settings` (
  `user` int NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `i6cn_user_values`
--

CREATE TABLE `i6cn_user_values` (
  `id` bigint UNSIGNED NOT NULL,
  `tmplvarid` int NOT NULL DEFAULT '0',
  `userid` int NOT NULL DEFAULT '0',
  `value` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT для таблицы `i6cn_manager_log`
--
ALTER TABLE `i6cn_manager_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `i6cn_site_content_closure`
--
ALTER TABLE `i6cn_site_content_closure`
  MODIFY `closure_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT для таблицы `i6cn_site_htmlsnippets`
--
ALTER TABLE `i6cn_site_htmlsnippets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `i6cn_site_snippets`
--
ALTER TABLE `i6cn_site_snippets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `i6cn_site_templates`
--
ALTER TABLE `i6cn_site_templates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `i6cn_site_tmplvars`
--
ALTER TABLE `i6cn_site_tmplvars`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `i6cn_site_tmplvar_access`
--
ALTER TABLE `i6cn_site_tmplvar_access`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `i6cn_site_tmplvar_contentvalues`
--
ALTER TABLE `i6cn_site_tmplvar_contentvalues`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

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
