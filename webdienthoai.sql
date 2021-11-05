-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 11, 2017 at 09:18 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdienthoai`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `ID` int(11) NOT NULL,
  `MaKH` varchar(32) NOT NULL,
  `MaDongDT` varchar(10) NOT NULL,
  `NoiDung` text NOT NULL,
  `NgayBL` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`ID`, `MaKH`, `MaDongDT`, `NoiDung`, `NgayBL`) VALUES
(1, 'KH01', 'SA02', 'Mình sẽ chọn Nova 2i vì so ra thì mặt nào J7 pro cũng kém hơn, chụp ảnh của Nova 2i ăn đứt J7 Pro với camera kép ở trước và sau, có thể chụp xóa phông.Giá lại rẻ hơn 1 tr nữa', '2017-10-01 10:13:04'),
(2, 'KH01', 'IP01', 'Chương trình đổi iphone 8 plus khi nào kết thúc vậy', '2017-10-02 13:41:13'),
(3, 'KH02', 'SA01', 'Mua trả góp 0% thì hàng tháng trả bao nhiêu khi trừ hết km và kèm trợ giá sử dụng sim vietnam mobile, thân', '2017-09-30 08:08:28'),
(4, 'KH02', 'SA02', 'Mình muốn mua trả góp 0% thì mình phải trả trước bao nhiêu %? Và trả góp trong vòng bao nhiêu tháng?', '2017-09-30 12:47:19'),
(5, 'KH02', 'SA04', 'Mua s8 trả góp với fpt 588 giảm 5.500.000 thì 5.500.000 sẽ trừ vào số tiền trả trước hay trừ vào giá máy vậy', '2017-09-30 08:20:09'),
(6, 'KH03', 'SA04', 'Hôm trước em có đặt điện thoại s7 edge nhưng giờ em muốn đổi qua điện thoại s8 này được không!', '2017-09-28 10:31:07'),
(7, 'KH04', 'SA04', 'Mua sản phẩm trả thẳng không đăng ký FPT88 có được giảm 2.000.000 đ không nhỉ', '2017-09-12 07:05:36'),
(8, 'KH05', 'IP03', 'Hình thức trả góp trên áp dụng tất cả các fpt shop đúng k ạ.', '2017-09-18 09:09:15'),
(9, 'KH05', 'IP03', 'Ủa sao không có tặng kèm bộ F-Plus như lúc đầu quảng cáo đặt hàng thế admin...', '2017-09-17 08:42:12'),
(10, 'KH06', 'HT02', 'ủa sao htc u11 xanh thì thẻ nhớ tối đa là 2tb còn cái này sao có 256gb vậy là sao hả shop', '2017-09-21 14:19:37'),
(11, 'KH06', 'HT01', 'Chỉ tạm hết hàng thôi đúng k nay mai lại có hàng về đúng k?', '2017-09-21 14:30:22'),
(12, 'KH07', 'OP01', 'shop cho mình hỏi giờ minh muốn mua f3 plus trả trước 4 triệu. còn lại trả góp trong 6 tháng thì mỗi tháng mình phải trả 1.115.000đ phải ko ạ', '2017-09-24 07:27:48'),
(13, 'KH08', 'OP01', 'K chỉ chụp hình tốt mà chơi game cũng rất mượt', '2017-10-05 10:15:45'),
(14, 'KH09', 'IP01', 'Máy mới mua chưa Active mà lại mất hộp thì làm sao check imei mà không cần active máy ad nhỉ( Vì chưa active máy lên để kiểm tra chắc chắn máy còn mới nguyên ) Phiền ad chỉ giúp mình. Xin cảm ơn.', '2017-10-04 20:29:41'),
(15, 'KH09', 'IP01', '01239724282 Tư vấn giúp mình', '2017-10-04 20:35:24'),
(16, 'KH09', 'SA04', 'Máy xài rất êm ko lag shop phục vụ rất chu đáo', '2017-10-04 20:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `ID` int(11) NOT NULL,
  `MaDH` varchar(10) NOT NULL,
  `IMEI` varchar(15) DEFAULT NULL,
  `TenDongDT` varchar(50) NOT NULL,
  `MauSac` varchar(15) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL,
  `ThanhTien` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`ID`, `MaDH`, `IMEI`, `TenDongDT`, `MauSac`, `SoLuong`, `DonGia`, `ThanhTien`) VALUES
(1, 'DH01', '357257056975167', 'Samsung Galaxy J7 Pro', 'Đen', 1, 6990000, 6990000),
(2, 'DH02', '357278637425357', 'Samsung Galaxy S8 Plus', 'Khói', 3, 20490000, 61470000),
(3, 'DH03', '357763577532420', 'iPhone 8 Plus 256GB', 'Xám', 1, 28790000, 28790000),
(4, 'DH04', '357701008833352', 'iPhone 8 256GB', 'Đen', 1, 25790000, 25790000),
(5, 'DH05', '356757275735770', 'HTC U11 Red', 'Đỏ', 1, 16990000, 16990000),
(6, 'DH06', '356257742042470', 'Oppo F3 Plus', 'Vàng', 1, 10690000, 10690000),
(7, 'DH07', '357257076343273', 'iPhone 8 Plus 256GB', 'Trắng', 1, 28790000, 28790000),
(8, 'DH07', '357278637425355', 'Samsung Galaxy S8 Plus', 'Đen', 1, 20490000, 20490000);

--
-- Triggers `chitietdonhang`
--
DELIMITER $$
CREATE TRIGGER `capnhatthtien` BEFORE INSERT ON `chitietdonhang` FOR EACH ROW set NEW.ThanhTien=NEW.SoLuong*NEW.DonGia
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `capnhatthtien2` BEFORE UPDATE ON `chitietdonhang` FOR EACH ROW set NEW.ThanhTien=NEW.SoLuong*NEW.DonGia
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `capnhattttien` AFTER INSERT ON `chitietdonhang` FOR EACH ROW update donhang set tongthanhtien = tongthanhtien+NEW.ThanhTien where MaDH = NEW.MaDH
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `capnhattttien2` AFTER UPDATE ON `chitietdonhang` FOR EACH ROW update donhang set tongthanhtien = tongthanhtien-OLD.ThanhTien+NEW.ThanhTien where MaDH = NEW.MaDH
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `capnhattttien3` AFTER DELETE ON `chitietdonhang` FOR EACH ROW update donhang set tongthanhtien = tongthanhtien-OLD.ThanhTien where MaDH = OLD.MaDH
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `dienthoai`
--

CREATE TABLE `dienthoai` (
  `IMEI` varchar(15) NOT NULL,
  `MaDongDT` varchar(10) NOT NULL,
  `MauSac` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dienthoai`
