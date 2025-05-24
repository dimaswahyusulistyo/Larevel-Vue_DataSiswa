-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Des 2023 pada 20.42
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-vue`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_13_060841_create_siswas_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswas`
--

CREATE TABLE `siswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kota` text DEFAULT NULL,
  `provinsi` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswas`
--

INSERT INTO `siswas` (`id`, `nama`, `alamat`, `kota`, `provinsi`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Dalima Laras Wastuti', 'Gg. Villa No. 248', 'Tangerang', 'Bengkulu', 'usyi.agustina@gmail.co.id', '2023-11-12 23:51:49', '2023-11-12 23:51:49'),
(2, 'Kairav Atmaja Maulana S.Pd', 'Kpg. Bahagia  No. 180', 'Cimahi', 'Sumatera Selatan', 'paris75@yahoo.com', '2023-11-12 23:51:49', '2023-11-12 23:51:49'),
(3, 'Cinthia Astuti S.E.I', 'Jln. Moch. Ramdan No. 976', 'Bengkulu', 'Sumatera Barat', 'malika.sihombing@sudiati.name', '2023-11-12 23:51:49', '2023-11-12 23:51:49'),
(4, 'Michelle Tiara Farida', 'Jln. Yos Sudarso No. 636', 'Depok', 'Gorontalo', 'csuryono@pratiwi.web.id', '2023-11-12 23:51:49', '2023-11-12 23:51:49'),
(5, 'Juli Ida Yolanda S.Psi', 'Dk. Kiaracondong No. 140', 'Mataram', 'Lampung', 'dkusmawati@suryono.net', '2023-11-12 23:51:49', '2023-11-12 23:51:49'),
(6, 'Salwa Suryatmi', 'Jr. Orang No. 139', 'Subulussalam', 'Maluku Utara', 'ismail47@wibowo.go.id', '2023-11-12 23:51:49', '2023-11-12 23:51:49'),
(7, 'Wardaya Permadi', 'Ki. Madiun No. 924', 'Yogyakarta', 'Kalimantan Barat', 'rahayu.opung@gmail.co.id', '2023-11-12 23:51:49', '2023-11-12 23:51:49'),
(8, 'Uda Saptono', 'Psr. Pacuan Kuda No. 187', 'Tegal', 'Nusa Tenggara Barat', 'raden35@pranowo.web.id', '2023-11-12 23:51:49', '2023-11-12 23:51:49'),
(9, 'Cahyo Bagya Wijaya', 'Gg. Labu No. 368', 'Ternate', 'Nusa Tenggara Timur', 'qthamrin@padmasari.org', '2023-11-12 23:51:49', '2023-11-12 23:51:49'),
(11, 'Jelita Hasanah', 'Ds. Banal No. 364', 'Blitar', 'Jawa Timur', 'dipa59@riyanti.in', '2023-11-12 23:51:49', '2023-11-12 23:51:49'),
(12, 'Asman Nainggolan S.Gz', 'Ki. Sumpah Pemuda No. 842', 'Subulussalam', 'Jawa Timur', 'ukurniawan@astuti.org', '2023-11-12 23:51:49', '2023-11-12 23:51:49'),
(13, 'Aisyah Puspita', 'Gg. Sudiarto No. 827', 'Metro', 'Nusa Tenggara Barat', 'salimah91@wastuti.co', '2023-11-12 23:51:49', '2023-11-12 23:51:49'),
(14, 'Bagas Galih Latupono', 'Psr. Umalas No. 169', 'Padangsidempuan', 'Papua', 'cawisadi.tamba@yahoo.co.id', '2023-11-12 23:51:49', '2023-11-12 23:51:49'),
(15, 'Uda Cakrawangsa Sirait M.Kom.', 'Ki. Eka No. 450', 'Padangpanjang', 'Sulawesi Utara', 'apalastri@gmail.co.id', '2023-11-12 23:51:49', '2023-11-12 23:51:49'),
(16, 'Lidya Agustina S.I.Kom', 'Ds. Hasanuddin No. 815', 'Pagar Alam', 'Papua Barat', 'onababan@suartini.sch.id', '2023-11-12 23:51:49', '2023-11-12 23:51:49'),
(17, 'Daniswara Tarihoran S.Gz', 'Ds. Umalas No. 498', 'Pariaman', 'Kepulauan Riau', 'asmuni13@wijayanti.web.id', '2023-11-12 23:51:49', '2023-11-12 23:51:49'),
(19, 'Usman Tampubolon', 'Jr. Abang No. 317', 'Administrasi Jakarta Barat', 'Banten', 'ika89@wahyuni.name', '2023-11-12 23:51:49', '2023-11-12 23:51:49'),
(21, 'Clark Kent', 'Jl. Cepat dapat', 'Metropolis', 'Yogyakarta', 'clark.kent@gmail.com', '2023-11-20 00:04:05', '2023-11-20 00:04:05'),
(27, 'Harimurti Bahuwarna Suwarno', 'Jln. Jamika No. 622', 'Banjar', 'Riau', 'jasmin09@susanti.tv', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(28, 'Rina Maryati', 'Dk. Jayawijaya No. 655', 'Administrasi Jakarta Timur', 'Riau', 'qharyanti@napitupulu.name', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(29, 'Rangga Mulya Utama', 'Dk. Salatiga No. 113', 'Tidore Kepulauan', 'Sumatera Barat', 'marsudi34@pangestu.name', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(30, 'Anita Lailasari', 'Dk. Sam Ratulangi No. 811', 'Sungai Penuh', 'Kalimantan Timur', 'wasita.daryani@yahoo.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(31, 'Rini Rini Padmasari S.Psi', 'Jln. Bah Jaya No. 180', 'Sabang', 'Nusa Tenggara Timur', 'tsitumorang@hardiansyah.biz.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(32, 'Cager Lazuardi', 'Ki. Ahmad Dahlan No. 159', 'Serang', 'Jawa Barat', 'maheswara.mala@pertiwi.in', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(33, 'Garda Pranowo', 'Dk. Sutarto No. 775', 'Jambi', 'Kepulauan Bangka Belitung', 'luluh91@yahoo.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(34, 'Cawuk Siregar', 'Ds. Baha No. 521', 'Sorong', 'Bengkulu', 'rendy05@yahoo.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(35, 'Adika Adriansyah', 'Dk. Cut Nyak Dien No. 63', 'Dumai', 'DI Yogyakarta', 'pradipta.gamani@gmail.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(36, 'Bancar Prayoga', 'Gg. Abdul Muis No. 404', 'Kendari', 'Bengkulu', 'dodo.kurniawan@gmail.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(37, 'Raisa Hartati', 'Jln. Hasanuddin No. 652', 'Balikpapan', 'Papua Barat', 'habibi.edi@yahoo.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(38, 'Naradi Dacin Natsir', 'Kpg. Baranang No. 970', 'Bandar Lampung', 'Jambi', 'limar34@dabukke.desa.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(39, 'Nadia Pratiwi', 'Psr. Daan No. 573', 'Kotamobagu', 'Jawa Barat', 'rachel.laksita@kuswandari.net', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(40, 'Belinda Puji Palastri', 'Dk. Basoka Raya No. 178', 'Bima', 'Jawa Tengah', 'rafi.wahyudin@gmail.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(41, 'Malika Nabila Nasyidah', 'Ds. Thamrin No. 379', 'Magelang', 'Sulawesi Tenggara', 'hastuti.shania@wahyudin.net', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(42, 'Dinda Andriani M.Ak', 'Dk. Pasirkoja No. 658', 'Sungai Penuh', 'Sumatera Utara', 'jasmin.suartini@gmail.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(43, 'Ciaobella Ira Maryati S.Pt', 'Kpg. Abdul No. 266', 'Kotamobagu', 'Maluku', 'gatot49@yahoo.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(44, 'Bakti Sihotang', 'Ds. Baranangsiang No. 528', 'Administrasi Jakarta Selatan', 'Sulawesi Selatan', 'amelia.ardianto@permata.biz.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(45, 'Capa Heru Pradipta', 'Jr. Acordion No. 801', 'Mataram', 'Kalimantan Timur', 'betania.kusmawati@yahoo.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(46, 'Kawaya Prayogo Rajasa', 'Jln. Tambak No. 762', 'Banjarbaru', 'Sumatera Utara', 'yani.maryati@gunawan.tv', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(47, 'Maya Maryati', 'Ki. Flores No. 530', 'Lhokseumawe', 'Lampung', 'winda57@sitorus.asia', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(48, 'Asmadi Suryono', 'Dk. Casablanca No. 624', 'Parepare', 'Sulawesi Barat', 'qnainggolan@suryatmi.org', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(49, 'Ulva Rahayu', 'Psr. Banda No. 551', 'Probolinggo', 'Gorontalo', 'siska42@gmail.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(50, 'Emong Damu Nashiruddin S.IP', 'Psr. Abdul. Muis No. 408', 'Subulussalam', 'Sumatera Barat', 'wakiman95@rahimah.info', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(51, 'Panca Kuswoyo', 'Jr. Juanda No. 990', 'Administrasi Jakarta Pusat', 'Papua', 'saputra.erik@gmail.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(52, 'Hadi Iswahyudi S.Farm', 'Kpg. Bara Tambar No. 908', 'Palopo', 'Jawa Barat', 'cprasasta@puspasari.info', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(53, 'Ibun Prabu Suryono S.H.', 'Dk. Sugiyopranoto No. 908', 'Bontang', 'Banten', 'hartati.maria@putra.go.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(54, 'Usyi Mulyani', 'Ds. Baladewa No. 223', 'Tual', 'Banten', 'caraka31@simanjuntak.ac.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(55, 'Wisnu Tampubolon', 'Ki. Taman No. 383', 'Blitar', 'Kepulauan Bangka Belitung', 'nasyiah.siska@gunarto.my.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(56, 'Okta Permadi S.T.', 'Jr. Pattimura No. 355', 'Administrasi Jakarta Timur', 'Jawa Tengah', 'victoria.prabowo@napitupulu.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(57, 'Karsa Mujur Sihotang', 'Ki. Gardujati No. 905', 'Administrasi Jakarta Selatan', 'Sulawesi Tengah', 'marsudi.hassanah@gmail.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(58, 'Gilda Paris Maryati', 'Psr. BKR No. 611', 'Bitung', 'Kalimantan Tengah', 'qputra@gmail.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(59, 'Hasna Winda Palastri S.Farm', 'Gg. Babakan No. 820', 'Administrasi Jakarta Utara', 'Sulawesi Tengah', 'widodo.ivan@aryani.web.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(60, 'Irma Mardhiyah S.Farm', 'Kpg. Bayam No. 729', 'Tidore Kepulauan', 'DKI Jakarta', 'adriansyah.galur@yahoo.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(61, 'Tantri Usamah', 'Jr. Kusmanto No. 775', 'Ternate', 'Bengkulu', 'pia93@mayasari.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(62, 'Gina Andriani', 'Ki. Perintis Kemerdekaan No. 646', 'Malang', 'Sulawesi Utara', 'baktiadi45@gmail.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(63, 'Emong Dabukke', 'Jln. Banal No. 692', 'Bima', 'DKI Jakarta', 'ajimat18@latupono.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(64, 'Jessica Kani Yuniar S.H.', 'Ds. Perintis Kemerdekaan No. 126', 'Bekasi', 'Nusa Tenggara Timur', 'natalia.sihombing@yolanda.biz', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(65, 'Zaenab Novitasari', 'Ki. Basoka Raya No. 851', 'Ternate', 'Jawa Barat', 'gnugroho@gmail.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(66, 'Oliva Astuti', 'Ds. Gremet No. 307', 'Kupang', 'Nusa Tenggara Barat', 'lazuardi.jatmiko@halimah.org', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(67, 'Ani Sudiati', 'Kpg. Ters. Kiaracondong No. 152', 'Bekasi', 'Nusa Tenggara Barat', 'hbudiman@yahoo.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(68, 'Agnes Permata', 'Gg. Suprapto No. 414', 'Bima', 'Jawa Barat', 'talia72@gmail.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(69, 'Natalia Nuraini', 'Jln. Jend. A. Yani No. 198', 'Administrasi Jakarta Barat', 'Nusa Tenggara Barat', 'hnashiruddin@adriansyah.name', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(70, 'Johan Narpati', 'Kpg. Baranang Siang No. 213', 'Samarinda', 'DI Yogyakarta', 'dabukke.hadi@gmail.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(71, 'Novi Hariyah S.T.', 'Kpg. Bak Air No. 517', 'Langsa', 'Sulawesi Selatan', 'baktiadi44@mardhiyah.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(72, 'Gabriella Hartati M.Farm', 'Gg. Cikutra Barat No. 319', 'Solok', 'Bali', 'emil.nasyidah@gmail.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(73, 'Legawa Firmansyah', 'Jln. W.R. Supratman No. 515', 'Pangkal Pinang', 'Kepulauan Bangka Belitung', 'lutfan.farida@gmail.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(74, 'Dalimin Darman Maulana M.Pd', 'Kpg. Yoga No. 678', 'Denpasar', 'Kalimantan Utara', 'wsudiati@yahoo.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(75, 'Mulyanto Saputra', 'Gg. Basket No. 376', 'Balikpapan', 'Sulawesi Tengah', 'vera.mayasari@gmail.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(76, 'Purwanto Hakim', 'Dk. Bakti No. 350', 'Mojokerto', 'Jawa Tengah', 'ilyas.rahimah@yahoo.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(77, 'Hana Diana Rahayu', 'Dk. Rajawali Timur No. 274', 'Bau-Bau', 'Sulawesi Barat', 'fandriani@yahoo.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(78, 'Gadang Habibi', 'Dk. Setia Budi No. 340', 'Sabang', 'Jambi', 'uyolanda@yahoo.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(79, 'Maida Tantri Rahayu', 'Ki. Antapani Lama No. 138', 'Mataram', 'Jawa Tengah', 'laksita.drajat@yuliarti.info', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(80, 'Galang Rangga Nainggolan', 'Jr. Baranang Siang No. 86', 'Banda Aceh', 'Sulawesi Utara', 'rahmi93@gmail.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(81, 'Salimah Aryani S.T.', 'Ki. Muwardi No. 421', 'Mojokerto', 'Kalimantan Timur', 'tantri.maryati@kusmawati.go.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(82, 'Alika Nuraini', 'Kpg. HOS. Cjokroaminoto (Pasirkaliki) No. 700', 'Palu', 'Nusa Tenggara Barat', 'hariyah.teddy@jailani.mil.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(83, 'Eli Hariyah S.IP', 'Jln. Gatot Subroto No. 683', 'Solok', 'DI Yogyakarta', 'hani06@yahoo.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(84, 'Candra Latupono', 'Gg. Baiduri No. 22', 'Tebing Tinggi', 'Jambi', 'euyainah@gmail.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(85, 'Kenes Widodo M.Kom.', 'Psr. Tambak No. 423', 'Madiun', 'Kalimantan Tengah', 'elvina29@agustina.or.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(86, 'Bella Aryani', 'Gg. Jakarta No. 890', 'Palangka Raya', 'Riau', 'psuryatmi@padmasari.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(87, 'Tugiman Suryono S.IP', 'Jln. Radio No. 8', 'Batam', 'Jawa Tengah', 'raditya.gunarto@gmail.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(88, 'Purwa Rajasa S.E.', 'Dk. Samanhudi No. 32', 'Administrasi Jakarta Pusat', 'DI Yogyakarta', 'opermadi@yahoo.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(89, 'Niyaga Kacung Zulkarnain M.Ak', 'Gg. Bak Air No. 746', 'Gorontalo', 'Kalimantan Tengah', 'rrahimah@sudiati.co', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(90, 'Karya Sitompul', 'Ds. Cokroaminoto No. 141', 'Blitar', 'Lampung', 'kuswandari.wardaya@gmail.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(91, 'Danu Prabowo M.M.', 'Psr. Abdul Rahmat No. 497', 'Bandung', 'Nusa Tenggara Barat', 'ratna.usada@gmail.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(92, 'Vicky Namaga S.Farm', 'Jln. Cemara No. 555', 'Makassar', 'Sulawesi Tenggara', 'maman.mulyani@yahoo.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(93, 'Anggabaya Surya Sirait', 'Jr. K.H. Wahid Hasyim (Kopo) No. 804', 'Malang', 'Kepulauan Bangka Belitung', 'hutapea.jamalia@hardiansyah.org', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(94, 'Jamil Empluk Prasetyo', 'Psr. Radio No. 81', 'Pekanbaru', 'Kepulauan Bangka Belitung', 'jkuswoyo@irawan.net', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(95, 'Suci Farida', 'Jr. Baja No. 357', 'Ternate', 'Kalimantan Timur', 'samiah.prastuti@gunarto.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(96, 'Banawi Prasasta S.Farm', 'Jln. Bagas Pati No. 670', 'Pematangsiantar', 'Bengkulu', 'harjaya.simbolon@gmail.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(97, 'Ana Tira Utami', 'Jln. Hasanuddin No. 289', 'Sorong', 'Maluku', 'siregar.eva@maheswara.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(98, 'Satya Prasetyo S.Pt', 'Jr. Bah Jaya No. 658', 'Pangkal Pinang', 'Kalimantan Selatan', 'vputra@gmail.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(99, 'Diana Yolanda S.Psi', 'Dk. Juanda No. 162', 'Singkawang', 'Kalimantan Utara', 'zulaika.cengkal@hariyah.asia', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(100, 'Mulyono Natsir S.Ked', 'Jln. Ekonomi No. 438', 'Mataram', 'Bengkulu', 'victoria.anggriawan@gmail.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(101, 'Kartika Rahayu', 'Jr. Ters. Jakarta No. 891', 'Banda Aceh', 'Kepulauan Riau', 'oliva13@yahoo.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(102, 'Silvia Palastri', 'Gg. Babadak No. 874', 'Banjar', 'Bengkulu', 'namaga.hani@gmail.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(103, 'Samiah Lidya Uyainah M.Ak', 'Kpg. Achmad Yani No. 345', 'Blitar', 'DKI Jakarta', 'asman.wahyudin@yahoo.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(104, 'Yance Yuliana Rahayu S.Pd', 'Jln. Barasak No. 556', 'Mataram', 'Aceh', 'salahudin.bambang@gmail.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(105, 'Galih Mangunsong M.TI.', 'Ds. Rajiman No. 724', 'Tangerang Selatan', 'Papua', 'purwanto.mustofa@wulandari.my.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(106, 'Hamima Azalea Namaga M.M.', 'Gg. Ir. H. Juanda No. 915', 'Gunungsitoli', 'Jawa Timur', 'cnatsir@suryono.ac.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(107, 'Karma Prasasta', 'Jr. Dipatiukur No. 996', 'Tual', 'Papua Barat', 'lidya48@usamah.ac.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(108, 'Kawaya Suwarno M.M.', 'Jln. Tambun No. 718', 'Blitar', 'Kalimantan Barat', 'harto.kuswoyo@suryatmi.tv', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(109, 'Widya Andriani', 'Ds. Umalas No. 61', 'Padangsidempuan', 'Kalimantan Barat', 'ade95@purwanti.web.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(110, 'Gabriella Nurdiyanti', 'Ds. Siliwangi No. 658', 'Sungai Penuh', 'Jawa Tengah', 'vanya63@gmail.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(111, 'Artawan Dongoran S.Gz', 'Gg. Gajah No. 601', 'Magelang', 'Aceh', 'eriyanti@lazuardi.co', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(112, 'Bakidin Hidayanto', 'Gg. Fajar No. 352', 'Dumai', 'Kalimantan Barat', 'ani.winarno@gmail.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(113, 'Gaman Opung Megantara', 'Ki. Banda No. 888', 'Pasuruan', 'Kalimantan Barat', 'pmansur@yahoo.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(114, 'Jayeng Sihombing', 'Ds. Bakau Griya Utama No. 44', 'Serang', 'Papua Barat', 'eli46@waskita.or.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(115, 'Naradi Pangestu S.Ked', 'Ds. Baranang Siang Indah No. 122', 'Banjarmasin', 'Kalimantan Utara', 'ciaobella53@yahoo.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(116, 'Rizki Setiawan', 'Jr. Basuki No. 391', 'Sawahlunto', 'Sumatera Utara', 'marsudi.situmorang@handayani.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(117, 'Atma Gaduh Pranowo S.Pd', 'Jr. Cikapayang No. 160', 'Padang', 'Kalimantan Timur', 'lailasari.kusuma@yahoo.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(118, 'Samiah Anggraini', 'Gg. Sampangan No. 285', 'Administrasi Jakarta Utara', 'Bengkulu', 'darmaji.damanik@agustina.sch.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(119, 'Siska Ulva Suryatmi S.T.', 'Kpg. Bambon No. 514', 'Ternate', 'Papua', 'hlazuardi@yahoo.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(120, 'Gandewa Sitompul', 'Ki. Yos No. 418', 'Padang', 'Kalimantan Utara', 'eva45@prakasa.or.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(121, 'Karsana Lazuardi', 'Jln. Ikan No. 522', 'Pasuruan', 'Jambi', 'radit24@najmudin.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(122, 'Endah Pudjiastuti S.I.Kom', 'Ds. Dr. Junjunan No. 853', 'Batu', 'Jawa Timur', 'darmaji.wahyudin@gmail.co.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(123, 'Nardi Salahudin', 'Jln. Babadan No. 592', 'Pekalongan', 'Jawa Tengah', 'ade.winarsih@latupono.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(124, 'Vera Yolanda', 'Ki. Cokroaminoto No. 126', 'Tangerang Selatan', 'Aceh', 'kpratiwi@novitasari.go.id', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(125, 'Amalia Oktaviani', 'Gg. Baranang Siang No. 306', 'Palopo', 'Jawa Timur', 'rgunawan@gmail.com', '2023-12-16 08:25:25', '2023-12-16 08:25:25'),
(126, 'Maida Haryanti', 'Kpg. Reksoninten No. 989', 'Salatiga', 'Jawa Tengah', 'wijayanti.vega@tampubolon.name', '2023-12-16 08:25:25', '2023-12-16 08:25:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dimas', 'dimastyo@gmail.com', NULL, '$2y$12$3SRIvI8YZX71rIvwtfbfrOUgNXo.Jx6uCS7zXcfFMM9G.IyoLtoa2', 'admin', NULL, '2023-12-16 08:48:39', '2023-12-16 08:48:39'),
(2, 'userbiasa', 'userbiasa@gmail.com', NULL, '$2y$12$j6pNG6XF2hKFhjLAIJ2uN.yeWKEcz8uRqqGBsgYjKQh8vXeSwt8eO', 'user', NULL, '2023-12-17 07:20:03', '2023-12-17 07:20:03'),
(4, 'User', 'user@gmail.com', NULL, '$2y$12$mdBoqKLcLf3hEcV.mkagEeFi5zlK0DEPsMjYCYrObRjk1P3esF9L.', 'user', NULL, '2023-12-21 22:39:43', '2023-12-21 22:39:43'),
(5, 'Berkha', 'berkha@gmail.com', NULL, '$2y$12$EbmV.ujucUbmrT5s6ABCou5QvXzLBLPfenGrQwwcCW/o/CSGKjaby', 'user', NULL, '2023-12-21 23:03:41', '2023-12-21 23:03:41');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
