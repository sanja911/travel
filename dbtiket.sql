-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 11 Jan 2021 pada 02.49
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtiket`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_access_menu`
--

CREATE TABLE `tbl_access_menu` (
  `kd_access_menu` int(11) DEFAULT NULL,
  `kd_level` int(11) DEFAULT NULL,
  `kd_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_access_menu`
--

INSERT INTO `tbl_access_menu` (`kd_access_menu`, `kd_level`, `kd_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(1, 1, 1),
(2, 1, 2),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `kd_admin` varchar(50) NOT NULL,
  `nama_admin` varchar(35) DEFAULT NULL,
  `username_admin` varchar(30) DEFAULT NULL,
  `password_admin` varchar(256) DEFAULT NULL,
  `img_admin` varchar(35) DEFAULT NULL,
  `email_admin` varchar(35) DEFAULT NULL,
  `level_admin` varchar(12) DEFAULT NULL,
  `status_admin` int(1) DEFAULT NULL,
  `date_create_admin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`kd_admin`, `nama_admin`, `username_admin`, `password_admin`, `img_admin`, `email_admin`, `level_admin`, `status_admin`, `date_create_admin`) VALUES
('ADM0001', 'Administrator', 'admin', '$2y$10$v25.H4XMgDztA2NmxeJQSeaRl2nKboXeRTo1BjPe37R0JG3rXraZG', 'assets/backend/img/default.png', 'adm@gmail.com', '2', 1, '1552276812'),
('ADM0002', 'Bahyu Sanciko', 'bahyu', '$2y$10$ADbNVZYgiDi8SqGl1bB2NOgCufT2sK5v/T3BSZcIpFPVljDSb2S2K', 'assets/backend/img/default.png', 'cbahyu@gmail.com', '1', 1, '1552819095'),
('ADM0003', 'Bahyu Sanciko', 'owner', '$2y$10$v25.H4XMgDztA2NmxeJQSeaRl2nKboXeRTo1BjPe37R0JG3rXraZG', 'assets/backend/img/default.png', 'owner@gmail.com', '1', 1, '1552819095');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `kd_bank` varchar(50) NOT NULL,
  `nasabah_bank` varchar(50) DEFAULT NULL,
  `nama_bank` varchar(50) DEFAULT NULL,
  `nomrek_bank` varchar(50) DEFAULT NULL,
  `photo_bank` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bank`
--

INSERT INTO `tbl_bank` (`kd_bank`, `nasabah_bank`, `nama_bank`, `nomrek_bank`, `photo_bank`) VALUES
('BNK0001', 'Bahyu Sanciko', 'BCA', '5490252063', 'assets/frontend/img/bank/bca-icon.jpg'),
('BNK0002', 'Bahyu Sanciko', 'MANDIRI', '6666666666', 'assets/frontend/img/bank/mandiri-icon.jpg'),
('BNK0003', 'Bahyu Sanciko', 'BRI', '7777777777', 'assets/frontend/img/bank/bri-icon.jpg'),
('BNK0004', 'Bahyu Sanciko', 'BNI', '8888888888', 'assets/frontend/img/bank/bni-icon.jpg'),
('BNK0005', 'SANJA AVI  MAULANA', NULL, '12312221321312321', 'assets/frontend/img/bank/-icon.jpg'),
('BNK0006', 'SANJA AVI  MAULANA', 'BCA', '12132222', 'assets/frontend/img/bank/BCA-icon.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bus`
--

CREATE TABLE `tbl_bus` (
  `kd_bus` varchar(50) NOT NULL,
  `nama_bus` varchar(50) DEFAULT NULL,
  `plat_bus` varchar(50) DEFAULT NULL,
  `kapasitas_bus` int(13) DEFAULT NULL,
  `status_bus` int(1) DEFAULT NULL,
  `desc_bus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bus`
--

INSERT INTO `tbl_bus` (`kd_bus`, `nama_bus`, `plat_bus`, `kapasitas_bus`, `status_bus`, `desc_bus`) VALUES
('B001', 'JKT1', 'B 4514 BLN', 19, 1, '--'),
('B002', 'JKT2', 'B 4514 BLN', 19, 1, '--'),
('B003', 'BDG1', 'B 4514 BLN', 19, 1, '--'),
('B004', 'BDG2', 'B 4514 BLN', 19, 1, '--'),
('B005', 'BDG3', 'B 4561 BLN', 19, 1, '--'),
('B006', 'JKT3', 'B 1234 BLN', 19, 1, '--');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `kd_jadwal` varchar(50) NOT NULL,
  `kd_tujuan` varchar(50) DEFAULT NULL,
  `kd_asal` varchar(50) DEFAULT NULL,
  `wilayah_jadwal` varchar(50) DEFAULT NULL,
  `jam_berangkat_jadwal` time DEFAULT NULL,
  `jam_tiba_jadwal` time DEFAULT NULL,
  `harga_jadwal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`kd_jadwal`, `kd_tujuan`, `kd_asal`, `wilayah_jadwal`, `jam_berangkat_jadwal`, `jam_tiba_jadwal`, `harga_jadwal`) VALUES
('J0001', 'TJ006', 'TJ005', 'SUkorejo', '08:35:00', '08:35:00', '250000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_konfirmasi`
--

CREATE TABLE `tbl_konfirmasi` (
  `kd_konfirmasi` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_konfirmasi` varchar(50) DEFAULT NULL,
  `nama_bank_konfirmasi` varchar(50) DEFAULT NULL,
  `norek_konfirmasi` varchar(50) DEFAULT NULL,
  `total_konfirmasi` varchar(50) DEFAULT NULL,
  `photo_konfirmasi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_level`
--

CREATE TABLE `tbl_level` (
  `kd_level` int(11) NOT NULL,
  `nama_level` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_level`
--

INSERT INTO `tbl_level` (`kd_level`, `nama_level`) VALUES
(1, 'owner'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `kd_menu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_menu`
--

INSERT INTO `tbl_menu` (`kd_menu`, `nama_menu`) VALUES
(1, 'owner'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `kd_tiket` varchar(50) DEFAULT NULL,
  `kd_jadwal` varchar(50) DEFAULT NULL,
  `kd_pelanggan` varchar(50) DEFAULT NULL,
  `kd_bank` varchar(50) DEFAULT NULL,
  `asal_order` varchar(200) DEFAULT NULL,
  `nama_order` varchar(50) DEFAULT NULL,
  `tgl_beli_order` varchar(50) DEFAULT NULL,
  `tgl_berangkat_order` varchar(50) DEFAULT NULL,
  `nama_kursi_order` varchar(50) DEFAULT NULL,
  `umur_kursi_order` varchar(50) DEFAULT NULL,
  `no_kursi_order` varchar(50) DEFAULT NULL,
  `no_ktp_order` varchar(50) DEFAULT NULL,
  `no_tlpn_order` varchar(50) DEFAULT NULL,
  `alamat_order` varchar(100) DEFAULT NULL,
  `email_order` varchar(100) DEFAULT NULL,
  `expired_order` varchar(50) DEFAULT NULL,
  `qrcode_order` varchar(100) DEFAULT NULL,
  `status_order` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `kd_order`, `kd_tiket`, `kd_jadwal`, `kd_pelanggan`, `kd_bank`, `asal_order`, `nama_order`, `tgl_beli_order`, `tgl_berangkat_order`, `nama_kursi_order`, `umur_kursi_order`, `no_kursi_order`, `no_ktp_order`, `no_tlpn_order`, `alamat_order`, `email_order`, `expired_order`, `qrcode_order`, `status_order`) VALUES
(27, 'ORD00001', 'TORD00001J0004202012301', 'J0004', 'PL9999', 'BNK0001', 'TJ002', 'Sanja', 'Rabu, 30 Desember 2020, 08:22', '2020-12-30', 'sanja maas', '20', '1', '12313333222232323', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '31-12-2020 08:22:16', 'assets/frontend/upload/qrcode/ORD00001.png', '2'),
(28, 'ORD00002', 'TORD00002J0004202101241', 'J0004', 'PL9999', 'BNK0004', 'TJ002', 'Sanja', 'Senin, 04 Januari 2021, 08:26', '2021-01-24', 'S', NULL, '1', '12223222121322', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '05-01-2021 08:26:12', 'assets/frontend/upload/qrcode/ORD00002.png', '2'),
(29, 'ORD00003', 'TORD00003J0004202101241', 'J0004', 'PL9999', 'BNK0004', 'TJ002', 'Sanja', 'Senin, 04 Januari 2021, 08:26', '2021-01-24', 'S', NULL, '1', '12223222121322', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '05-01-2021 08:26:38', 'assets/frontend/upload/qrcode/ORD00003.png', '2'),
(30, 'ORD00004', 'TORD00004J0004202101241', 'J0004', 'PL9999', 'BNK0004', 'TJ002', 'Sanja', 'Senin, 04 Januari 2021, 08:28', '2021-01-24', 'S', NULL, '1', '12223222121322', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '05-01-2021 08:28:20', 'assets/frontend/upload/qrcode/ORD00004.png', '1'),
(31, 'ORD00005', 'TORD00005J0004202101241', 'J0004', 'PL9999', 'BNK0004', 'TJ002', 'Sanja', 'Senin, 04 Januari 2021, 08:29', '2021-01-24', 'S', NULL, '1', '12223222121322', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '05-01-2021 08:29:07', 'assets/frontend/upload/qrcode/ORD00005.png', '1'),
(32, 'ORD00006', 'TORD00006J0004202101241', 'J0004', 'PL9999', 'BNK0002', 'TJ002', 'Sanja', 'Senin, 04 Januari 2021, 08:29', '2021-01-24', 'S', NULL, '1', '2122231321', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '05-01-2021 08:29:43', 'assets/frontend/upload/qrcode/ORD00006.png', '1'),
(33, 'ORD00007', 'TORD00007J0004202101241', 'J0004', 'PL9999', 'BNK0002', 'TJ002', 'Sanja', 'Senin, 04 Januari 2021, 08:35', '2021-01-24', 'S', NULL, '1', '2122231321', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '05-01-2021 08:35:15', 'assets/frontend/upload/qrcode/ORD00007.png', '1'),
(34, 'ORD00008', 'TORD00008J0004202101241', 'J0004', 'PL9999', 'BNK0002', 'TJ002', 'Sanja', 'Senin, 04 Januari 2021, 08:43', '2021-01-24', 'S', NULL, '1', '2122231321', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '05-01-2021 08:43:48', 'assets/frontend/upload/qrcode/ORD00008.png', '1'),
(35, 'ORD00009', 'TORD00009J0004202101241', 'J0004', 'PL9999', 'BNK0002', 'TJ002', 'Sanja', 'Senin, 04 Januari 2021, 08:43', '2021-01-24', 'S', NULL, '1', '2122231321', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '05-01-2021 08:43:54', 'assets/frontend/upload/qrcode/ORD00009.png', '1'),
(36, 'ORD00010', 'TORD00010J0004202101241', 'J0004', 'PL9999', 'BNK0002', 'TJ002', 'Sanja', 'Senin, 04 Januari 2021, 08:46', '2021-01-24', 'S', NULL, '1', '2122231321', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '05-01-2021 08:46:12', 'assets/frontend/upload/qrcode/ORD00010.png', '1'),
(37, 'ORD00011', 'TORD00011J0004202101241', 'J0004', 'PL9999', 'BNK0002', 'TJ002', 'Sanja', 'Senin, 04 Januari 2021, 08:46', '2021-01-24', 'S', NULL, '1', '2122231321', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '05-01-2021 08:46:53', 'assets/frontend/upload/qrcode/ORD00011.png', '1'),
(38, 'ORD00012', 'TORD00012J0004202101241', 'J0004', 'PL9999', 'BNK0002', 'TJ002', 'Sanja', 'Senin, 04 Januari 2021, 08:46', '2021-01-24', 'S', NULL, '1', '2122231321', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '05-01-2021 08:46:56', 'assets/frontend/upload/qrcode/ORD00012.png', '1'),
(39, 'ORD00013', 'TORD00013J0004202101241', 'J0004', 'PL9999', 'BNK0002', 'TJ002', 'Sanja', 'Senin, 04 Januari 2021, 08:48', '2021-01-24', 'S', NULL, '1', '2122231321', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '05-01-2021 08:48:57', 'assets/frontend/upload/qrcode/ORD00013.png', '1'),
(40, 'ORD00014', 'TORD00014J0004202101241', 'J0004', 'PL9999', 'BNK0001', 'TJ002', 'Sanja', 'Senin, 04 Januari 2021, 08:49', '2021-01-24', 'S', NULL, '1', '1232222111', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '05-01-2021 08:49:26', 'assets/frontend/upload/qrcode/ORD00014.png', '1'),
(41, 'ORD00015', 'TORD00015J0004202101241', 'J0004', 'PL9999', 'BNK0001', 'TJ002', 'Sanja', 'Senin, 04 Januari 2021, 08:49', '2021-01-24', 'S', NULL, '1', '12222133', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '05-01-2021 08:49:52', 'assets/frontend/upload/qrcode/ORD00015.png', '1'),
(42, 'ORD00016', 'TORD00016J0004202101241', 'J0004', 'PL9999', 'BNK0002', 'TJ002', 'Sanja', 'Senin, 04 Januari 2021, 08:50', '2021-01-24', 'S', NULL, '1', '44858885565', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '05-01-2021 08:50:40', 'assets/frontend/upload/qrcode/ORD00016.png', '1'),
(43, 'ORD00017', 'TORD00017J0004202101241', 'J0004', 'PL9999', 'BNK0002', 'TJ002', 'Sanja', 'Senin, 04 Januari 2021, 08:51', '2021-01-24', 'S', NULL, '1', '44858885565', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '05-01-2021 08:51:29', 'assets/frontend/upload/qrcode/ORD00017.png', '1'),
(44, 'ORD00018', 'TORD00018J0007202101221', 'J0007', 'PL9999', 'BNK0001', 'TJ007', 'Sanja', 'Selasa, 05 Januari 2021, 08:43', '2021-01-22', 'S', NULL, '1', '112321122222', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '06-01-2021 08:43:00', 'assets/frontend/upload/qrcode/ORD00018.png', '1'),
(45, 'ORD00019', 'TORD00019J0007202101221', 'J0007', 'PL9999', 'BNK0001', 'TJ007', 'Sanja', 'Selasa, 05 Januari 2021, 08:43', '2021-01-22', 'S', NULL, '1', '112321122222', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '06-01-2021 08:43:18', 'assets/frontend/upload/qrcode/ORD00019.png', '1'),
(46, 'ORD00020', 'TORD00020J0001202101111', 'J0001', 'PL9999', 'BNK0006', 'TJ005', 'Sanja', 'Senin, 11 Januari 2021, 08:35', '2021-01-11', 'S', NULL, '1', '1222312312112', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '12-01-2021 08:35:53', 'assets/frontend/upload/qrcode/ORD00020.png', '1'),
(47, 'ORD00021', 'TORD00021J0001202101111', 'J0001', 'PL9999', 'BNK0006', 'TJ005', 'Sanja', 'Senin, 11 Januari 2021, 08:36', '2021-01-11', 'S', NULL, '1', '12313222213', '081232797983', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '12-01-2021 08:36:36', 'assets/frontend/upload/qrcode/ORD00021.png', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `kd_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `no_ktp_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_pelanggan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `email_pelanggan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `telpon_pelanggan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `img_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `status_pelanggan` int(1) DEFAULT NULL,
  `date_create_pelanggan` varchar(50) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`kd_pelanggan`, `username_pelanggan`, `password_pelanggan`, `no_ktp_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `email_pelanggan`, `telpon_pelanggan`, `img_pelanggan`, `status_pelanggan`, `date_create_pelanggan`) VALUES
('PL0002', 'sella', '$2y$10$wzz5.QSqiNfrc2JKuYK5huJHEvry340XZlspPACOJLf0TmU3yu30.', '02564651321564', 'sella', 'smkn1baso', 'sellapurwita36@gmail.com', '089682261128', 'assets/frontend/img/default.png', 1, '1552202266'),
('PL0001', 'bahyu', '$2y$10$PO4viVqheGgw7HPeozUih.V6qK4aWKbACLMe9UWOoSaJ8pSdaiISG', '021452125', 'Bahyu Sanciko', 'JL AJA', 'cbahyu@gmail.com', '089682261128', 'assets/frontend/img/default.png', 1, '1552199781'),
('PL0003', 'Dimas', '$2y$10$N6imN8KmAhuw9rH.iJxGLeVaRCG.27UmhHVF7MaICMhYlm.TGJ9iy', '346454215172455', 'Dimas', 'Cengkareng', 'dimasrestuadrianto@gmail.com', '6281299397276', 'assets/frontend/img/default.png', 1, '1552397128'),
('PL0005', 'kamuanjing', '$2y$10$PYDzqnOpzeGSo0ngK40Q1.M77oxnQ7fvhMYpI2q/JoZFS5r.g5FPG', '321963127368762639', 'aku cinta kmu', 'bangsat', 'ayudharachman@gmail.com', '09821312387', 'assets/frontend/img/default.png', 1, '1554340197'),
('PL0004', 'kelas109', '$2y$10$hHamfvIRbCNYiAvS289f0uj.T6kUfpfxTUcI210SLRqdTrxj4zyxG', '78456', 'Kelas109', 'jlin aja', 'kelas109si@gmail.com', '089682261128', 'assets/frontend/img/default.png', 1, '1554017732'),
('PL0006', 'Rakel', '$2y$10$pwr/ZSCVcya8JOV1Xt13qeRzhz.nLsJGWYcWWZJgR5DFLUfjJeaGO', '', 'Rakel', 'Jl.in aja dulu', 'rizkifirmansyah435@gmail.com', '08745179471', 'assets/frontend/img/default.png', 1, '1554385261'),
('PL0007', 'Aritest', '$2y$10$Z7yJqwWa0pCPtGb5sVYf9epvdjT97BD9U4guma.EhKU3JS9H675lG', '', 'ari', 'test', 'aliansah629@gmail.com', '08987654345', 'assets/frontend/img/default.png', 1, '1554534514'),
('PL9999', 'sanja96', '$2y$10$SIJENEqykXc77o4sXWv7Fu4pOp7PIJszAjuIqELKUsBniJaz/iOp.', '', 'Sanja', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'avi.sanja@gmail.com', '081232797983', 'assets/frontend/img/default.png', 1, '1608170138'),
('PL1000', 'hijack403', '$2y$10$qhzFf2IG.NdLvero4fh5sOxs5oc85ApOlQL1CoF4JLIqv2BIN3wEi', '', 'Sanja', 'Jln.Pesantren Al-Hidayah\r\nkecamatan sukorejo', 'anonghost911@gmail.com', '081232797981', 'assets/frontend/img/default.png', 1, '1608600159');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sub_menu`
--

CREATE TABLE `tbl_sub_menu` (
  `kd_sub_menu` int(11) NOT NULL,
  `kd_menu` int(11) DEFAULT NULL,
  `title_sub_menu` varchar(128) DEFAULT NULL,
  `url_sub_menu` varchar(128) DEFAULT NULL,
  `is_active_sub_menu` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sub_menu`
--

INSERT INTO `tbl_sub_menu` (`kd_sub_menu`, `kd_menu`, `title_sub_menu`, `url_sub_menu`, `is_active_sub_menu`) VALUES
(0, 1, 'Dashboard', 'backend/home', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tiket`
--

CREATE TABLE `tbl_tiket` (
  `kd_tiket` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_tiket` varchar(50) DEFAULT NULL,
  `kursi_tiket` varchar(50) DEFAULT NULL,
  `umur_tiket` varchar(50) DEFAULT NULL,
  `asal_beli_tiket` varchar(50) DEFAULT NULL,
  `harga_tiket` varchar(50) NOT NULL,
  `etiket_tiket` varchar(100) DEFAULT NULL,
  `status_tiket` varchar(50) NOT NULL,
  `create_tgl_tiket` date DEFAULT NULL,
  `create_admin_tiket` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_token_pelanggan`
--

CREATE TABLE `tbl_token_pelanggan` (
  `kd_token` int(11) NOT NULL,
  `nama_token` varchar(256) DEFAULT NULL,
  `email_token` varchar(50) DEFAULT NULL,
  `date_create_token` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_token_pelanggan`
--

INSERT INTO `tbl_token_pelanggan` (`kd_token`, `nama_token`, `email_token`, `date_create_token`) VALUES
(1, '9bedad8ee5318ba9b18d2f5a5484176c', 'avi.sanja@gmail.com', 1608170138);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tujuan`
--

CREATE TABLE `tbl_tujuan` (
  `kd_tujuan` varchar(50) NOT NULL,
  `kota_tujuan` varchar(50) NOT NULL,
  `nama_terminal_tujuan` varchar(50) NOT NULL,
  `terminal_tujuan` varchar(100) NOT NULL,
  `fasilitas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tujuan`
--

INSERT INTO `tbl_tujuan` (`kd_tujuan`, `kota_tujuan`, `nama_terminal_tujuan`, `terminal_tujuan`, `fasilitas`) VALUES
('TJ005', 'bandung', 'Terminal Babakan', 'JL. Raya Gede Bage No.68, Babakan Penghulu, Cinambo, Bandung City, West Java 40295', ''),
('TJ006', 'SUkorejo', '', 'Jl.Pesantren Al-Hidayah Sukorejo', '- None');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`kd_admin`);

--
-- Indeks untuk tabel `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`kd_bank`);

--
-- Indeks untuk tabel `tbl_bus`
--
ALTER TABLE `tbl_bus`
  ADD PRIMARY KEY (`kd_bus`);

--
-- Indeks untuk tabel `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`kd_jadwal`),
  ADD KEY `kd_tujuan` (`kd_tujuan`);

--
-- Indeks untuk tabel `tbl_konfirmasi`
--
ALTER TABLE `tbl_konfirmasi`
  ADD PRIMARY KEY (`kd_konfirmasi`),
  ADD KEY `kode_order` (`kd_order`);

--
-- Indeks untuk tabel `tbl_level`
--
ALTER TABLE `tbl_level`
  ADD PRIMARY KEY (`kd_level`);

--
-- Indeks untuk tabel `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`kd_menu`);

--
-- Indeks untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `kd_jadwal` (`kd_jadwal`),
  ADD KEY `kd_kustomer` (`kd_pelanggan`),
  ADD KEY `kd_tiket` (`kd_tiket`),
  ADD KEY `kd_bank` (`kd_bank`);

--
-- Indeks untuk tabel `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`kd_pelanggan`);

--
-- Indeks untuk tabel `tbl_sub_menu`
--
ALTER TABLE `tbl_sub_menu`
  ADD PRIMARY KEY (`kd_sub_menu`),
  ADD KEY `kd_menu` (`kd_menu`);

--
-- Indeks untuk tabel `tbl_tiket`
--
ALTER TABLE `tbl_tiket`
  ADD PRIMARY KEY (`kd_tiket`),
  ADD KEY `kode_order` (`kd_order`);

--
-- Indeks untuk tabel `tbl_token_pelanggan`
--
ALTER TABLE `tbl_token_pelanggan`
  ADD PRIMARY KEY (`kd_token`);

--
-- Indeks untuk tabel `tbl_tujuan`
--
ALTER TABLE `tbl_tujuan`
  ADD PRIMARY KEY (`kd_tujuan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_level`
--
ALTER TABLE `tbl_level`
  MODIFY `kd_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `kd_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `tbl_token_pelanggan`
--
ALTER TABLE `tbl_token_pelanggan`
  MODIFY `kd_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