--

INSERT INTO `dienthoai` (`IMEI`, `MaDongDT`, `MauSac`) VALUES
('355792420054554', 'VI02', 'Trắng'),
('356257742042470', 'OP01', 'Vàng'),
('356257742798678', 'OP01', 'Đen'),
('356752500544887', 'OP02', 'Đen'),
('356752543235458', 'OP03', 'Vàng'),
('356757211117575', 'HT01', 'Xanh'),
('356757275735770', 'HT02', 'Đỏ'),
('356757275737575', 'HT03', 'Xám'),
('356757892275004', 'NO02', 'Xám'),
('356757892275799', 'NO03', 'Xanh'),
('356757892873539', 'NO01', 'Trắng'),
('356770470724047', 'SO01', 'Xám'),
('356774275750001', 'SO02', 'Xám'),
('356774275752002', 'SO03', 'Xám'),
('356774275787752', 'SO03', 'Hồng'),
('357257056757727', 'SA01', 'Trắng'),
('357257056975004', 'SA02', 'Đen'),
('357257056975167', 'SA02', 'Đen'),
('357257056975168', 'SA02', 'Trắng'),
('357257056975724', 'SA01', 'Đen'),
('357257076343273', 'IP01', 'Trắng'),
('357262443212544', 'SA03', 'Đen'),
('357278637425355', 'SA04', 'Đen'),
('357278637425357', 'SA04', 'Khói'),
('357700733424624', 'IP02', 'Trắng'),
('357701007624767', 'IP03', 'Đen'),
('357701008833352', 'IP03', 'Đen'),
('357701557757727', 'IP03', 'Xám'),
('357763571111425', 'IP01', 'Xám'),
('357763577532420', 'IP01', 'Xám'),
('357763577757001', 'IP04', 'Trắng'),
('357763577757725', 'IP01', 'Đen'),
('357763577788888', 'NO04', 'Đen'),
('685421035653', 'HT01', 'dfgh');

