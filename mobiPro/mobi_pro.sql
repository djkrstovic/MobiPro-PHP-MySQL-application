-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.1.31-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for mobi_pro
CREATE DATABASE IF NOT EXISTS `mobi_pro` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `mobi_pro`;

-- Dumping structure for table mobi_pro.article
CREATE TABLE IF NOT EXISTS `article` (
  `article_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `youtube_video_code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `is_visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table mobi_pro.article: ~3 rows (approximately)
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` (`article_id`, `created_at`, `title`, `content`, `youtube_video_code`, `is_visible`) VALUES
	(1, '2018-05-09 17:47:39', 'Samsung S9', '<p>Video reklama o modelu Samsung S9 i poboljšanjima koja uvodi kompanija Samsung.\n	                                           Ovaj model možete poruciti putem našeg sajta, u sekciji <a href="store.php">prodavnica</a>.</p>', '5_-NKRVn7IQ', 1),
	(2, '2018-05-09 17:47:39', 'Iphone X', '<p>Iphone X se smatra modelom budućnosti zbog svog dizajna, performansi i unapređenog procesora. Apple je odlučio da koristi 2.39 GHz hexa-core 64-bit procesor. Možete ga poručiti u sekciji <a href="store.php">prodavnica</a>.</p>', 'mW6hFttt_KE', 1),
	(3, '2018-05-09 17:47:39', 'Huawei P10', '<p>Video reklama o modelu Samsung S9 i poboljšanjima koja uvodi kompanija Samsung. Ovaj model možete poruciti putem našeg sajta, u sekciji <a href="store.php">prodavnica</a>.</p>', 'oCRBssIbBG0', 1);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;

-- Dumping structure for table mobi_pro.banner
CREATE TABLE IF NOT EXISTS `banner` (
  `banner_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '1',
  `is_visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`banner_id`),
  UNIQUE KEY `image_path_UNIQUE` (`image_path`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table mobi_pro.banner: ~2 rows (approximately)
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` (`banner_id`, `created_at`, `image_path`, `position`, `is_visible`) VALUES
	(1, '2018-05-09 17:45:33', 'img/slide1.png', 3, 1),
	(2, '2018-05-09 17:45:33', 'img/slide2.png', 2, 0),
	(3, '2018-05-09 17:45:33', 'img/slide3.png', 1, 1);
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;

-- Dumping structure for table mobi_pro.feature
CREATE TABLE IF NOT EXISTS `feature` (
  `feature_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`feature_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table mobi_pro.feature: ~7 rows (approximately)
/*!40000 ALTER TABLE `feature` DISABLE KEYS */;
INSERT INTO `feature` (`feature_id`, `created_at`, `name`) VALUES
	(1, '2018-05-09 17:45:40', 'Operativni sistem'),
	(2, '2018-05-09 17:45:40', 'Tip kartice'),
	(3, '2018-05-09 17:45:40', 'Dijagonala ekrana'),
	(4, '2018-05-09 17:45:40', 'Tip ekrana'),
	(5, '2018-05-09 17:45:40', 'Kapacitet baterije'),
	(6, '2018-05-09 17:45:40', 'Rezolucija prednje kamere'),
	(7, '2018-05-09 17:45:40', 'Rezolucija zadnje kamere');
/*!40000 ALTER TABLE `feature` ENABLE KEYS */;

-- Dumping structure for table mobi_pro.manufacturer
CREATE TABLE IF NOT EXISTS `manufacturer` (
  `manufactorer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`manufactorer_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table mobi_pro.manufacturer: ~6 rows (approximately)
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` (`manufactorer_id`, `created_at`, `name`) VALUES
	(1, '2018-05-09 17:45:37', 'Samsung'),
	(2, '2018-05-09 17:45:37', 'LG'),
	(3, '2018-05-09 17:45:37', 'Huawei'),
	(4, '2018-05-09 17:45:37', 'Meizu'),
	(5, '2018-05-09 17:45:37', 'Lenovo'),
	(6, '2018-05-09 17:45:37', 'Apple');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;

-- Dumping structure for table mobi_pro.message
CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table mobi_pro.message: ~0 rows (approximately)
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;

-- Dumping structure for table mobi_pro.order
CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `phone_id` int(10) unsigned NOT NULL,
  `forename` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`order_id`),
  KEY `fk_order_phone_id_idx` (`phone_id`),
  CONSTRAINT `fk_order_phone_id` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`phone_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table mobi_pro.order: ~0 rows (approximately)
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` (`order_id`, `created_at`, `phone_id`, `forename`, `surname`, `email`, `phone`, `address`, `quantity`) VALUES
	(2, '2018-05-15 15:52:26', 3, 'Ime', 'Prezime', 'ime.prezime@mejl.rs', '065-22-22-222', 'Neka 34', 2);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;

-- Dumping structure for table mobi_pro.page
CREATE TABLE IF NOT EXISTS `page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `title_UNIQUE` (`title`),
  UNIQUE KEY `slug_UNIQUE` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table mobi_pro.page: ~2 rows (approximately)
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` (`page_id`, `created_at`, `title`, `content`, `slug`, `is_visible`) VALUES
	(1, '2018-05-08 17:48:00', 'O nama', '<div class="blok1">\n				<h3>MobiPro</h3><br>\n				<p><b>MobiPro</b> se već dugi niz godina bavi prodajom mobilnih telefona. Možemo se pohvaliti velikim brojem zadovoljnih kupaca. Poslujemo u Beogradu već više od 20 godina. Pored toga što se bavimo prodajom telefona, takođe ih i servisiramo.</p><br>\n				<p><b>Istorija</b></p><br>\n				<p><b>1996</b> Otvorene prve prostorije MobiPro<br>\n				<b>2003</b> Sertifikovan servis za Iphone telefone<br>\n				<b>2007</b> Otvorene prostorije na jos 5 lokacija\n			</p></div>\n			\n			\n			<div class="blok1r">\n				<div class="container">\n				<img src="img/pink.jpg" alt="MobiPro" class="image">\n				<div class="overlay">\n					<div class="text">MobiPro</div>\n				</div>\n				</div>\n				<br>\n				<h3>Proizvodjaci sa kojima sarađujemo</h3>\n				 <p><br>(Kliknite "Prikaži više" za prikaz)</p>\n				 \n				\n			</div>\n\n<div id="grupa3">\n			\n			<div class="blok1">\n			\n				\n			</div>\n			\n			\n			<div class="blok1a">\n			\n			<p id="sakrivenP">\n			Samsung</br></br>\n			LG</br></br>\n			Huawei</br></br>\n			Iphone</br></br>\n            Lenovo</br></br>\n            Meizu</br></br>\n			</p>\n			<input type="button" class="buttonL" id="toggleButton" value="Prikaži više">\n			</div>\n			\n		</div>', 'o-nama', 1),
	(2, '2018-05-09 17:50:13', 'Kontaktirajte sa nama', '\n			<div class="blokC">\n			\n				<form id="forma">\n				\n				\n		\n					<p>E-mail: *</p>\n					<input type="text" class="forma1" name="email" id="email" placeholder="Unesite vaš e-mail*"><span class="greska" id="gemail"></span><br>\n										\n					<p>Ime: *</p>\n					<input type="text" class="forma1" name="ime" id="ime" placeholder="Unesite vaše ime*"><span class="greska" id="gname"></span><br><br>\n					\n					<p>Telefon: *</p>\n					<input type="text" class="forma1" name="telefon" id="telefon" placeholder="Unesite telefon*"><span id="gtelefon">Format unosa: (0x)x-xx-xx-xxx</span><br><br>\n					\n					<p>Poruka: *</p>\n					<textarea type="text" class="forma1a" name="help" id="help" placeholder="Unesite tekst poruke*" rows="30" cols="60" onfocus="info();"></textarea><br>\n				\n					<input type="button" name="reg" class="reg" id="reg" value="Posalji" onclick="provera();">\n\n					<p>*Obavezna polja.</p>				\n				</form>\n				\n			</div>\n			\n			\n			<div class="blokC">\n				<h3 class="">Kontakt informacije</h3>\n					<p>Firma&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MobiPro</p>\n					<p>Telefon&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+381 11 xxx xx xx </p>\n					<p>Adresa&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ulica BB</p>\n					<p>E-mail &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MobiPro@mail.com </p>\n				<br>\n				<br>\n				<br>\n				<br>\n				<br>\n				<br>\n				<br>\n				<br>\n				<br>\n				<br>\n				<br>\n				<br>\n				\n			\n			\n				\n			\n			\n			\n			\n			\n			</div>', 'kontakt', 1);
/*!40000 ALTER TABLE `page` ENABLE KEYS */;

-- Dumping structure for table mobi_pro.phone
CREATE TABLE IF NOT EXISTS `phone` (
  `phone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` int(10) unsigned NOT NULL,
  `image_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`phone_id`),
  UNIQUE KEY `image_path_UNIQUE` (`image_path`),
  KEY `fk_phone_manufacturer_id_idx` (`manufacturer_id`),
  CONSTRAINT `fk_phone_manufacturer_id` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`manufactorer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table mobi_pro.phone: ~6 rows (approximately)
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` (`phone_id`, `created_at`, `name`, `description`, `manufacturer_id`, `image_path`, `price`) VALUES
	(1, '2018-05-09 17:51:20', 'S9', 'Trenutno najaktuelniji model koji možete poručiti kod nas. Ako želite da pravite selfi slike poput svih instagramuša morate imati ovaj model u svojim rukama.', 1, 'img/st1.jpg', 78000.00),
	(2, '2018-05-09 17:51:20', 'G7', 'Istina je da ovaj model prave mali žuti ljudi iz Seula u Južnoj Koreji, ali veličina nikada nije bila bitna zar ne? Ako ste optimista ovo je uređaj za vas!', 2, 'img/st2.jpg', 76000.00),
	(3, '2018-05-12 22:01:27', 'P10', 'Ko bi ikada rekao da Huawei može da napravi ozbiljan telefon? Verovatno niko. Elem, sjajne fotke za instagram, još bolji za otvaranje piva.', 3, 'img/st3.jpg', 94000.00),
	(4, '2018-05-12 22:02:14', '15 Plus', 'Čuj MEIZU, pa ja bih tako nazvao mačku mutanta, međutim ovaj model se pokazao kao veoma pouzdan i kvalitetan. U suštini ovo je mercedes za male pare.', 4, 'img/st4.jpg', 68000.00),
	(5, '2018-05-12 22:02:51', 'S5', 'Ljudi kažu da imaju jako dobru bateriju, pa ukoliko ste vi jedna od onih osoba koja telefon ne ispušta iz ruku ceo dan, ovo je pravi uređaj za vas.', 5, 'img/st5.jpg', 65000.00),
	(6, '2018-05-12 22:02:59', 'iPhone X', 'Perfektan uređaj za svakoga ko ima komplekse, i probleme sa samopouzdanjem, želi da devojke privuče tehonologijom...za to postoji druga tehnologija.', 6, 'img/st6.jpg', 178000.00);
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;

-- Dumping structure for table mobi_pro.phone_feature
CREATE TABLE IF NOT EXISTS `phone_feature` (
  `phone_feature_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `phone_id` int(10) unsigned NOT NULL,
  `feature_id` int(10) unsigned NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`phone_feature_id`),
  KEY `fk_phone_feature_phone_id_idx` (`phone_id`),
  KEY `fk_phone_feature_feature_id_idx` (`feature_id`),
  CONSTRAINT `fk_phone_feature_feature_id` FOREIGN KEY (`feature_id`) REFERENCES `feature` (`feature_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_phone_feature_phone_id` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`phone_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table mobi_pro.phone_feature: ~37 rows (approximately)
/*!40000 ALTER TABLE `phone_feature` DISABLE KEYS */;
INSERT INTO `phone_feature` (`phone_feature_id`, `created_at`, `phone_id`, `feature_id`, `value`) VALUES
	(1, '2018-05-09 17:52:47', 1, 1, 'Android 8.0.0 Oreo'),
	(2, '2018-05-09 17:52:47', 1, 2, 'Dual SIM'),
	(3, '2018-05-09 17:52:47', 1, 3, '6.2 inča'),
	(4, '2018-05-09 17:52:47', 1, 4, 'Dual core Super AMOLED'),
	(5, '2018-05-09 17:52:47', 1, 5, '3500 mAh'),
	(6, '2018-05-09 17:52:47', 1, 6, '8MP'),
	(7, '2018-05-09 17:52:47', 1, 7, '12MP'),
	(13, '2018-05-09 17:54:35', 2, 1, 'Android 8.0.0 Oreo'),
	(14, '2018-05-09 17:54:35', 2, 2, 'Nano SIM'),
	(15, '2018-05-09 17:54:35', 2, 3, '6.1 inča'),
	(16, '2018-05-09 17:54:35', 2, 4, 'IPS LCD'),
	(17, '2018-05-09 17:54:35', 2, 5, '3000 mAh'),
	(18, '2018-05-09 17:54:35', 2, 7, '16MP'),
	(19, '2018-05-12 22:04:06', 3, 1, 'Android 8.0.0 Oreo'),
	(20, '2018-05-12 22:04:23', 3, 2, 'nano SIM'),
	(21, '2018-05-12 22:04:55', 3, 3, '5.1 inča'),
	(22, '2018-05-12 22:05:06', 3, 4, 'IPS-NEO LCD'),
	(23, '2018-05-12 22:05:16', 3, 5, '3200 mAh'),
	(24, '2018-05-12 22:05:27', 3, 7, '12 MP'),
	(25, '2018-05-12 22:05:50', 4, 1, 'Android 8.0.0 Oreo'),
	(26, '2018-05-12 22:06:01', 4, 2, 'nano SIM'),
	(27, '2018-05-12 22:06:13', 4, 3, '6.0 inča'),
	(28, '2018-05-12 22:06:30', 4, 4, 'Capacitive touchscreen'),
	(29, '2018-05-12 22:06:39', 4, 5, '3930 mAh'),
	(30, '2018-05-12 22:06:46', 4, 7, '12 MP'),
	(31, '2018-05-12 22:07:06', 5, 1, 'Android 8.0.0 Oreo'),
	(32, '2018-05-12 22:07:11', 5, 2, 'Hybrid Dual SIM'),
	(33, '2018-05-12 22:07:20', 5, 3, '5.7 inča'),
	(34, '2018-05-12 22:07:27', 5, 4, 'IPS LCD'),
	(35, '2018-05-12 22:07:33', 5, 5, '3000 mAh'),
	(36, '2018-05-12 22:07:41', 5, 7, '13 MP'),
	(37, '2018-05-12 22:07:54', 6, 1, 'iOS 11.2.5'),
	(38, '2018-05-12 22:08:03', 6, 2, 'nano SIM'),
	(39, '2018-05-12 22:08:24', 6, 3, '5.8 inča'),
	(40, '2018-05-12 22:08:33', 6, 4, 'Super AMOLED'),
	(41, '2018-05-12 22:08:47', 6, 5, '2716 mAh'),
	(42, '2018-05-12 22:08:54', 6, 7, '12 MP');
/*!40000 ALTER TABLE `phone_feature` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
