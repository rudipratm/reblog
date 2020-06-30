-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for reblog
CREATE DATABASE IF NOT EXISTS `reblog` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `reblog`;

-- Dumping structure for table reblog.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table reblog.categories: ~4 rows (approximately)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `user_id`, `c_name`, `created_at`) VALUES
	(1, 0, 'Technology', '2017-03-04 13:03:18'),
	(2, 0, 'Business', '2017-03-04 13:14:40'),
	(3, 0, 'Edukasi', '2020-01-10 16:31:01'),
	(4, 0, 'Bencana Alam', '2020-01-29 21:56:56');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table reblog.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table reblog.comments: ~2 rows (approximately)
DELETE FROM `comments`;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
	(1, 1, 'Indiana Jones', 'indianajones@mail.com', 'Hai, aku ingin belajar Lorem Ipsum.', '2020-01-10 16:35:38'),
	(2, 1, 'Dede', 'dede@mail.com', 'Hello, this is cool!', '2020-01-29 21:56:03');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Dumping structure for table reblog.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_posts_categories` (`category_id`),
  KEY `FK_posts_users` (`user_id`),
  CONSTRAINT `FK_posts_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_posts_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table reblog.posts: ~2 rows (approximately)
DELETE FROM `posts`;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`, `deleted`) VALUES
	(1, 1, 1, 'Belajar Bareng Lorem Ipsum', 'Belajar-Bareng-Lorem-Ipsum', '<p><big><strong>Lorem ipsum</strong></big> dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam sem fringilla ut morbi tincidunt augue. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum varius. Sit amet est placerat in. Diam ut venenatis tellus in metus vulputate eu. Sit amet cursus sit amet dictum sit amet. Suspendisse in est ante in nibh mauris. Aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Nunc sed velit dignissim sodales ut. Hendrerit gravida rutrum quisque non tellus. Sit amet nisl suscipit adipiscing bibendum est.</p>\r\n\r\n<p>Aliquet eget sit amet tellus cras adipiscing. Eget dolor morbi non arcu risus. Egestas tellus rutrum tellus pellentesque eu tincidunt. Faucibus turpis in eu mi bibendum neque egestas congue. Vestibulum lectus mauris ultrices eros in cursus turpis massa. Tortor at risus viverra adipiscing at in tellus integer feugiat. In mollis nunc sed id semper risus in. Diam donec adipiscing tristique risus. Ultrices neque ornare aenean euismod elementum. Tellus in hac habitasse platea dictumst vestibulum rhoncus est pellentesque.</p>\r\n\r\n<p>Tempor orci dapibus ultrices in. Molestie ac feugiat sed lectus vestibulum mattis ullamcorper. Velit euismod in pellentesque massa placerat duis ultricies lacus sed. Tortor condimentum lacinia quis vel eros. Et egestas quis ipsum suspendisse. Nisi scelerisque eu ultrices vitae auctor eu. Nec ultrices dui sapien eget mi proin sed. Faucibus scelerisque eleifend donec pretium vulputate. Maecenas ultricies mi eget mauris. Quam nulla porttitor massa id neque aliquam vestibulum. Velit laoreet id donec ultrices tincidunt arcu non. Vulputate odio ut enim blandit volutpat maecenas volutpat. Quis viverra nibh cras pulvinar mattis nunc. Lobortis mattis aliquam faucibus purus in. Ultrices in iaculis nunc sed augue lacus viverra vitae congue. Quis varius quam quisque id diam vel quam elementum pulvinar.</p>\r\n\r\n<p>Metus aliquam eleifend mi in nulla posuere sollicitudin aliquam. Ultricies mi quis hendrerit dolor magna eget est. Ultrices dui sapien eget mi proin. Varius morbi enim nunc faucibus a. Ullamcorper sit amet risus nullam eget felis. Aliquet sagittis id consectetur purus ut faucibus pulvinar. Massa tincidunt dui ut ornare lectus sit amet est. Donec massa sapien faucibus et molestie ac feugiat. Euismod quis viverra nibh cras. Laoreet suspendisse interdum consectetur libero. Mauris sit amet massa vitae. Turpis massa tincidunt dui ut ornare lectus. Aliquet nec ullamcorper sit amet risus nullam eget. Morbi tempus iaculis urna id. Id diam maecenas ultricies mi eget. Convallis posuere morbi leo urna molestie. Nam aliquam sem et tortor consequat id porta.</p>\r\n\r\n<p>Dignissim convallis aenean et tortor at. Quis lectus nulla at volutpat. Diam donec adipiscing tristique risus nec feugiat in fermentum. Ornare lectus sit amet est placerat in egestas erat imperdiet. Nibh venenatis cras sed felis eget velit. Nisi quis eleifend quam adipiscing. Proin sagittis nisl rhoncus mattis rhoncus urna neque viverra. Tempus iaculis urna id volutpat lacus laoreet non. Vitae turpis massa sed elementum tempus egestas. At erat pellentesque adipiscing commodo elit at. Malesuada fames ac turpis egestas integer eget aliquet nibh. Quam pellentesque nec nam aliquam. Pretium lectus quam id leo in vitae turpis. Eu mi bibendum neque egestas congue quisque egestas diam. Eu sem integer vitae justo. Risus commodo viverra maecenas accumsan. Arcu dictum varius duis at. Iaculis eu non diam phasellus vestibulum. Augue interdum velit euismod in. Consequat id porta nibh venenatis cras sed felis eget.</p>\r\n', 'Data.jpg', '2020-01-10 16:13:00', 0),
	(2, 4, 1, 'Bencana alam landa 10 kecamatan di Padang Pariaman', 'Bencana-alam-landa-10-kecamatan-di-Padang-Pariaman', '<p>Parit Malintang (ANTARA) - Kabupaten Padang Pariaman, Sumatera Barat, mengalami banjir, longsor, serta pohon tumbang di 10 kecamatan dari 17 kecamatan pada Rabu pagi akibat cuaca ekstrem.</p>\r\n\r\n<p>&quot;Berdasarkan data yang terhimpun hingga pukul 14.00 WIB tadi setidaknya peristiwa bencana terjadi di 21 lokasi di Padang Pariaman,&quot; kata Kepala Pelaksana Badan Penanggulangan Bencana Daerah Kabupaten Padang Paraman Budi Mulya di Parit Malintang, Rabu.</p>\r\n\r\n<p>Bencana tersebut adalah banjir di delapan lokasi, longsor sembilan lokasi, dan pohon tumbang empat lokasi.</p>\r\n\r\n<p>Adapun lokasi banjir terjadi di Korong Duku, Nagari Pilubang, Kecamatan Sungai Limau dan di Korong Sungai Sariak, Nagari Malai V Suku, Kecamatan Batang Gasan, &nbsp;di Korong Rukam Pauh Manis, Nagari Koto Dalam Selatan, Kecamatan Padang Sago dan Korong Kampung Tanjung, Nagari Campago, Kecamatan V Koto Kampung Dalam.</p>\r\n\r\n<p>Lalu, banjir di Korong Kapalo Banda, Nagari Sungai Buluh Barat, Kecamatan Batang Anai serta di Korong Ujuang Rajang dan Korong Baruah, Nagari Kampuang Galapuang Ulakan, dan di Korong Padang Pauah, Nagari Ulakan, Kecamatan Ulakan Tapakis.</p>\r\n\r\n<p>Baca juga: Banjir dan longsor merusak jalan dan bendungan di Padang Pariaman</p>\r\n\r\n<p>Baca juga: Banjir dan longsor terjang Padang Pariaman timbulkan korban jiwa</p>\r\n\r\n<p>Baca juga: Warga Padang Pariaman bangun jembatan darurat</p>\r\n\r\n<p>Akibat bencana itu sejumlah rumah dan mushala terendam banjir, jembatan rusak, dan bahkan ada jalan amblas sepanjang 200 meter.</p>\r\n\r\n<p>Sedangkan longsor terjadi di Korong Lampajang, Nagari Kuranji Hilir, Kecamatan Sungai Limau dan di Korong Sungai Janiah, Nagari Sikucur, Kecamatan V Koto Kampung Dalam, di Korong Kolam Janiah dan Korong Lansano, Nagari Sikucur, Kecamatan V Koto Kampung Dalam serta di Korong Kampung Bonai, Nagari Parit Malintang, Kecamatan Enam Lingkung.</p>\r\n\r\n<p>Seterusnya longsor di Korong Kalampayan, Korong Guguak dan Korong Pasa Paingan, Nagari Koto Tinggi Kuranji Hilir, Kecamatan Sungai Limau serta di Korong Kampung Pinang dan Korong Koto Tinggi, Nagari Batu Gadang Kuranji Hulu, Kecamatan Sungai Geringging.</p>\r\n\r\n<p>Akibat longsor tersebut sejumlah akses jalan tertutup material longsor, bahkan ada taman kanak-kanak tertimpa longsor dan jalan amblas.</p>\r\n\r\n<p>Pohon tumbang terjadi di Korong Koto Rajo, Nagari Sunur Tengah, Kecamatan Nan Sabaris, selanjutnya di Korong Bayur, Nagari Koto Tinggi, Kecamatan Enam Lingkung, di Korong Kampung Tanjuang, Nagari Kudu Gantiang, Kecamatan V Koto Timur dan di Korong Marantiah, Nagari Ketaping, Kecamatan Batang Anai.</p>\r\n\r\n<p>&quot;Sampai sekarang belum ada laporan korban jiwa akibat sejumlah bencana yang menimpa Padang Pariaman ini,&quot; katanya.*</p>\r\n', 'Gambar-Banjir.jpg', '2020-01-29 22:00:50', 0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table reblog.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table reblog.users: ~2 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
	(1, 'Rudi Pratama', '75125', 'rudi.pratm@gmail.com', 'rudi', '1755e8df56655122206c7c1d16b1c7e3', '2020-01-01 01:00:00'),
	(2, 'Jusmawati', 'Jusma1998', 'Jusmawati094@gmail.com', 'Jusmawati', '00f2e2872bbe25145967582014a977e6', '2020-01-10 16:31:09');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
