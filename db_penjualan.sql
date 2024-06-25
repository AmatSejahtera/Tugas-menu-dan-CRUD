-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2024 at 03:29 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `barkode` char(20) DEFAULT NULL,
  `name` char(100) DEFAULT NULL,
  `harga_jual` bigint(20) DEFAULT NULL,
  `harga_beli` bigint(20) DEFAULT NULL,
  `stok` bigint(20) DEFAULT NULL,
  `kategori_id` int(8) DEFAULT NULL,
  `satuan_id` int(8) DEFAULT NULL,
  `user_id` int(8) DEFAULT NULL,
  `supplier_id` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_kategori` (`kategori_id`),
  KEY `fk_satuan` (`satuan_id`),
  KEY `fk_user` (`user_id`),
  KEY `fk_supplier` (`supplier_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `barkode`, `name`, `harga_jual`, `harga_beli`, `stok`, `kategori_id`, `satuan_id`, `user_id`, `supplier_id`) VALUES
(1, '465987054', 'Bedak Bayi', 40000, 25000, 20, 6, 5, 2, 5),
(2, '364879531', 'Wafer Role', 50000, 20000, 35, 2, 3, 1, 1),
(3, '798064846', 'Barbel 10kg', 80000, 50000, 10, 5, 5, 1, 4),
(4, '487465487', 'Kemeja Kotak Catur', 300000, 150000, 15, 4, 5, 3, 6),
(5, '987654498', 'Energy Drink', 10000, 5000, 100, 1, 5, 1, 2),
(6, '134987654', 'TV LG LED', 3000000, 1500000, 5, 3, 5, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` char(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `name`) VALUES
(1, 'Drinks'),
(2, 'Foods'),
(3, 'Electronics'),
(4, 'Clothing'),
(5, 'Sports'),
(6, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `kustomer`
--

CREATE TABLE IF NOT EXISTS `kustomer` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `nik` char(16) DEFAULT NULL,
  `name` char(100) DEFAULT NULL,
  `telp` char(20) DEFAULT NULL,
  `email` char(100) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `kustomer`
--

INSERT INTO `kustomer` (`id`, `nik`, `name`, `telp`, `email`, `alamat`) VALUES
(1, '941513283', 'Abdul Ghani', '085646467878', 'abdulghani@example.com', 'jl. cempaka no.43'),
(2, '2147483647', 'Karan Abdi', '086349764654', 'kasranabdi@example.com', 'Komplek Permata Hitam 13A'),
(3, '2147483647', 'Kipli Hus', '097563154890', 'kpilihus@example.com', 'Apartemen Citra Towel 12'),
(4, '2147483647', 'Jordan Situ', '051236985214', 'jordsnitu@example.com', 'Jl. S. Parman No.10'),
(5, '2147483647', 'Jubay Dun', '087928463971', 'jubaydun@example.com', 'Citra graha Blok D-5'),
(6, '2147483647', 'JolerY', '087496657799', 'jolery@example.com', 'Citra Land Huy No.102');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `invoice` int(10) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `bayar` bigint(20) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `supplier_id` int(8) DEFAULT NULL,
  `user_id` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `supplier_id_2` (`supplier_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `invoice`, `total`, `bayar`, `deskripsi`, `tanggal`, `supplier_id`, `user_id`) VALUES
