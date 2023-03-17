-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 17 2023 г., 20:46
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
-- База данных: `shop_brand`
--

-- --------------------------------------------------------

--
-- Структура таблицы `basket`
--

CREATE TABLE `basket` (
  `id` int NOT NULL,
  `session_id` text NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` text NOT NULL,
  `session_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` decimal(7,2) UNSIGNED NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `color` varchar(64) DEFAULT NULL,
  `size` varchar(64) DEFAULT NULL,
  `material` varchar(128) DEFAULT NULL,
  `designer` varchar(128) DEFAULT NULL,
  `gender` tinyint(1) NOT NULL,
  `category` int UNSIGNED NOT NULL,
  `is_main` tinyint(1) DEFAULT NULL,
  `is_also` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `img`, `color`, `size`, `material`, `designer`, `gender`, `category`, `is_main`, `is_also`) VALUES
(1, 'Mango People T-shirt', 'Цейлонский', '52.00', 'fetured-item1.jpg', 'red', 'XII', 'cotton', 'binburhan', 1, 9, 1, '0'),
(2, 'Mango People T-shirt', 'Пепперони', '43.00', 'fetured-item2.jpg', 'yellow', 'XII', 'cotton', 'binburhan', 2, 3, 1, '0'),
(3, 'Mango People T-shirt', 'Брендовая', '34.00', 'fetured-item3.jpg', 'black', 'XII', 'cotton', 'binburhan', 1, 5, 1, '0'),
(4, 'Mango People T-shirt', 'Цейлонский', '54.00', 'fetured-item5.jpg', 'rose', 'XII', 'cotton', 'binburhan', 2, 3, 1, '0'),
(5, 'Mango People T-shirt', 'Не Цейлонский', '23.00', 'fetured-item6.jpg', 'brown', 'XII', 'cotton', 'binburhan', 1, 7, 1, '0'),
(9, 'Mango People T-shirt', 'test_desc', '52.00', 'fetured-item7.jpg', 'red', 'XII', 'cotton', 'binburhan', 1, 6, 1, '0'),
(10, 'Mango People T-shirt', 'test_desc', '52.00', 'fetured-item8.jpg', 'red', 'XII', 'cotton', 'binburhan', 1, 10, 1, '0'),
(12, 'Mango People T-shirt', 'test_desc', '52.00', 'product1.jpg', 'red', 'XII', 'cotton', 'binburhan', 1, 5, 0, '0'),
(13, 'Mango People T-shirt', 'test_desc', '52.00', 'product2.jpg', 'red', 'XII', 'cotton', 'binburhan', 1, 5, 0, '0'),
(14, 'Mango People T-shirt', 'test_desc', '52.00', 'product3.jpg', 'red', 'XII', 'cotton', 'binburhan', 1, 12, 0, '0'),
(15, 'Mango People T-shirt', 'test_desc', '52.00', 'product4.jpg', 'red', 'XII', 'cotton', 'binburhan', 1, 5, 0, '0'),
(16, 'Mango People T-shirt', 'test_desc', '52.00', 'product5.jpg', 'red', 'XII', 'cotton', 'binburhan', 1, 5, 0, '0'),
(17, 'Mango People T-shirt', 'test_desc', '52.00', 'product6.jpg', 'red', 'XII', 'cotton', 'binburhan', 1, 12, 0, '0'),
(18, 'BLAZE LEGGINGS', 'test_desc', '52.00', 'add_items1.jpg', 'red', 'XII', 'cotton', 'binburhan', 2, 3, 0, '1'),
(19, 'ALEXA SWEATER', 'test_desc', '52.00', 'add_items2.jpg', 'red', 'XII', 'cotton', 'binburhan', 2, 2, 0, '1'),
(20, 'AGNES TOP', 'test_desc', '52.00', 'add_items3.jpg', 'red', 'XII', 'cotton', 'binburhan', 2, 6, 0, '1'),
(21, 'SYLVA SWEATER', 'test_desc', '52.00', 'add_items4.jpg', 'red', 'XII', 'cotton', 'binburhan', 2, 13, 0, '1'),
(22, 'Mango People T-shirt', 'Брендовая', '34.00', 'fetured-item4.jpg', 'black', 'XII', 'cotton', 'binburhan', 2, 5, 1, '0');

-- --------------------------------------------------------

--
-- Структура таблицы `product_category`
--

CREATE TABLE `product_category` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `product_category`
--

INSERT INTO `product_category` (`id`, `name`, `position`) VALUES
(1, 'Accessories', 0),
(2, 'Bags', 0),
(3, 'Denim', 0),
(4, 'Hoodies & Sweatshirts', 0),
(5, 'Jackets & Coats', 0),
(6, 'Pants', 0),
(7, 'Polos', 0),
(8, 'Shirts', 0),
(9, 'Shoes', 0),
(10, 'Shorts', 0),
(11, 'Sweaters & Knits', 0),
(12, 'T-Shirts', 0),
(13, 'Tanks', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `product_gender`
--

CREATE TABLE `product_gender` (
  `id` int NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `product_gender`
--

INSERT INTO `product_gender` (`id`, `name`) VALUES
(1, 'men'),
(2, 'women');

-- --------------------------------------------------------

--
-- Структура таблицы `review`
--

CREATE TABLE `review` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `review`
--

INSERT INTO `review` (`id`, `name`, `place`, `text`, `date`) VALUES
(1, 'Bin Burhan', 'Dhaka, Bd', 'Vestibulum quis porttitor dui! Quisque viverra nunc mi, a pulvinar purus condimentum a. Aliquam condimentum mattis neque sed pretium', '2023-03-17 13:12:45'),
(2, 'Dan Balan', 'Dakota', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab itaque eligendi rerum et reprehenderit ullam beatae ipsum architecto minima autem porro, tenetur id ea quod cupiditate praesentium, totam quam amet.\r\n                Doloribus id, sequi, harum animi sunt consequuntur nemo reprehenderit, vero dolorum cumque quod! Rerum voluptas asperiores, saepe voluptatem deserunt, eius quaerat ipsa earum vitae in nam praesentium unde architecto excepturi?\r\n                Adipisci dicta perspiciatis pariatur expedita totam ullam eaque laboriosam ea itaque labore eum, error recusandae impedit dolore, et corrupti temporibus illo cumque quis voluptatem porro ipsa aut. Dicta, quisquam id.\r\n                Dolore suscipit culpa expedita recusandae autem repellat vitae asperiores cumque! Nisi laborum suscipit pariatur similique nihil quam dignissimos inventore quis, veritatis tempora. Rem facere architecto est a similique qui delectus?\r\n                Consectetur natus, nostrum vero non sed mollitia ipsa autem impedit laborum suscipit ad obcaecati sit quidem voluptatem temporibus. Harum at optio adipisci nulla modi odio. Ipsa dolores nesciunt vel. Exercitationem!\r\n                Quidem fugiat voluptatibus qui laudantium debitis, esse soluta. Amet repellat beatae numquam quis, quas autem ad voluptatibus sint adipisci cumque nihil necessitatibus iure commodi quidem iste, dolores debitis non enim!\r\n                Voluptatibus consequatur consectetur rem dolorum ab unde dicta, aut libero dignissimos in quam ullam explicabo vel deleniti aspernatur voluptate. Dicta adipisci reiciendis dignissimos non, provident aspernatur necessitatibus aliquid incidunt inventore!\r\n                Error magnam soluta dolorum pariatur laboriosam atque ipsum cum, repellat quidem provident nisi sed, facilis quia non sunt ullam iste laudantium. Aperiam ullam debitis nihil illo recusandae in repudiandae cum.\r\n                Voluptatum ex reprehenderit eius exercitationem ab quasi aut animi explicabo eum, consectetur doloremque suscipit alias! Voluptatum optio est eveniet, aperiam, delectus autem laudantium rem aliquid nobis maiores aut incidunt commodi!\r\n                Fugiat itaque cupiditate tempora harum rerum officiis asperiores ea quis dignissimos amet quisquam qui accusantium quas quae, doloribus labore laborum modi at fuga. Aliquam, deserunt nemo? Ex voluptatibus molestiae perspiciatis!', '2023-03-17 13:12:45'),
(3, 'Chuvi Bulb', 'Minessota', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab itaque eligendi rerum et reprehenderit ullam beatae ipsum architecto minima autem porro, tenetur id ea quod cupiditate praesentium, totam quam amet.\r\n                Doloribus id, sequi, harum animi sunt consequuntur nemo reprehenderit, vero dolorum cumque quod! Rerum voluptas asperiores, saepe voluptatem deserunt, eius quaerat ipsa earum vitae in nam praesentium unde architecto excepturi?', '2023-03-17 13:12:45');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `login` text NOT NULL,
  `pass` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_gender`
--
ALTER TABLE `product_gender`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `product_gender`
--
ALTER TABLE `product_gender`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `review`
--
ALTER TABLE `review`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