-- --------------------------------------------------------

--
-- Table structure for table `dongdienthoai`
--

CREATE TABLE `dongdienthoai` (
  `MaDongDT` varchar(10) NOT NULL,
  `MaLoai` varchar(10) NOT NULL,
  `MaHangSX` varchar(10) NOT NULL,
  `MaNCC` varchar(10) NOT NULL,
  `TenDongDT` varchar(50) NOT NULL,
  `Hinh` varchar(255) NOT NULL,
  `DonGia` float NOT NULL,
  `GiaKM` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dongdienthoai`
--

INSERT INTO `dongdienthoai` (`MaDongDT`, `MaLoai`, `MaHangSX`, `MaNCC`, `TenDongDT`, `Hinh`, `DonGia`, `GiaKM`) VALUES
('HT01', 'TM', 'HTC', 'NCC03', 'HTC U Play', 'htcuplay.jpg', 8990000, 0),
('HT02', 'TM', 'HTC', 'NCC03', 'HTC U11 Red', 'htcu11red.jpg', 16990000, 0),
('HT03', 'TM', 'HTC', 'NCC03', 'HTC U11', 'htcu11.jpg', 16990000, 0),
('IP01', 'TM', 'APP', 'NCC01', 'iPhone 8 Plus 256GB', 'iphone8plus.png', 28790000, 0),
('IP02', 'TM', 'APP', 'NCC01', 'iPhone 5s 16GB', 'iphone5s.png', 5999000, 0),
('IP03', 'TM', 'APP', 'NCC02', 'iPhone 8 256GB', 'iphone8plus.png', 25790000, 0),
('IP04', 'TM', 'APP', 'NCC02', 'iPhone 6s Plus 32GB', 'ip_6s_32.png', 14490000, 0),
('IP05', 'TM', 'APP', 'NCC03', 'iPhone 8 Plus 64GB', 'iphone8plus.png', 23990000, 0),
('NO01', 'TM', 'NOK', 'NCC02', 'Nokia 5', 'nokia5.png', 5259000, 4259000),
('NO02', 'TM', 'NOK', 'NCC02', 'Nokia 6', 'nokia6.png', 5590000, 0),
('NO03', 'TM', 'NOK', 'NCC02', 'Nokia 8', 'nokia8.png', 12990000, 0),
('NO04', 'BP', 'NOK', 'NCC02', 'Nokia N150', 'n150.png', 649000, 0),
('OP01', 'TM', 'OPP', 'NCC01', 'Oppo F3 Plus', 'oppof3+.jpg', 10690000, 0),
('OP02', 'TM', 'OPP', 'NCC01', 'Oppo F1s 2017 (64GB)', 'oppof1s2017.jpg', 5990000, 0),
('OP03', 'TM', 'OPP', 'NCC01', 'Oppo F1 Plus', 'oppof1+.jpg', 6490000, 0),
('OP04', 'TM', 'OPP', 'NCC01', 'Oppo F3 Lite (A57)', 'oppof3lite.jpg', 5490000, 0),
('SA01', 'TM', 'SAM', 'NCC02', 'Samsung Galaxy S8', 'samsunggalaxys8.png', 18490000, 0),
('SA02', 'TM', 'SAM', 'NCC02', 'Samsung Galaxy J7 Pro', 'samgalaJ7-pro.png', 6990000, 0),
('SA03', 'TM', 'SAM', 'NCC01', 'Samsung Galaxy Note 8', 'samnote8.png', 22490000, 0),
('SA04', 'TM', 'SAM', 'NCC01', 'Samsung Galaxy S8 Plus', 'samsunggalaxys8.png', 20490000, 0),
('SA05', 'TM', 'SAM', 'NCC03', 'Samsung Galaxy A5 (2017)', 'dt_1.png', 7990000, 0),
('SO01', 'TM', 'SON', 'NCC01', 'Sony Xperia XZ1', 'sonyxperiaxz1.png', 15990000, 0),
('SO02', 'TM', 'SON', 'NCC03', 'Sony Xperia XA1 Ultra', 'sonyxperiaxa1ultra.png', 8490000, 0),
('SO03', 'TM', 'SON', 'NCC01', 'Sony Xperia XZ Premium', 'sonyxperiaxzpremium.png', 17990000, 0),
('VI02', 'TM', 'VIV', 'NCC03', 'Vivo V5s', 'vivov5s.png', 6690000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `MaDH` varchar(10) NOT NULL,
  `MaNV` varchar(10) DEFAULT NULL,
  `MaKH` varchar(32) NOT NULL,
  `TenKH` varchar(50) NOT NULL,
  `SDT` varchar(11) NOT NULL,
  `NgayLapDH` date NOT NULL,
  `NgayHenNhan` date DEFAULT NULL,
  `TongThanhTien` float NOT NULL DEFAULT '0',
  `TrangThai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`MaDH`, `MaNV`, `MaKH`, `TenKH`, `SDT`, `NgayLapDH`, `NgayHenNhan`, `TongThanhTien`, `TrangThai`) VALUES
