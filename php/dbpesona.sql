-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2018 at 07:13 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpesona`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin2`
--

CREATE TABLE `admin2` (
  `IDadmin` char(4) NOT NULL,
  `NAMAadmin` char(25) NOT NULL,
  `PASSWORDadmin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin2`
--

INSERT INTO `admin2` (`IDadmin`, `NAMAadmin`, `PASSWORDadmin`) VALUES
('ID01', 'herdiman@yahoo.com', '12345'),
('ID2', 'herdimanlat@yahoo.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `anggotaKODE` int(9) NOT NULL,
  `anggotaNAMA` varchar(60) NOT NULL,
  `anggotaHP` char(15) NOT NULL,
  `anggotaEMAIL` varchar(60) NOT NULL,
  `anggotaPASSWORD` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`anggotaKODE`, `anggotaNAMA`, `anggotaHP`, `anggotaEMAIL`, `anggotaPASSWORD`) VALUES
(2, 'ino', '181282159215', 'wwasino@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `beritaKODE` char(6) NOT NULL,
  `beritaJUDUL` varchar(255) NOT NULL,
  `kategoriberitaKODE` char(4) NOT NULL,
  `eventKODE` char(4) NOT NULL,
  `kabupatenKODE` char(4) NOT NULL,
  `beritaISI` text NOT NULL,
  `beritaISI2` text NOT NULL,
  `beritaSUMBER` varchar(255) NOT NULL,
  `beritaPENULIS` char(60) NOT NULL,
  `beritaTGL` date NOT NULL,
  `beritaICONFOTO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`beritaKODE`, `beritaJUDUL`, `kategoriberitaKODE`, `eventKODE`, `kabupatenKODE`, `beritaISI`, `beritaISI2`, `beritaSUMBER`, `beritaPENULIS`, `beritaTGL`, `beritaICONFOTO`) VALUES
('B00001', 'Mengapa Orang Jawa Tengah Andal Mengolah Masakan Kambing?', 'KB01', 'NULL', '', 'Kambing adalah salah satu bahan masakan yang paling riskan untuk diolah. Tepat dalam mengolah kambing, hasil masakan tentu akan lezat, tetapi jika gagal mengolah kambing, makanan akan berbau, alot, dan merusak semua bumbu masakan lainnya.\r\n\r\nBicara soal kemampuan mengolah kambing sebagai sebuah masakan, bisa dibilang masyarakat Jawa Tengah jagonya. Nusantara mengenal beberapa masakan berbahan dasar kambing seperti sate, gulai, tongseng, tengkleng dan semua masakan tersebut berasal dari daerah di Jawa Tengah.\r\n\r\n\"Daerah di Jawa Tengah seperti Solo, Sleman, Bantul, Yogya, Boyolali, itu memang terkenal sebagai sentra kambing. Karena banyaknya kambing, mereka jadi tahu mengolahnya,\" kata pengamat kuliner, Arie Parikesit di acara Kecap Bango Melestarikan Kuliner Nusantara, di Restoran Oasis, Jakarta, Selasa (30/8/2016).\r\n\r\nMemang benar kata Arie, pengalaman KompasTravel menyantap masakan berbahan daging kambing di daerah Jawa Tengah memang tak pernah ada yang salah.\r\n\r\nDagingnya empuk sampai jeroan kambing pun dapat diolah menjadi masakan yang nikmat. Presiden Joko Widodo asal Solo, lewat akun Instagramnya mengatakan hampir tiap hari ia makan daging kambing, karena begitu gemar akan masakan daging kambing.\r\n\r\nJadi apa sebenarnya rahasia mengolah daging kambing dari ahlinya? Sutiarno, pemilik rumah makan Tongseng Petir Pak Nano mengatakan jika tak ada perbedaan antara daging kambing Jawa Tengah dan daerah lainnya.\r\n\r\n', '\"Paling penting biar tidak alot itu diseset bagian luar (selaput) daging. Jadi dagingnya saja. Itu sesetannya buat masak gulai. Dagingnya buat masak yang lain. Dagingnya juga tak boleh kena air, nanti bau,\" kata Sutiarno.\r\n\r\nPasangan Sutiarno, Marmi menambahkan daun jeruk berpengaruh pada bau atau tidaknya daging kambing. \"Lada juga, pakai lada hitam biar terasa, jangan lada putih,\" kata Marmi.\r\n\r\nSekarang terjawab sudah mengapa masyarakat Jawa Tengah andal dalam mengolah masakan kambing.\r\n\r\nJangan lewatkan mencoba kuliner legenda olahan kambing di Jawa Tengah seperti Tengkleng Mba Diah di Solo, Tongseng Petir Pak Nano di Bantul, Tongseng Kicik Pak Jede di Sleman dan masih banyak lainnya.', 'travel.kompas.com, 31 Agustus 2016', '--', '2017-08-08', 'masakankambing1.jpg'),
('B00002', 'Serunya Menikmati Hidangan Kuliner Malam di Solo', 'KB01', '-', 'KB08', 'Memanjakan lidah di malam hari mungkin merupakan pantangan bagi sebagian orang. Namun jika harus berhadapan dengan ragam kuliner Solo, bisa jadi Anda berubah pikiran dari diet. Ragam hidangan malam ini akan memanjakan lidah Anda meski di waktu istirahat. Berikut KompasTravel rangkum kuliner Solo yang bisa Anda cicipi pada tengah malam.', '', 'travel.kompas.com, tanggal 29 Juni 2017', '--', '2017-09-05', 'makanansolo1.jpg'),
('B00003', 'Festival Kuliner di Semarang, Pengobat Rindu Masakan Khas', 'KB01', 'NULL', 'KB07', 'Semarang - Salah satu alasan pulang kampung biasanya karena kangen dengan kuliner khas daerah. Di Kota Semarang, Jawa Tengah, ada event pelepas kangen makanan daerah selama musim mudik ini.\r\n\r\nBertempat di Mal Sri Ratu di Jalan Pemuda Semarang, digelar acara Festival Makanan Pulang Semarang sejak hari H Lebaran tanggal 25 Juni 2017 lalu hingga 2 Juli 2017 mendatang.\r\n\r\nAda 60 stand kuliner pada acara tersebut dan yang disajikan sangat beragam mulai dari makanan khas Kota Semarang hingga dari beberapa daerah di Jawa Tengah.\r\n', 'Menu yang dijual antara lain, lunpia, mi kopyok Semarang, gule bustaman Semarang, sate sarepeh Rembang, garangasem Kudus, mi Belitung, dan berbagai makanan serta minuman lainnya.\r\n\r\nPengunjungnya ternyata berlimpah, sejak acara dibuka mulai pukul 10.00 WIB hingga 21.00 WIB malam. Penyelenggara acara, Firdaus mengatakan respon masyarakat cukup baik karena mereka melepas kerinduan akan makanan tradisional.', 'www.news.detik.com', '--', '2017-06-29', 'iconkulinerSMGjuni17.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `editfoto`
--

CREATE TABLE `editfoto` (
  `fotoKODE` char(4) NOT NULL,
  `fotoNAMA` varchar(60) NOT NULL,
  `kategoriKODE` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `editfoto`
--

INSERT INTO `editfoto` (`fotoKODE`, `fotoNAMA`, `kategoriKODE`) VALUES
('F001', '1-1-gerejaayam.jpg', 'KW02'),
('F002', 'pawon.jpg', 'KW02'),
('F003', 'umbul.jpg', 'KW03');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `fasilitasKODE` char(4) NOT NULL,
  `fasilitasNAMA` varchar(255) NOT NULL,
  `fasilitasGUNA` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`fasilitasKODE`, `fasilitasNAMA`, `fasilitasGUNA`) VALUES
('F001', 'Tempat Parkir', 'Sebagai sarana tempat untuk memarkirkan kendaraan para pengunjung'),
('F002', 'Restaurant (Rumah Makan)', 'Sebagai sarana yang disediakan obyek wisata untuk menyediakan sarana makan siang maupun malam '),
('F003', 'MCT (Mandi, Cuci, Toilet)', 'Sarana yang tersedia untuk digunakan sebagai sarana MCK'),
('F004', 'Warung Makan', 'Fasilitas yang tersedia untuk memberikan layanan kepada pengujung yang memerlukan sarapan atau makan dan minum, yiatu warung2 semi permanen');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitasobyek`
--

CREATE TABLE `fasilitasobyek` (
  `fasilitasobyekKODE` char(4) NOT NULL,
  `obyekKODE` char(4) NOT NULL,
  `fasilitasKODE` char(4) NOT NULL,
  `fasilitasobyekKET` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fotoberita`
--

CREATE TABLE `fotoberita` (
  `beritafotoKODE` char(6) NOT NULL,
  `beritafotoNAMA` varchar(255) NOT NULL,
  `beritaKODE` char(6) NOT NULL,
  `beritafotoGAMBAR` varchar(255) NOT NULL,
  `beritafotoTGLAMBIL` date NOT NULL,
  `beritafotoJUDUL` varchar(255) NOT NULL,
  `beritafotoKET` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fotoberita`
--

INSERT INTO `fotoberita` (`beritafotoKODE`, `beritafotoNAMA`, `beritaKODE`, `beritafotoGAMBAR`, `beritafotoTGLAMBIL`, `beritafotoJUDUL`, `beritafotoKET`) VALUES
('FB0001', 'Seporsi gudeg cakar, salah satu kuliner Solo/Surakarta yang buka dini hari.', 'B00002', 'makanansolo2.jpeg', '2017-09-05', 'Gudeg Cakar Mergoyudan', 'Sepintas memang gudeg ini tak berbeda dengan Gudeg Jogja. Namun setelah Anda cicipi akan terasa perbedaannya.  Gudeg Cakar Mergoyudan memiliki cita rasa gurih dari nasi hingga lauknya, hanya sedikit rasa manis di gudeg, dan pedas dari sambal goreng kreceknya.  Gudeg ini berlokasi di Jalan Monginsidi, Mergoyudan, Surakarta, tepat di depan Gereja Kristen Jawa, dan SMA Negeri 1 Surakarta. Gudeg Cakar buka mulai buka pukul 01.30 dini hari, tetapi bisa habis hanya dalam waktu dua jam saja. Meski begitu, ia juga memiliki beberapa cabang di Solo.'),
('FB0002', 'Nasi Liwet khas Solo dengan nasi gurih, suwiran ayam kampung, sambal goreng jipang, telur rebus, dan ereh diatasnya. Bisa juga menggunkanan lauk ati ampela atau usus ayam.', 'B00002', 'makanansolo3.jpeg', '2017-09-05', 'Nasi Liwet Solo', 'Nasi ini merpakan salah satu hidangan yang tak boleh dilewatkan saat berkunjung ke Solo. Nasi yang termasuk golongn nasi gurih ini dijajakan mulai pagi hingga malam hari di beberapa titik di Solo.  Salah satunya yang tak pernah sepi ialah di Nasi Liwet Bu Sarmi. Nasi liwet ini buka dua kali dalam satu hari, mulai pukul 00.00â€“12.00 WIB siang, dan mulai pukul 18.00â€“00.00 WIB malam.  Nasi liwet ini letaknya cukup strategis, di Jalan Kapten Mulyadi, Kedung Lumbu, kawasan Pasar Kliwon, Kota Surakarta, Jawa Tengah. Meski begitu, Nasi Liwet Solo bisa Anda temui banyak disekitar Kraton Mangkunegaraan, Solo Baru, hingga Desa Menuran, Sukoharjo, yang merupakan tempat lahirnya nasi liwet solo.'),
('FB0003', 'Jack Rudy, sajian susu murni dicampur sirop cokelat dan jahe dari Shi Jack, Solo.', 'B00002', 'makanansolo4.jpg', '2017-09-05', 'Susu Shi Jack', 'Kenyang menyantap makanan, kini Anda harus mencoba minumannya. Munuman segar olahan susu murni dari Boyolali ini diracik dengan apik di Kota Solo.  Terkenal dengan nama Susu Shi Jack, kedai yang sudah memiliki beberapa cabang di Solo ini tersohor karena kesegaran susunya. Selain itu juga karena ragam menunya yang sangat banyak. Ada 50 menu susu yang bisa Anda pilih.  Shi Jack beroperasional dari pukul 18.00 sampai pukul 00.30 WIB. Selain di Jalan Radjiman, Shi Jack membuka cabang di Jalan Veteran.  Tak hanya aneka susu segar yang diracik dengan berbagai campuran, Shi Jack juga menjajakan makanan ringan seperti aneka sate dan gorengan.'),
('FB0004', '', 'B00003', 'beritakulinerSMGjuni17-1.jpg', '2017-06-29', '', 'Acara yang sudah digelar 2 kali itu sangat diminati, bahkan tercatat setiap harinya jumlah pengunjung mencapai 5.000 orang. Para pedagang pun sudah menyiapkan jumlah porsi yang banyak untuk melayani penjual.  \"Alhamdulillah ramai seperti biasa. Sekitar 5.000-an orang yang datang per hari,\" pungkas Firdaus.  Salah satu pengunjung dari Bogor, Ribka Diah, mengatakan dirinya sedang mudik di daerah Mrican, Semarang dan sengaja datang ke acara kuliner itu untuk menikmati makanan khas Semarang.  \"Puas sekali ke sini, makanan apa saja ada. Mengobati kangen makanan Semarang,\" ujar Diah.'),
('FB0005', '', 'B00003', 'beritakulinerSMGjuni17-2.jpg', '2017-06-29', '', 'Sementara itu salah satu pedagang es dawet, Nuning, mengaku pengunjung yang datang cukup banyak. Meski kerepotan melayani, namun dirinya senang dengan kesibukan tersebut.  \"Ramai sekali ini, kemarin dagangan saya habis jam 19.00 WIB. Mulai hari pertama lebaran sudah ramai,\" ujar Nuning.  Jadi, bagi pemudik yang masih berada di Semarang, tidak ada salahnya wisata kuliner menjadi pilihan pelepas rindu dan ajang berkumpul keluarga selain mengunjungi lokasi-lokasi wisata di ibu kota Jawa Tengah itu. (alg/mbr)');

-- --------------------------------------------------------

--
-- Table structure for table `fotoobyekwisata`
--

CREATE TABLE `fotoobyekwisata` (
  `fotoobyekKODE` char(5) NOT NULL,
  `fotoobyekNAMA` varchar(255) NOT NULL,
  `obyekKODE` char(4) NOT NULL,
  `fotoobyekKET` text NOT NULL,
  `fotoobyekTGLAMBIL` date NOT NULL,
  `fotoobyekGAMBAR` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fotoobyekwisata`
--

INSERT INTO `fotoobyekwisata` (`fotoobyekKODE`, `fotoobyekNAMA`, `obyekKODE`, `fotoobyekKET`, `fotoobyekTGLAMBIL`, `fotoobyekGAMBAR`) VALUES
('OF001', 'Gedung Museum Karst', 'W002', 'Di dalam gedung atau bangunan yang megah tesebut terdapat banyak jenis-jenis batu yang bersasal dari seluruh Indonesia', '2016-06-20', 'museumkarst1.JPG'),
('OF002', 'Pura Puncak Jagad Spiritual', 'W002', 'Merupakan pura yang digunakan oleh umat Hindu melakukan ibadah keagamaan, biasanya banyak yang hadir dari Bali', '2016-06-20', 'museumkarst2.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `kabupatenKODE` char(4) NOT NULL,
  `kabupatenNAMA` char(60) NOT NULL,
  `kabupatenALAMAT` varchar(255) NOT NULL,
  `kabupatenKET` text NOT NULL,
  `kabupatenFOTOICON` varchar(255) NOT NULL,
  `kabupatenFOTOICONKET` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`kabupatenKODE`, `kabupatenNAMA`, `kabupatenALAMAT`, `kabupatenKET`, `kabupatenFOTOICON`, `kabupatenFOTOICONKET`) VALUES
('KB01', 'Kabupaten Wonogiri', 'Jl. Kabupaten No. 4-6 Wonogiri 57612 Telp. (0273) 321002 Fax. (0273) 322318 Email: bupati@wonogirikab.go.id ', 'Kabupaten Wonogiri terletak pada 7Âº 32â€™ â€“ 8Âº 15â€™ Lintang selatan dan Garis Bujur 110Âº 41â€™ â€“ 111Âº 18â€™ Bujur Timur. Posisi Kabupaten Wonogiri sangat strategis karena terletak di ujung selatan Propinsi Jawa Tengah dan diapit oleh Propinsi Jawa Timur dan Propinsi Daerah Istimewa Yogyakarta. Luas wilayah Kabupaten Wonogiri adalah 182.236,02 ha. Secara administratif terbagi menjadi 25 Kecamatan, 43 Kelurahan dan 251 Desa. Kondisi alamnya sebagian besar berupa pegunungan berbatu gamping, terutama di bagian selatan, yang termasuk jajaran Pegunungan Seribu dan merupakan mata air dari Bengawan Solo. Secara topografis, sebagian besar wilayah Kabupaten Wonogiri merupakan dataran rendah dengan ketinggian antara 100-300 meter di atas permukaan air laut (dpl). Sedangkan sebagian lagi merupakan dataran tinggi yaitu berada pada 500 m atau lebih dari permukaan air laut. Wilayah ini meliputi Kecamatan Jatiroto dan Karangtengah. Fisiografi wilayah Kabupaten Wonogiri sebagian besar berupa perbukitan bergelombang. Sedangkan fisiografi dataran sangat terbatas hanya di beberapa tempat terutama pada bentuk lahan alluvial.', 'iconwonogiri.jpg', 'Patung Kereta Kencana di Pintu Gerbang Wonogiri'),
('KB02', 'Kabupaten Karanganyar', 'Kantor Sekretariat Daerah: Jl. Lawu No. 385, Komplek Perkantoran Cangaan, Karanganyar, 57712 Telp. (0271) 495039; Fax. (0271) 495590', 'Karanganyar lahir sebagai dukuh kecil, tepatnya terjadi pada tanggal 19 April 1745 atau 16 Maulud 1670. Pencetus nama Karanganyar adalah Raden Mas Said, atau yang lebih dikenal dengan sebutan Pangeran Sambernyawa. Cikal bakal daerah Karanganyar berasal dari Raden Ayu Diponegoro atau Nyi Ageng Karang dengan nama kecil Raden Ayu Sulbiyah. Pada waktu itu Karanganyar menjadi sebuah dukuh kecil(badranbaru) yang  termasuk  dalam  wilayah  Kasunanan  Surakarta,  pada  saat  itu pimpinan Swapraja Kasunanan Surakarta adalah Sri Pakubuwono II.  Akibat  dari  adanya  â€œPerjanjian  Giyantiâ€  pada  tanggal  13  Februari  1755 antara Sunan Pakubuwono III dengan Pangeran Mangkubumi, yang salah satu isinya adalah pembagian Kerajaan Mataram menjadi dua wilayah, yaitu Kasunanan Surakarta dan Kasultanan Yogyakarta. Dukuh kecil  Karanganyar yang terletak di Sukowati Selatan termasuk ke dalam wilayah Kasultanan Yogyakarta dan yang berkuasa pada saat itu adalah Sri Sultan Hamengkubuwono I (Pangeran Mangkubumi) pada tahun 1755-1792.  Pada tahun 1847, Sri Mangkunegara III di Kerajaannya Mangkunegaran mengadakan tatanan baru, analogi yang berlaku di Kasunanan Surakarta adalah Staatblat 1847 No. 30 yang mulai berlaku pada tanggal 5 Juni 1847, yang salah satu peraturan tersebut menyatakan bahwa Karanganyar merupakan salah satu wilayah. Pada tahun 1903 dibentuk Kabupaten Anom Kota Mangkunegaran, meliputi wilayah kota Sala bagian utara, Wanareja, Kaliyoso, dan Colomadu, Swapraja Mangkunegaran. Istilah Onderregentschap diubah menjadi regentschap atau dalam bahasa Indonesia yang berarti â€œKabupatenâ€ oleh Sri Mangkunegoro VII yang memegang pemerintahan saat itu (1916-1944), tepatnya pada tanggal 20 November 1917.  Dengan demikian, dapat disimpulkan bahwa proses terbentuknya Pemerintah Kabupaten Karanganyar dimulai dari Pemerintah Desa yang terbentuk pada masa perjuangan RM Said (1741-1757), kemudian dibentuk Kabupaten Anom pada tanggal 5 Juni 1847, dikuti dengan dibentuknya Kabupaten Karanganyar pada tanggal 18 Nopember 1917. Berdasarkan Peraturan Daerah Kabupaten Daerah Tingkat II Karangnyar Nomor 20 Tahun 1998 tentang Hari Jadi Kabupaten Karanganyar, maka Hari Jadi Kabupaten Karangnyar ditetapkan pada tanggal 18 Nopember 1917. Nama Karanganyar sendiri terbentuk dari tiga kata yang masing-masing mempunyai arti dan maksud: (1) Ka: Kawibawaningkang dipun gayuh (kawibawaan yang dicita- citakan). (2) Rang: Rangkepanipun lahir bathin pulung lan wahyunipun sampun turun temurun (rangkapnya lahir dan batin, pulung dan wahyunya turun). (3) Anyar: Badhe nampi perjanjian anyar/ enggal winisudha jumeneng Mangkunegoro I (akan menerima perjanjian baru yang diangkat menjadi Mangkunegoro I).', 'iconkaranganyar.jpg', 'Candi Cetho dengan ketinggian 1.400m dpl.'),
('KB03', 'Kabupaten Klaten', 'Bagian Humas Setda Klaten: Jalan Pemuda No. 294 Klaten 57424. Telepon: 0272-321046, humas@klatenkab.go.id', 'Mengenang sejarah sesungguhnya tidak sekedar memahami histori masa lalu. Tapi bagaimana dengan belajar sejarah menjadikan kita generasi masa kini untuk memunguti nilai-nilai luhur yang berserak dibalik peristiwa silam sebagai guru yang bijak. Sejarah Klaten tersebar diberbagai catatan arsip-arsip kuno dan kolonial, arsip-arsip kuno dan manuskrip Jawa. Catatan itu seperti tertulis dalam Serat Perjanjian Dalem Nata, Serat Ebuk Anyar, Serat Siti Dusun, Sekar Nawala Pradata, Serat Angger Gunung, Serat Angger Sedasa dan Serat Angger Gladag. Dalam bundel arsip Karesidenan Surakarta menjadikan rujukan sejarah Klaten seperti tercantum dalam Soerakarta Brieven van Buiten Posten, Brieven van den Soesoehoenan 1784-1810, Daghregister van den Resi dentie Soerakarta 1819, Reporten 1787-1816, Rijksblad Soerakarta dan Staatblad van Nederlandsche Indie. Babad Giyanti, Babad Bedhahipun Karaton Negari Ing Ngayogyakarta, Babad Tanah Jawi dan Babad Sindula menjadi sumber lain untuk menelusuri sejarah Klaten. â€œCerita Kyai dan Nyai Mlati dianggap sebagai sumber terpercaya yang diakui sebagai cikal bakal kampung dan asal muasal nama Klaten yang konon tinggal di kampung Sekalekanâ€ Baik sumber arsip kolonial, arsip kuno maupun manuskrip Jawa ternyata saling memperkuat dan melengkapi dalam menelusuri sejarah Klaten. Cerita Kyai dan Nyai Mlati dianggap sebagai sumber terpercaya yang diakui sebagai cikal bakal kampung dan asal muasal nama Klaten yang konon tinggal di kampung Sekalekan. Kedua abdi dalem Kraton Mataram ini ditugaskan oleh raja untuk menyerahkan bunga Melati dan buah Joho untuk menghitamkan gigi para putri kraton (Serat Narpawada, 1919:1921). Guna memenuhi kebutuhan bunga Melati untuk raja, Kyai dan Nyai Mlati menanami sawah milik Raden Ayu Mangunkusuma, istri Raden Tumenggung Mangunkusuma yang saat itu menjabat sebagai Bupati Polisi Klaten, yang kemudian dipindah tugaskan istana menjadi Wakil Patih Pringgalaya di Surakarta. Tidak ditemukan sumber sejarah tentang akhir riwayat Kyai dan Nyai Melati. Silsilah Kyai dan Nyai Melati juga tidak diketahui. Bahkan penduduk Klaten tidak ada yang mengakui sebagai keturunan dua sosok penting ini. Sejarah Klaten juga dapat ditelusuri dari keberadaan Candi-candi Hindu, Budha maupun barang-barang kuno. Asal muasal desa-desa kuno tempo dulu menunjukan keterangan terpercaya. Desa-desa seperti Pulowatu, Gumulan, Wedihati, Mirah-mirah maupun Upit. Peninggalan atau petilasan Ngupit bahkan secara jelas menyebutkan pertanda tanggal yang dimaknai 8 November 66 Maeshi oleh Raden Rakai Kayuwangi. Berdirinya Benteng atau loji Klaten di masa pemerintahan Sunan Paku Buwana IV mempunyai arti penting dalam sejarah Klaten. Pendirian benteng tersebut peletakan batu pertamanya dimulai pada hari sabtu Kliwon, 12 rabiulakir, Langkir, Alit 1731 atau sengkala RUPA MANTRI SWARANING JALAK atau dimaknai sebagai tanggal 28 Juli 1804. Sumber sejarah ini dapat ditemukan dalam Babad Bedhaning Ngayogyakarata dan Geger Sepehi. Catatan sejarah ini oleh pemerintah Kabupaten Klaten melalui Peraturan Daerah Nomor 12 Tahun 2007 sebagai Hari Jadi Kabupaten Klaten yang diperingati setiap tahun.', 'iconklaten.jpg', 'Candi Prambanan - Klaten - Sleman'),
('KB04', 'Kabupaten Magelang', 'Kantor Pemerintahan: Jl. Soekarno Hatta (Jl. Letnan Tukiyat) No. 59 Kota Mungkid Magelang No. Telp. : (0293) 788101', 'Sejarah Kabupaten Magelang tidak bisa dipisahkan dari perkembangan Kota Magelang. Pada tahun 1812, Letnan Gubernur Sir Thomas Stamford Raffles mengangkat Ngabei Danuningrat sebagai bupati pertama Magelang dengan gelar Adipati Danuningrat I. Penunjukkan ini terjadi sebagai konsekuensi perjanjian antara Inggris dan Kesultanan Yogyakarta pada tanggal 1 Agustus 1812 yang menyerahkan wilayah Kedu kepada pemerintah Inggris. Sejak itu Danuningrat menjadi bupati pertama di Kabupaten Magelang dengan gelar Adipati Danuningrat I. Atas petunjuk dari gurunya dia memilih daerah antara desa Mantiasih dan desa Gelangan sebagai pusat pemerintahan. Pada tahun 1930, jabatan bupati diserahkan dari dinasti Danuningrat kepada pejabat baru yang bernama Ngabei Danukusumo. Sementara itu sebagai tindak lanjut dari Keputusan Desentralisasi (Decentralisatie Besluit) tahun 1905, Kota Magelang menjadi gemeente bersama dengan Kota Semarang, Salatiga, dan Pekalongan. Jabatan walikota baru diangkat pada tahun 1924. Meskipun demikian, kedudukan bupati masih tetap berada di kota Magelang. Akibatnya ada sejumlah pimpinan daerah di kota Magelang yaitu bupati Magelang, residen Kedu, asisten residen Magelang dan walikota Magelang.  Seiring dengan waktu, kedudukan Kabupaten Magelang diperkuat melalui UU No. 2 tahun 1948 dengan ibu kota di Kota Magelang. Pada tahun 1950 berdasarkan UU No. 13 tahun 1950 Kota Magelang berdiri sendiri dan diberi hak untuk mengatur rumah tangga sendiri, sehingga ada kebijaksanaan untuk memindah ibu kota kabupaten ke daerah lain. Ada dua alternatif ibu kota sebagai penganti Kota Magelang, yaitu Kawedanan Grabag atau Kawedanan Muntilan, namun kedua daerah ini ditolak. Pada tanggal 22 Maret 1984, kecamatan Mertoyudan bagian Selatan dan kecamatan Mungkid bagian Utara dipilih secara resmi sebagai ibu kota Kabupaten Magelang oleh gubernur Jawa Tengah dengan nama Kota Mungkid.', 'iconmagelangKAB.jpg', 'Ketep Pass - Wisata Alam yang Indah'),
('KB05', 'Kabupaten Semarang', 'Sekretariat Daerah Kab.Semarang. Jl.Diponegoro No.14 Ungaran Jawa Tengah â€“ Indonesia.  Telp : 024-6921014; Fax : 024-6921992', 'Sejak 4 abad yang lalu dimasa Pajang-Mataram, Kabupaten Semarang telah ada dengan ibukota Semarang. Pada jaman itu \"Gemente\" (Kotapraja) belum ada. Ki Pandan Arang II atau dikenal sebagai Raden Kaji Kasepuhan (1547-1553) merupakan Bupati Semarang yang pertama, dinobatkan tanggal 2 Mei 1547, berkuasa hingga tahun 1574 dan mendapat pengesahan Sultan Hadiwijaya. Pada masa itu berhasil membuat bangunan yang dipergunakan sebagai pusat kegiatan pemerintah kabupaten. Pada jaman Pemerintahan Bupati R.M. Soebiyono, \"Gemente (Kotapraja)\" Semarang lahir, yaitu tepat tahun 1906. Berdasarkan Stadblad tahun 1906 S.O 120 dibentuklah pemerintahan kota. Pemerintah Kabupaten Semarang yang dipimpim oleh seorang Bupati dan Pemerintah Kotapraja untuk wilayah Semarang yang dipimpin oleh seorang Burgenmester. Dan semenjak itulah terjadi pemisahan antara Kabupaten Semarang dengan Kotapraja Semarang hingga saat ini. Berdasarkan UU no 13/1950 tentang Pembentukan Kabupaten-kabupaten dalam lingkungan Propinsi Jawa Tengah, Kota Semarang ditetapkan sebagai ibukota Kabupaten Semarang. Namun Kota Semarang adalah kotamadya yang memiliki pemerintahan sendiri, ditinjau dari segi pemerintahan Kota Semarang sebagai ibukota Kabupaten sangatlah kurang menguntungkan, maka timbullah gagasan untuk memindahkan ibukota Kabupaten Semarang ke Kota Ungaran yang pada saat itu masih dalam status kawedanan. Sementara dilakukan pembenahan, tanggal 30 Juli 1979 oleh Bupati Kepala Daerah Tk. II Semarang diusulkan oleh Pemerintah Pusat melalui Gubernur, agar Kota Ungaran secara definitif ditetapkan sebagai ibukota Pemerintah Kabupaten Dati II Semarang. Dan ditetapkan dengan PP no 29/1983 tentang Penetapan Status Kota Ungaran sebagai Ibukota Pemerintah Kabupaten Dati II Semarang, yang berlaku peresmiannya tanggal 20 Desember 1983, yang terjadi pada masa pemerintahan Bupati Ir. Soesmono Martosiswojo (1979-1985).', 'iconsemarangKABUPATEN.jpg', 'Atraksi Kuda Lumping di Gedong Songo'),
('KB06', 'Kabupaten Tegal', 'SEKRETARIAT DAERAH: Jl. Dr. Soetomo No. 1 Slawi (0283) 491764; setda@tegalkab.go.id', 'Sejarah Tegal: Kekayaan sejarah sebuah kota atau kawasan terlihat dari jejak peninggalan apa yang disebut cultural heritage dan living cultural yang tersisa dan hidup di kawasan tersebut. Keduanya merupakan warisan peradaban umat manusia. Demikian halnya dengan Kabupaten Tegal, Wilayah yang kaya akan jejak peninggalan kesejarahan sebagai penanda bahwa Kabupaten Tegal sebagai tlatah kawasan tak dapat dilepaskan dari keterkaitan garis sejarah hingga membentuk kawasan sekarang ini. Penekanan pada bidang pertanian misalnya, tak dapat dilepaskan dari kondisi wilayah dan akar kesejarahan tlatah Kabupaten Tegal yang mengembangkan kapasitasnya selaku wilayah agraris. Tradisi keagrarisan dimulai dari ketokoan Ki Gede Sebayu juru demung trah Pajang. Bahkan kalau dirunut keagrarisan itu dimulai semenjak Mataram Kuno. Kesaksian ini diperkuat denga ditemukannya artefak kuno dan candi di Pedagangan. Ditambah tlatah Tegal kerapkali dikaitkan dengan kerajaan Pajang dan Mataram Islam yang cenderung kekuasaan dengan basis pada agraris ( De Graaf, 1986).   Juru Demung Ki Gede Sebayu: Tegal berasal dari nama Tetegal, tanah subur yang mampu menghasilkan tanaman pertanian (Depdikbud Kabupaten Tegal, 1984). Sumber lain menyatakan, nama Tegal dipercaya berasal dari kata Teteguall. Sebutan yang diberikan seorang pedagang asal Portugis yaitu Tome Pires yang singgah di Pelabuhan Tegal pada tahun 1500 â€“an (Suputro, 1955). Namun sejarah tlatah Kabupaten Tegal tak dapat diepaskan dari ketokohan Ki Gede Sebayu. Namanya dikaitkan dengan trah Majapahit, karena sang ayah Ki Gede Tepus Rumput ( kelak bernama Pangeran Onje) ialah keturunan Batara Katong Adipati Ponorogo yang masih punya kaitan dengan keturunan dinasti Majapahit (Sugeng Priyadi, 2002).', 'icontegalKAB.jpg', 'Pantai Purwa Hamba'),
('KB07', 'Kota Semarang', 'Jl. Pemuda No.148, Sekayu, Semarang Tengah, Kota Semarang, Jawa Tengah 50132, Indonesia', ' Kota Semarang adalah ibukota Provinsi Jawa Tengah, Indonesia sekaligus kota metropolitan terbesar kelima di Indonesia setelah Jakarta, Surabaya, Bandung, danMedan.[rujukan?] Sebagai salah satu kota paling berkembang di Pulau Jawa, Kota Semarang mempunyai jumlah penduduk yang hampir mencapai 2 juta jiwa. Bahkan, Area Metropolitan Kedungsapur (Kendal, Demak, Ungaran Kabupaten Semarang, Kota Salatiga, dan Purwodadi Grobogan) dengan penduduk sekitar 6 juta jiwa, merupakan Wilayah Metropolis terpadat ke 4, setelah Jabodetabek (Jakarta), Gerbangkertosusilo (Surabaya), dan Bandung Raya.[rujukan?] Dalam beberapa tahun terakhir, perkembangan Semarang ditandai pula dengan munculnya beberapa gedung pencakar langit di beberapa sudut kota. Sayangnya, pesatnya jumlah penduduk membuat kemacetan lalu lintas di dalam Kota Semarang semakin parah. Kota Semarang dipimpin oleh wali kota Hendrar Prihadi, S.E, M.M. Kota ini terletak sekitar 466 km sebelah timur Jakarta, atau 312 km sebelah barat Surabaya, atau 624 km sebalah barat daya Banjarmasin (via udara).[2] Semarang berbatasan dengan Laut Jawa di utara, Kabupaten Demak di timur, Kabupaten Semarang di selatan, dan Kabupaten Kendal di barat.Luas Kota 373.67 km2', 'iconsemarangKOTA.jpg', 'Klenteng Sam Poo Kong'),
('KB08', 'Kota Surakarta (Solo)', 'JL. Jenderal Sudirman No. 2, Kota Surakarta, Jawa Tengah', 'Surakarta berkembang dari wilayah suatu desa bernama Desa Sala, di tepi Bengawan Solo. Sarjana Belanda yang meneliti Naskah Bujangga Manik, J. Noorduyn, menduga bahwa Desa Sala ini berada di dekat (kalau bukan memang di sana) salah satu tempat penyeberangan (\"penambangan\") di Bengawan Solo yang disebut-sebut dalam pelat tembaga \"Piagam Trowulan I\" (1358, dalam bahasa Inggris disebut \"Ferry Charter\") sebagai \"Wulayu\". Naskah Perjalanan Bujangga Manik yang berasal dari sekitar akir abad ke-15 menyebutkan bahwa sang tokoh menyeberangi \"Ci Wuluyu\". Pada abad ke-17 di tempat ini juga dilaporkan terdapat penyeberangan di daerah \"Semanggi\" (sekarang masih menjadi nama kampung/kelurahan di Kecamatan Pasarkliwon)', 'iconsolo.jpg', 'Taman Sriwedari Solo'),
('KB09', 'Kabupaten Boyolali', 'Alamat Kontak: Jalan Raya Boyolali-Semarang km 5 Penggung, Boyolali, Jawa Tengah Kode Pos 57351', 'Cerita Rakyat Ki Ageng Pandan Arang, mulanya adalah sebuah legenda. Tentang terciptanya sebuah daerah di lereng gunung Merapi. Sebuah cerita tentang Ki Ageng Pandan Arang, Bupati Semarang pada Abad XVI. Pada masanya, mendapat tugas dari Sunan Kalijaga untuk pergi ke Gunung Jabalakat di Tembayat (Klaten) guna menyebarkan agama Islam. Ki Ageng Pandan Arang yang juga disebut dengan Tumenggung Notoprojo ini banyak menemui rintangan dan ujian selama perjalanan. Ki Ageng Pandan Arang berjalan cukup jauh meninggalkan anak dan istri ketika di sebuah hutan belantara. Tiga orang perampok mencegatnya. Mengira harta benda dibawanya. Tempat dimana Ki Ageng dibegal ini kemudian sekarang dikenal dengan nama Salatiga.  Di dalam perjalanan tersebut Nyai Ageng tertinggal jauh di belakang. Maka ucapnya, â€œBoya wis lali, Kyai teko ninggal akuâ€ (R. Soewingyo, 1938: 12,20). Sumber lain menyebutkan: â€œBoya lali laki mami, adarbe garwa maring sunâ€. (Dr Soewito Santoso, 1970: 146). Sumber lain yang ditulis MS. Hanjoyo: Kira-kira 25 km dari Salatiga, dalam perjalanannya, Kyai Ageng Pandan Arang duduk di atas batu besar di tengah sungai, sambil menanti isteri dan anaknya yang masih jauh di belakang. Setelah lama dinanti tidak datang juga, Kyai Ageng berkata: â€œBoya wis lali wong ikiâ€. Tempat itu kemudian disebut dengan Boyolali. â€œ (Sejarah dan Hari Jadi Kabupaten Boyolali, Penulis Tim Peneliti Universitas Negeri Sebelas Maret, Surakarta: 1982). Sebuah batu yang berada di Kali Pepe yang membelah Kota Boyolali diduga menjadi tempat beristirahat Ki Ageng Pandan Arang. Memang tidak ada bukti tertulis yang menunjukan bahwa batu ini adalah tempat beristirahat Ki Ageng Pandan Arang. Sama seperti sebuah batu yang terletak di depan Pasar Sunggingan Boyolali yang menurut legenda adalah batu yang diketukketuk tongkatnya hingga muncul lekuk-lekuk mirip sebuah dakon. Karena mirip mainan dakon, masyarakat setempat menyebutnya dengan Mbah Dakon.  Hari Jadi Boyolali Hari jadi Kabupaten Boyolali diperingati setiap 5 Juni, hal ini atas sebuah peristiwa sejarah yang terjadi pada 5 Juni 1847. Pada tanggal tersebut pemerintah Kasunanan Surakarta mengeluarkan peraturan baru tentang pemerintahan dhusun atau pemerintahan di luar Kuthanegara. Peratura tersebut dibuat atas campur tanga Belanda yang intinya pemerintahan yang sekarang tidak mampu lagi mengurusi segala urusan pemerintahan yang makin kompleks itu. Perjanjian antara Paku Buwana VII dengan Pemerintah Belanda tersebut termuat dalam Serat Perjanjian Dalem Natha halaman 140 â€“ 146 atau dalam Staatsblad 1847 No. 30. Diktum dalam bab 30 â€“ 36 dari perjanjian tersebut menyebutkan bahwa diperlukan adanya Abdi Dalem Gunung yang berkewajiban menjaga tata tertib dan ketentraman kerajaan yang bertugas pula mengurusi soal-soal pemerintahan.  Berdasarkan Staatsblad Tahun 1847 No.30 tersebut, Pemerintah Kasunanan Surakarta membentuk enam daerah Kabupaten Gunung di daerah-daerah sebagai pembantu pelaksana pemerintahan di daerah-daerah. Enam daerah kabupaten itu adalah: Kabupaten Gunung Kota Surakarta, Kartosuro, Klaten, Boyolali, Ampel dan Sragen. (Pawarti Surakarta, 1939:71). Berdasarkan Staatsblad tersebut, kemudian ditentukan hari lahir Kabupaten Boyolali adalah 5 Juni 1847.', 'iconboyolali.JPG', 'Lembah Gunung Madu, Jl  Simo-Klego, Boyolali');

-- --------------------------------------------------------

--
-- Table structure for table `kategoriberita`
--

CREATE TABLE `kategoriberita` (
  `kategoriberitaKODE` char(4) NOT NULL,
  `kategoriberitaNAMA` varchar(60) NOT NULL,
  `kategoriberitaKET` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategoriberita`
--

INSERT INTO `kategoriberita` (`kategoriberitaKODE`, `kategoriberitaNAMA`, `kategoriberitaKET`) VALUES
('KB01', 'Berita Wisata', 'Merupakan kategori berita yang berhubungan dengan informasi kegiatan atau lainnya yang berada di obyek wisata'),
('KB02', 'Berita Kegiatan', 'Merupakan kategori berita yang berhubungan dengan event atau kejadian atau kegiatan yang berlangsung tetapi tidak dilakukan berhubungan dengan obyek wisata'),
('KB03', 'Berita Umum', 'Suatu berita yang bersifat umum dan dapat merupakan berita harian yang terjadi.');

-- --------------------------------------------------------

--
-- Table structure for table `kategoriwisata`
--

CREATE TABLE `kategoriwisata` (
  `kategoriKODE` char(4) NOT NULL,
  `kategoriNAMA` char(60) NOT NULL,
  `kategoriKET` text NOT NULL,
  `kategoriREFERENCE` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategoriwisata`
--

INSERT INTO `kategoriwisata` (`kategoriKODE`, `kategoriNAMA`, `kategoriKET`, `kategoriREFERENCE`) VALUES
('KW01', 'Sejarah', 'Wisata yang merupakan peninggalan masa lalu', 'Buku'),
('KW02', 'Budaya', 'Wisata Budaya dan Sejarah Indonesia', 'Buku');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kecamatanKODE` char(4) NOT NULL,
  `kecamatanNAMA` varchar(30) NOT NULL,
  `kecamatanALAMAT` varchar(255) NOT NULL,
  `kecamatanKET` text NOT NULL,
  `kecamatanTGL` date NOT NULL,
  `kecamatanFOTO` varchar(255) NOT NULL,
  `kabupatenKODE` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`kecamatanKODE`, `kecamatanNAMA`, `kecamatanALAMAT`, `kecamatanKET`, `kecamatanTGL`, `kecamatanFOTO`, `kabupatenKODE`) VALUES
('K001', 'Kecamatan Wonogiri', ' Jl. Pemuda I No.5, Wonogiri', '', '0000-00-00', '', 'KB01'),
('K002', 'Kecamatan Slogohimo', 'Jl. Slogohimo No.119, Slogohimo, Wonogiri', '-', '0000-00-00', '', 'KB01'),
('K003', 'Kecamatan Wuryantoro', ' Jl. Raya Wuryantoro-Wonogiri, Wonogiri', '-', '0000-00-00', '', 'KB01'),
('K004', 'Kecamatan Eromoko', ' Jl. Raya Eromoko No. 2, Eromoko, Wonogiri', '-', '0000-00-00', '', 'KB01'),
('K005', 'Kecamatan Pracimantoro', ' Jl. Raya Pracimantoro-Wonogiri, Wonogiri', '-', '0000-00-00', '', 'KB01'),
('K006', 'Kecamatan Paranggupito', 'Jl. Paranggupito, Wonogiri', '-', '0000-00-00', '', 'KB01'),
('K007', 'Kecamatan Laweyan', 'Kantor Kecamatan: Jl. Dr. Radjiman No. 352 Surakarta Jawa Tengah 57111', '-', '0000-00-00', '', 'KB08'),
('K008', 'Kecamatan Serengan', 'Kantor Kecamatan: Jl. Veteran No. 271 Surakarta Jawa Tengah 57155', '-', '0000-00-00', '', 'KB08'),
('K009', 'Kecamatan Pasar Kliwon', 'Kantor Kecamatan: Jl. Kapten Mulyadi Surakarta Jawa Tengah', '-', '0000-00-00', '', 'KB08'),
('K010', 'Kecamatan Semarang Tengah', 'Kantor Kecamatan: Jl. Taman Seteran Barat Semarang 50134', 'Terdiri dari 13 Kelurahan: Kelurahan Kranggan, Kelurahan Gabahan, Kelurahan Miroto, Kelurahan Brumbungan, Kelurahan Jagalan, Kelurahan Kembangsari, Kelurahan Sekayu, Kelurahan Pandansari, Kelurahan Purwodinatan, Kelurahan Karangkidul, Kelurahan Pekunden, Kelurahan Bangunharjo, Kelurahan Kauman.', '0000-00-00', '', 'KB07'),
('K011', 'Kecamatan Semarang Selatan', 'Kantor Kecamatan: Jl. Taman Sompok Semarang 50249', 'Terdiri dari 10 Kelurahan: Kelurahan Barusari, Bulustalan, Lamper Kidul, Lamper Lor, Lamper Tengah, Mugassari, Peterongan, Pleburan, Randusari, dan Wonodri', '0000-00-00', '', 'KB07'),
('K012', 'Kecamatan Semarang Utara', 'Kantor Kecamatan: Jl. Taman Brotojoyo No 2 Semarang 50178', 'Kecamatan Semarang Utara terdiri dari 8 Kelurahan: Kelurahan Bulu Lor, Dadapsari, Kuningan, Panggung Kidul, Panggung Lor, Plombokan, Purwosari, dan Tanjungmas', '0000-00-00', '', 'KB07'),
('K013', 'Kecamatan Semarang Barat', 'Kantor Kecamatan: Jl Ronggolawe No 2 Semarang', 'Terdiri dari 18 Kelurahan: Bojongsalaman, Bongsari, Cabean, Gisikdrono, Kalibanteng Kidul, Kalibanteng Kulon, Karangayu, Kembangarum, Krapyak, Krobokan, Manyaran, Ngemplaksimongan, Salamanmloyo, Tambakharjo, Tawangmas, dan Tawangsari', '0000-00-00', '', 'KB07'),
('K014', 'Kecamatan Ngargoyoso', 'Dusun Jenak, Desa Ngargoyoso', 'Kecamatan Ngargoyoso terbagi dalam 9 wilayah desa, yaitu: Berjo, Dukuh, Girimulyo, Jatirejo, Kemuning, Ngargoyoso, Nglegok, Puntukrejo, Segorogunung', '0000-00-00', '', 'KB02'),
('K015', 'Kecamatan Karangpandan', 'Jl. Solo Tawangmangu, Karangpandan, Kabupaten Karanganyar, Jawa Tengah 57791', 'Kecamatan Karangpandan terbagi dalam 11 wilayah desa, yaitu: Bangsri, Dayu, Doplang, Gerdu, Gondangmanis, Harjosari, Karang, Karangpandan, Ngemplak, Salam, Tohkuning', '0000-00-00', '', 'KB02'),
('K016', 'Kecamatan Jenawi', 'Jl. Sragen-Balong, Balong, Jenawi, Kabupaten Karanganyar, Jawa Tengah 57794', 'Kecamatan Jenawi terbai dalam 9 wilayah desa, yaitu: Desa Anggrasmanis, Balong, Gumeng, Jenawi, Lempong, Menjing, Seloromo,     Sidomukti, dan Trengguli\r\n', '0000-00-00', '', 'KB02'),
('K017', 'Kecamatan Tawangmangu', 'Kalisoro, Tawangmangu, Karanganyar, Kabupaten Karanganyar, Jawa Tengah 57792', 'Wilayah Kecamatan Tawangmangu terbagi dalam 3 Kelurahan dan 7 Desa, yaitu:  Kelurahan Tawangmangu, Blumbang, Kalisoro;  Desa Bandardawung, Gondosuli, Karanglo, Nglebak, Plumbon, Sepanjang, Tengklik. ', '0000-00-00', '', 'KB02'),
('K018', 'Kecamatan Tasikmadu', 'Jl. Ahmad Yani No.2 atau Jl. Papahan, Desa Ngijo, Tasikmadu, Karanganyar', 'Kecamatan Tasikmadu terbagi dalam 10 wilayah desa, yaitu: Buran, Gaum, Kalijirak, Kaling, Karangmojo, Ngijo, Pandeyan, Papahan, Suruh, Wonolopo.', '0000-00-00', '', 'KB02'),
('K019', 'Kecamatan Matesih', 'Jl. TP. Joko Songo atau Jl. Raya Matesih, Matesih, Kabupaten Karanganyar, Jawa Tengah 57781', 'Kecamatan Matesih terbagi dalam 9 wiayah desa, yaitu: Dawung, Gantiwarno, Girilayu, Karangbangun, Koripan, Matesih, Ngadiluwih, Pablengan, Plosorejo', '0000-00-00', '', 'KB02'),
('K034', 'W', 'E', 'E', '2018-09-24', 'candiplaosan1,jpg', 'KB08');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `eventKODE` char(4) NOT NULL,
  `eventNAMA` varchar(255) NOT NULL,
  `kabupatenKODE` char(4) NOT NULL,
  `eventKET` text NOT NULL,
  `eventMULAI` date NOT NULL,
  `eventSELESAI` date NOT NULL,
  `eventPOSTER` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`eventKODE`, `eventNAMA`, `kabupatenKODE`, `eventKET`, `eventMULAI`, `eventSELESAI`, `eventPOSTER`) VALUES
('K001', 'Lomba Desain Wisata', 'KB04', 'Lomba merancang denah pariwisata yang berada di Kabupaten Magelang', '2017-09-04', '2017-09-20', 'Instruction.pdf'),
('K002', 'Pemilihan Abang dan None', 'KB03', 'Merupakan ajang pentas muda-mudi untuk mencari bakat penampilan yang menarik dari pemuda-pemudi di Kabupaten Klaten', '2017-06-06', '2017-07-05', 'noimage.png');

-- --------------------------------------------------------

--
-- Table structure for table `obyekwisata`
--

CREATE TABLE `obyekwisata` (
  `obyekKODE` char(4) NOT NULL,
  `obyekNAMA` varchar(120) NOT NULL,
  `kecamatanKODE` char(4) NOT NULL,
  `kategoriKODE` char(4) NOT NULL,
  `obyekALAMAT` varchar(255) NOT NULL,
  `obyekDERAJAT_S` int(3) NOT NULL,
  `obyekMENIT_S` int(2) NOT NULL,
  `obyekDETIK_S` float(5,2) NOT NULL,
  `obyekLATITUDE` float(15,11) NOT NULL,
  `obyekDERAJAT_E` int(2) NOT NULL,
  `obyekMENIT_E` int(2) NOT NULL,
  `obyekDETIK_E` float(5,2) NOT NULL,
  `obyekLONGITUDE` float(15,11) NOT NULL,
  `obyekKETINGGIAN` int(4) NOT NULL,
  `obyekDEFINISI` text NOT NULL,
  `obyekKETERANGAN` text NOT NULL,
  `obyekFOTO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obyekwisata`
--

INSERT INTO `obyekwisata` (`obyekKODE`, `obyekNAMA`, `kecamatanKODE`, `kategoriKODE`, `obyekALAMAT`, `obyekDERAJAT_S`, `obyekMENIT_S`, `obyekDETIK_S`, `obyekLATITUDE`, `obyekDERAJAT_E`, `obyekMENIT_E`, `obyekDETIK_E`, `obyekLONGITUDE`, `obyekKETINGGIAN`, `obyekDEFINISI`, `obyekKETERANGAN`, `obyekFOTO`) VALUES
('W001', 'Waduk Gajah Mungkur', 'K001', 'KW04', 'Jl. Raya Wonogiri-Wuryantoro, Desa Sendang, Kecamatan Wonogiri', 7, 51, 18.60, -7.85516834259, 110, 54, 44.20, 110.91226959229, 0, 'Obyek Wisata Berupa Waduk Buatan yang sering disebut dengan Waduk Gajah Mungkur', 'Waduk gajah mungkur dibangun pada tahun 1970 â€“ 1978, dan saat ini mampu menampung air yang mencakup luas wilayah di 7 kecamatan dengan luas 8.800 ha. Di waduk gajah mungkur ini juga terdapat obyek wisata Waduk Gajah Mungkur di Desa Sendang, Kecamatan Wonogiri, tersedia fasilitas lengkap misal Restoran, Penginapan, Kebun Binatang, Panggung Hiburan. Obyek wisata ini terletak di sebelah selatan kota Wonogiri sekitar 7 km, ke arah Kecamatan Wuryantoro.', 'iconwadukwonogiri.jpg'),
('W002', 'Museum Karst', 'K005', 'KW04', 'Dusun Danggolo, Desa Gebangharjo, Kecamatan Pracimantoro', 8, 2, 27.20, -8.04087543488, 110, 47, 0.00, 110.78333282471, 0, 'Merupakan museum yang menyimpan semua kategori bebatuan karst dari seluruh Indonesia', 'Kecamatan Pracimantoro menyimpan banyak obyek wisata yang menarik, salah satunya adalah Museum Karst yang didirikan pada tahun 2007. Museum ini terdapat di Dusun Danggolo, Desa Gebangharjo, Kecamatan Pracimantoro, yang menjadi pusat penelitian karst, dan di disekitar museum ini terdapat beberapa goa yang menarik untuk dikunjungi dan dilakukan penelitian terhadap keberadaan goa ini. ', 'iconmuseumkarst.jpg'),
('W003', 'Goa Putri Kencono (Goa Growong)', 'K005', 'KW03', 'Desa Wonodadi, Kecamatan Pracimantoro 1', 8, 1, 29.40, -8.02483177185, 110, 54, 36.60, 110.91017150879, 0, 'Merupakan Goa yang ada diperbukitan dengan bebatuan', 'Selain deretan goa-goa yang ada disekitar Museum Karst, masih ada Goa yang sangat menarik di Desa Wonodadi, Kecamatan Pracimantoro dengan jarak sekitar 3 km dari jalan raya Wonogiri Pracimantoro. Goa ini memiliki keindahan deretan stalagtit dan stalagmit dan masih banyak mengeluarkan air yang berasal dari bebatuan tersebut. Panjangnya lebih dari 100 meter, diberikan penerangan di dalam goa. Stalagtit dan stalagmit yang terbentuk sangat indah menyerupai gapura, candi, gading, dan taring yang mengkilap. ', 'icongoaputrikencono.jpg'),
('W004', 'Pantai Nampu', 'K005', 'KW03', 'Jl. Paranggupito atau Jl. Raya Pantai Nampu, Dusun Dringo, Desa Gunturharjo', 8, 12, 36.70, -8.21020221710, 110, 54, 10.20, 110.90284729004, 0, 'Sebuah Pantai berpasir putih yang keberadaannya terpencil, berada pada ujung selatan Kabupaten Wonogiri. Pantai ini cukup panjang tetapi antara daratan dengan bibir pantai sangat pendek dengan deburan ombak yang sangat besar dan bersuara bergemuruh apaligi ketika sudah mulai pasang. Disebelah barat pantai nampu terdapat Pantai Sembukan dan sebelah timurnya terdapat Pantai Banyu Nibo (dalam bahasa Indonesia memiliki arti air yang jatuh). Pantai Nampu sangat elok dan alami sangat panjang cocok untuk rekreasi keluarga dengan minuman kas air kelapa muda. Jarak dari Kecamatan Paranggupito kurang lebih 14 km, disamping itu ditepi pantai juga ada sumber mata air, sehingga apabila sehabis bermain di pantai bisa langsung mandi dengan air tawar yang ada di dekat pantai tersebut. ', '', 'iconpantainampu.JPG'),
('W005', 'Candi Sukuh', 'K014', 'KW01', 'Dukuh Sukuh, Desa Berjo', 7, 37, 39.70, -7.62769460678, 111, 7, 52.50, 111.13124847412, 1, 'Merupakan Candi peninggalan masa kejayaan Hindu di tanah jawa dengan tanda terdapatnya obyek pemujaan Lingga dan Yoni. Candi-candi yang berdiri merupakan candi yang dianggap sebagian orang menampilkan ketidaknyaman para pengunjung karena bentuk yang ditonjolkan adalah alat kelamin manusia baik perempuan dan pria. Komplek candi ini berada di wilayah Dukuh Sukuh, Desa Berjo, Kecamatan Ngargoyoso, Kabupaten Karanganyar. Komplek candi ini berdampingan dengan Taman Hutan Raya (Tahura) KGPAA Mangkunegoro 1.', 'Komplek Candi Sukuh terletak dilereng Gunung Lawu (gunung api yang sudah tidak aktif) dengan ketinggian dari permukaan laut 1.184 meter sehingga memiliki udara yang sejuk dan sering berkabut terutama menjlang petang. Jarak antara Candi Sukuh dengan Candi Cetho kurang lebih 13 km dan dapat ditempuh dalam waktu 1 jam dengan jalanan yang cukup menegangkan menyusuri bukit-bukit gunung.', 'candisukuhicon.JPG'),
('W006', 'Kebun Teh Kemuning', 'K014', 'KW03', 'Jl. Kadipekso, Desa Kemuning dan Desa Ngargoyoso ', 7, 35, 59.40, -7.59983348846, 111, 7, 24.00, 111.12333679199, 920, 'Merupakan obyek wisata kebun teh yang berada di Desa Kemuning juga berada di Desa Ngargoyoso, Kecamatan Ngargoyoso, Kabupaten Karanganyar. Sepanjang jalur jalan dari Jl. Raya Ngargoyoso-Kemuning, Jl. Raya Karangpandan-Ngargoyoso sampai dengan Jl. Kadipekso terdapat banyak obyek wisata alam yang begitu indah dengan pemandangn yang memikat ketika melakukan perjalanan. Lokasi ini juga merupakan lokasi Resto Kemuning.', 'Kawasan Kemuning berada di antara Candi Sukuh dan Candi Cetho. Candi Palanggatan dan Menggung. Untuk menuju tempat tersebut, tidak sulit. Kita bisa memakai angkutan umum dengan rute Karangpandan, Ngargoyoso, dan Jenawi. Hamparan hijau perkebunan teh sangat bagus dilahat. Di Kemuning, kita bisa menikmati pesiar dalam bentuk tea walk alias menjelajahi perkebunan teh. Tak hanya pemandangan hamparan teh. Puluhan perempuan bercaping dengan tenggok di punggung menjadi bumbu lain yang sedap dilihat. Mereka bekerja dengan penuh kesabaran dan ketelitian', 'kebuntehkemuningicon.JPG'),
('W007', 'Kampoeng Karet', 'K014', 'KW03', 'Jl. Karangpandan-Ngaroyoso, Dusun Kenteng, Desa Puntukrejo, Ngargoyoso, Karanganyar', 7, 37, 10.30, -7.61952781677, 111, 6, 9.30, 111.10258483887, 782, '', '', 'kampoengkareticon.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `pengelola`
--

CREATE TABLE `pengelola` (
  `pengelolaKODE` int(4) NOT NULL,
  `pengelolaNAMA1` char(25) NOT NULL,
  `pengelolaNAMA2` char(35) NOT NULL,
  `pengelolaEMAIL` varchar(255) NOT NULL,
  `pengelolaPASSWORD` char(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengelola`
--

INSERT INTO `pengelola` (`pengelolaKODE`, `pengelolaNAMA1`, `pengelolaNAMA2`, `pengelolaEMAIL`, `pengelolaPASSWORD`) VALUES
(4, 'Wasino', 'Wasino', 'wwasino@yahoo.com', '8f2fcdbe60faa4dfd985c883db3674a4');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `sliderKODE` char(4) NOT NULL,
  `sliderFOTO` varchar(255) NOT NULL,
  `sliderJUDUL` varchar(255) NOT NULL,
  `sliderKET` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`sliderKODE`, `sliderFOTO`, `sliderJUDUL`, `sliderKET`) VALUES
('SL01', 'CandiCetho1.jpg', 'Candi Cehto', 'Candi Cetho merupakan candi peninggalan masa Hindu'),
('SL02', 'PantaiIndrayanti1.jpg', 'Pantai Indrayanti', 'Merupakan pantai yang yang memiliki bibir pantai yang panjang dengan sebutan lain Pantai Pulang Sawal.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin2`
--
ALTER TABLE `admin2`
  ADD PRIMARY KEY (`IDadmin`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`anggotaKODE`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`beritaKODE`);

--
-- Indexes for table `editfoto`
--
ALTER TABLE `editfoto`
  ADD PRIMARY KEY (`fotoKODE`);

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`fasilitasKODE`);

--
-- Indexes for table `fasilitasobyek`
--
ALTER TABLE `fasilitasobyek`
  ADD PRIMARY KEY (`fasilitasobyekKODE`);

--
-- Indexes for table `fotoberita`
--
ALTER TABLE `fotoberita`
  ADD PRIMARY KEY (`beritafotoKODE`);

--
-- Indexes for table `fotoobyekwisata`
--
ALTER TABLE `fotoobyekwisata`
  ADD PRIMARY KEY (`fotoobyekKODE`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`kabupatenKODE`);

--
-- Indexes for table `kategoriberita`
--
ALTER TABLE `kategoriberita`
  ADD PRIMARY KEY (`kategoriberitaKODE`);

--
-- Indexes for table `kategoriwisata`
--
ALTER TABLE `kategoriwisata`
  ADD PRIMARY KEY (`kategoriKODE`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`kecamatanKODE`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`eventKODE`);

--
-- Indexes for table `obyekwisata`
--
ALTER TABLE `obyekwisata`
  ADD PRIMARY KEY (`obyekKODE`);

--
-- Indexes for table `pengelola`
--
ALTER TABLE `pengelola`
  ADD PRIMARY KEY (`pengelolaKODE`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`sliderKODE`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `anggotaKODE` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengelola`
--
ALTER TABLE `pengelola`
  MODIFY `pengelolaKODE` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