(1, 1, 500000, 500000, 'Pembelian Bedak Bayi', '2024-05-20', 5, 2),
(2, 2, 700000, 700000, 'Pembelian Wafer Role', '2024-05-20', 1, 1),
(3, 3, 500000, 500000, 'Pembelian Barbel 10kg', '2024-05-21', 4, 1),
(4, 4, 2250000, 2250000, 'Pembelian Kemeja Kotak Catur', '2024-05-22', 6, 3),
(5, 5, 500000, 500000, 'Pembelian Energy Drink', '2024-05-22', 2, 1),
(6, 6, 7500000, 7500000, 'Pembelian TV 12 inc LED', '2024-05-24', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_detail`
--

CREATE TABLE IF NOT EXISTS `pembelian_detail` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `harga` bigint(20) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `subtotal` bigint(20) DEFAULT NULL,
  `pembelian_id` int(8) DEFAULT NULL,
  `barang_id` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `barang_id` (`barang_id`),
  KEY `pembelian_id` (`pembelian_id`),
  KEY `barang_id_2` (`barang_id`),
  KEY `pembelian_id_2` (`pembelian_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `pembelian_detail`
--

INSERT INTO `pembelian_detail` (`id`, `harga`, `qty`, `subtotal`, `pembelian_id`, `barang_id`) VALUES
(1, 25000, 20, 500000, 1, 1),
(2, 20000, 35, 700000, 2, 2),
(3, 50000, 10, 500000, 3, 3),
(4, 150000, 15, 2250000, 4, 4),
(5, 5000, 100, 500000, 5, 5),
(6, 1500000, 5, 7500000, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE IF NOT EXISTS `penjualan` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `invoice` char(10) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `bayar` bigint(20) DEFAULT NULL,
  `kembali` bigint(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `kustomer_id` int(8) DEFAULT NULL,
  `user_id` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `kustomer_id` (`kustomer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `invoice`, `total`, `bayar`, `kembali`, `tanggal`, `kustomer_id`, `user_id`) VALUES
(1, '001', 80000, 100000, 20000, '2024-05-25', 3, 1),
(2, '002', 100000, 100000, 0, '2024-05-25', 2, 1),
(3, '003', 160000, 200000, 40000, '2024-05-26', 4, 3),
(4, '004', 300000, 300000, 0, '2024-05-26', 6, 3),
(5, '005', 45000, 50000, 5000, '2024-05-28', 5, 2),
(6, '006', 3000000, 3000000, 0, '2024-05-28', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_detail`
--

CREATE TABLE IF NOT EXISTS `penjualan_detail` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `harga` bigint(20) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `subtotal` bigint(20) DEFAULT NULL,
  `penjualan_id` int(8) DEFAULT NULL,
  `barang_id` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_barang` (`barang_id`),
  KEY `penjualan_id` (`penjualan_id`),
  KEY `penjualan_id_2` (`penjualan_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`id`, `harga`, `qty`, `subtotal`, `penjualan_id`, `barang_id`) VALUES
(1, 40000, 2, 80000, 1, 1),
(2, 50000, 2, 100000, 2, 2),
(3, 80000, 1, 160000, 3, 3),
(4, 300000, 1, 300000, 4, 4),
(5, 15000, 3, 45000, 5, 5),
(6, 3000000, 1, 3000000, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE IF NOT EXISTS `satuan` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` char(100) DEFAULT NULL,
  `diskripsi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`id`, `name`, `diskripsi`) VALUES
(1, 'lusin', '1 lusin adalah 12 buah '),
(2, 'kilogram', 'berat untuk timbangan'),
(3, 'dus', 'tempat berbentuk persegi yang terbuat dari kertas'),
(4, 'slop', 'setiap 1 slop berisi 10'),
(5, 'buah', 'isi per satuan');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `nik` char(20) DEFAULT NULL,
  `name` char(100) DEFAULT NULL,
  `telp` char(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `perusahaan` varchar(150) DEFAULT NULL,
  `nama_bank` char(100) DEFAULT NULL,
  `akun_bank` varchar(150) DEFAULT NULL,
  `no_akun_bank` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nik`, `name`, `telp`, `alamat`, `email`, `perusahaan`, `nama_bank`, `akun_bank`, `no_akun_bank`) VALUES
(1, '746541549', 'Ahmad Yudistira', '081112233445', 'Jl. Flamboyan No. 20', 'ahmadyudistira@example.com', 'PT. Sejahtera Abadi', 'Bank Mandiri', 'Ahmad Yudistira - Mandiri', '449875646'),
(2, '487416546', 'Siti Rahayu', '085667788990', 'Perumahan Bumi Indah Blok E-3', 'siti.rahayu@example.com', 'CV. Jaya Makmur', 'Bank Central Asia (BCA)', 'Siti Rahayu - BCA', '845640840'),
(3, '416549876', 'Budi Santoso', '087611223344', 'Apartemen Citra Harmoni Tower C-8', 'budisantoso@example.com', 'PT. Berkah Jaya', 'Bank Rakyat Indonesia (BRI)', 'Budi Santoso - BRI', '379870988'),
(4, '897971646', 'Dewi Anggraini', '089944556677', 'Komplek Puri Asri Blok F1', 'dewi.anggraini@example.com', 'UD. Sentosa Baru', 'Bank Negara Indonesia (BNI)', 'Dewi Anggraini - BNI', '987465456'),
(5, '671989846', 'Joko Susilo', '082332211445', 'Jl. Dahlia 3B RT 05 RW 09', 'jokosusilo@example.com', 'PT. Maju Bersama', 'Bank CIMB Niaga', 'Joko Susilo - CIMB Niaga', '984798405'),
(6, '795094094', 'Rina Fitriani', '083778899001', 'Green Valley Residence No. 8', 'rina.fitriani@example.com', 'CV. Prima Sentosa', 'Bank Danamon', 'Rina Fitriani - Danamon', '132465465');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `nik` int(20) DEFAULT NULL,
  `username` char(100) DEFAULT NULL,
  `full_name` varchar(150) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `tipe` char(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `telp` char(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `is_active` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`),
  KEY `id_3` (`id`),
  KEY `id_4` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nik`, `username`, `full_name`, `password`, `tipe`, `email`, `telp`, `address`, `is_active`) VALUES
(1, 644, 'n', 'n', 'n', 'admin', 'fffa', 'gg amgn', 'aa', ''),
(2, 697540365, 'coolcat22', 'Muhammad Ali', 'ali123', 'kasir', 'muhammad.ali@example.com', '085678901234', 'Komplek Permata Indah Blok A2', 'online'),
(3, 454797763, 'pizza_lover', 'Maria Rodriguez', 'maria123', 'kasir', 'maria.rodriguez@example.com', '087654321098', 'Jl. Melati 5A RT 03 RW 07', 'online'),
(4, 670067932, 'greenapple88', 'David Smith', 'david123', 'admin', 'david.smith@example.com', '089012345678', 'Apartemen Sentra Indah Tower B-10', 'offline'),
(5, 546408497, 'sunnyday55', 'Anna Lee', 'lee123', 'admin', 'anna.lee@example.com', '082345678901', 'Perumahan Cendana Asri Blok C-5', 'online'),
(6, 974654600, 'adventureseeker77', 'Juan Perez', 'juan123', 'teknisi informatika', 'juan.perez@example.com', '083456789012', 'Graha Kencana Residence No. 17', 'online');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `fk_kategori` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `fk_satuan` FOREIGN KEY (`satuan_id`) REFERENCES `satuan` (`id`),
  ADD CONSTRAINT `fk_supplier` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`),
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembelian_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  ADD CONSTRAINT `pembelian_detail_ibfk_1` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembelian_detail_ibfk_2` FOREIGN KEY (`pembelian_id`) REFERENCES `pembelian` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `fk_kustomer` FOREIGN KEY (`kustomer_id`) REFERENCES `kustomer` (`id`),
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD CONSTRAINT `fk_barang` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id`),
  ADD CONSTRAINT `fk_penjualan` FOREIGN KEY (`penjualan_id`) REFERENCES `penjualan` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
