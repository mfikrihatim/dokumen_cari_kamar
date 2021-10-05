-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 05 Okt 2021 pada 15.06
-- Versi server: 10.3.30-MariaDB-cll-lve
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1358052_extranet`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas_kamar`
--

CREATE TABLE `fasilitas_kamar` (
  `id` int(11) NOT NULL,
  `informasi_umum_detail_id` int(11) NOT NULL,
  `fasilitas_kamar_detail_id` int(11) NOT NULL,
  `availability_tipe_kamar_id` text NOT NULL COMMENT 'Data Array',
  `status_id` int(1) NOT NULL COMMENT '0 = Tidak Aktif, 1 = Aktif',
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fasilitas_kamar`
--

INSERT INTO `fasilitas_kamar` (`id`, `informasi_umum_detail_id`, `fasilitas_kamar_detail_id`, `availability_tipe_kamar_id`, `status_id`, `created_by`, `created_date`, `updated_by`, `updated_date`, `deleted_by`, `deleted_date`) VALUES
(20, 67, 9, '[\"1\",\"1\",\"1\",\"1\",\"2\",\"1\",\"2\"]', 1, 1, '2021-10-01 12:52:50', NULL, NULL, NULL, NULL),
(19, 65, 9, '[\"1\",\"9\"]', 1, 1, '2021-09-30 15:17:23', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas_properti`
--

CREATE TABLE `fasilitas_properti` (
  `id` int(11) NOT NULL,
  `informasi_umum_detail_id` int(11) NOT NULL,
  `fasilitas_properti_detail_id` int(11) NOT NULL,
  `flag_free` int(1) NOT NULL COMMENT '0 = No, 1 = Yes',
  `flag_fullday` int(1) NOT NULL COMMENT '0 = No, 1 = Yes',
  `status_id` int(1) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fasilitas_properti`
--

INSERT INTO `fasilitas_properti` (`id`, `informasi_umum_detail_id`, `fasilitas_properti_detail_id`, `flag_free`, `flag_fullday`, `status_id`, `created_by`, `created_date`, `updated_by`, `updated_date`, `deleted_by`, `deleted_date`) VALUES
(1, 53, 1, 0, 1, 1, 22, '2021-07-10 13:13:55', NULL, '2021-09-22 13:15:14', NULL, NULL),
(2, 2, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL),
(3, 14, 1, 1, 1, 1, 1, '2021-07-17 09:06:48', NULL, NULL, NULL, NULL),
(4, 0, 1, 1, 1, 1, 1, '2021-08-08 11:02:47', NULL, NULL, NULL, NULL),
(5, 62, 1, 1, 1, 0, 22, '2021-09-21 05:48:43', NULL, NULL, 22, '2021-09-21 05:48:53'),
(6, 1, 2, 1, 1, 1, NULL, '2021-09-22 11:42:17', 22, '2021-09-22 21:07:39', NULL, NULL),
(7, 0, 0, 1, 1, 1, 1, '2021-10-01 12:43:11', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto_kamar`
--

CREATE TABLE `foto_kamar` (
  `id` int(11) NOT NULL,
  `tipe_kamar_id` int(11) NOT NULL,
  `foto` text NOT NULL,
  `foto_tipe_id` int(11) NOT NULL,
  `status_id` int(1) NOT NULL COMMENT '0 = Tidak Aktif, 1 = Aktif',
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `foto_kamar`
--

INSERT INTO `foto_kamar` (`id`, `tipe_kamar_id`, `foto`, `foto_tipe_id`, `status_id`, `created_by`, `created_date`, `updated_by`, `updated_date`, `deleted_by`, `deleted_date`) VALUES
(1, 0, '[]', 0, 1, NULL, '2021-07-26 14:06:00', NULL, '2021-07-26 14:15:15', NULL, '2021-07-26 14:10:21'),
(2, 2, '[\"http://localhost/smart-city-ci/uploads/foto_kamar/4.PNG\"]', 1, 1, NULL, '2021-07-26 14:06:39', NULL, NULL, NULL, NULL),
(3, 1, '[\"http://localhost/smart-city-ci/uploads/foto_kamar/8.PNG\",\"http://localhost/smart-city-ci/uploads/foto_kamar/81.PNG\"]', 1, 1, NULL, '2021-07-26 14:06:56', NULL, NULL, NULL, NULL),
(4, 10, '[\"http://localhost/carikamar-web/admin/upload/kamar/1.PNG\",\"http://localhost/carikamar-web/admin/upload/kamar/11.PNG\"]', 9, 0, NULL, '2021-07-29 11:13:05', NULL, '2021-07-29 11:17:54', 22, '2021-07-29 11:18:00'),
(5, 12, '[\"http://localhost/carikamar-web/admin/upload/kamar/21.PNG\"]', 3, 1, NULL, '2021-09-22 23:06:39', NULL, '2021-09-22 23:08:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto_properti`
--

CREATE TABLE `foto_properti` (
  `id` int(11) NOT NULL,
  `informasi_umum_detail_id` int(11) NOT NULL,
  `foto` text NOT NULL,
  `foto_tipe_id` int(11) NOT NULL,
  `status_id` int(1) NOT NULL COMMENT '0 = Tidak Aktif, 1 = Aktif',
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `foto_properti`
--

INSERT INTO `foto_properti` (`id`, `informasi_umum_detail_id`, `foto`, `foto_tipe_id`, `status_id`, `created_by`, `created_date`, `updated_by`, `updated_date`, `deleted_by`, `deleted_date`) VALUES
(9, 2, '[\"http://localhost/smart-city-ci/uploads/foto_properti/86.PNG\",\"http://localhost/smart-city-ci/uploads/foto_properti/87.PNG\",\"http://localhost/smart-city-ci/uploads/foto_properti/88.PNG\"]', 1, 1, NULL, '2021-07-26 12:23:01', NULL, '2021-07-26 13:58:48', NULL, NULL),
(10, 0, '[\"https://caka.extranet.carikamar.id/caka.extranet.carikamar.id/uploads/foto_properti/2d4343077b2c34520769d2f3434b8652.png\"]', 0, 1, 52, '2021-10-01 16:27:18', NULL, NULL, NULL, NULL),
(11, 1, '[]', 1, 1, NULL, '2021-07-26 12:24:38', NULL, NULL, NULL, NULL),
(12, 1, '[]', 1, 1, NULL, '2021-07-26 12:26:27', NULL, NULL, NULL, NULL),
(13, 1, '[]', 1, 1, NULL, '2021-07-26 12:49:15', NULL, NULL, NULL, NULL),
(14, 2, '[]', 1, 1, NULL, '2021-07-26 12:49:26', NULL, NULL, NULL, NULL),
(15, 2, '[]', 1, 1, NULL, '2021-07-26 12:51:33', NULL, NULL, NULL, NULL),
(16, 2, '[]', 1, 1, NULL, '2021-07-26 13:43:29', NULL, NULL, NULL, NULL),
(17, 2, '[]', 1, 1, NULL, '2021-07-26 13:44:15', NULL, NULL, NULL, NULL),
(18, 2, '[]', 1, 1, NULL, '2021-07-26 13:45:37', NULL, NULL, NULL, NULL),
(19, 2, '[]', 1, 1, NULL, '2021-07-26 13:46:16', NULL, NULL, NULL, NULL),
(20, 2, '[]', 1, 1, NULL, '2021-07-26 13:53:59', NULL, NULL, NULL, NULL),
(21, 2, '[]', 1, 1, NULL, '2021-07-26 13:54:39', NULL, NULL, NULL, NULL),
(22, 2, '[]', 1, 1, NULL, '2021-07-26 13:55:17', NULL, NULL, NULL, NULL),
(23, 2, '[\"http://localhost/smart-city-ci/uploads/foto_properti/4.PNG\",\"http://localhost/smart-city-ci/uploads/foto_properti/41.PNG\"]', 1, 1, NULL, '2021-07-26 13:56:00', NULL, NULL, NULL, NULL),
(24, 2, '[\"http://localhost/smart-city-ci/uploads/foto_properti/42.PNG\"]', 1, 1, NULL, '2021-07-26 13:56:19', NULL, NULL, NULL, NULL),
(25, 3, '[]', 8, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 14, '[]', 13, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 3, '[]', 16, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 1, '[]', 15, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 2, '[]', 16, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 2, '[]', 5, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 7, '[\"http://localhost/carikamar-web/admin/upload/properti/1.PNG\",\"http://localhost/carikamar-web/admin/upload/properti/11.PNG\",\"http://localhost/carikamar-web/admin/upload/properti/12.PNG\"]', 8, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 1, '[\"http://localhost/carikamar-web/admin/upload/properti/prosedur_pengembangan.png\"]', 1, 0, NULL, NULL, NULL, '2021-07-29 10:41:31', 22, '2021-07-29 10:43:34'),
(33, 53, '[\"https://caka.extranet.carikamar.id/admin/upload/properti/bulat.jpg\"]', 1, 0, NULL, '2021-09-21 05:46:07', NULL, NULL, 22, '2021-09-21 05:46:19'),
(34, 1, '[\"http://localhost/carikamar-web/admin/upload/properti/13.PNG\"]', 6, 0, NULL, '2021-09-22 23:17:07', NULL, '2021-09-22 23:17:57', 22, '2021-09-22 23:18:09'),
(35, 64, '[\"http://caka.extranet.carikamar.id/caka.extranet.carikamar.id/uploads/foto_properti/d51a1343530816481f2fd8945faba460.jpg\"]', 0, 1, 52, '2021-09-29 00:47:39', NULL, NULL, NULL, NULL),
(36, 65, '[\"https://caka.extranet.carikamar.id/caka.extranet.carikamar.id/uploads/foto_properti/cc34bed08c7386bcb6e8fee20bcce738.png\"]', 0, 1, 24, '2021-09-30 22:19:08', NULL, NULL, NULL, NULL),
(37, 67, '[\"https://caka.extranet.carikamar.id/caka.extranet.carikamar.id/uploads/foto_properti/4c9cfc4b0699ed4a664981b301631a52.jpg\"]', 0, 1, 24, '2021-10-01 19:58:51', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto_tipe`
--

CREATE TABLE `foto_tipe` (
  `id` int(11) NOT NULL,
  `nama_tipe_foto` varchar(100) NOT NULL,
  `flag_foto` int(1) NOT NULL COMMENT '1 = Foto Properti, 2 = Foto Kamar',
  `status_id` int(1) NOT NULL COMMENT '0 = Tidak Aktif, 1 = Aktif	'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `foto_tipe`
--

INSERT INTO `foto_tipe` (`id`, `nama_tipe_foto`, `flag_foto`, `status_id`) VALUES
(1, 'Exterior / Building', 1, 1),
(2, 'Lobby', 1, 1),
(3, 'Swimming Pool', 1, 1),
(4, 'Entertaiment Facility', 1, 1),
(5, 'Sport Facility', 1, 1),
(6, 'Please Select Caption', 1, 1),
(7, 'Bedroom', 1, 1),
(8, 'Bathroom', 1, 1),
(9, 'Functional Hall', 1, 1),
(10, 'Restaurant', 1, 1),
(11, 'Bar, Cafe and Lounge', 1, 1),
(12, 'Nearby View and Attractions', 1, 1),
(13, 'Hotel Service', 1, 1),
(14, 'Common Space', 1, 1),
(15, 'Others', 1, 1),
(16, 'Bedroom', 2, 1),
(17, 'Bathroom', 2, 1),
(18, 'Others', 2, 1),
(19, 'Test 2', 2, 0),
(20, 'test', 1, 0),
(21, 'Test', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi_pembayaran`
--

CREATE TABLE `informasi_pembayaran` (
  `id` int(11) NOT NULL,
  `informasi_umum_detail_id` int(11) NOT NULL,
  `pilihan_metode` int(1) NOT NULL COMMENT '1 = Bank Transfer, 2 = VCC',
  `master_bank_id` int(11) NOT NULL,
  `nomor_akun` varchar(100) NOT NULL,
  `pemilik_akun` varchar(100) NOT NULL,
  `rencana_pembayaran` int(1) NOT NULL COMMENT '1 = In Advance, 2 = Weekly, 3 = Monthly',
  `status_id` int(1) NOT NULL COMMENT '0 = Tidak Aktif, 1 = Aktif',
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `informasi_pembayaran`
--

INSERT INTO `informasi_pembayaran` (`id`, `informasi_umum_detail_id`, `pilihan_metode`, `master_bank_id`, `nomor_akun`, `pemilik_akun`, `rencana_pembayaran`, `status_id`, `created_by`, `created_date`, `updated_by`, `updated_date`, `deleted_by`, `deleted_date`) VALUES
(1, 2, 1, 2, '321', 'qwer', 1, 0, 0, '2021-07-25 06:20:18', 0, '2021-07-25 06:22:23', 22, '2021-09-21 05:50:18'),
(2, 1, 2, 1, '321', 'asd', 3, 1, 22, '2021-07-25 12:22:50', 22, '2021-07-25 14:03:57', NULL, NULL),
(3, 0, 1, 1, '1212', 'D', 0, 1, 1, '2021-08-08 12:44:26', NULL, NULL, NULL, NULL),
(4, 0, 0, 1, '', '', 1, 1, 1, '2021-09-09 12:27:01', NULL, NULL, NULL, NULL),
(5, 0, 1, 0, '', '', 2, 1, 1, '2021-09-16 04:47:26', NULL, NULL, NULL, NULL),
(6, 0, 1, 0, '', '', 2, 1, 1, '2021-09-16 09:02:49', NULL, NULL, NULL, NULL),
(7, 65, 1, 2, '11111', 'test', 1, 1, 1, '2021-09-30 15:19:24', NULL, NULL, NULL, NULL),
(8, 67, 1, 1, '111222333', 'test', 1, 1, 1, '2021-10-01 13:00:54', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi_penandatangan_kontrak`
--

CREATE TABLE `informasi_penandatangan_kontrak` (
  `id` int(11) NOT NULL,
  `informasi_umum_detail_id` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `role_kontrak_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `flag_menyetujui` int(1) NOT NULL COMMENT '0 = Tidak, 1 = Ya',
  `status_id` int(1) NOT NULL COMMENT '0 = Tidak Aktif , 1 = Aktif',
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `informasi_penandatangan_kontrak`
--

INSERT INTO `informasi_penandatangan_kontrak` (`id`, `informasi_umum_detail_id`, `nama_lengkap`, `role_kontrak_id`, `email`, `no_hp`, `flag_menyetujui`, `status_id`, `created_by`, `created_date`, `updated_by`, `updated_date`, `deleted_by`, `deleted_date`) VALUES
(1, 14, 'update', 5, 'qwe123@gmail.com', '0857123', 1, 1, 0, '2021-07-25 06:45:54', 22, '2021-07-25 14:55:07', 0, '2021-07-25 06:47:45'),
(2, 12, 'test ing', 4, 'abc123@gmail.com', '012312456', 1, 0, 22, '2021-07-25 14:49:41', NULL, NULL, 22, '2021-07-25 14:55:18'),
(3, 61, 'Test', 2, 'mfikrihatim@gmail.com', '0858585', 1, 0, 22, '2021-09-21 05:50:32', NULL, NULL, 22, '2021-09-21 05:50:37'),
(4, 53, 'Uswatun Khasanah', 1, 'khasanaha@gmail.com', '09889978', 0, 1, NULL, '2021-09-22 11:33:12', NULL, '2021-09-22 11:33:25', NULL, NULL),
(5, 61, 'naall', 2, 'uzwa@ymail.com', '09889978', 0, 0, 22, '2021-09-22 20:26:45', 22, '2021-09-22 20:27:03', 22, '2021-09-22 20:27:09'),
(6, 0, 'Test', 1, '123@qwewq.com', '', 1, 1, 1, '2021-09-30 15:40:19', NULL, NULL, NULL, NULL),
(7, 0, 'Test', 1, '123@qwewq.com', '', 1, 1, 1, '2021-10-01 08:03:51', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi_umum_detail`
--

CREATE TABLE `informasi_umum_detail` (
  `id` int(11) NOT NULL,
  `fk_id_users` int(11) NOT NULL,
  `tipe_properti_id` int(11) NOT NULL,
  `nama_properti` varchar(250) CHARACTER SET latin1 NOT NULL,
  `nama_badan_hukum` varchar(250) CHARACTER SET latin1 NOT NULL,
  `lokasi_maps` varchar(500) CHARACTER SET latin1 NOT NULL,
  `alamat_jalan` varchar(250) CHARACTER SET latin1 NOT NULL,
  `kode_pos` varchar(20) CHARACTER SET latin1 NOT NULL,
  `no_telp` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jumlah_kamar` int(11) NOT NULL,
  `flag_chanel_manager` int(1) NOT NULL COMMENT '0 = No, 1 = Yes',
  `user_id` int(11) DEFAULT NULL,
  `status_id` int(1) NOT NULL COMMENT '0 = Tidak Aktif, 1 = Aktif, 2 = Pending',
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `informasi_umum_detail`
--

INSERT INTO `informasi_umum_detail` (`id`, `fk_id_users`, `tipe_properti_id`, `nama_properti`, `nama_badan_hukum`, `lokasi_maps`, `alamat_jalan`, `kode_pos`, `no_telp`, `jumlah_kamar`, `flag_chanel_manager`, `user_id`, `status_id`, `created_by`, `created_date`, `updated_by`, `updated_date`, `deleted_by`, `deleted_date`) VALUES
(65, 24, 15, 'Hotel Fikri New Ujicoba', 'Fikri', '-6.6413116,106.8359916', 'Jl. Raya Tajur No.112a, RT.02/RW.07, Muarasari, Kec. Bogor Sel., Kota Bogor, Jawa Barat 16137, Indonesia', '121313', '0858585', 3, 0, NULL, 1, 1, '2021-09-30 15:14:20', NULL, NULL, NULL, NULL),
(66, 52, 31, 'Kost Test 1', 'Kost Test 1', '-6.270024599999999,106.9299579', 'Kec. Pondokgede, Kota Bks, Jawa Barat, Indonesia', '12223', '08986980231', 12, 0, NULL, 1, 1, '2021-10-01 10:48:12', NULL, NULL, NULL, NULL),
(67, 24, 17, 'D\'EM Home Stay Family', 'PT. Inovisi Karya Teknologi', '-7.808348000000001,112.0064418', 'Jl. Inspeksi Brantas No.12, Mojoroto, Kec. Mojoroto, Kediri, Jawa Timur 64112, Indonesia', '64112', '089509967972', 3, 0, 22, 1, 1, '2021-10-01 12:39:51', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi_umum_kontak`
--

CREATE TABLE `informasi_umum_kontak` (
  `id` int(11) NOT NULL,
  `fk_id_users` int(11) NOT NULL,
  `informasi_umum_detail_id` int(11) NOT NULL,
  `jenis_kontak` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `no_telp_kantor` varchar(20) NOT NULL,
  `extension` varchar(20) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `flag_fullday` int(11) DEFAULT NULL COMMENT '0 = No, 1 = Yes',
  `status_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `informasi_umum_kontak`
--

INSERT INTO `informasi_umum_kontak` (`id`, `fk_id_users`, `informasi_umum_detail_id`, `jenis_kontak`, `nama_lengkap`, `email`, `no_hp`, `no_telp_kantor`, `extension`, `jabatan`, `flag_fullday`, `status_id`, `created_by`, `created_date`, `updated_by`, `updated_date`, `deleted_by`, `deleted_date`) VALUES
(55, 52, 55, 'Seluler', 'Iqbal Nur', 'iqbalnurw9@gmail.com', '08986980231', '08986980231', '12', 'Dirut', NULL, 1, 1, '2021-10-01 10:48:12', NULL, NULL, NULL, NULL),
(56, 24, 67, 'Kontak 1', 'Vero', 'julianputra287@gmail.com', '089509967972', '089509967972', '0', 'Owner', 1, 1, 1, '2021-10-01 12:39:51', NULL, NULL, NULL, NULL),
(54, 24, 65, 'Test', 'Test', 'mfikrihatim@gmail.com', '0858585', '0', '0', 'IT', 1, 1, 1, '2021-09-30 15:14:20', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `klasemen`
--

CREATE TABLE `klasemen` (
  `id` int(11) NOT NULL,
  `poin` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `id_team` int(11) DEFAULT NULL,
  `nama_team` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `klasemen`
--

INSERT INTO `klasemen` (`id`, `poin`, `status_id`, `id_team`, `nama_team`) VALUES
(1, 0, 1, 1, NULL),
(2, 0, 1, 2, NULL),
(21, 3, 1, NULL, 'City'),
(22, 0, 1, NULL, 'Arsenal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_bank`
--

CREATE TABLE `master_bank` (
  `id` int(11) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  `status_id` int(1) NOT NULL COMMENT '0 = Tidak Aktif, 1 = Aktif	'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_bank`
--

INSERT INTO `master_bank` (`id`, `nama_bank`, `deskripsi`, `status_id`) VALUES
(1, 'PT. BANK CENTRAL ASIA Tbk.', '', 1),
(2, 'BANK MANDIRI(PERSERO) Tbk.', '', 1),
(3, 'qwe', 'rty', 0),
(4, 'update', '123qwerty										', 0),
(5, 'Test', '\r\n									', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_fasilitas_kamar_detail`
--

CREATE TABLE `master_fasilitas_kamar_detail` (
  `id` int(11) NOT NULL,
  `fasilitas_kamar_header_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `status_id` int(1) NOT NULL COMMENT '0 = Tidak Aktif, 1 = Aktif	'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_fasilitas_kamar_detail`
--

INSERT INTO `master_fasilitas_kamar_detail` (`id`, `fasilitas_kamar_header_id`, `nama`, `status_id`) VALUES
(1, 1, 'Internet Access Wifi Charges Apply', 1),
(2, 1, 'Hair Dryer', 1),
(3, 1, 'Dishwasher', 1),
(4, 2, 'Complimentary Bottled Water', 1),
(5, 2, 'Mini Bar', 1),
(6, 2, 'Refrigerator', 1),
(7, 2, 'rty', 0),
(8, 1, '2', 0),
(9, 3, 'Karaoke', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_fasilitas_kamar_header`
--

CREATE TABLE `master_fasilitas_kamar_header` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `urutan` int(1) NOT NULL,
  `status_id` int(1) NOT NULL COMMENT '0 = Tidak Aktif, 1 = Aktif	'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_fasilitas_kamar_header`
--

INSERT INTO `master_fasilitas_kamar_header` (`id`, `nama`, `urutan`, `status_id`) VALUES
(1, 'Room & Laundry', 1, 1),
(2, 'Food & Drinks', 2, 1),
(3, 'Entertainment', 3, 1),
(4, 'Room Configuration & Access', 4, 1),
(5, 'Bathroom & Pool', 5, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_fasilitas_properti_detail`
--

CREATE TABLE `master_fasilitas_properti_detail` (
  `id` int(11) NOT NULL,
  `fasilitas_properti_header_id` int(11) NOT NULL,
  `nama` varchar(250) CHARACTER SET latin1 NOT NULL,
  `flag_free` int(1) NOT NULL COMMENT '0 = Tidak Muncul, 1 = Muncul',
  `flag_fullday` int(1) NOT NULL COMMENT '0 = Tidak Muncul, 1 = Muncul',
  `status_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_fasilitas_properti_detail`
--

INSERT INTO `master_fasilitas_properti_detail` (`id`, `fasilitas_properti_header_id`, `nama`, `flag_free`, `flag_fullday`, `status_id`) VALUES
(1, 1, 'Area Parkir', 1, 0, 1),
(2, 1, 'Layanan Kamar', 0, 1, 1),
(3, 1, 'Berangkas', 0, 0, 1),
(4, 1, 'Area Wifi Umum', 0, 0, 1),
(5, 1, 'Kedai Kopi / Caffe', 0, 0, 1),
(6, 2, 'Kamar Mandi yang Dapat Diakses', 0, 0, 1),
(7, 2, 'Parkir yang Dapat Diakses', 0, 0, 1),
(8, 2, 'Jalur Perjalanan yang Dapat Diakses', 0, 0, 1),
(9, 2, 'Aksesibilitas Dalam Kamar', 0, 0, 1),
(10, 2, 'Tisu Dalam Kamar Mandi', 0, 0, 1),
(11, 1, 'Aturan', 0, 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_fasilitas_properti_header`
--

CREATE TABLE `master_fasilitas_properti_header` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) CHARACTER SET latin1 NOT NULL,
  `urutan` int(1) NOT NULL,
  `status_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_fasilitas_properti_header`
--

INSERT INTO `master_fasilitas_properti_header` (`id`, `nama`, `urutan`, `status_id`) VALUES
(1, 'Umum', 1, 1),
(2, 'Aksesibilitas', 2, 1),
(3, 'Bisnis', 3, 1),
(4, 'Konektivitas', 4, 1),
(5, 'Fasilitas', 5, 1),
(6, 'Aturan', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_perjanjian_kontrak`
--

CREATE TABLE `master_perjanjian_kontrak` (
  `id` int(11) NOT NULL,
  `detail_perjanjian_kontrak` text NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `status_id` int(1) NOT NULL COMMENT '0 = Tidak Aktif, 1 = Aktif	'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_perjanjian_kontrak`
--

INSERT INTO `master_perjanjian_kontrak` (`id`, `detail_perjanjian_kontrak`, `deskripsi`, `status_id`) VALUES
(1, '										 qwe', '1										 										', 0),
(2, 'DDD', 'CCC', 0),
(3, 'test', '123', 1),
(4, 'Test', 'Test', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_promo`
--

CREATE TABLE `master_promo` (
  `id` int(11) NOT NULL,
  `nama_promo` varchar(100) NOT NULL,
  `persen_promo` decimal(10,0) NOT NULL,
  `max_promo` decimal(10,0) NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_akhir` datetime NOT NULL,
  `flag_hotel` int(11) NOT NULL COMMENT '1 = Untuk Semua Hotel, 2 = Hanya Untuk 1 Hotel Saja (Di Create Oleh Admin Hotel)',
  `informasi_umum_detail_id` int(11) DEFAULT NULL,
  `status_id` int(1) NOT NULL COMMENT '0 = Tidak Aktif, 1 = Aktif',
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_promo`
--

INSERT INTO `master_promo` (`id`, `nama_promo`, `persen_promo`, `max_promo`, `tgl_mulai`, `tgl_akhir`, `flag_hotel`, `informasi_umum_detail_id`, `status_id`, `created_by`, `created_date`, `updated_by`, `updated_date`, `deleted_by`, `deleted_date`) VALUES
(1, 'TESTING', 10, 15, '2020-09-10 10:00:00', '2020-09-20 15:00:00', 2, 2, 1, 0, '2021-08-17 09:33:40', 22, '2021-08-17', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_role`
--

CREATE TABLE `master_role` (
  `id` int(11) NOT NULL,
  `nama_role` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `status_id` int(1) NOT NULL COMMENT '0 = Tidak Aktif, 1 = Aktif'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_role`
--

INSERT INTO `master_role` (`id`, `nama_role`, `deskripsi`, `status_id`) VALUES
(1, 'Admin Hotel', '										 Test', 1),
(2, 'Admin', 'Test123', 0),
(3, 'SuperAdmin', 'SuperAdmin', 0),
(4, 'Bambang', 'TR', 0),
(5, 'Marketing', '\r\n									', 0),
(6, 'Admin Mitra/Client', '										 Testtest', 1),
(7, 'Admin Test', 'Test', 0),
(8, '', '\r\n									', 0),
(9, 'uuu', 'uuu', 0),
(10, 'uuu', '										 qqqss', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_role_kontrak`
--

CREATE TABLE `master_role_kontrak` (
  `id` int(11) NOT NULL,
  `nama_role_kontrak` varchar(100) NOT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  `status_id` int(1) NOT NULL COMMENT '0 = Tidak Aktif, 1 = Aktif	'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_role_kontrak`
--

INSERT INTO `master_role_kontrak` (`id`, `nama_role_kontrak`, `deskripsi`, `status_id`) VALUES
(1, 'Business Owner', NULL, 1),
(2, 'General Manager', NULL, 1),
(3, 'Director of Sales Marketing', '', 1),
(4, 'Revenue Manager', NULL, 1),
(5, 'E-commerce Manager', NULL, 1),
(6, 'test', '123', 0),
(7, '123', '										 qwe', 0),
(8, 'Test', '\r\n									', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_tipe_kamar`
--

CREATE TABLE `master_tipe_kamar` (
  `id` int(11) NOT NULL,
  `nama_tipe_kamar` varchar(100) NOT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  `status_id` int(1) NOT NULL COMMENT '0 = Tidak Aktif, 1 = Aktif	'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_tipe_kamar`
--

INSERT INTO `master_tipe_kamar` (`id`, `nama_tipe_kamar`, `deskripsi`, `status_id`) VALUES
(21, 'Double Room', NULL, 1),
(20, 'Twin Room', NULL, 1),
(19, 'Single Room', NULL, 1),
(18, 'Presidential Suite/Penthouse', NULL, 1),
(11, 'Standar Room', '\r\n									', 1),
(17, 'Suite Room', NULL, 1),
(16, 'Junior Suite Room', NULL, 1),
(12, 'Deluxe Room', '\r\n									', 1),
(15, 'Superior Room', NULL, 1),
(22, 'Family Room/Triple Room', NULL, 1),
(23, 'Connecting Room', NULL, 1),
(24, 'Accessible Room/Disabled Room', NULL, 1),
(25, 'Smoking/Non Smoking Room', NULL, 1),
(26, 'Test Input', 'Test', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_tipe_kasur`
--

CREATE TABLE `master_tipe_kasur` (
  `id` int(11) NOT NULL,
  `nama_tipe_kasur` varchar(100) NOT NULL,
  `deskripsi` varchar(100) DEFAULT NULL,
  `status_id` int(1) NOT NULL COMMENT '0 = Tidak Aktif, 1 = Aktif	'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_tipe_kasur`
--

INSERT INTO `master_tipe_kasur` (`id`, `nama_tipe_kasur`, `deskripsi`, `status_id`) VALUES
(1, 'Single', '										 TEST										', 1),
(2, 'Double', NULL, 1),
(4, 'Queen', NULL, 1),
(5, 'King', NULL, 1),
(8, 'Expensive', '....', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_tipe_properti`
--

CREATE TABLE `master_tipe_properti` (
  `id` int(11) NOT NULL,
  `nama_tipe` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` text NOT NULL,
  `status_id` int(1) NOT NULL COMMENT '0 = Tidak Aktif, 1 = Aktif',
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_tipe_properti`
--

INSERT INTO `master_tipe_properti` (`id`, `nama_tipe`, `deskripsi`, `foto`, `status_id`, `created_by`, `created_date`, `updated_by`, `updated_date`, `deleted_by`, `deleted_date`) VALUES
(15, 'Hotel', 'Hotel adalah bangunan atau sebagian bangunan yang disediakandengan fasilitas menginap, makan\r\ndan minum. Hotel dibagi menjadi hotel berbintang dan hotel nonbintang.', '', 1, NULL, '2021-09-17 16:36:17', NULL, NULL, NULL, NULL),
(16, 'Vila', 'Villa adalah jenis akomodasi yang menyewakan seluruh bangunan yang berbentuk rumah hunian.\r\nVilla umumnya berada di tempat yang jauh dari keramaian seperti pegunungan dengan\r\npemandangan yang indah.', '', 1, NULL, '2021-09-17 16:36:24', NULL, NULL, NULL, NULL),
(17, 'Homestay', 'Homestay adalah jenis akomodasi yang hampir sama dengan guest house yang biasanya\r\nmenggunakan rumah masyarakat umum dengan fasilitas dan sarana yang sesuai dengan pelayanan\r\npariwisata.', '', 1, NULL, '2021-09-17 16:36:34', 22, '2021-09-22 08:25:10', NULL, NULL),
(22, ' Boutique Hotel', 'Boutique hotel memiliki fungsi yang sama dengan hotel hanya saja desain boutique hotel lebih modern dan mewah serta memiliki jumlah kamar yang lebih sedikit daripada hotel. Umumnya boutique hotel memiliki harga yang cukup mahal.', '', 1, NULL, '2021-10-01 09:15:44', NULL, NULL, NULL, NULL),
(23, 'Resort', 'Resort dibangun di daerah yang lebih dekat dengan pantai atau pegunungan dengan konsep yang lebih santai serta mengedepankan konsep liburan keluarga, sarana olahraga, tempat bermain anak, dll.', '', 1, NULL, '2021-10-01 09:17:15', NULL, NULL, NULL, NULL),
(24, 'Cottage (Bungalow)', 'Cottage terletak di sekitar pantai, pegunungan atau danau dengan bangunan berupa pondokpondok kecil. Umumnya disewa oleh keluarga atau grup rekreasi.', '', 1, NULL, '2021-10-01 09:17:33', NULL, NULL, NULL, NULL),
(25, 'Losmen (Lodgement)', 'Losmen adalah jenis akomodasi yang disewakan untuk orang – orang yang beristirahat sementara waktu tanpa makan dan minum.', '', 1, NULL, '2021-10-01 09:17:50', NULL, NULL, NULL, NULL),
(26, 'Inn', 'Inn memiliki konsep yang sama dengan losmen, disediakan untuk orang – orang yang singgah sementara waktu dengan jangka waktu menginap terbatas.', '', 1, NULL, '2021-10-01 09:18:07', NULL, NULL, NULL, NULL),
(27, 'Motel', 'Motel adalah singkatan dari Motor Hotel yaitu hotel yang terletak di pinggir jalan raya dari satu daerah ke daerah lain . Jenis akomodasi ini dikhususkan bagi orang yang melakukan perjalanan antar kota yang membutuhkan jasa penginapan. Motel hamper sama dengan hotel hanya saja memiliki tempat parker yang dekat dengan kamar.', '', 1, NULL, '2021-10-01 09:18:23', NULL, NULL, NULL, NULL),
(28, 'Guest House', 'Guest house adalah penginapan yang berupa sebuah rumah dengan kamar-kamar yang disewakan secara umum. Guest house biasanya disewa oleh rombongan dengan tariff yang cukup murah.', '', 1, NULL, '2021-10-01 09:18:41', NULL, NULL, NULL, NULL),
(29, 'Hostel (Dormitori)', 'Hostel memiliki kamar yang mirip dengan asrama dan biasanya memiliki banyak tempat tidur atau bunk bed. Hostel ini merupakan salah satu jenis akomodasi yang paling sering digunakan oleh backpacker atau rombongan dengan budget terbatas.', '', 1, NULL, '2021-10-01 09:19:02', NULL, NULL, NULL, NULL),
(30, 'Apartemen', 'Apartemen disewakan dalam unit tersendiri dengan fasilitas seperti rumah lengkap dengan ruang makan dan dapur sendiri.', '', 1, NULL, '2021-10-01 09:19:18', NULL, NULL, NULL, NULL),
(31, 'Perkemahan', 'Perkemahan adalah penyediaan di alam terbuka dengan penggunaan caravan atau tenda.', '', 1, NULL, '2021-10-01 09:19:32', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_user`
--

CREATE TABLE `master_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `foto` text NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status_id` int(1) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_user`
--

INSERT INTO `master_user` (`id`, `nama`, `email`, `password`, `foto`, `role_id`, `status_id`, `created_by`, `created_date`, `updated_by`, `updated_date`, `deleted_by`, `deleted_date`) VALUES
(24, 'admin', '123@qwewq.com', '123', 'http://localhost/carikamar-web/admin/upload/user/1.PNG', 1, 1, 16, '2021-07-08 18:26:16', 22, '2021-09-22 05:56:26', NULL, NULL),
(23, 'Bagus', 'bagus@bagus.com', 'bagus123', '', NULL, 0, 16, '2021-07-08 18:25:58', NULL, NULL, 16, '2021-07-08 18:50:39'),
(22, 'Fikri', 'fikri@fikri.com', '123', 'http://localhost/carikamar-web/admin/upload/user/Logo_Unbin.jpg', 2, 1, 16, '2021-07-08 18:18:22', 22, '2021-07-10 10:01:32', NULL, NULL),
(21, 'test123', '321@2321.com', '321', '', NULL, 0, 16, '2021-07-08 18:16:39', NULL, NULL, 22, '2021-07-10 10:01:55'),
(20, 'test', '123@qwewq.com', '123', '', NULL, 0, 16, '2021-07-08 18:07:50', NULL, NULL, 22, '2021-07-10 10:01:58'),
(19, 'Admin2', 'admin@admin1.com', '0192023a7bbd73250516f069df18b500', '[]', NULL, 0, 0, '0000-00-00 00:00:00', NULL, NULL, 22, '2021-07-10 10:02:02'),
(18, 'Admin2', 'admin@admin1.com', '0192023a7bbd73250516f069df18b500', '[]', NULL, 0, 0, '0000-00-00 00:00:00', NULL, NULL, 22, '2021-07-10 10:02:06'),
(16, 'Admin', 'admin@admin.com', '123123', '[]', NULL, 0, 0, '0000-00-00 00:00:00', NULL, NULL, 22, '2021-07-10 10:02:09'),
(17, 'Admin1', 'admin@admin1.com', '4297f44b13955235245b2497399d7a93', '[\"http://localhost/smart-city-ci/uploads/1.PNG\"]', NULL, 0, 0, '0000-00-00 00:00:00', NULL, NULL, 22, '2021-07-10 10:02:13'),
(25, 'FRB-admin', '123@qwewq.com', '12323', 'http://localhost/carikamar-web/admin/upload/user/prosedur_pengembangan_(2).png', 1, 1, 16, '2021-07-08 18:32:36', NULL, NULL, NULL, NULL),
(26, 'Jakarta', '123@qwewq.com', '123', '', NULL, 0, 16, '2021-07-08 18:39:46', NULL, NULL, 22, '2021-07-10 10:02:16'),
(27, 'FRB-admin', '123@qwewq.com', 'asdsad', 'http://localhost/carikamar-web/admin/upload/user/prosedur_pengembangan_(2).png', NULL, 1, 16, '2021-07-08 18:55:13', NULL, NULL, NULL, NULL),
(28, 'Jakarta', '123@qwewq.com', 'qw3q2', 'http://localhost/carikamar-web/admin/upload/user/prosedur_pengembangan_(2)1.png', NULL, 1, 16, '2021-07-08 18:57:18', NULL, NULL, NULL, NULL),
(29, 'test', 'admin@admin.com', '123456', '', 1, 0, 0, '2021-07-12 09:53:46', NULL, NULL, 22, '2021-09-22 20:33:48'),
(30, 'test', '123@qwewq.com', '123456', '', 1, 1, 0, '2021-07-12 10:00:31', NULL, NULL, NULL, NULL),
(31, 'test', 'test@test.com', '123456', '', 1, 0, 0, '2021-07-12 10:02:00', NULL, NULL, NULL, NULL),
(32, 'Admin Fikri', 'fikri@gmail.com', '4297f44b13955235245b2497399d7a93', '[\"http://caka.extranet.carikamar.id/uploads/t.PNG\"]', 1, 0, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL),
(34, 'Fikri Hatim 123', 'fikritest@gmail.com', '123456', '', 1, 1, 0, '2021-07-22 20:05:25', NULL, NULL, NULL, NULL),
(33, 'Test Update', 'HHHH', '123123123', '[]', NULL, 0, 0, '0000-00-00 00:00:00', NULL, NULL, 22, '2021-09-22 08:04:36'),
(40, 'TESTTEST', 'HHHH', '123123123', '[\"http://localhost/smart-city-ci/uploads/13.PNG\",\"http://localhost/smart-city-ci/uploads/14.PNG\"]', NULL, 0, 0, '0000-00-00 00:00:00', NULL, NULL, 22, '2021-09-22 07:59:01'),
(39, 'Admin2', 'admin@admin1.com', '0192023a7bbd73250516f069df18b500', '[\"http://localhost/smart-city-ci/uploads/p.png\"]', NULL, 1, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL),
(38, 'Adminarray', 'admin@admin1.com', '0192023a7bbd73250516f069df18b500', '[\"http://localhost/smart-city-ci/uploads/33.PNG\"]', NULL, 1, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL),
(41, 'Adminarray1', 'admin@admin1.com', '0192023a7bbd73250516f069df18b500', '[]', NULL, 1, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL),
(42, 'Admin21', 'admin@admin1.com', '0192023a7bbd73250516f069df18b500', '[\"http://localhost/smart-city-ci/uploads/4.PNG\",\"http://localhost/smart-city-ci/uploads/41.PNG\"]', NULL, 1, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL),
(43, 'eko hariyanto', 'ekohariyanto.ikt@gmail.com', 'elang123', '', 1, 1, 0, '2021-08-08 13:40:18', NULL, NULL, NULL, NULL),
(46, '', '', '', '', 1, 0, 0, '2021-09-14 09:28:15', NULL, NULL, 22, '2021-09-22 21:09:21'),
(47, '', '', '', '', 1, 0, 0, '2021-09-14 09:28:18', NULL, NULL, 22, '2021-09-22 21:09:23'),
(48, 'hani', 'arianto11.ma@gmail.com', '1234', 'http://localhost/carikamar-web/admin/upload/user/20.PNG', NULL, 1, 22, '2021-09-22 07:58:44', 22, '2021-09-22 21:24:06', NULL, NULL),
(49, 'arif', 'khasanaha@gmail.com', '123', 'http://localhost/carikamar-web/admin/upload/user/21.PNG', NULL, 0, 22, '2021-09-22 08:00:00', NULL, NULL, 22, '2021-09-22 21:15:02'),
(50, 'arif', 'rarif2626@gmail.com', '123', 'http://localhost/carikamar-web/admin/upload/user/11.PNG', NULL, 0, NULL, '2021-09-22 18:50:18', NULL, NULL, 22, '2021-09-22 21:14:50'),
(51, 'usssss', 'rarif2626@gmail.com', '123', '', NULL, 0, 22, '2021-09-22 20:42:45', NULL, NULL, 22, '2021-09-22 21:14:36'),
(52, 'iqbal', 'iqbal@iqbal.com', 'iqbal', '', 1, 1, 0, '2021-09-28 13:35:41', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertandingan`
--

CREATE TABLE `pertandingan` (
  `id` int(11) NOT NULL,
  `id_home_team` int(11) DEFAULT NULL,
  `id_away_team` int(11) DEFAULT NULL,
  `score_home` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `score_away` int(11) DEFAULT NULL,
  `home_team` varchar(255) DEFAULT NULL,
  `away_team` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pertandingan`
--

INSERT INTO `pertandingan` (`id`, `id_home_team`, `id_away_team`, `score_home`, `status_id`, `score_away`, `home_team`, `away_team`) VALUES
(1, 1, 2, 2, 1, 0, NULL, NULL),
(17, NULL, NULL, 2, 1, 1, 'City', 'Arsenal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `promo`
--

CREATE TABLE `promo` (
  `id` int(11) NOT NULL,
  `informasi_umum_detail_id` int(11) NOT NULL,
  `promo_id` int(11) NOT NULL,
  `tipe_kamar_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `properti_detail`
--

CREATE TABLE `properti_detail` (
  `id` int(11) NOT NULL,
  `fk_id_users` int(11) NOT NULL,
  `informasi_umum_detail_id` int(11) NOT NULL,
  `mata_uang` varchar(100) NOT NULL,
  `flag_kawasan` int(1) NOT NULL COMMENT '1 = Tersedia 24 Jam, 2 = Tidak Tersedia 24 Jam',
  `waktu_checkin` time NOT NULL,
  `waktu_checkout` time NOT NULL,
  `jarak_ke_kota` decimal(10,0) NOT NULL,
  `jumlah_lantai` int(11) NOT NULL,
  `biaya_sarapan_tambahan` decimal(10,0) NOT NULL,
  `master_cancel_id` int(11) DEFAULT NULL,
  `master_style_id` varchar(100) DEFAULT NULL COMMENT 'Tipe data Array (Boleh lebih dari 1)',
  `status_id` int(1) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `properti_detail`
--

INSERT INTO `properti_detail` (`id`, `fk_id_users`, `informasi_umum_detail_id`, `mata_uang`, `flag_kawasan`, `waktu_checkin`, `waktu_checkout`, `jarak_ke_kota`, `jumlah_lantai`, `biaya_sarapan_tambahan`, `master_cancel_id`, `master_style_id`, `status_id`, `created_by`, `created_date`, `updated_by`, `updated_date`, `deleted_by`, `deleted_date`) VALUES
(1, 0, 1, 'IDR', 1, '14:00:00', '12:00:00', 12, 10, 100000, 1, '4', 1, 1, '2021-06-25 00:18:22', NULL, NULL, NULL, NULL),
(2, 0, 1, 'Rupe', 1, '00:00:00', '00:00:00', 2, 10, 10, 1, '1', 0, 0, '0000-00-00 00:00:00', NULL, NULL, 22, '2021-09-21 05:48:15'),
(3, 0, 1, 'IDR', 1, '15:37:00', '15:36:00', 2, 12, 10000, NULL, NULL, 1, 22, '2021-07-10 10:34:23', NULL, NULL, NULL, NULL),
(4, 0, 1, 'IDR', 1, '16:45:00', '11:51:00', 12, 12, 10000, NULL, NULL, 1, 22, '2021-07-10 10:46:02', NULL, NULL, NULL, NULL),
(5, 0, 2, 'IDR', 1, '00:00:00', '04:17:00', 12, 12, 10000, 5, '3', 1, 22, '2021-07-10 11:17:54', NULL, NULL, NULL, NULL),
(6, 0, 14, '1', 1, '12:18:00', '12:18:00', 1, 2, 123, 4, '[\"1\",\"2\",\"3\"]', 1, 1, '2021-07-17 07:19:49', NULL, NULL, NULL, NULL),
(7, 0, 0, 'IDR', 1, '12:27:00', '12:27:00', 12, 12, 10000, 2, '[\"4\"]', 1, 1, '2021-08-08 07:27:38', NULL, NULL, NULL, NULL),
(8, 0, 0, 'IDR', 1, '12:28:00', '12:29:00', 123, 12, 10000, 2, '[\"1\",\"2\"]', 1, 1, '2021-08-08 07:29:16', NULL, NULL, NULL, NULL),
(9, 0, 0, '123', 1, '12:18:00', '12:19:00', 1, 2, 2, 4, '[\"1\",\"2\",\"3\"]', 1, 1, '2021-08-08 16:23:35', NULL, NULL, NULL, NULL),
(10, 24, 65, 'IDR', 1, '00:00:00', '00:00:00', 3, 3, 100000, 3, '[\"1\"]', 1, 1, '2021-09-30 15:15:13', NULL, NULL, NULL, NULL),
(11, 24, 67, 'IDR', 1, '00:00:00', '00:00:00', 1, 3, 0, 3, '[\"1\"]', 1, 1, '2021-10-01 12:42:28', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `properti_detail_master_cancel`
--

CREATE TABLE `properti_detail_master_cancel` (
  `id` int(11) NOT NULL,
  `nama` varchar(500) NOT NULL,
  `status_id` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `properti_detail_master_cancel`
--

INSERT INTO `properti_detail_master_cancel` (`id`, `nama`, `status_id`) VALUES
(1, '', 1),
(2, 'Non Refundable', 1),
(3, 'Cancel 1D Prior Arrival 1 Night Charge, No Show 1 Night Charge', 1),
(4, 'Cancel 1D Prior Arrival 1 Night Charge, No Show 100% Charge', 1),
(5, 'Cancel 3D Prior Arrival 1 Night Charge, No Show 1 Night Charge', 1),
(6, 'Cancel 3D Prior Arrival 1 Night Charge, No Show 100% Charge', 1),
(7, 'CancellllAA', 0),
(8, 'Bondol ', 0),
(9, 'admin', 0),
(10, 'Test', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `properti_detail_master_style`
--

CREATE TABLE `properti_detail_master_style` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `status_id` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `properti_detail_master_style`
--

INSERT INTO `properti_detail_master_style` (`id`, `nama`, `status_id`) VALUES
(1, 'Adventure', 1),
(2, 'Airport', 1),
(3, 'Budget', 1),
(4, 'Backpacker', 1),
(5, 'Shopping', 1),
(6, 'Bapack-Bapack', 0),
(8, 'Doormitori', 0),
(7, 'Radya Smith EliasAAA', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `review_kontrak`
--

CREATE TABLE `review_kontrak` (
  `id` int(11) NOT NULL,
  `informasi_penandatangan_kontrak_id` int(11) NOT NULL,
  `perjanjian_kontrak_id` int(11) NOT NULL,
  `flag_menyetujui` int(1) NOT NULL COMMENT '0 = Tidak, 1 = Ya',
  `status_id` int(1) NOT NULL COMMENT '0 = Tidak Aktif, 1 = Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `review_kontrak`
--

INSERT INTO `review_kontrak` (`id`, `informasi_penandatangan_kontrak_id`, `perjanjian_kontrak_id`, `flag_menyetujui`, `status_id`) VALUES
(1, 2, 1, 0, 0),
(2, 0, 3, 1, 1),
(3, 0, 3, 2, 1),
(4, 1, 3, 2, 1),
(5, 1, 3, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `id_klasemen` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `team`
--

INSERT INTO `team` (`id`, `nama`, `id_klasemen`, `status_id`) VALUES
(1, 'Man City', 1, 1),
(2, 'Arsenal', 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipe_kamar`
--

CREATE TABLE `tipe_kamar` (
  `id` int(11) NOT NULL,
  `informasi_umum_detail_id` int(11) NOT NULL,
  `nama_kamar` varchar(100) NOT NULL,
  `master_tipe_kamar_id` int(11) NOT NULL,
  `master_tipe_kasur_id` int(11) NOT NULL,
  `maksimum_kapasitas` int(11) NOT NULL,
  `maksimum_extra_bed` decimal(10,0) NOT NULL,
  `harga_extra_bed` decimal(10,0) NOT NULL,
  `ukuran_kamar_lebar` decimal(10,2) NOT NULL,
  `ukuran_kamar_panjang` decimal(10,2) NOT NULL,
  `harga_kamar` decimal(10,2) NOT NULL,
  `flag_included_breakfast` int(11) DEFAULT NULL COMMENT '0 = Tidak, 1 = Ya',
  `jumlah_kamar` int(11) NOT NULL,
  `status_id` int(1) NOT NULL COMMENT '0 = Tidak Aktif, 1 = Aktif	',
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tipe_kamar`
--

INSERT INTO `tipe_kamar` (`id`, `informasi_umum_detail_id`, `nama_kamar`, `master_tipe_kamar_id`, `master_tipe_kasur_id`, `maksimum_kapasitas`, `maksimum_extra_bed`, `harga_extra_bed`, `ukuran_kamar_lebar`, `ukuran_kamar_panjang`, `harga_kamar`, `flag_included_breakfast`, `jumlah_kamar`, `status_id`, `created_by`, `created_date`, `updated_by`, `updated_date`, `deleted_by`, `deleted_date`) VALUES
(11, 3, 'RRRSSSS', 3, 2, 10, 444, 444, 10.00, 4.00, 44444.00, 1, 0, 1, 1, '2021-07-17 18:07:53', NULL, NULL, NULL, NULL),
(10, 2, 'Tyai', 4, 2, 10000, 11111, 11111, 11.00, 11.00, 30000.00, 1, 0, 1, 1, '2021-07-17 17:55:36', NULL, NULL, NULL, NULL),
(9, 3, 'Tyai', 2, 3, 12, 12, 122222, 11.00, 11.00, 30000.00, 1, 0, 1, 1, '2021-07-17 17:42:36', NULL, NULL, NULL, NULL),
(8, 9, 'sdafsda', 3, 4, 12, 111, 122222, 11.00, 11.00, 111111.00, 1, 0, 1, 1, '2021-07-17 17:40:19', NULL, NULL, NULL, NULL),
(7, 3, 'RRRRR', 1, 2, 10000, 123, 122222, 11.00, 11.00, 11111.00, 1, 0, 1, 1, '2021-07-17 17:38:55', NULL, NULL, NULL, NULL),
(12, 4, 'TTTTT', 2, 2, 10, 10, 1000, 10.00, 10.00, 44444.00, 1, 0, 1, 1, '2021-07-17 18:10:10', NULL, NULL, NULL, NULL),
(13, 4, 'TTTTT', 2, 1, 10, 10, 1000, 10.00, 10.00, 44444.00, NULL, 0, 1, 1, '2021-07-17 18:10:11', NULL, NULL, NULL, NULL),
(14, 3, 'TTTTTAAAAAAAAAA', 3, 2, 444, 444, 1000, 10.00, 10.00, 10000.00, 1, 0, 1, 1, '2021-07-17 18:11:01', NULL, NULL, NULL, NULL),
(15, 7, 'AAAAAAAAAAAAA', 3, 2, 444, 444, 1000, 10.00, 10.00, 10000.00, NULL, 0, 1, 1, '2021-07-17 18:11:01', NULL, NULL, NULL, NULL),
(16, 2, 'qwe', 2, 5, 967, 87, 1200, 12.00, 23.00, 12345.00, 0, 0, 1, 1, '2021-07-19 04:58:54', NULL, NULL, NULL, NULL),
(17, 3, 'qwe123', 1, 2, 123, 123, 1200, 123.00, 321.00, 2.00, NULL, 0, 1, 1, '2021-07-19 04:58:54', NULL, NULL, NULL, NULL),
(18, 14, 'test1', 1, 2, 123, 321, 234, 2.00, 3.00, 50000.00, 0, 4, 1, 1, '2021-07-19 05:03:51', NULL, NULL, NULL, NULL),
(19, 14, 'test2', 2, 3, 321, 123, 123, 3.00, 32.00, 1230000.00, NULL, 1, 1, 1, '2021-07-19 05:03:51', NULL, NULL, NULL, NULL),
(20, 65, 'Deluxe', 12, 1, 2, 2, 50000, 10.00, 10.00, 300000.00, 1, 2, 1, 1, '2021-10-01 09:38:05', NULL, NULL, NULL, NULL),
(21, 65, 'Deluxe', 12, 1, 2, 2, 50000, 10.00, 10.00, 300000.00, 0, 2, 1, 1, '2021-10-01 09:38:05', NULL, NULL, NULL, NULL),
(22, 65, 'Deluxe', 12, 1, 2, 2, 50000, 10.00, 10.00, 300000.00, NULL, 2, 1, 1, '2021-10-01 09:38:05', NULL, NULL, NULL, NULL),
(23, 65, 'Deluxe', 12, 1, 2, 2, 50000, 10.00, 10.00, 300000.00, NULL, 2, 1, 1, '2021-10-01 09:38:05', NULL, NULL, NULL, NULL),
(24, 65, 'Deluxe', 12, 1, 2, 2, 50000, 10.00, 10.00, 300000.00, NULL, 2, 1, 1, '2021-10-01 09:38:05', NULL, NULL, NULL, NULL),
(25, 65, 'Deluxe', 12, 1, 2, 2, 50000, 10.00, 10.00, 300000.00, NULL, 2, 1, 1, '2021-10-01 09:38:05', NULL, NULL, NULL, NULL),
(26, 65, 'Deluxe', 12, 1, 2, 2, 50000, 10.00, 10.00, 300000.00, NULL, 2, 1, 1, '2021-10-01 09:38:05', NULL, NULL, NULL, NULL),
(27, 65, 'Deluxe', 12, 1, 2, 2, 50000, 10.00, 10.00, 300000.00, NULL, 2, 1, 1, '2021-10-01 09:38:05', NULL, NULL, NULL, NULL),
(28, 65, 'Deluxe 23', 12, 1, 2, 2, 50000, 10.00, 10.00, 300000.00, NULL, 2, 1, 1, '2021-10-01 09:38:05', NULL, NULL, NULL, NULL),
(29, 66, 'Kost No 1', 15, 4, 12, 12, 20000000, 12.00, 2.00, 2000000.00, 0, 2, 1, 1, '2021-10-01 09:47:51', NULL, NULL, NULL, NULL),
(30, 66, 'Kost 2', 24, 5, 12, 12000000, 100000000, 12.00, 12.00, 90000000.00, 1, 12, 1, 1, '2021-10-01 09:47:51', NULL, NULL, NULL, NULL),
(31, 67, 'Standar Indonesia Double', 19, 1, 2, 0, 0, 4.00, 4.00, 160000.00, 0, 1, 1, 1, '2021-10-01 12:50:56', NULL, NULL, NULL, NULL),
(42, 67, 'Deluxe Indonesia Double', 12, 2, 2, 1, 100000, 5.00, 4.00, 195000.00, NULL, 1, 1, 1, '2021-10-01 12:50:56', NULL, NULL, NULL, NULL),
(41, 67, 'Deluxe Indonesia Twin', 12, 2, 2, 1, 100000, 5.00, 4.00, 190000.00, 0, 1, 1, 1, '2021-10-01 12:50:56', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `token_forgot_password`
--

CREATE TABLE `token_forgot_password` (
  `id_token` bigint(255) NOT NULL,
  `id_users` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` text DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `token_forgot_password`
--

INSERT INTO `token_forgot_password` (`id_token`, `id_users`, `email`, `token`, `created_date`, `updated_date`) VALUES
(1, '29', 'admin@admin.com', 'ini_token', '2021-09-26 12:42:43', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `fasilitas_kamar`
--
ALTER TABLE `fasilitas_kamar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fasilitas_properti`
--
ALTER TABLE `fasilitas_properti`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `foto_kamar`
--
ALTER TABLE `foto_kamar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `foto_properti`
--
ALTER TABLE `foto_properti`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `foto_tipe`
--
ALTER TABLE `foto_tipe`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `informasi_pembayaran`
--
ALTER TABLE `informasi_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `informasi_penandatangan_kontrak`
--
ALTER TABLE `informasi_penandatangan_kontrak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `informasi_umum_detail`
--
ALTER TABLE `informasi_umum_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `informasi_umum_kontak`
--
ALTER TABLE `informasi_umum_kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `klasemen`
--
ALTER TABLE `klasemen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_bank`
--
ALTER TABLE `master_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_fasilitas_kamar_detail`
--
ALTER TABLE `master_fasilitas_kamar_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_fasilitas_kamar_header`
--
ALTER TABLE `master_fasilitas_kamar_header`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_fasilitas_properti_detail`
--
ALTER TABLE `master_fasilitas_properti_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fasilitas_properti_header_id` (`fasilitas_properti_header_id`);

--
-- Indeks untuk tabel `master_fasilitas_properti_header`
--
ALTER TABLE `master_fasilitas_properti_header`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_perjanjian_kontrak`
--
ALTER TABLE `master_perjanjian_kontrak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_promo`
--
ALTER TABLE `master_promo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_role`
--
ALTER TABLE `master_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_role_kontrak`
--
ALTER TABLE `master_role_kontrak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_tipe_kamar`
--
ALTER TABLE `master_tipe_kamar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_tipe_kasur`
--
ALTER TABLE `master_tipe_kasur`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_tipe_properti`
--
ALTER TABLE `master_tipe_properti`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pertandingan`
--
ALTER TABLE `pertandingan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `properti_detail`
--
ALTER TABLE `properti_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `properti_detail_master_cancel`
--
ALTER TABLE `properti_detail_master_cancel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `properti_detail_master_style`
--
ALTER TABLE `properti_detail_master_style`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `review_kontrak`
--
ALTER TABLE `review_kontrak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tipe_kamar`
--
ALTER TABLE `tipe_kamar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `token_forgot_password`
--
ALTER TABLE `token_forgot_password`
  ADD PRIMARY KEY (`id_token`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `fasilitas_kamar`
--
ALTER TABLE `fasilitas_kamar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `fasilitas_properti`
--
ALTER TABLE `fasilitas_properti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `foto_kamar`
--
ALTER TABLE `foto_kamar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `foto_properti`
--
ALTER TABLE `foto_properti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `foto_tipe`
--
ALTER TABLE `foto_tipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `informasi_pembayaran`
--
ALTER TABLE `informasi_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `informasi_penandatangan_kontrak`
--
ALTER TABLE `informasi_penandatangan_kontrak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `informasi_umum_detail`
--
ALTER TABLE `informasi_umum_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `informasi_umum_kontak`
--
ALTER TABLE `informasi_umum_kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `klasemen`
--
ALTER TABLE `klasemen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `master_bank`
--
ALTER TABLE `master_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `master_fasilitas_kamar_detail`
--
ALTER TABLE `master_fasilitas_kamar_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `master_fasilitas_kamar_header`
--
ALTER TABLE `master_fasilitas_kamar_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `master_fasilitas_properti_detail`
--
ALTER TABLE `master_fasilitas_properti_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `master_fasilitas_properti_header`
--
ALTER TABLE `master_fasilitas_properti_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `master_perjanjian_kontrak`
--
ALTER TABLE `master_perjanjian_kontrak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `master_promo`
--
ALTER TABLE `master_promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_role`
--
ALTER TABLE `master_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `master_role_kontrak`
--
ALTER TABLE `master_role_kontrak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `master_tipe_kamar`
--
ALTER TABLE `master_tipe_kamar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `master_tipe_kasur`
--
ALTER TABLE `master_tipe_kasur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `master_tipe_properti`
--
ALTER TABLE `master_tipe_properti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `master_user`
--
ALTER TABLE `master_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `pertandingan`
--
ALTER TABLE `pertandingan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `properti_detail`
--
ALTER TABLE `properti_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `properti_detail_master_cancel`
--
ALTER TABLE `properti_detail_master_cancel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `properti_detail_master_style`
--
ALTER TABLE `properti_detail_master_style`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `review_kontrak`
--
ALTER TABLE `review_kontrak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tipe_kamar`
--
ALTER TABLE `tipe_kamar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `token_forgot_password`
--
ALTER TABLE `token_forgot_password`
  MODIFY `id_token` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `master_fasilitas_properti_detail`
--
ALTER TABLE `master_fasilitas_properti_detail`
  ADD CONSTRAINT `master_fasilitas_properti_detail_ibfk_1` FOREIGN KEY (`fasilitas_properti_header_id`) REFERENCES `master_fasilitas_properti_header` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
