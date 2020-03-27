-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2020 at 05:16 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts`
--

-- --------------------------------------------------------

--
-- Table structure for table `uts_resep`
--

CREATE TABLE `uts_resep` (
  `id_resep` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nama_resep` varchar(50) NOT NULL,
  `bahan` text NOT NULL,
  `cara` text NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uts_resep`
--

INSERT INTO `uts_resep` (`id_resep`, `nama`, `nama_resep`, `bahan`, `cara`, `foto`) VALUES
(25, 'diyon', 'Soto Ayam', '1 ruas kunyit\r\n1 ruas jahe\r\n1 ujung ibu jari lengkuas\r\n4 butir kemiri ukuran kecil\r\nSejumput jinten\r\n1 sendok teh ketumbar\r\n2-3 batang daun sereh\r\n1 sendok teh lada\r\n2 sendok makan garam\r\n3 siung bawang merah\r\n2 siung bawang putih\r\n2 sendok makan minyak goreng\r\nAir secukupnya\r\n\r\nBumbu tambahan:\r\n\r\n3 lembar daun jeruk\r\n2 batang serai\r\n2 lembar daun salam\r\n1 batang daun bawang, iris halus\r\n', 'Masukkan semua bumbu halus dalam blender. Kemudian tumis di atas penggorengan dengan api sedang. Meskipun sudah ada minyak di bumbu halus, kamu bisa menambahkan minyak lagi secukupnya.\r\nSelagi menumis, masukan daun jeruk, daun salam, serai, dan lengkuas. Tumis hingga bumbu harum dan agak kering, kemudian matikan api.\r\nSecara terpisah, rebus air dalam panci hingga mendidih, lalu masukkan bumbu yang sudah ditumis. Cicipi kuah, sesuaikan rasanya dengan menambah gula dan garam. Jika sudah pas, masukkan daging ayam dan rebus hingga daging matang dan bumbu meresap.\r\nMasukkan potongan daun bawang dan rebus kembali hingga mendidih.\r\nSelanjutnya, keluarkan ayam dari dalam panci, potong-potong hingga daging dan tulangnya terpisah. Masukkan kembali potongan daging tersebut ke dalam panci.\r\nSiapkan mangkuk saji, masukan bihun, seledri, dan kubis. Siram dengan kuah soto dan peras jeruk nipis secukupnya. Terakhir, tambahkan telur rebus, bubuk koya, dan taburan bawang goreng. Soto ayam siap disantap.\r\n', '126-IMG_20200327_210336.JPG'),
(26, 'diyon', 'Rendang', 'Bahan:\r\n 500 gr daging\r\n 1 batang serai geprek\r\n 3 lembar daun jeruk\r\n 2 lembar daun salam\r\n 1 ruas lengkuas geprek\r\n 2 cm kayu manis\r\n 1 sdt gula merah\r\n 1 sdt kaldu sapi dan garam\r\n 1/2 sdt jintan bubuk\r\n 1/2 sdt merica bubuk\r\n Jeruk nipis\r\n 500 ml santan dari 1/2 kelapa\r\n\r\nBumbu halus:\r\n 4 siung bawang putih\r\n 6 butir bawang merah\r\n 2 butir kemiri\r\n 1/2 sdt ketumbar\r\n 3 cabai merah besar (buang bijinya)\r\n 2 cm kunyit\r\n 3 cm jahe', 'Cuci bersih daging, potong sesuai selera, beri perasan jeruk nipis, lalu cuci lagi\r\n- Haluskan bumbu, lalu tumis bumbu halus dengan serai, daun jeruk, daun salam, kayu manis dan lengkuas sampai matang\r\n- Masukkan daging, aduk rata, lalu masukkan santan. Masak dengan api kecil sambil sesekali diaduk.\r\n- Kemudian masukkan garam, kaldu, jintan, merica dan gula merah, diamkan hingga bumbu meresap dan airnya menyusut.\r\nKoreksi rasa, angkat dan hidangkan.', '855-IMG_20200327_210820.JPG'),
(27, 'Diyon', 'Nasi Goreng', 'Nasi 600 g\r\n Telur ayam 1 butir. Kocok\r\n Daging ayam 125 g. Cincang halus\r\n Sosis ayam 1 buah\r\n Bawang putih 3 siung. Iris halus\r\n Garam sdt\r\n Penyedap rasa sdt\r\n Kecap ikan sdm\r\n Merica sdt\r\n Daun bawang 1 batang. Iris halus', 'Tumis bawang putih hingga harum. Tambahkan telur lalu orak-arik.\r\n Kemudian tambahkan ayam yang telah dicincang halus dan sosis. Masukkan daun bawang. Tumis lagi.\r\n Masukkan nasi lalu aduk hingga rata. Tambahkan garam, merica, kecap ikan, dan penyedap rasa. Aduk rata sampai aroma sedap atau harum tercium.\r\n Pindahkan nasi goreng putih pada piring. Taburi bawang merah goreng sebagai tambahan.', '240-IMG_20200327_211057.JPG'),
(28, 'Diyon', 'Soto Ayam', '1 ruas kunyit\r\n1 ruas jahe\r\n1 ujung ibu jari lengkuas\r\n4 butir kemiri ukuran kecil\r\nSejumput jinten\r\n1 sendok teh ketumbar\r\n2-3 batang daun sereh\r\n1 sendok teh lada\r\n2 sendok makan garam\r\n3 siung bawang merah\r\n2 siung bawang putih\r\n2 sendok makan minyak goreng\r\nAir secukupnya\r\nBumbu tambahan:\r\n\r\n3 lembar daun jeruk\r\n2 batang serai\r\n2 lembar daun salam\r\n1 batang daun bawang, iris halus\r\n', 'Masukkan semua bumbu halus dalam blender. Kemudian tumis di atas penggorengan dengan api sedang. Meskipun sudah ada minyak di bumbu halus, kamu bisa menambahkan minyak lagi secukupnya.\r\nSelagi menumis, masukan daun jeruk, daun salam, serai, dan lengkuas. Tumis hingga bumbu harum dan agak kering, kemudian matikan api.\r\nSecara terpisah, rebus air dalam panci hingga mendidih, lalu masukkan bumbu yang sudah ditumis. Cicipi kuah, sesuaikan rasanya dengan menambah gula dan garam. Jika sudah pas, masukkan daging ayam dan rebus hingga daging matang dan bumbu meresap.\r\nMasukkan potongan daun bawang dan rebus kembali hingga mendidih.\r\nSelanjutnya, keluarkan ayam dari dalam panci, potong-potong hingga daging dan tulangnya terpisah. Masukkan kembali potongan daging tersebut ke dalam panci.\r\nSiapkan mangkuk saji, masukan bihun, seledri, dan kubis. Siram dengan kuah soto dan peras jeruk nipis secukupnya. Terakhir, tambahkan telur rebus, bubuk koya, dan taburan bawang goreng. Soto ayam siap disantap.\r\n', '933-IMG_20200327_210336.JPG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uts_resep`
--
ALTER TABLE `uts_resep`
  ADD PRIMARY KEY (`id_resep`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `uts_resep`
--
ALTER TABLE `uts_resep`
  MODIFY `id_resep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
