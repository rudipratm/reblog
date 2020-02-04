-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.37-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping data for table reblog.categories: ~2 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
REPLACE INTO `categories` (`id`, `name`, `created_at`) VALUES
	(1, 'Business', '2018-12-06 14:50:57'),
	(2, 'Technology', '2018-12-06 14:50:57'),
	(3, 'Fiction', '2018-12-06 14:50:58'),
	(4, 'Informative', '2018-12-06 14:50:59');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping data for table reblog.posts: ~4 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
REPLACE INTO `posts` (`id`, `category_id`, `title`, `slug`, `body`, `post_image`, `created_at`, `deleted`) VALUES
	(1, 4, 'Lorem Ipsum', 'b636553b8cb9cfdc4f2e7b42a50e53d4', '<h2>Pengertian</h2>\r\n\r\n<p>Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak. Maksud penggunaan lipsum adalah agar pengamat tidak terlalu berkonsentrasi kepada arti harfiah per kalimat, melainkan lebih kepada elemen desain dari teks yang dipresentasi.</p>\r\n\r\n<p>Lorem ipsum disebut juga dengan greeking (melatinkan/meyunanikan) karena kalimat ini berasal dari bahasa Latin.</p>\r\n\r\n<h2>Aplikasi</h2>\r\n\r\n<p>Contoh teks lorem ipsum yang lazim digunakan adalah:</p>\r\n\r\n<blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n</blockquote>\r\n\r\n<p><br />\r\nTeks asli dari Cicero untuk lorem ipsum adalah sebagai berikut (dengan bagian-bagian cuplikannya yang dicetak tebal):</p>\r\n\r\n<blockquote>\r\n<p>Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit, amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt, ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur? [33] At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias excepturi sint, obcaecati cupiditate non provident, similique sunt in culpa, qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>\r\n</blockquote>\r\n\r\n<h2>Variasi</h2>\r\n\r\n<p>Dalam bahasa Indonesia, kalimat di atas diterjemahkan: &quot;Demikian pula, tidak adakah orang yang mencintai atau mengejar atau ingin mengalami penderitaan, bukan semata-mata karena penderitaan itu sendiri, tetapi karena sesekali terjadi keadaan di mana susah-payah dan penderitaan dapat memberikan kepadanya kesenangan yang besar. Sebagai contoh sederhana, siapakah di antara kita yang pernah melakukan pekerjaan fisik yang berat, selain untuk memperoleh manfaat daripadanya? Tetapi siapakah yang berhak untuk mencari kesalahan pada diri orang yang memilih untuk menikmati kesenangan yang tidak menimbulkan akibat-akibat yang mengganggu, atau orang yang menghindari penderitaan yang tidak menghasilkan kesenangan?&quot;<br />\r\n&nbsp;</p>\r\n', 'lorem-ipsum-logo.jpg', '2018-12-06 13:34:20', 0),
	(2, 3, 'Menyenangkan', '87c337e3794e4778281514ee16e70be1', '<p>Membuat blog itu menyenangkan!&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ac lorem lacinia, tristique erat non, iaculis dui. Proin non imperdiet arcu, a euismod urna. Nullam varius, ligula at semper blandit, metus justo fringilla leo, sit amet sodales turpis eros quis tortor. Nunc pretium lectus felis, eu blandit leo dapibus id. Mauris mollis ligula mi, ut euismod turpis pulvinar non. Integer vitae scelerisque nunc. Praesent condimentum libero sit amet ultrices congue. Fusce viverra tempor erat, sed ultricies neque rhoncus eleifend. Sed tincidunt velit at nisl tempus facilisis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>\r\n\r\n<p>Fusce eu quam mi. Duis ac tortor at est dapibus tincidunt nec sed eros. Duis sit amet massa at libero maximus lobortis. Nunc tristique at urna sed pulvinar. Duis non massa malesuada, maximus erat vitae, faucibus justo. In vitae ex libero. Nunc semper ut ex ut condimentum. Nam at ultricies sapien. Nulla lobortis ligula leo, non condimentum tortor ultricies a. Nulla facilisi. Fusce commodo magna felis, vitae convallis felis semper sed. Curabitur porttitor consequat velit in porta. Duis sed libero in velit viverra venenatis non sed tellus. Suspendisse placerat venenatis quam, quis egestas dolor mattis sit amet. In hac habitasse platea dictumst. Donec a nisl fermentum, pretium nunc in, tincidunt sem.</p>\r\n', 'fun-clip-art-049.png', '2018-12-06 13:45:57', 0),
	(3, 4, 'Hewan Lumba-Lumba', 'f8aa49c092f0001b2a8ec0aa42d27612', '<p><strong>Lumba-lumba</strong> adalah mamalia laut yang sangat cerdas, selain itu sistem alamiah yang melengkapi tubuhnya sangat kompleks. Sehingga banyak teknologi yang terinspirasi dari lumba-lumba. Salah satu contoh adalah kulit lumba-lumba yang mampu memperkecil gesekan dengan air, sehingga lumba-lumba dapat berenang dengan sedikit hambatan air. Hal ini yang digunakan para perenang untuk merancang baju renang yang mirip kulit lumba-lumba.</p>\r\n\r\n<p>Lumba-lumba memiliki sebuah sistem yang digunakan untuk berkomunikasi dan menerima rangsang yang dinamakan sistem sonar, sistem ini dapat menghindari benda-benda yang ada di depan lumba-lumba, sehingga terhindar dari benturan. Teknologi ini kemudian diterapkan dalam pembuatan radar kapal selam. Lumba-lumba adalah binatang menyusui karena lumba lumba adalah mamalia. Mereka hidup di laut dan sungai di seluruh dunia. Lumba-lumba adalah kerabat paus dan pesut. Ada lebih dari 40 jenis lumba-lumba.</p>\r\n\r\n<p>Bayi lumba-lumba yang baru lahir akan dibawa ke permukaan oleh induknya agar bisa menghirup udara. Lumba-lumba perlu naik ke permukaan untuk bernapas supaya tetap hidup. Lumba-lumba bernapas melalui lubang udara yang terletak di atas kepalnya. Tubuhnya yang licin dan ramping sangat sesuai untuk berenang. Induk lumba-lumba menyusui anaknya dengan susu yang gurih dan menyediakan energi bagi anaknya supaya cepat besar. Setiap anak lumba-lumba selalu berada di dekat induknya, sehingga ibunya bisa melindungi dari bahaya. Lumba-lumba selalu menjaga hubungan dengan anaknya hingga tumbuh semakin besar. Induk lumba-lumba memanggil anak anaknya dengan siulan khusus yang bisa mereka kenali.</p>\r\n\r\n<p>Lumba-lumba hidup dan bekerja dalam kelompok atau disebut kawanan. Mereka sering bermain bersama. Seekor lumba-lumba tidak bisa tidur nyenyak di bawah air. Ia bisa tenggelam. Oleh karena itu, ia setengah tidur beberapa saat dalam sehari. Lumba-lumba makan cumi dan ikan seperti ikan mullet abu-abu. Kadang kadang Lumba-lumba menggiring kawanan ikan agar mudah ditangkap. Lumba-lumba mencari jalan dengan mengirimkan suara di dalam air. Jika suara itu mengenai suatu benda, suara itu akan dipantulkan kembali sebagai gema. Kadang kadang, suara gaduh di laut akibat pengeboran minyak dapat membingungkan lumba-lumba. Mereka akan mengalami kesulitan dalam mengirim dan menerima pesan. Karena lumba-lumba dapat berkomunikasi, maka lumba-lumba disebut sebagai hewan yang paling cerdas, melebihi simpanse.</p>\r\n\r\n<p>Manusia senantiasa tertarik dengan kisah lumba-lumba. Bangsa Romawi telah membuat gambar mozaik lumba-lumba sekitar 2.000 tahun lalu. Sekarang, manusia senang berenang di laut bersama binatang yang pandai dan bersahabat seperti lumba-lumba. Lumba-lumba harus berhati hati terhadap ikan hiu yang mungkin menyerang mereka sewaktu waktu. Mereka melindungi diri dengan gigi giginya, kadang-kadang mereka menggunakan paruhnya sebagai pelantak. Manusia dapat menjala banyak sekali ikan bagi lumba-lumba untuk makanannya. Terkadang, lumba-lumba tertangkap oleh jaring nelayan. Mereka tidak dapat menghirup napas di permukaan, akibatnya mereka tenggelam. Ketika bahan kimia yang berbahaya dibuang ke laut, limbah itu bisa meracuni makanan yang dimakan lumba-lumba. Pembangunan waduk di sungai dan pengeringan danau hanya menyisakan sedikit tempat bagi binatang seperti lumba-lumba Brazil untuk hidup.</p>\r\n\r\n<p>Lumba-lumba tergolong sebagai mamalia yang cerdas. Lumba-lumba dapat menolong manusia, bila lumba-lumba sudah terlatih, bahkan lingkaran api pun dapat mereka terobos. Singa laut, spesies primata, ikan paus dan anjing juga termasuk binatang yang cerdas. Lumba-lumba yang sudah terlatih dapat melakukan berbagai atraksi dan mereka juga dapat berhitung, tetapi Lumba-lumba liar belum dapat melakukan berbagai atraksi. Sekarang ini, lumba-lumba dan paus sudah langka, maka lumba-lumba dan paus harus dilindungi. Lumba-lumba dan paus telah mulai dilindungi di seluruh dunia.</p>\r\n', 'dolphin_16x9_1.jpg', '2018-12-06 14:50:40', 0),
	(4, 4, 'Indonesia', '4647d00cf81f8fb0ab80f753320d0fc9', '<p><strong>Republik Indonesia (RI)</strong> atau<strong> Negara Kesatuan Republik Indonesia (NKRI)</strong>, atau lebih umum disebut Indonesia, adalah negara di Asia Tenggara yang dilintasi garis khatulistiwa dan berada di antara daratan benua Asia dan Australia, serta antara Samudra Pasifik dan Samudra Hindia. Indonesia adalah negara kepulauan terbesar di dunia yang terdiri dari 17.504 pulau.&nbsp;Nama alternatif yang biasa dipakai adalah Nusantara.&nbsp;Dengan populasi Hampir 270.054.853 juta jiwa pada tahun 2018,&nbsp;Indonesia adalah negara berpenduduk terbesar keempat di dunia dan negara yang berpenduduk Muslim terbesar di dunia, dengan lebih dari 230 juta jiwa.</p>\r\n\r\n<p>Bentuk negara Indonesia adalah negara kesatuan dan bentuk pemerintahan Indonesia adalah republik, dengan Dewan Perwakilan Rakyat, Dewan Perwakilan Daerah dan Presiden yang dipilih secara langsung.</p>\r\n\r\n<p>Ibu kota negara Indonesia adalah Jakarta. Indonesia berbatasan darat dengan Malaysia di Pulau Kalimantan, dengan Papua Nugini di Pulau Papua dan dengan Timor Leste di Pulau Timor. Negara tetangga lainnya adalah Singapura, Filipina, Australia, dan wilayah persatuan Kepulauan Andaman dan Nikobar di India.</p>\r\n\r\n<p>Sejarah Indonesia banyak dipengaruhi oleh bangsa lainnya. Kepulauan Indonesia menjadi wilayah perdagangan penting sejak abad ke-7, yaitu sejak berdirinya Kerajaan Sriwijaya, sebuah kemaharajaan Hindu-Buddha yang berpusat di Palembang. Kerajaan Sriwijaya ini menjalin hubungan agama dan perdagangan dengan Tiongkok dan India, juga dengan bangsa Arab. Kerajaan-kerajaan beragama Hindu dan/atau Buddha mulai tumbuh pada awal abad ke-4 hingga abad ke-13 Masehi, diikuti para pedagang dan ulama dari jazirah Arab yang membawa agama Islam sekitar abad ke-8 hingga abad ke-16, serta kedatangan bangsa Eropa pada akhir abad ke-15 yang saling bertempur untuk memonopoli perdagangan rempah-rempah Maluku semasa era penjelajahan samudra. Setelah berada di bawah penjajahan Belanda selama hampir 3 abad, Indonesia yang saat itu bernama Hindia Belanda menyatakan kemerdekaannya di akhir Perang Dunia II, tepatnya tanggal 17 Agustus 1945. Selanjutnya, Indonesia mendapat berbagai tantangan dan persoalan berat, mulai dari seringnya terjadi bencana alam, praktik korupsi yang masif, konflik sosial, gerakan separatisme, proses demokratisasi, dan periode pembangunan, perubahan dan perkembangan sosial-ekonomi-politik, serta modernisasi yang pesat.</p>\r\n\r\n<p>Dari Sabang di ujung Aceh sampai Merauke di tanah Papua, Indonesia terdiri dari berbagai suku bangsa, bahasa, dan agama. Berdasarkan rumpun bangsa (ras), Indonesia terdiri atas bangsa asli pribumi yakni Mongoloid Selatan/Austronesia dan Melanesia di mana bangsa Austronesia yang terbesar jumlahnya dan lebih banyak mendiami Indonesia bagian barat. Secara lebih spesifik, suku bangsa Jawa adalah suku bangsa terbesar dengan populasi mencapai 41,7% dari seluruh penduduk Indonesia. Semboyan nasional Indonesia, &quot;Bhinneka tunggal ika&quot; (&quot;Berbeda-beda namun tetap satu&quot;), bermakna keberagaman sosial-budaya yang membentuk satu kesatuan/negara. Selain memiliki populasi penduduk yang padat dan wilayah yang luas, Indonesia memiliki wilayah alam yang mendukung tingkat keanekaragaman hayati terbesar kedua di dunia.</p>\r\n\r\n<p>Indonesia merupakan anggota dari PBB dan satu-satunya anggota yang pernah keluar dari PBB, yaitu pada tanggal 7 Januari 1965, dan bergabung kembali pada tanggal 28 September 1966 dan Indonesia tetap dinyatakan sebagai anggota yang ke-60, keanggotaan yang sama sejak bergabungnya Indonesia pada tanggal 28 September 1950. Selain PBB, Indonesia juga negara anggota dari organisasi ASEAN, KAA, APEC, OKI, G-20 dan sebentar lagi akan menjadi anggota OECD.</p>\r\n', 'Flag_of_Indonesia.jpg', '2018-12-06 15:55:37', 0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
