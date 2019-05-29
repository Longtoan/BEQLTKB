-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 29, 2019 lúc 01:39 PM
-- Phiên bản máy phục vụ: 10.1.40-MariaDB
-- Phiên bản PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `timetable`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `buoi`
--

CREATE TABLE `buoi` (
  `id_buoi` int(11) NOT NULL,
  `tenbuoi` varchar(20) DEFAULT NULL,
  `id_thu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class`
--

CREATE TABLE `class` (
  `id_lop` int(11) NOT NULL,
  `tenlop` varchar(20) DEFAULT NULL,
  `khoi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `class`
--

INSERT INTO `class` (`id_lop`, `tenlop`, `khoi`) VALUES
(6, '10A1', '10'),
(7, '10A2', '10'),
(8, '10A3', '10'),
(9, '10A4', '10'),
(10, '10A5', '10'),
(11, '11A1', '11'),
(12, '11A2', '11'),
(13, '11A3', '11'),
(14, '11A4', '11'),
(15, '11A5', '11'),
(16, '12A1', '12'),
(17, '12A2', '12'),
(18, '12A3', '12'),
(19, '12A4', '12'),
(20, '12A5', '12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovien`
--

CREATE TABLE `giaovien` (
  `id_giaovien` int(11) NOT NULL,
  `tengv` varchar(50) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `phai` tinyint(1) DEFAULT NULL,
  `diachi` varchar(50) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `chuyenmon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `giaovien`
--

INSERT INTO `giaovien` (`id_giaovien`, `tengv`, `ngaysinh`, `phai`, `diachi`, `dienthoai`, `mail`, `chuyenmon`) VALUES
(1, 'Hà Văn Chương', '1980-01-25', 0, 'Hồ Chí Minh', 0, 'havanchuong@gmail.com', 'Toan'),
(2, 'Phạm Thành Công', '1980-05-01', 0, 'Hồ Chí Minh', 0, 'phamthanhcong@gmail.com', 'Toan'),
(3, 'Nguyễn Trung', '1985-05-16', 0, 'Hồ Chí Minh', 0, 'nguyentrung@gmail.com', 'Toan'),
(4, 'Trần Văn Đức', '1970-05-17', 0, 'Ninh Bình', 0, 'tranvanduc@gmail.com', 'Văn'),
(5, 'Đoàn Minh Tâm', '1989-05-22', 0, 'Phú Yên', 0, 'doanminhtam@gmail.com', 'Văn'),
(6, 'Ngô Thiện', '1875-09-26', 0, 'Ninh Thuận', 0, 'ngothien@gmail.com', 'Văn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocsinh`
--

CREATE TABLE `hocsinh` (
  `id_hs` int(11) NOT NULL,
  `tenhs` varchar(50) DEFAULT NULL,
  `id_lop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hocsinh`
--

INSERT INTO `hocsinh` (`id_hs`, `tenhs`, `id_lop`) VALUES
(1, 'Nguyễn Văn A', 6),
(2, 'Nguyễn Văn B', 7),
(3, 'Nguyễn Văn C', 7),
(4, 'Lê Thị Hồng', 6),
(5, 'Nguyễn Thị Tin', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mon`
--

CREATE TABLE `mon` (
  `id_mon` int(11) NOT NULL,
  `tenmon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mon`
--

INSERT INTO `mon` (`id_mon`, `tenmon`) VALUES
(1, 'Toán'),
(2, 'Văn'),
(3, 'Sinh'),
(4, 'Vật Lý'),
(5, 'Hóa'),
(6, 'Lịch Sử'),
(7, 'Địa Lý'),
(8, 'Ngoại Ngữ'),
(9, 'Giáo Dục Công Dân'),
(10, 'Giáo Dục QP-AN'),
(11, 'Thể Dục'),
(12, 'Công Nghệ'),
(13, 'Tin Học');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thu`
--

CREATE TABLE `thu` (
  `id_thu` int(11) NOT NULL,
  `tenthu` varchar(20) DEFAULT NULL,
  `id_tuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tiet`
--

CREATE TABLE `tiet` (
  `id_tiet` int(11) NOT NULL,
  `tentiet` varchar(20) DEFAULT NULL,
  `id_buoi` int(11) NOT NULL,
  `id_mon` int(11) NOT NULL,
  `id_giaovien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tuan`
--

CREATE TABLE `tuan` (
  `id_tuan` int(11) NOT NULL,
  `tentuan` varchar(20) NOT NULL,
  `idlop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `buoi`
--
ALTER TABLE `buoi`
  ADD PRIMARY KEY (`id_buoi`),
  ADD KEY `FK_BUOI_IDTHU` (`id_thu`);

--
-- Chỉ mục cho bảng `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id_lop`);

--
-- Chỉ mục cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`id_giaovien`);

--
-- Chỉ mục cho bảng `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD PRIMARY KEY (`id_hs`),
  ADD KEY `FK_HOCSINH_IDLOP` (`id_lop`);

--
-- Chỉ mục cho bảng `mon`
--
ALTER TABLE `mon`
  ADD PRIMARY KEY (`id_mon`);

--
-- Chỉ mục cho bảng `thu`
--
ALTER TABLE `thu`
  ADD PRIMARY KEY (`id_thu`),
  ADD KEY `FK_THU_IDTUAN` (`id_tuan`);

--
-- Chỉ mục cho bảng `tiet`
--
ALTER TABLE `tiet`
  ADD PRIMARY KEY (`id_tiet`,`id_buoi`,`id_mon`,`id_giaovien`),
  ADD KEY `FK_TIET_IDBUOI` (`id_buoi`),
  ADD KEY `FK_TIET_IDMON` (`id_mon`),
  ADD KEY `FK_TIET_IDGV` (`id_giaovien`);

--
-- Chỉ mục cho bảng `tuan`
--
ALTER TABLE `tuan`
  ADD PRIMARY KEY (`id_tuan`,`idlop`),
  ADD KEY `FK_TUAN_class` (`idlop`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `class`
--
ALTER TABLE `class`
  MODIFY `id_lop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `id_giaovien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `hocsinh`
--
ALTER TABLE `hocsinh`
  MODIFY `id_hs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `mon`
--
ALTER TABLE `mon`
  MODIFY `id_mon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `buoi`
--
ALTER TABLE `buoi`
  ADD CONSTRAINT `FK_BUOI_IDTHU` FOREIGN KEY (`id_thu`) REFERENCES `thu` (`id_thu`);

--
-- Các ràng buộc cho bảng `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD CONSTRAINT `FK_HOCSINH_IDLOP` FOREIGN KEY (`id_lop`) REFERENCES `class` (`id_lop`),
  ADD CONSTRAINT `fk_hocsinh_lop` FOREIGN KEY (`id_lop`) REFERENCES `class` (`id_lop`);

--
-- Các ràng buộc cho bảng `thu`
--
ALTER TABLE `thu`
  ADD CONSTRAINT `FK_THU_IDTUAN` FOREIGN KEY (`id_tuan`) REFERENCES `tuan` (`id_tuan`);

--
-- Các ràng buộc cho bảng `tiet`
--
ALTER TABLE `tiet`
  ADD CONSTRAINT `FK_TIET_IDBUOI` FOREIGN KEY (`id_buoi`) REFERENCES `buoi` (`id_buoi`),
  ADD CONSTRAINT `FK_TIET_IDGV` FOREIGN KEY (`id_giaovien`) REFERENCES `giaovien` (`id_giaovien`),
  ADD CONSTRAINT `FK_TIET_IDMON` FOREIGN KEY (`id_mon`) REFERENCES `mon` (`id_mon`);

--
-- Các ràng buộc cho bảng `tuan`
--
ALTER TABLE `tuan`
  ADD CONSTRAINT `FK_TUAN_class` FOREIGN KEY (`idlop`) REFERENCES `class` (`id_lop`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
