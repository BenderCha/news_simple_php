-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 17 2023 г., 20:02
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `news_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `content`, `image`, `created_at`) VALUES
(2, 'Dunyodagi birinchi uchar avtomobil, Toyota Crown 2024 va uchuvchisiz yuk samolyotlari ', 'Kun.uz yakunlanayotgan haftadagi texnologiya va ilm-fanga oid eng qiziqarli xabarlarni jamladi.', 'Toyota Crown 2024 taqdim etildi. U yaxshilangan intererga ega bo‘ladi va hozirgi dizaynini saqlab qoladi. Avtomobil uch xil – XLE, Limited va Platinum komplektatsiyalarida sotuvga chiqariladi. Yangilangan Toyota Crown’ning eng arzon komplektatsiyasi narxi 40 ming 50 dollardan boshlanadi, u 100 km masofaga 5,7 litr benzin sarflaydi. Eng zamonaviy Crown Platinum modeli esa 53 ming 70 dollarga baholangan bo‘lib, umumiy quvvati 340 ot kuchiga teng, 100 km masofaga 7,8 litr benzin sarflaydi.', 'img/541eabbccd2ed46a0ed8f9d98d1e274f.jpg', '2023-10-17'),
(3, 'Yerga Bennu asteroididan olingan tuproq namunasi bo‘lgan kapsula yetkazildi', 'OSIRIS-REx zondi tomonidan 2020 yilda olingan namunalar bo‘lgan issiqlikka chidamli kapsula Yuta shtatiga qo‘ndi. Uning tarkibida Bennu asteroidi yuzasidan taxminan 250 gramm tuproq va chang borligi taxmin qilinmoqda.', 'Bennu asteroidi yuzasidan olingan tuproq namunalari bo‘lgan kapsula Amerikaning Yuta shtatiga qo‘ndi. Kapsula 24 sentabr, yakshanba kuni ertalab soat 10:52 da 3,86 milliard milya yo‘l bosib kelgan, deb xabar qildi AQSh Milliy aeronavtika va koinot boshqarmasi (NASA). \r\n\r\nIssiqlikka chidamli qobiq bilan himoyalangan, og‘irligi taxminan 46 kg va diametri taxminan 81 sm bo‘lgan kapsula kutilganidan uch daqiqa oldin qo‘ndi. So‘nggi 13 daqiqada u Yer atmosferasi bo‘ylab 44 000 km/soat tezlikda uchgan. Bir necha soat oldin u OSIRIS-REx zondi tomonidan taxminan 102 ming kilometr balandlikdan Yerga tushirildi. NASA hisob-kitoblariga ko‘ra, kapsulada 2020 yil oktyabr oyida asteroiddan yig‘ilgan taxminan 250 gramm tosh bor. Endi bu namunalar tadqiqot uchun NASA’ning Hyustondagi (Texas) laboratoriyalariga yetkaziladi. 200 ga yaqin olim 60 xil usul yordamida tadqiqot olib boradi. \r\n\r\nNamunalar 2020 yilda olingan \r\n\r\nDiametri 550 metr bo‘lgan Bennu asteroidi orbitasining Yerga yaqinligi, asteroid o‘lchami va unda borligi taxmin qilinayotgan materiallar tufayli tanlangan. NASA mutaxassislari uni Yer uchun eng xavfli asteroid deb hisoblamoqda. Ehtimol, yaqin 150 yil ichida asteroid Yerga yaqinlashishi mumkin. 2016 yil sentabrida og‘irligi 2100 kg va uzunligi 6 metr bo‘lgan OSIRIS-REx uchuvchisiz kosmik apparati Kanaveral burnidan uchirildi, u 2018 yil dekabrida samoviy jismga yetib kelgan. Shundan so‘ng sirtni xaritalash, namuna olish joylarini tanlash boshlandi. NASA 2020 yil oktyabr oyi oxirida Bennu asteroidida chang va tuproq namunalari muvaffaqiyatli olinganini e’lon qildi. \r\n\r\nBennu asteroididan olingan tuproq Amerikaning «Apollon» dasturidan keyin koinotdan Yerga olib kelingan eng yirik namuna ekanligiga ishoniladi. Olimlar quyosh tizimining 4,5 milliard yil avval paydo bo‘lishi haqida yangi ma’lumotlarni taqdim etishga umid qilmoqda. Loyiha qiymati taxminan 800 million dollarni (750 million yevro) tashkil etadi. ', 'img/8a477c2d9343dc6b6396c6fd03c9f5ae.jpg', '2023-10-17');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