('DH01', 'NV03', 'KH02', 'Nguyễn Văn Dũng', '01237624089', '2017-10-01', '2017-10-03', 6994000, 'Đã duyệt'),
('DH02', 'NV03', 'KH03', 'Võ Thị Bé', '01654763458', '2017-10-01', '2017-10-02', 61470100, 'Đã duyệt'),
('DH03', 'NV04', 'KH04', 'Nguyễn Như Mai', '01215873125', '2017-10-01', '2017-10-02', 28790000, 'Đã duyệt'),
('DH04', 'NV04', 'KH05', 'Lê Thị Mùi', '0986324027', '2017-10-02', '2017-10-03', 25790000, 'Đã duyệt'),
('DH05', 'NV04', 'KH06', 'Nguyễn Văn Nam', '0904934587', '2017-10-02', '2017-10-03', 16990000, 'Chưa duyệt'),
('DH06', 'NV05', 'KH08', 'Nguyễn Thị Ngọc Mai', '01652734528', '2017-10-03', '2017-10-03', 10690000, 'Chưa duyệt'),
('DH07', 'NV06', 'KH09', 'Nguyễn Văn Chánh', '01237624089', '2017-10-03', '2017-10-04', 49280000, 'Chưa duyệt');

-- --------------------------------------------------------

--
-- Table structure for table `hangsanxuat`
--

CREATE TABLE `hangsanxuat` (
  `MaHangSX` varchar(10) NOT NULL,
  `TenHangSX` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hangsanxuat`
--

INSERT INTO `hangsanxuat` (`MaHangSX`, `TenHangSX`) VALUES
('APP', 'Apple'),
('ASU', 'Asus'),
('HTC', 'HTC'),
('NOK', 'Nokia'),
('OPP', 'Oppo'),
('SAM', 'Samsung'),
('SON', 'Sony'),
('VIV', 'Vivo');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` varchar(32) NOT NULL,
  `TenKH` varchar(50) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `MatKhau` varchar(32) NOT NULL,
  `NgaySinh` date DEFAULT NULL,
  `DiaChi` varchar(70) DEFAULT NULL,
  `SDT` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `Email`, `MatKhau`, `NgaySinh`, `DiaChi`, `SDT`) VALUES
