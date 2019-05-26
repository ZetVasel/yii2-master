-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 26 2019 г., 21:23
-- Версия сервера: 5.6.37-log
-- Версия PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii2basic`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `part_post` varchar(50) NOT NULL,
  `post` varchar(256) NOT NULL,
  `data` date NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`id`, `author_id`, `title`, `part_post`, `post`, `data`, `category_id`) VALUES
(1, 0, 'Как заставить скрипт работать', '', 'Как я использую скрипт  Я часто делаю заказы с большим количеством текстов у копирайтеров, в каждом заказе указываю список URL статей, на которые стоит ориентироваться. Перед отправкой техзадания со списком URL я проверяю все эти страницы скриптом. Так мож', '2019-05-25', 0),
(2, 0, 'Что влияет на оптимизацию страницы', '', 'Изображения  К оптимизации изображений на странице относится «правильное» имя файла — оно должно включать ключевые слова. Также «ключи» нужно использовать при заполнении атрибута Alt.  Учитывайте качество фото и его размер. Некачественные фото могут отпугн', '2019-05-25', 0),
(3, 0, 'В поисках осьминога:  крутой конкурс от Serpstat и', '', 'Что нужно для участия в конкурсе? 1	 Найти всех осьминожек, в этой статье. 2	 Ответить на вопрос: почему вы хотите поехать на 8Р 2019 в футболке Serpstat? 3	 Написать ответы на первый и второй пункты в комментариях к посту на Facebook. упали позиции Из все', '2019-05-25', 0),
(4, 0, '6 советов по созданию креативов  для эффективной  ', '', 'В основе эффективной рекламной кампании лежат не настройки таргетинга и не размер бюджета, а коммуникационная стратегия. Именно она формирует восприятие бренда его целевой аудиторией.   В этой статье я поделюсь шестью ключевыми советами по созданию креатив', '2019-05-25', 0),
(5, 0, 'Подбирайте креативы в зависимости от Customer Jour', '', 'Customer Journey — это путь клиента, который он проходит от момента знакомства с определенным продуктом и до совершения конечного целевого действия, например, покупки. Понимая этапность, вы можете планировать коммуникационную стратегию. ', '2019-05-25', 0),
(6, 0, 'Как собрать ключевые фразы для оптимизации старых ', '', 'Вы регулярно наполняете сайт свежим и полезным контентом, но трафик растет вяло, и позиции стоят на месте. Что не так? Возможно, вы забыли о SEO уже существующих страниц?   По соотношению вложенного времени и результата, лучше всего работает именно оптимиз', '2019-05-25', 0),
(7, 0, 'API-методы для поиска ключевых фраз', '', 'Чтобы найти упущенные ключевые фразы для старых URL можно использовать два метода: URL missing keywords и Grab keywords.   URL missing keywords — метод, который доступен в интерфейсе сервиса и в Google таблицах. Он возвращает ключевые фразы, по которым кон', '2019-05-25', 0),
(8, 0, 'Метод «URL missing keywords» ', '', '1	 Вводим токен в соответствующее поле консоли. 2	 Выставляем количество запросов в секунду. 3	 Выбираем региональную базу данных. 4	 Выставляем метод «URL missing keywords». 5	 Вводим URL для анализа. 6	 Определяем количество слов в отчете. 7	 Загружаем д', '2019-05-25', 0),
(9, 0, 'Что такое рассылка и велкам-рассылка в Instagram', '', 'Рассылка в Instagram – это массовая отправка сообщений в директ подписчикам или другим пользователям соцсети. В рассылке можно разместить текст, активную ссылку и фото. Ее главная задача – построение отношений с потенциальными покупателями вашего Instagram', '2019-05-25', 0),
(10, 0, 'Рассылка в Instagram – это массовая отправка сообщ', '', 'Что умеет: Безопасно отправлять сообщения, распределенные по времени, с компьютера, планшета или телефона. Работать в облаке круглосуточно, без необходимости держать устройство включенным. Отслеживать новые письма и комментарии. Отвечать на уведомления пря', '2019-05-25', 0),
(11, 0, 'Кейс: Как увеличить поисковый трафик в 2 раза за 9', '', 'На этапе старта работ необходимо было определить кратковременную и долгосрочную стратегию продвижения, поэтому было принято решение провести конкурентный анализ для определения опорных точек продвижения.  На старте работ на сайте было много технических оши', '2019-05-25', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `Description` varchar(256) NOT NULL,
  `Pictures` blob NOT NULL,
  `Cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `title`, `Description`, `Pictures`, `Cost`) VALUES
(1, 'Персональный компьютер', 'Для работы в офисных предложениях', 0x68747470733a2f2f7777772e696775696465732e72752f75706c6f61642f69626c6f636b2f3363322f33633237663538383064343762306362626133373433316663343931383932612e6a7067, 13000);

-- --------------------------------------------------------

--
-- Структура таблицы `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `product_review`
--

CREATE TABLE `product_review` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL,
  `username` varchar(256) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `review_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(256) NOT NULL,
  `password_hash` varchar(256) NOT NULL,
  `password_reset_token` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `update_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `update_at`) VALUES
(1, 'mee', '', '0JFqWGPMoftJ9aSoTZWGS0Gpi55n36ZZ', '$2y$13$O7oRcF4iCni.qK1sD6OLau7JT.rv2m/LRkjh.P8htwefhkX1QO8oq', '', 'test@gmail.com', 0, 1558789068, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blog`
--
ALTER TABLE `blog`
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
-- Индексы таблицы `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`) USING BTREE,
  ADD UNIQUE KEY `email` (`email`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `product_review`
--
ALTER TABLE `product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
