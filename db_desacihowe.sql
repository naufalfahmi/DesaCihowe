-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2017 at 04:01 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_desacihowe`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori_konten`
--

CREATE TABLE IF NOT EXISTS `kategori_konten` (
`id_kat_konten` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_dibuat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_konten`
--

INSERT INTO `kategori_konten` (`id_kat_konten`, `deskripsi`, `tgl_dibuat`) VALUES
(5, 'Berita Harian', '2017-07-27 10:01:13'),
(6, 'Arikel Desa', '2017-07-27 10:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE IF NOT EXISTS `konten` (
`id_konten` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `judul` text NOT NULL,
  `foto` text,
  `isi_deskripsi` text NOT NULL,
  `isi` text NOT NULL,
  `id_kat_konten` int(11) NOT NULL,
  `tgl_dibuat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `count_click` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_konten`, `nip`, `judul`, `foto`, `isi_deskripsi`, `isi`, `id_kat_konten`, `tgl_dibuat`, `count_click`) VALUES
(5, '', 'Keunggulan desa', 'Screenshot_(12).png', 'desa', '<p>sada</p>\r\n', 5, '2017-08-13 07:54:32', 0),
(6, '', 'Peta Desa', 'PETA_DESA_CIHOWE.jpg', 'peta desa cihowe kecamatan ciseeng kabupaten bogor', '', 6, '2017-08-16 20:01:03', 0);
INSERT INTO `konten` (`id_konten`, `nip`, `judul`, `foto`, `isi_deskripsi`, `isi`, `id_kat_konten`, `tgl_dibuat`, `count_click`) VALUES
(9, '', 'Profile', '31-Gambar-Mirana-Dota-2-Wallpaper-161.jpg', 'Desa Gihowe merupakan salah satu Desa di Wilayah Kecamatan Ciseeng Kabupaten Bogor, dengan luas wilayah 221 Ha.  yang terbagi dalam 3 (tiga) Dusun, 5 (lima) Rukun Warga  (RW) dan 16 (lima belas) Rukun Tetangga (RT).', '<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong>GAMBARAN UMUM DESA CIHOWE </strong></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:center">&nbsp;</p>\r\n\r\n<ol style="list-style-type:upper-alpha">\r\n	<li><span style="font-size:12pt"><strong>KONDISI GEOGRAFI </strong></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">Desa Gihowe merupakan salah satu Desa di Wilayah Kecamatan Ciseeng Kabupaten Bogor, dengan luas wilayah 221 Ha.&nbsp; yang terbagi dalam 3 (tiga) Dusun, 5 (lima) Rukun Warga&nbsp; (RW) dan 16 (lima belas) Rukun Tetangga (RT).</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">Batas wilayah Desa Cihowe adalah sebagai berikut : </span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<ol>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Sebelah Utara berbatasan dengan Desa Cogreg &ndash; Kuripan </span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Sebelah Timur berbatasan dengan Desa Bojong&nbsp; Indah - Cogreg</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Sebelah Selatan berbatasan dengan Desa Ciseeng&nbsp; - Cibentang&nbsp;&nbsp;&nbsp; </span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Sebelah Barat berbatasan dengan Desa Cibentang &ndash; Kuripan&nbsp;&nbsp;&nbsp;&nbsp; </span></li>\r\n</ol>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">Jarak Kantor Desa ke Ibu Kota Kecamatan, Kabupaten Bogor, Propinsi Jawa Barat dan ke Ibu Kota Negara&nbsp; adalah sebagai berikut :</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<ol>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Ibu Kota Kecamatan&nbsp; Ciseeng&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Km.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Ibu Kota Kabupaten Bogor.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 25 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Km.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Ibu Kota Propinsi Jawa Barat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 70&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Km.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Ibu Kota Negara&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 40&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Km. </span></li>\r\n</ol>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">Pemanfaatan lahan / penggunaan tanah di Desa Cihowe adalah sebagai berikut :</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<ol>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Perumahan / pemukiman dan pekarangan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 76 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ha.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">S a w a h&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 90&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ha. </span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Ladang / Huma &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 50&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ha.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">J a l a n &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1,6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ha.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Pemakaman / kuburan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1,3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ha.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Perkantoran &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0,1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ha.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Lapangan olah raga&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0,7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ha.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Tanah / Bangunan pendidikan &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1,1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ha.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Tanah / Bangunan Peribadatan &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0,2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ha.</span></li>\r\n</ol>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">Sedangkan Tanah Kas Desa seluas 3,9&nbsp; Ha, penggunaannya adalah sebagai berikut :</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<ol>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Bangunan Kantor Desa &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0,1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ha.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Bangunan&nbsp; SD / SMP / MI &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0,1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ha.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Tanah Makam / Kuburan &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1,3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ha.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Masjid / Mushollah / Majelis Taklim&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0,2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ha.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Jalan Desa &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1,5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ha.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Lapangan olah gara&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0,7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ha.</span></li>\r\n</ol>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:center">&nbsp;</p>\r\n\r\n<ol start="2" style="list-style-type:upper-alpha">\r\n	<li><span style="font-size:12pt"><strong>KONDISI&nbsp;&nbsp; DEMOGRAFI&nbsp; </strong></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt">Jumlah penduduk Desa Cihowe sampai akhir bulan&nbsp; Oktober Tahun 2015&nbsp; tercatat sebanyak&nbsp; 6.565&nbsp;&nbsp; Jiwa terdiri dari : </span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<ol>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Laki-laki sebanyak &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.377&nbsp; jiwa.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Perempuan sebanyak &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.188&nbsp;&nbsp; jiwa.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Jumlah KK sebanyak &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.804 &nbsp; Jiwa.</span></li>\r\n</ol>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt">Jumlah penduduk menurut struktur umur sebagai berikut :</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>\r\n\r\n<table border="1" cellspacing="0" class="Table" style="border-collapse:collapse; border:solid windowtext 1.0pt">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan="2" style="height:14.5pt; width:110.4pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">KELOMPOK UMUR</span></strong></span></p>\r\n			</td>\r\n			<td colspan="2" style="height:14.5pt; vertical-align:top; width:189.35pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">JUMLAH JIWA</span></strong></span></p>\r\n			</td>\r\n			<td rowspan="2" style="height:14.5pt; width:149.05pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">JUMLAH</span></strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:14.5pt; vertical-align:top; width:90.25pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">LAKI LAKI</span></strong></span></p>\r\n			</td>\r\n			<td style="height:14.5pt; vertical-align:top; width:99.1pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">PEREMPUAN</span></strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="4" style="height:3.25pt; vertical-align:top; width:448.8pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.25pt; vertical-align:top; width:110.4pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">0 S/D 4</span></strong></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:90.25pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">316</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:99.1pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">298</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:149.05pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">614</span></strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.25pt; vertical-align:top; width:110.4pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">5 S/D 9</span></strong></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:90.25pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">318</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:99.1pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">296</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:149.05pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">614</span></strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.25pt; vertical-align:top; width:110.4pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">10 S/D 14</span></strong></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:90.25pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">319</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:99.1pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">332</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:149.05pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">651</span></strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.25pt; vertical-align:top; width:110.4pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">15 S/D 19</span></strong></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:90.25pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">302</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:99.1pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">269</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:149.05pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">571</span></strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.25pt; vertical-align:top; width:110.4pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">20 S/D 24</span></strong></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:90.25pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">345</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:99.1pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">338</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:149.05pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">683</span></strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.25pt; vertical-align:top; width:110.4pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">25 S/D 29</span></strong></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:90.25pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">300</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:99.1pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">294</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:149.05pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">594</span></strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.25pt; vertical-align:top; width:110.4pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">30 S/D 34</span></strong></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:90.25pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">296</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:99.1pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">271</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:149.05pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">567</span></strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.25pt; vertical-align:top; width:110.4pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">35 S/D 39</span></strong></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:90.25pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">270</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:99.1pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">251</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:149.05pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">521</span></strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.25pt; vertical-align:top; width:110.4pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">40 S/D 44</span></strong></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:90.25pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">252</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:99.1pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">230</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:149.05pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">482</span></strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.25pt; vertical-align:top; width:110.4pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">45 S/D 49</span></strong></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:90.25pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">212</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:99.1pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">173</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:149.05pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">385</span></strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.25pt; vertical-align:top; width:110.4pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">50 S/D 54</span></strong></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:90.25pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">128</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:99.1pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">125</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:149.05pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">253</span></strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.25pt; vertical-align:top; width:110.4pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">55 S/D 59</span></strong></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:90.25pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">123</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:99.1pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">105</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:149.05pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">228</span></strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.25pt; vertical-align:top; width:110.4pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">60 S/D 64</span></strong></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:90.25pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">93</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:99.1pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">70</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:149.05pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">163</span></strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:15.25pt; vertical-align:top; width:110.4pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">65 S/D KEATAS</span></strong></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:90.25pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">103</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:99.1pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><span style="color:black">136</span></span></p>\r\n			</td>\r\n			<td style="height:15.25pt; vertical-align:top; width:149.05pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">239</span></strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan="4" style="height:3.25pt; vertical-align:top; width:448.8pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="height:18.15pt; width:110.4pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">JUMLAH</span></strong></span></p>\r\n			</td>\r\n			<td style="height:18.15pt; width:90.25pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">3377</span></strong></span></p>\r\n			</td>\r\n			<td style="height:18.15pt; width:99.1pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">3188</span></strong></span></p>\r\n			</td>\r\n			<td style="height:18.15pt; width:149.05pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:12pt"><strong><span style="color:black">6565</span></strong></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt">Jumlah penduduk menurut agama yang di anut sebagai berikut :</span></p>\r\n\r\n<ol>\r\n	<li><span style="font-size:12pt">Is l a m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6.553&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Katolik &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Protestan &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Budha&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Hindu &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; orang.</span></li>\r\n</ol>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">Keadaan mata pencaharian penduduk Desa Cihowe, adalah sebagai berikut :</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<ol>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Belum / Tidak bekerja&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.777&nbsp;&nbsp; orang</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Petani / Peternak&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 385&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Pedagang&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 118&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Pegawai Negeri&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 13&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">TNI / Polri&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Pensiunan / Purnawirawan &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Swasta &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 41&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Wiraswasta &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 115&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Buruh pabrik&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 472&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Pengrajin&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 40&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Tukang bangunan &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 59&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Penjahit&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 341&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Tukang las&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 17&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Tukang ojeg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 21&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Bengkel&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Sopir Angkutan&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 80&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">lain &ndash; lain .&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.072&nbsp;&nbsp; orang.</span></li>\r\n</ol>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">Adapun, Tingkat Pendidikan Penduduk Desa adalah sebagai berikut :</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<ol>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Belum / Tidak Sekolah&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sebanyak&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 628&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Tidak tamat SD / Sederajat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sebanyak&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.903&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Tamat SD / Sederajat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sebanyak&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.809&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Tamat SLTP / Sederajat&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sebanyak&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;817&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Tamat SLTA / Sederajat&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sebanyak&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;381&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Tamat Akademi / Sarmud&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sebanyak&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Tamat Perguruan Tinggi / SI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sebanyak&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;17&nbsp;&nbsp; orang.</span></li>\r\n	<li style="text-align:justify"><span style="font-size:12pt">Tamat Perguruan Tinggi / S2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sebanyak&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp; orang.</span></li>\r\n	<li><span style="font-size:12pt">Tamat Perguruan Tinggi / S3 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sebanyak&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; orang.</span></li>\r\n</ol>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>\r\n\r\n<ol start="3" style="list-style-type:upper-alpha">\r\n	<li><span style="font-size:12pt"><strong>KONDISI&nbsp;&nbsp; SOSIAL </strong></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">Secara umum kondisi sosial politik serta ketentraman dan ketertiban di wilayah Desa Cihowe cukup mantap dan terkendali. Dalam hal ini, kehidupan politik warga masyarakat dapat tersalurkan sesuai dengan aspirasinya seiring dengan bergulirnya repormasi dan banyaknya Partai politik yang berkembang pada data ini.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">Berkaitan dengan masalah keamanan dan ketertiban, dapat disampaikan bahwa pada Tahun 2014&nbsp; situasi dan kondisi desa Cihowe terbilang aman. Adapun gangguan keamanan dan ketertiban yang terjadi antara lain :</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">1.&nbsp;&nbsp;&nbsp; Pencurian sebanyak &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kali </span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">2.&nbsp;&nbsp;&nbsp; Penipuan&nbsp; sebanyak &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kali</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">3.&nbsp;&nbsp;&nbsp; Perampokan sebanyak&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kali</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">4.&nbsp;&nbsp;&nbsp; Pemerkosaan sebanyak &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kali</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">5.&nbsp;&nbsp;&nbsp; Narkoba sebanyak&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kali</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">6.&nbsp;&nbsp;&nbsp; Pembunuhan sebanyak &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kali</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">7.&nbsp;&nbsp; &nbsp;Perjudian sebanyak &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kali</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">8.&nbsp;&nbsp;&nbsp; Perkelahian sebanyak &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kali</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">9.&nbsp;&nbsp;&nbsp; Pemerasan sebanyak&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kali</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">10.&nbsp; Penculikan sebanyak&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kali</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">11.&nbsp; Pemalsuan sebanyak&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kali</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">12.&nbsp; Perzinahan sebanyak&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kali</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">13.&nbsp; Penganiayaan sebanyak&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kali</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">14.&nbsp; Pengrusakan sebanyak&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kali</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">15.&nbsp; Penyerobotan tanah &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kali</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">16.&nbsp; Lain &ndash; lain sebanyak &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; kali</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:12pt">&nbsp;</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">Adapun jumlah anggota Perlindungan Masyarakat&nbsp; (Linmas) sampai saat ini tercatat sebanyak 32 orang. Berkaitan dengan keberadaan dan kelembagaan Linmas, dimana saat ini sudah dibentuk&nbsp; dilingkungan Pemerintah Kabupaten Bogor&nbsp; Kantor Kesbang dan Linmas yang mengatur tentang keberadaan Linmas di Tingkat Kabupaten Bogor, sesuai dengan berubahnya Organisasi dan Tata Kerja Pemerintah Kabupaten Bogor.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<ol start="4" style="list-style-type:upper-alpha">\r\n	<li style="text-align:justify"><span style="font-size:12pt"><strong>SARANA DAN PRASARANA</strong></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<ol style="list-style-type:lower-alpha">\r\n	<li style="text-align:justify"><span style="font-size:12pt"><strong>Sarana dan prasarana Pemerintahan Desa &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</strong></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">1.&nbsp; Kantor Desa &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">2.&nbsp; Balai pertemuan / aula &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; buah.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">3.&nbsp; Ruangan kantor BPD&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">4.&nbsp;&nbsp; Ruangan kantor LPM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">5.&nbsp;&nbsp; Ruangan PKK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">6.&nbsp;&nbsp; Pos Kamling &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah.&nbsp; </span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<ol start="2" style="list-style-type:lower-alpha">\r\n	<li style="text-align:justify"><span style="font-size:12pt"><strong>Sarana dan prasarana perhubungan &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : </strong></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">1.&nbsp;&nbsp; Jalan beton &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Km.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">2.&nbsp;&nbsp; Jalan Hotmix&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Km.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">3.&nbsp;&nbsp; Jalan Aspal &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1,95 &nbsp;&nbsp; Km.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">4.&nbsp;&nbsp; Jalan Pengerasan &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Km.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">5.&nbsp;&nbsp; Jalan Tanah &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2,4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Km.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">6.&nbsp;&nbsp; Jalan gang&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Km. </span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">7.&nbsp;&nbsp; Jembatan &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 16&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<ol start="3" style="list-style-type:lower-alpha">\r\n	<li style="text-align:justify"><span style="font-size:12pt"><strong>Sarana dan Prasarana Pendidikan Umum &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</strong></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">1. &nbsp; TK&nbsp;&nbsp;&nbsp;&nbsp;</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">2.&nbsp;&nbsp; SD&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">3. &nbsp; SLTP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">4. &nbsp; SMU / SMK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">5. &nbsp; DIPLOMA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">6. &nbsp; Perguruan Tinggi &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">7.&nbsp;&nbsp; Tempat-tempat Kursus&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">8.&nbsp;&nbsp; BLK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<ol style="list-style-type:lower-alpha">\r\n	<li style="text-align:justify"><span style="font-size:12pt"><strong>Sarana dan Prasarana Pendidiakn Islam :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">1. &nbsp; R.A / TK ALQUR&rsquo;AN &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">2. &nbsp; MADRASAH IBTIDAIYAH&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">3. &nbsp; M T S&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">4. &nbsp; M A N&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">5. &nbsp; Pondok Pesantren&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">6. &nbsp; Majelis Taklim&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 13 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah.</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<ol start="2" style="list-style-type:lower-alpha">\r\n	<li style="text-align:justify"><span style="font-size:12pt"><strong>Sarana dan Prasarana Peribadatan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : </strong></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">1. &nbsp;&nbsp; Masjid&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">2. &nbsp;&nbsp; Mushola&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">3. &nbsp;&nbsp; Gereja&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">4. &nbsp;&nbsp; Vihara&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt">5. &nbsp;&nbsp; P u r a&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah</span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<ol start="3" style="list-style-type:lower-alpha">\r\n	<li style="text-align:justify"><span style="font-size:12pt"><strong>Sarana dan Prasarana Kesehatan :</strong></span></li>\r\n</ol>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt"><span style="font-size:12pt">1. &nbsp;&nbsp; Lapangan Sepak Bola&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah</span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt"><span style="font-size:12pt">2. &nbsp;&nbsp; Lapangan Badminton&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah</span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt"><span style="font-size:12pt">3. &nbsp;&nbsp; Lapangan Basket&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah</span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt"><span style="font-size:12pt">4. &nbsp;&nbsp; Lapangan Bola Voli&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buah</span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt"><span style="font-size:12pt">5. &nbsp;&nbsp; Lapangan Tenis&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&amp;n</span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt"><span style="font-family:&quot;Times New Roman&quot;,serif">Sedangkan jumlah tenaga medis yang ada dan melaksanakan praktek di desa, adalah sebagai berikut :</span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:12pt"><s', 5, '2017-08-21 08:13:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `log_activity`
--

CREATE TABLE IF NOT EXISTS `log_activity` (
`id_log` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `log_desc` text NOT NULL,
  `tgl_dibuat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_activity`
--

INSERT INTO `log_activity` (`id_log`, `nip`, `log_desc`, `tgl_dibuat`) VALUES
(1, '198503302003121002', '-> INPUT Kategori Dokumen ', '2017-07-31 14:29:20');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id_menu` int(11) NOT NULL,
  `judul` varchar(160) NOT NULL,
  `page` enum('home','dashboard') NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `jenis` enum('konten','link') NOT NULL,
  `link` text,
  `id_konten` int(11) DEFAULT NULL,
  `icon` varchar(100) DEFAULT 'dashboard',
  `tgl_dibuat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `judul`, `page`, `parent`, `jenis`, `link`, `id_konten`, `icon`, `tgl_dibuat`) VALUES
(1, 'Managemen', 'dashboard', 0, 'link', '#', NULL, 'share-alt', '2017-07-26 13:03:34'),
(2, 'User', 'dashboard', 1, 'link', 'user', NULL, 'user', '2017-07-26 13:04:15'),
(3, 'User Roles', 'dashboard', 1, 'link', 'user_roles', NULL, 'group', '2017-07-26 13:05:41'),
(4, 'Navigation Roles', 'dashboard', 1, 'link', 'navigation_roles', NULL, 'location-arrow', '2017-07-26 13:07:54'),
(5, 'Pengaturan', 'dashboard', 0, 'link', '#', NULL, 'gear', '2017-07-26 13:37:00'),
(6, 'Menu', 'dashboard', 5, 'link', 'menu', NULL, 'navicon', '2017-07-26 13:43:27'),
(8, 'Slider', 'dashboard', 5, 'link', 'slider', NULL, 'file-photo-o', '2017-07-26 13:51:58'),
(9, 'Konten', 'dashboard', 0, 'link', '#', NULL, 'file-word-o', '2017-07-26 13:54:13'),
(10, 'Data Konten', 'dashboard', 9, 'link', 'konten', NULL, 'folder-open-o', '2017-07-26 14:00:37'),
(11, 'Kategori Konten', 'dashboard', 9, 'link', 'kategori_konten', NULL, 'sort-alpha-asc', '2017-07-26 14:02:59'),
(38, 'Dokumen', 'dashboard', 0, 'link', '#', NULL, 'sticky-note-o', '2017-07-30 21:20:30'),
(39, 'Data Dokumen', 'dashboard', 38, 'link', 'dokumen', NULL, 'folder-open-o', '2017-07-30 21:23:23'),
(40, 'Kategori Dokumen', 'dashboard', 38, 'link', 'kategori_dokumen', NULL, 'sort-alpha-asc', '2017-07-30 21:24:03'),
(47, 'profile', 'home', 0, 'konten', NULL, 9, 'fa fa-user', '2017-08-12 20:29:21'),
(48, 'Kependudukan', 'home', 0, 'link', 'home/kependudukan', NULL, 'fa fa-server', '2017-08-12 20:37:44'),
(49, 'Kependudukan', 'dashboard', 0, 'link', '#', NULL, 'fa id-card', '2017-08-12 22:02:54'),
(51, 'RT', 'dashboard', 49, 'link', 'rt', NULL, 'rss-square', '2017-08-13 15:14:50'),
(52, 'RW', 'dashboard', 49, 'link', 'rw', NULL, 'rss-square', '2017-08-13 15:15:54'),
(54, 'Berita', 'home', 0, 'link', 'home/konten', NULL, 'rss-square', '2017-08-14 14:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `rt`
--

CREATE TABLE IF NOT EXISTS `rt` (
`id_rt` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `icon` varchar(20) NOT NULL,
  `id_rw` int(11) NOT NULL,
  `tgl_dibuat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rt`
--

INSERT INTO `rt` (`id_rt`, `judul`, `isi`, `icon`, `id_rw`, `tgl_dibuat`) VALUES
(1, 'RT 001', '<p>haiii</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'icon-shop', 1, '2017-08-16 09:01:45'),
(2, 'RT 002', '<p>sdsgdg</p>\r\n', 'icon-shop', 1, '2017-08-16 22:14:03'),
(3, 'RT 003', '', 'icon-shop', 1, '2017-08-17 06:14:16'),
(4, 'RT 004', '', 'icon-shop', 1, '2017-08-17 06:14:46'),
(5, 'RT 001', '', 'icon-shop', 2, '2017-08-17 06:14:56'),
(6, 'RT 002', '', 'icon-shop', 2, '2017-08-17 06:16:44'),
(7, 'RT 003', '', 'icon-shop', 2, '2017-08-17 06:16:52'),
(8, 'RT 001', '', 'icon-shop', 3, '2017-08-17 06:17:04'),
(9, 'RT 002', '', 'icon-shop', 3, '2017-08-17 06:17:13'),
(10, 'RT 003', '', 'icon-shop', 3, '2017-08-17 06:17:23'),
(11, 'RT 001', '', 'icon-shop', 4, '2017-08-17 06:17:39'),
(12, 'RT 002', '', 'icon-shop', 4, '2017-08-17 06:18:03'),
(13, 'RT 003', '', 'icon-shop', 4, '2017-08-17 06:18:12'),
(14, 'RT 001', '', 'icon-shop', 5, '2017-08-17 06:18:23'),
(15, 'RT 002', '', 'icon-shop', 5, '2017-08-17 06:18:31'),
(16, 'RT 003', '', 'icon-shop', 5, '2017-08-17 06:18:37');

-- --------------------------------------------------------

--
-- Table structure for table `rw`
--

CREATE TABLE IF NOT EXISTS `rw` (
`id_rw` int(11) NOT NULL,
  `rw` varchar(33) NOT NULL,
  `tgl_dibuat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rw`
--

INSERT INTO `rw` (`id_rw`, `rw`, `tgl_dibuat`) VALUES
(1, 'RW 001', '2017-08-12 21:54:39'),
(2, 'RW 002', '2017-08-14 13:56:54'),
(3, 'RW 003', '2017-08-15 12:11:30'),
(4, 'RW 004', '2017-08-15 12:11:44'),
(5, 'RW 005', '2017-08-15 12:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
`id_slider` int(11) NOT NULL,
  `foto` text NOT NULL,
  `judul` text NOT NULL,
  `slider_desc` text,
  `isi` text,
  `status` enum('active','hide') NOT NULL,
  `tgl_dibuat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `foto`, `judul`, `slider_desc`, `isi`, `status`, `tgl_dibuat`) VALUES