('KH01', 'Nguyễn Văn Minh', 'minh.nguyenvan@gmail.com', 'b857eed5c9405c1f2b98048aae506792', '1992-01-03', '92 Lê Thánh Tôn, P4, Quận 1, TP.HCM', '01236564465'),
('KH02', 'Nguyễn Văn Dũng', 'dung.nguyenvan@gmail.com', '8ddcff3a80f4189ca1c9d4d902c3c909', '1986-05-11', '60A Trường Sơn, P2, Q.Tân Bình, TP.HCM', '01237624089'),
('KH03', 'Võ Thị Bé', 'be.vothi@gmail.com', '3dbe00a167653a1aaee01d93e77e730e', '1988-07-10', '34 Lê Duẩn, P.Bến Nghé, Quận 1, TPHCM', '01654763458'),
('KH04', 'Nguyễn Như Mai', 'mai.nguyennhu@gmail.com', 'd86344a7eae5ebfa67f5b76517cf7a2d', '1990-04-11', '11 Nguyễn Kiệm, P7, Q.Gò Vấp, TP.HCM', '01215873125'),
('KH05', 'Lê Thị Mùi', 'mui.lethi@gmail.com', '810247419084c82d03809fc886fedaad', '1991-08-03', '18 Phan Văn Trị, P10, Q.Gò Vấp, TP.HCM', '0986324027'),
('KH06', 'Nguyễn Văn Nam', 'nam.nguyenvan@gmail.com', 'dd4b21e9ef71e1291183a46b913ae6f2', '1989-05-08', '177 Nguyễn Thượng Hiền, P4,  Quận 3, TP.HCM', '0904934587'),
('KH07', 'Trần Đăng Dũng', 'dung.trandang@gmail.com', '7c497868c9e6d3e4cf2e87396372cd3b', '1992-11-11', 'B3 Tô Ký, P.Tân Chánh Hiệp, Quận 12, TP.HCM', '01238989564'),
('KH08', 'Nguyễn Thị Ngọc Mai', 'mai.nguyenthingoc@gmail.com', '94b8cea57c49a3007225a0c70c475450', '1990-07-12', '1K4C Bửu Long, P15, Quận 10, TP.HCM', '01652734528'),
('KH09', 'Nguyễn Văn Chánh', 'chanh.nguyenvan@gmail.com', '331b184847bb1808123473d76c45540b', '1989-10-09', '248 Lý Chính Thắng, P9, Quận 3, TP.HCM', '01237624089');

-- --------------------------------------------------------

--
-- Table structure for table `loaidienthoai`
--

CREATE TABLE `loaidienthoai` (
  `MaLoai` varchar(10) NOT NULL,
  `TenLoai` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaidienthoai`
--

INSERT INTO `loaidienthoai` (`MaLoai`, `TenLoai`) VALUES
('BP', 'Điện thoại bàn phím'),
('TM', 'Điện thoại thông minh');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNCC` varchar(10) NOT NULL,
  `TenNCC` varchar(50) NOT NULL,
  `SDT` varchar(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Fax` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNCC`, `TenNCC`, `SDT`, `Email`, `Fax`) VALUES
('NCC01', 'Công ty TNHH Thế Giới Di Động', '35100100', 'lienhe@thegioididong.com', '04.89276180'),
('NCC02', 'Công ty TNHH Thế Giới Di Động Mai Nguyên', '39100332', 'mainguyen117@gmail.com', '04.89276190'),
('NCC03', 'Công ty TNHH Bao La', '35119060', 'lienhe@baola.com', '04.39276110');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` varchar(10) NOT NULL,
  `TenNV` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `MatKhau` varchar(32) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` tinyint(4) NOT NULL,
  `QuyenTruyCap` varchar(30) NOT NULL,
  `DiaChi` varchar(70) NOT NULL,
  `SDT` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `UserName`, `MatKhau`, `NgaySinh`, `GioiTinh`, `QuyenTruyCap`, `DiaChi`, `SDT`) VALUES
