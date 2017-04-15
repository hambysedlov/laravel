-- phpMyAdmin SQL Dump
-- version 4.7.0-rc1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Апр 15 2017 г., 11:09
-- Версия сервера: 5.7.16
-- Версия PHP: 7.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catalogs`
--

CREATE TABLE `catalogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `showhide` enum('show','hide') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `catalogs`
--

INSERT INTO `catalogs` (`id`, `name`, `description`, `parent_id`, `showhide`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Машины эконом класса', 'Прокат авто эконом класса выгоден тем, что Вам не придется переплачивать за статус и марку автомобиля. Как правило, аренда эконом авто нужна людям, которые ценят свое время и деньги и стремятся получить лучшее по принципу «цена-качество»', '0', 'show', '2017-02-28 06:12:41', '2017-02-28 08:04:25', NULL),
(2, 'Минивэны', 'В некоторых случаях просто не обойтись без автомобиля: поездка за город с друзьями, приезд гостей на свадьбу, встреча родственников из аэропорта, доставка габаритных покупок. Но что делать, если у вас нет собственного автомобиля или же ваша машина находится в автосервисе? Верным решением станет прокат минивэна ', '0', 'show', '2017-02-28 06:12:50', '2017-02-28 06:14:17', NULL),
(3, 'Свадебные авто', '', '0', 'show', '2017-02-28 07:47:22', '2017-02-28 07:47:22', NULL),
(4, 'Премиум авто', '', '0', 'show', '2017-02-28 07:48:18', '2017-02-28 07:48:18', NULL),
(5, 'Стандарт авто', '', '0', 'show', '2017-02-28 07:48:27', '2017-02-28 07:48:27', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `showhidle` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `showhidle`, `created_at`, `updated_at`) VALUES
(2, 'Cars', 'show', '2017-02-09 13:42:48', '2017-02-09 13:42:48');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT NULL,
  `menu_type` int(11) NOT NULL DEFAULT '1',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `position`, `menu_type`, `icon`, `name`, `title`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, NULL, 'User', 'User', NULL, NULL, NULL),