(1, 'nightcore_forgiven_anime_girl_ears_art_102632_1366x768.jpg', 'Slider 1', 'Test Slider 112', '<p>google.com</p>\r\n', 'hide', '2017-08-02 15:13:31'),
(2, 'slide-2.jpg', 'Slider', 'TEST 1', '<p>bing.com</p>\r\n', 'hide', '2017-08-04 08:39:31'),
(3, '4.jpg', 'Slider 3', 'coba slider 4', '<p>ds</p>\r\n', 'hide', '2017-08-14 14:23:57'),
(4, 'WhatsApp_Image_2017-08-11_at_2_01_35_PM.jpg', 'KKN Universitas Ibn Khaldun Bogor', 'kkn tematik terintegrasi desa cihowe kecamatan ciseeng 2017', '<p>safhafha</p>\r\n', 'active', '2017-08-15 07:26:30'),
(5, 'WhatsApp_Image_2017-08-10_at_10_12_44_AM.jpg', 'KKN Universitas Ibn Khaldun Bogor', 'kkn tematik terintegrasi desa cihowe kecamatan ciseeng 2017', '<p>dsfsdnsdns</p>\r\n', 'active', '2017-08-15 07:29:54'),
(6, 'WhatsApp_Image_2017-08-07_at_3_10_01_PM.jpg', 'KKN Universitas Ibn Khaldun Bogor', 'kkn tematik terintegrasi desa cihowe kecamatan ciseeng 2017', '<p>ds,mfms,fsfnsfs</p>\r\n', 'active', '2017-08-15 07:31:18');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `no_telp` varchar(14) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `alamat` text NOT NULL,
  `foto` text,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `id_role` int(11) NOT NULL,
  `tgl_dibuat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nip`, `nama`, `tgl_lahir`, `jenis_kelamin`, `no_telp`, `email`, `alamat`, `foto`, `username`, `password`, `id_role`, `tgl_dibuat`) VALUES