('NV01', 'Nguyễn Văn Thành', 'SuperAdmin', '1bbd886460827015e5d605ed44252251', '1989-12-10', 1, 'SuperAdmin', '808 Quang Trung, P.8, Q.Gò Vấp, TP.HCM', '01239532444'),
('NV02', 'Nguyễn Văn Tuấn', 'Admin', 'bae5e3208a3c700e3db642b6631e95b9', '1992-04-02', 1, 'Admin', '187 Điện Biên Phủ, P.Đa Kao, Q1, TP.HCM', '01257352007'),
('NV03', 'Nguyễn Ngọc Mai', 'mainguyen', 'd27d320c27c3033b7883347d8beca317', '1994-08-08', 0, 'Member', '65F Hồ Xuân Hương, Q3, TP.HCM', '01655901356'),
('NV04', 'Trần Thị Thủy', 'thuytran', 'b857eed5c9405c1f2b98048aae506792', '1993-02-09', 0, 'Member', '16 Lê Quý Đôn, Q3, TP.HCM', '01218677687'),
('NV05', 'Nguyễn Lan Anh', 'anhnguyen', 'f638f4354ff089323d1a5f78fd8f63ca', '1990-04-11', 0, 'Member', '64 Nguyễn Thời Trung, P6, Quận 5, TP.HCM', '0909454545'),
('NV06', 'Lê Thị Hoa', 'hoale', '7c497868c9e6d3e4cf2e87396372cd3b', '1993-07-09', 0, 'Member', 'B413 Tô Ký, P.Đông Hưng Thuận, Q12, TP.HCM', '0982764575');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaDongDT` (`MaDongDT`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `IMEI_2` (`IMEI`),
  ADD KEY `MaDH` (`MaDH`),
  ADD KEY `IMEI` (`IMEI`);

--
-- Indexes for table `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD PRIMARY KEY (`IMEI`),
  ADD UNIQUE KEY `IMEI` (`IMEI`),
  ADD KEY `MaDongDT` (`MaDongDT`);

--
-- Indexes for table `dongdienthoai`
--
ALTER TABLE `dongdienthoai`
  ADD PRIMARY KEY (`MaDongDT`),
  ADD UNIQUE KEY `MaDongDT` (`MaDongDT`),
  ADD KEY `MaLoai` (`MaLoai`),
  ADD KEY `MaHangSX` (`MaHangSX`),
  ADD KEY `MaNCC` (`MaNCC`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MaDH`),
  ADD UNIQUE KEY `MaDH` (`MaDH`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  ADD PRIMARY KEY (`MaHangSX`),
  ADD UNIQUE KEY `MaHangSX` (`MaHangSX`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`),
  ADD UNIQUE KEY `MaKH` (`MaKH`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `loaidienthoai`
--
ALTER TABLE `loaidienthoai`
  ADD PRIMARY KEY (`MaLoai`),
  ADD UNIQUE KEY `MaLoai` (`MaLoai`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNCC`),
  ADD UNIQUE KEY `MaNCC` (`MaNCC`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`),
  ADD UNIQUE KEY `MaNV` (`MaNV`),
  ADD UNIQUE KEY `UserName` (`UserName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`MaDongDT`) REFERENCES `dongdienthoai` (`MaDongDT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`MaDH`) REFERENCES `donhang` (`MaDH`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`IMEI`) REFERENCES `dienthoai` (`IMEI`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD CONSTRAINT `dienthoai_ibfk_1` FOREIGN KEY (`MaDongDT`) REFERENCES `dongdienthoai` (`MaDongDT`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dongdienthoai`
--
ALTER TABLE `dongdienthoai`
  ADD CONSTRAINT `dongdienthoai_ibfk_1` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dongdienthoai_ibfk_2` FOREIGN KEY (`MaLoai`) REFERENCES `loaidienthoai` (`MaLoai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dongdienthoai_ibfk_3` FOREIGN KEY (`MaHangSX`) REFERENCES `hangsanxuat` (`MaHangSX`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
