-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jan 2023 pada 06.16
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_peminjaman`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `nama_lembaga` varchar(50) NOT NULL,
  `nama_peminjam` varchar(50) NOT NULL,
  `noHP_Peminjam` varchar(15) NOT NULL,
  `deskripsi_acara` varchar(200) NOT NULL,
  `tujuan_acara` varchar(100) NOT NULL,
  `ruangan_dipinjam` varchar(50) NOT NULL,
  `acara` varchar(50) NOT NULL,
  `jumlah_peserta` varchar(10) NOT NULL,
  `tanggal_peminjaman` varchar(30) NOT NULL,
  `tanggal_selesai` varchar(30) NOT NULL,
  `jam` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`nama_lembaga`, `nama_peminjam`, `noHP_Peminjam`, `deskripsi_acara`, `tujuan_acara`, `ruangan_dipinjam`, `acara`, `jumlah_peserta`, `tanggal_peminjaman`, `tanggal_selesai`, `jam`) VALUES
('KAMTIB', 'Yayan', '08567893045', 'Rapat Bulanan', 'Jaga Portal', 'Ruang Rapat', 'Rapat', '15', 'Sun Jan 08 11:28:29 ICT 2023', 'Mon Jan 09 11:28:35 ICT 2023', '20:00'),
('KIP', 'Rico', '085132453627', 'OSPEKTREN KIP', 'Membentuk Karakter', 'Aula 1', 'OSPEKTREN KIP 22', '100', 'Mon Jan 09 11:42:06 ICT 2023', 'Wed Jan 11 11:42:09 ICT 2023', '07:00'),
('SP3', 'Syaiful Bahri', '085678390846', 'Pengukuhan Wisuda', 'Wisuda Semester Akhir', 'Aula 2', 'Wisuda', '200', 'Fri Jan 13 18:59:38 ICT 2023', 'Sat Jan 14 18:59:40 ICT 2023', '08:00'),
('BEM FT', 'Feri', '082345627890', 'Webinar Kebangsaan', 'Membentuk generasi muda yang efektif', 'Aula Mini', 'Webinar', '30', 'Wed Jan 18 09:51:29 ICT 2023', 'Thu Jan 19 09:51:36 ICT 2023', '08:00'),
('BEM FAI', 'Salman', '085647826484', 'Webinar', 'Membentuk kaum muda berwawasan', 'Aula 2', 'Webinar', '100', 'Thu Jan 19 12:13:36 ICT 2023', 'Fri Jan 20 12:13:39 ICT 2023', '09:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan`
--

CREATE TABLE `ruangan` (
  `nama_ruangan` varchar(30) NOT NULL,
  `layar_tron` varchar(15) NOT NULL,
  `lcd` varchar(15) NOT NULL,
  `meja` varchar(15) NOT NULL,
  `kursi` varchar(15) NOT NULL,
  `sound` varchar(15) NOT NULL,
  `mic` varchar(15) NOT NULL,
  `tv` varchar(15) NOT NULL,
  `ac` varchar(15) NOT NULL,
  `tabir` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ruangan`
--

INSERT INTO `ruangan` (`nama_ruangan`, `layar_tron`, `lcd`, `meja`, `kursi`, `sound`, `mic`, `tv`, `ac`, `tabir`) VALUES
('Aula 1', '1', '-', '15', '250', '6', '15', '-', '6', '5'),
('Aula 2', '1', '-', '15', '250', '6', '15', '-', '6', '5'),
('Aula Mini', '1', '-', '4', '50', '4', '4', '-', '2', '3'),
('Ruang Rapat', '-', '1', '4', '20', '2', '2', '1', '2', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `kode_user` int(5) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `telepon_user` varchar(15) NOT NULL,
  `username_user` varchar(30) NOT NULL,
  `password_user` varchar(50) NOT NULL,
  `alamat_user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`kode_user`, `nama_user`, `email_user`, `telepon_user`, `username_user`, `password_user`, `alamat_user`) VALUES
(1, 'user', 'user', 'user', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`kode_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `kode_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