(2, '198503302003121002', 'M Naufal Fahmi', '1996-12-31', 'laki-laki', '0838-1919-2548', 'boynaufal1@gmail.com', 'Bogor, Jawa Barat', 'future-tech.jpg', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, '2017-07-26 11:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_nav`
--

CREATE TABLE IF NOT EXISTS `user_nav` (
`id_role_nav` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `tgl_dibuat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_nav`
--

INSERT INTO `user_nav` (`id_role_nav`, `id_role`, `id_menu`, `tgl_dibuat`) VALUES
(29, 1, 1, '2017-07-30 17:29:00'),
(30, 1, 2, '2017-07-30 17:31:49'),
(31, 1, 5, '2017-07-30 17:33:18'),
(32, 1, 9, '2017-07-30 17:33:27'),
(34, 1, 3, '2017-07-30 17:37:01'),
(35, 1, 4, '2017-07-30 19:51:16'),
(36, 1, 6, '2017-07-30 19:51:25'),
(38, 1, 8, '2017-07-30 19:51:39'),
(39, 1, 10, '2017-07-30 19:51:45'),
(40, 1, 11, '2017-07-30 19:51:53'),
(42, 2, 9, '2017-07-30 19:52:13'),
(43, 2, 10, '2017-07-30 19:52:23'),
(44, 2, 11, '2017-07-30 19:52:33'),
(60, 3, 2, '2017-07-30 21:25:40'),
(61, 3, 3, '2017-07-30 21:25:54'),
(62, 3, 1, '2017-07-30 21:26:07'),
(63, 3, 4, '2017-07-30 21:26:14'),
(64, 3, 5, '2017-07-30 21:26:47'),
(71, 1, 49, '2017-08-12 22:08:26'),
(72, 1, 51, '2017-08-13 15:15:06'),
(73, 1, 52, '2017-08-13 15:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE IF NOT EXISTS `user_roles` (
`id_role` int(11) NOT NULL,
  `role_name` varchar(150) NOT NULL,
  `role_desc` varchar(255) NOT NULL,
  `tgl_dibuat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id_role`, `role_name`, `role_desc`, `tgl_dibuat`) VALUES
(1, 'Super Admin', 'Semua Fungsi Berjalan', '2017-07-25 10:36:40'),
(2, 'Content Creator', 'Khusus Membuat Konten Web', '2017-07-26 11:08:39'),
(3, 'Managemen', 'Melihat Konten Dan Log', '2017-07-26 11:08:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori_konten`
--
ALTER TABLE `kategori_konten`
 ADD PRIMARY KEY (`id_kat_konten`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
 ADD PRIMARY KEY (`id_konten`), ADD KEY `id_kat_kontent` (`id_kat_konten`);

--
-- Indexes for table `log_activity`
--
ALTER TABLE `log_activity`
 ADD PRIMARY KEY (`id_log`), ADD KEY `id_user` (`nip`), ADD KEY `id_user_2` (`nip`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id_menu`), ADD KEY `parent` (`parent`);

--
-- Indexes for table `rt`
--
ALTER TABLE `rt`
 ADD PRIMARY KEY (`id_rt`), ADD KEY `id_rw` (`id_rw`);

--
-- Indexes for table `rw`
--
ALTER TABLE `rw`
 ADD PRIMARY KEY (`id_rw`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
 ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `nip` (`nip`), ADD KEY `id_role` (`id_role`);

--
-- Indexes for table `user_nav`
--
ALTER TABLE `user_nav`
 ADD PRIMARY KEY (`id_role_nav`), ADD KEY `id_role` (`id_role`), ADD KEY `id_menu` (`id_menu`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
 ADD PRIMARY KEY (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori_konten`
--
ALTER TABLE `kategori_konten`
MODIFY `id_kat_konten` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
MODIFY `id_konten` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `log_activity`
--
ALTER TABLE `log_activity`
MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `rt`
--
ALTER TABLE `rt`
MODIFY `id_rt` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `rw`
--
ALTER TABLE `rw`
MODIFY `id_rw` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_nav`
--
ALTER TABLE `user_nav`
MODIFY `id_role_nav` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `konten`
--
ALTER TABLE `konten`
ADD CONSTRAINT `Cons_Konten_Kat` FOREIGN KEY (`id_kat_konten`) REFERENCES `kategori_konten` (`id_kat_konten`);

--
-- Constraints for table `rt`
--
ALTER TABLE `rt`
ADD CONSTRAINT `Cons_id_rw` FOREIGN KEY (`id_rw`) REFERENCES `rw` (`id_rw`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
ADD CONSTRAINT `Cons_User_idRole` FOREIGN KEY (`id_role`) REFERENCES `user_roles` (`id_role`);

--
-- Constraints for table `user_nav`
--
ALTER TABLE `user_nav`
ADD CONSTRAINT `Cons_Nav_Menu` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`),
ADD CONSTRAINT `Cons_Nav_userRoles` FOREIGN KEY (`id_role`) REFERENCES `user_roles` (`id_role`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
