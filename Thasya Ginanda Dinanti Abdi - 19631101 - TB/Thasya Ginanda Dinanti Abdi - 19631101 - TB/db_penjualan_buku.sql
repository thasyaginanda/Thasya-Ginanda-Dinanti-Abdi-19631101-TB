-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jan 2022 pada 13.14
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan_buku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(7) NOT NULL,
  `nama_buku` varchar(50) NOT NULL,
  `Kategori` varchar(20) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `harga` int(10) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `nama_buku`, `Kategori`, `pengarang`, `penerbit`, `harga`, `jumlah`) VALUES
('B001', 'Menuju Senja Hari', 'BIOGRAFI', 'Bobi Sudarsana', 'Gramedia', 50000, 2),
('B002', 'Katakan NO!!!', 'NOVEL', 'Indra Darmawan', 'Yudisthira', 100000, 1),
('B003', 'Negeri Orange', 'NOVEL', 'Indra Darmawan', 'Elangga', 900000, 1),
('B004', 'Diatas Awan', 'DONGENG', 'Indra Darmawan', 'Elangga', 20000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(10) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `deskripsi`) VALUES
('K001', 'NOVEL', '-'),
('K002', 'DONGENG', '-'),
('K003', 'ENSIKLOPEDIA', '-'),
('K004', 'BIOGRAFI', '-'),
('K005', 'KAMUS', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` varchar(10) NOT NULL,
  `nama_penerbit` varchar(50) NOT NULL,
  `kota_penerbit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(7) NOT NULL,
  `tanggal` text NOT NULL,
  `nama_pembeli` varchar(50) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `harga` int(10) NOT NULL,
  `diskon` int(10) NOT NULL,
  `bayar` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `tanggal`, `nama_pembeli`, `judul_buku`, `harga`, `diskon`, `bayar`) VALUES
('01', '03-01-2022 7:33', 'xxx', 'sss', 91000, 0, 91000),
('02', '03-01-2022 7:33', 'xxx', 'sss', 120000, 10000, 110000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