(2, NULL, 0, NULL, 'Role', 'Role', NULL, NULL, NULL),
(3, 0, 1, 'fa-database', 'Catalogs', 'catalog', NULL, '2017-02-28 06:04:26', '2017-02-28 06:04:26'),
(5, 0, 1, 'fa-database', 'Products', 'product', NULL, '2017-02-28 07:02:22', '2017-02-28 07:02:22');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_role`
--

CREATE TABLE `menu_role` (
  `menu_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_role`
--

INSERT INTO `menu_role` (`menu_id`, `role_id`) VALUES
(3, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2017_02_09_160929_create_categories_table', 2),
(5, '2015_10_10_000000_create_menus_table', 3),
(6, '2015_10_10_000000_create_roles_table', 3),
(7, '2015_10_10_000000_update_users_table', 3),
(8, '2015_12_11_000000_create_users_logs_table', 3),
(9, '2016_03_14_000000_update_menus_table', 3),
(11, '2017_02_28_090426_create_catalogs_table', 4),
(12, '2017_02_28_100222_create_products_table', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `showhide` enum('show','hide') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `catalogs_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `year_of_issue` int(4) DEFAULT NULL,
  `fuel_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engine_capacity` int(10) DEFAULT NULL COMMENT 'см^3',
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transmission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fuel_consumption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'город/шоссе, л/100км',
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `showhide`, `price`, `user_id`, `catalogs_id`, `created_at`, `updated_at`, `deleted_at`, `year_of_issue`, `fuel_type`, `engine_capacity`, `color`, `transmission`, `body_type`, `fuel_consumption`, `brand`, `options`) VALUES
(1, 'Mercedes W221 Long', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Год выпуска</td>\r\n			<td>2007</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип и объем двигателя</td>\r\n			<td>Бензин\\3500</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Цвет</td>\r\n			<td>Черный</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Трансмиссия</td>\r\n			<td>АКПП</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Тип кузова</td>\r\n			<td>Седан</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Расход топлива город\\шоссе</td>\r\n			<td>14\\9</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Марка</td>\r\n			<td>Mercedes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Опции</td>\r\n			<td>Макс. комплектация</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '1488276537-1.jpg', 'show', '100$', 1, 4, '2017-02-28 07:08:58', '2017-02-28 07:55:58', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'PEUGEOT 408', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Год выпуска</td>\r\n			<td>2014</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Тип и Объем двигателя, см?</strong></td>\r\n			<td>Дизель/1600</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Цвет</strong></td>\r\n			<td>Серебристый металлик</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Трансмиссия</strong></td>\r\n			<td>\r\n			<table>\r\n				<tbody>\r\n					<tr>\r\n						<td>МКПП</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Тип кузова</strong></td>\r\n			<td>\r\n			<table>\r\n				<tbody>\r\n					<tr>\r\n						<td><a href=\"http://komandir.by/svadebnye-avto/sedan/\">Седан</a></td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Расход топлива город/шоссе, л/100 км</strong></td>\r\n			<td>7/5</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Марка</strong></td>\r\n			<td>\r\n			<table>\r\n				<tbody>\r\n					<tr>\r\n						<td><a href=\"http://komandir.by/katalog-avto/peugeot/\">Peugeot</a></td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Опции:</strong></td>\r\n			<td>кондиционер, круиз, подогрев сидений</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '1488276860-2 (1).jpg', 'show', '45', 1, 5, '2017-02-28 07:13:59', '2017-02-28 07:54:07', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'BMW X6', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Год выпуска</td>\r\n			<td>2009</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Тип и Объем двигателя, см?</strong></td>\r\n			<td>Бензин/3500</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Цвет</strong></td>\r\n			<td>\r\n			<table>\r\n				<tbody>\r\n					<tr>\r\n						<td>Черный</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Трансмиссия</strong></td>\r\n			<td>АКПП</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Тип кузова</strong></td>\r\n			<td>Внедорожник/Джип</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Расход топлива город/шоссе, л/100 км</strong></td>\r\n			<td>14/9</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Марка</strong></td>\r\n			<td>\r\n			<table>\r\n				<tbody>\r\n					<tr>\r\n						<td><a href=\"http://komandir.by/katalog-avto/bmw/\">BMW</a></td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Опции:</strong></td>\r\n			<td>\r\n			<table>\r\n				<tbody>\r\n					<tr>\r\n						<td>Максимальная комплектация</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '1488277062-3(1).jpg', 'show', '150$', 1, 4, '2017-02-28 07:17:18', '2017-02-28 07:56:13', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'TOYOTA YARIS', 'Это машина', '1488277138-4(1).jpg', 'show', '32$', 2, 1, '2017-02-28 07:18:58', '2017-02-28 07:49:01', NULL, 2008, 'Бензин', 1200, 'Серый', 'АКПП', 'Хэтчбек', '6/4', 'Toyota', 'Кондиционер'),
(5, 'MERCEDES VITO', '', '1488277325-5 (1).jpg', 'show', '60$', 1, 2, '2017-02-28 07:21:36', '2017-02-28 07:56:30', NULL, 2007, 'Дизель', 2200, 'Черный', 'МКПП', 'Микроавтобус', '10/7', 'Mercedes', 'Электропакет, кондиционер'),
(6, 'TOYOTA YARIS', 'Красная', 'p1100672.jpg', 'show', '30$', 2, 1, '2017-02-28 07:18:58', '2017-02-28 07:49:01', NULL, 2010, 'Бензин', 1200, 'Красный', 'МКПП', 'Хэтчбек', '7/5', 'Toyota', 'Кондиционер'),
(7, 'PEUGEOT 107', '', '1.jpg', 'show', '30$', 2, 1, '2017-02-28 07:18:58', '2017-02-28 07:49:01', NULL, 2009, 'Бензин', 1200, 'Серебристый', 'МКПП', 'Хэтчбек', '7/5', 'Peugeot', 'Кондиционер'),
(8, 'TOYOTA YARIS', 'Это машина', '1488277138-4(1).jpg', 'show', '32$', 2, 1, '2017-02-28 07:18:58', '2017-02-28 07:49:01', NULL, 2008, 'Бензин', 1200, 'Серый', 'АКПП', 'Хэтчбек', '6/4', 'Toyota', 'Кондиционер'),
(9, 'VW SHARAN', '', 'viber-image1.jpg', 'show', '45$', 1, 2, '2017-04-14 07:21:36', '2017-04-14 07:56:30', NULL, 2001, 'Дизель', 1900, 'Синий', 'АКПП', 'Минивэн', '7/5,5', 'Volkswagen', 'Электропакет, кондиционер, 7 мест, парктроники, фаркоп'),
(10, 'DODGE CARAVAN', '', '1 (1).jpg', 'show', '55$', 1, 2, '2017-04-14 07:21:36', '2017-04-14 07:56:30', NULL, 2004, 'Бензин', 2400, 'Бордовый', 'АКПП', 'Минивэн', '12/9', 'Dodge', 'Электропакет, кондиционер, 7 мест');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2017-02-28 05:56:00', '2017-02-28 05:56:00'),
(2, 'User', '2017-02-28 05:56:00', '2017-02-28 05:56:00');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Artyom', 'hambysedlov@gmail.com', '$2y$10$5QYbmQv0/NwnOfNcA0K0R.X.prgIrxIeJmRK8NKH1IY9ctGv26.Ve', 'rkzfrhwG7Pf4w9fvwQgctawMNh76fCC6AWiVZhPaIHNh4o8ZoJ4pAeGQkcYO', '2017-01-31 07:30:30', '2017-01-31 07:30:30'),
(2, 1, 'hamby', '414302@mail.ru', '$2y$10$PgdBeVTvO.gi6knGAHxl4eZ1yRXUgfSLXyml0kBlUa97oZd8Fxolu', NULL, '2017-02-28 05:57:46', '2017-02-28 05:57:46'),
(3, 2, 'Kate', 'hiboux@lol.com', '$2y$10$FZBRNVIVBXfhalnAXEijDun3AbNvCmL7RgPq7PDemcsKYeRe0.Ko2', '8cOwntuOFNETOypfp5VVBs0lOaPeVXQ9lS3eVnUWgQISfyvcKjVJCYUxKfrz', '2017-03-23 17:21:14', '2017-03-23 17:21:14');

-- --------------------------------------------------------

--
-- Структура таблицы `users_logs`
--

CREATE TABLE `users_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users_logs`
--

INSERT INTO `users_logs` (`id`, `user_id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'created', 'catalogs', 1, '2017-02-28 06:07:34', '2017-02-28 06:07:34'),
(2, 1, 'deleted', 'catalogs', 1, '2017-02-28 06:10:35', '2017-02-28 06:10:35'),
(3, 1, 'created', 'catalogs', 2, '2017-02-28 06:10:44', '2017-02-28 06:10:44'),
(4, 1, 'deleted', 'catalogs', 2, '2017-02-28 06:12:13', '2017-02-28 06:12:13'),
(5, 1, 'created', 'catalogs', 3, '2017-02-28 06:12:22', '2017-02-28 06:12:22'),
(6, 1, 'created', 'catalogs', 4, '2017-02-28 06:12:32', '2017-02-28 06:12:32'),
(7, 1, 'created', 'catalogs', 5, '2017-02-28 06:12:41', '2017-02-28 06:12:41'),
(8, 1, 'created', 'catalogs', 6, '2017-02-28 06:12:50', '2017-02-28 06:12:50'),
(9, 1, 'updated', 'catalogs', 3, '2017-02-28 06:14:02', '2017-02-28 06:14:02'),
(10, 1, 'updated', 'catalogs', 4, '2017-02-28 06:14:07', '2017-02-28 06:14:07'),
(11, 1, 'updated', 'catalogs', 5, '2017-02-28 06:14:12', '2017-02-28 06:14:12'),
(12, 1, 'updated', 'catalogs', 6, '2017-02-28 06:14:17', '2017-02-28 06:14:17'),
(13, 1, 'created', 'products', 1, '2017-02-28 07:08:58', '2017-02-28 07:08:58'),
(14, 1, 'updated', 'products', 1, '2017-02-28 07:09:09', '2017-02-28 07:09:09'),
(15, 1, 'updated', 'products', 1, '2017-02-28 07:10:02', '2017-02-28 07:10:02'),
(16, 1, 'created', 'products', 2, '2017-02-28 07:13:59', '2017-02-28 07:13:59'),
(17, 1, 'updated', 'products', 2, '2017-02-28 07:14:20', '2017-02-28 07:14:20'),
(18, 1, 'created', 'products', 3, '2017-02-28 07:17:18', '2017-02-28 07:17:18'),
(19, 1, 'updated', 'products', 3, '2017-02-28 07:17:42', '2017-02-28 07:17:42'),
(20, 1, 'created', 'products', 4, '2017-02-28 07:18:58', '2017-02-28 07:18:58'),
(21, 1, 'updated', 'products', 3, '2017-02-28 07:19:20', '2017-02-28 07:19:20'),
(22, 1, 'updated', 'products', 4, '2017-02-28 07:19:34', '2017-02-28 07:19:34'),
(23, 1, 'created', 'products', 5, '2017-02-28 07:21:36', '2017-02-28 07:21:36'),
(24, 1, 'updated', 'products', 5, '2017-02-28 07:22:06', '2017-02-28 07:22:06'),
(25, 1, 'updated', 'users', 1, '2017-02-28 07:28:46', '2017-02-28 07:28:46'),
(26, 1, 'updated', 'products', 4, '2017-02-28 07:37:07', '2017-02-28 07:37:07'),
(27, 1, 'updated', 'products', 1, '2017-02-28 07:37:19', '2017-02-28 07:37:19'),
(28, 1, 'updated', 'products', 1, '2017-02-28 07:40:08', '2017-02-28 07:40:08'),
(29, 1, 'updated', 'products', 4, '2017-02-28 07:44:21', '2017-02-28 07:44:21'),
(30, 1, 'updated', 'products', 4, '2017-02-28 07:44:33', '2017-02-28 07:44:33'),
(31, 1, 'updated', 'products', 4, '2017-02-28 07:45:24', '2017-02-28 07:45:24'),
(32, 1, 'created', 'catalogs', 7, '2017-02-28 07:47:22', '2017-02-28 07:47:22'),
(33, 1, 'updated', 'products', 3, '2017-02-28 07:47:33', '2017-02-28 07:47:33'),
(34, 1, 'deleted', 'catalogs', 3, '2017-02-28 07:48:06', '2017-02-28 07:48:06'),
(35, 1, 'deleted', 'catalogs', 4, '2017-02-28 07:48:08', '2017-02-28 07:48:08'),
(36, 1, 'created', 'catalogs', 8, '2017-02-28 07:48:18', '2017-02-28 07:48:18'),
(37, 1, 'created', 'catalogs', 9, '2017-02-28 07:48:27', '2017-02-28 07:48:27'),
(38, 1, 'updated', 'products', 1, '2017-02-28 07:48:42', '2017-02-28 07:48:42'),
(39, 1, 'updated', 'products', 4, '2017-02-28 07:49:01', '2017-02-28 07:49:01'),
(40, 1, 'updated', 'products', 3, '2017-02-28 07:49:39', '2017-02-28 07:49:39'),
(41, 1, 'updated', 'products', 4, '2017-02-28 07:50:16', '2017-02-28 07:50:16'),
(42, 1, 'updated', 'products', 1, '2017-02-28 07:50:23', '2017-02-28 07:50:23'),
(43, 1, 'updated', 'products', 3, '2017-02-28 07:50:52', '2017-02-28 07:50:52'),
(44, 1, 'updated', 'products', 1, '2017-02-28 07:50:57', '2017-02-28 07:50:57'),
(45, 1, 'updated', 'products', 1, '2017-02-28 07:51:04', '2017-02-28 07:51:04'),
(46, 1, 'updated', 'products', 1, '2017-02-28 07:51:34', '2017-02-28 07:51:34'),
(47, 1, 'updated', 'products', 1, '2017-02-28 07:51:40', '2017-02-28 07:51:40'),
(48, 1, 'updated', 'products', 1, '2017-02-28 07:51:46', '2017-02-28 07:51:46'),
(49, 1, 'updated', 'products', 1, '2017-02-28 07:51:52', '2017-02-28 07:51:52'),
(50, 1, 'updated', 'products', 1, '2017-02-28 07:52:29', '2017-02-28 07:52:29'),
(51, 1, 'updated', 'products', 1, '2017-02-28 07:52:47', '2017-02-28 07:52:47'),
(52, 1, 'updated', 'products', 1, '2017-02-28 07:53:02', '2017-02-28 07:53:02'),
(53, 1, 'updated', 'products', 1, '2017-02-28 07:54:01', '2017-02-28 07:54:01'),
(54, 1, 'updated', 'products', 2, '2017-02-28 07:54:07', '2017-02-28 07:54:07'),
(55, 1, 'updated', 'products', 3, '2017-02-28 07:54:28', '2017-02-28 07:54:28'),
(56, 1, 'updated', 'products', 1, '2017-02-28 07:55:58', '2017-02-28 07:55:58'),
(57, 1, 'updated', 'products', 2, '2017-02-28 07:56:06', '2017-02-28 07:56:06'),
(58, 1, 'updated', 'products', 3, '2017-02-28 07:56:13', '2017-02-28 07:56:13'),
(59, 1, 'updated', 'products', 5, '2017-02-28 07:56:30', '2017-02-28 07:56:30'),
(60, 1, 'updated', 'catalogs', 1, '2017-02-28 08:04:25', '2017-02-28 08:04:25'),
(61, 1, 'updated', 'catalogs', 1, '2017-02-28 08:04:33', '2017-02-28 08:04:33'),
(62, 1, 'updated', 'users', 1, '2017-02-28 08:09:05', '2017-02-28 08:09:05'),
(63, 1, 'updated', 'users', 1, '2017-02-28 08:10:00', '2017-02-28 08:10:00'),
(64, 1, 'updated', 'users', 1, '2017-02-28 08:12:47', '2017-02-28 08:12:47'),
(65, 1, 'updated', 'users', 1, '2017-03-09 11:59:15', '2017-03-09 11:59:15'),
(66, 1, 'updated', 'users', 1, '2017-03-09 12:01:15', '2017-03-09 12:01:15'),
(67, 1, 'updated', 'users', 1, '2017-03-09 12:01:38', '2017-03-09 12:01:38'),
(68, 1, 'updated', 'users', 1, '2017-03-09 13:01:59', '2017-03-09 13:01:59'),
(69, 1, 'updated', 'users', 1, '2017-03-09 13:03:13', '2017-03-09 13:03:13'),
(70, 1, 'updated', 'users', 1, '2017-03-09 14:00:31', '2017-03-09 14:00:31'),
(71, 4, 'updated', 'users', 4, '2017-03-28 06:53:38', '2017-03-28 06:53:38'),
(72, 4, 'updated', 'users', 4, '2017-03-28 10:13:52', '2017-03-28 10:13:52'),
(73, 3, 'updated', 'users', 3, '2017-04-08 11:08:36', '2017-04-08 11:08:36'),
(74, 3, 'updated', 'users', 3, '2017-04-08 11:09:15', '2017-04-08 11:09:15');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_role`
--
ALTER TABLE `menu_role`
  ADD UNIQUE KEY `menu_role_menu_id_role_id_unique` (`menu_id`,`role_id`),
  ADD KEY `menu_role_menu_id_index` (`menu_id`),
  ADD KEY `menu_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `users_logs`
--
ALTER TABLE `users_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `users_logs`
--
ALTER TABLE `users_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `menu_role`
--
ALTER TABLE `menu_role`
  ADD CONSTRAINT `menu_role_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
