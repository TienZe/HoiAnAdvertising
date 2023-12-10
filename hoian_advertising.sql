-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
<<<<<<< HEAD
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2023 at 04:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4
=======
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 05, 2023 lúc 08:21 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4
>>>>>>> other/main

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
<<<<<<< HEAD
-- Database: `hoian_advertising`
=======
-- Cơ sở dữ liệu: `hoian_advertising`
>>>>>>> other/main
--

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Table structure for table `accommodations`
--

CREATE TABLE `accommodations` (
  `ID` int(11) NOT NULL,
=======
-- Cấu trúc bảng cho bảng `accommodations`
--

CREATE TABLE `accommodations` (
  `ID` varchar(11) NOT NULL,
>>>>>>> other/main
  `Name` varchar(255) DEFAULT NULL,
  `Contact` varchar(10) DEFAULT NULL,
  `Owner` varchar(255) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Website` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
<<<<<<< HEAD
-- Dumping data for table `accommodations`
--

INSERT INTO `accommodations` (`ID`, `Name`, `Contact`, `Owner`, `Address`, `Website`) VALUES
(1, 'Phượng Vĩ Homestay', '090 576 26', 'Tracy Nguyen', '39 Nguyễn Trường Tộ, Sơn Phong, Tp Hội An, Quảng Nam', 'PhuongViHomestay.com'),
(2, 'Coconut Garden Homestay', '0235 3939 ', 'Henry Le', '122 Nguyễn Khoa, Cẩm Nam, Hội An, Quảng Nam', 'CoconutGardenHomestay.com'),
(3, 'Horizon Homestay Hoi An', '0235 3920 ', 'Lily Le', '23 Xuân Diệu, Tân An, Hội An, Quảng Nam', 'HorizonHomestayHoiAn.com'),
(4, 'An Hoi Town Homestay', '0235 3910 ', 'Andrew Nguyen', '109 Nguyễn Phúc Tần, Phường Minh An, Hội An, Quảng Nam', 'AnHoiTownHomestay.com'),
(5, 'Mama’s House Homestay', '091 418 80', 'Maria Tran', '06 Nguyễn Đức Cảnh, Tân An, Hội An, Quảng Nam', 'MamasHouseHomestay.com'),
(6, 'Nhà Nghỉ Bình Tân', '090 522 62', 'Ngô Thị Bình', 'Tổ 7, Khối Phố Sơn Phô 2, Phường Cẩm Châu, Tp Hội An, Quảng Nam', 'nha-nghi-binh-tan-hoi-an.com'),
(7, 'Tigon Homestay', '0235 39165', 'Nguyễn Thị Tigon', '34 Lê Quý Đôn, phường Cẩm Phô, Tp Hội An, Quảng Nam', 'tigon-homestay-hoi-an.com'),
(8, 'Hoi An Odyssey Hotel', '0235 3911 ', 'John Smith', 'Trần Trung Tri, Cẩm Nam, Tp. Hội An, Quảng Nam', 'HoiAnOdysseyHotel.com'),
(9, 'Hội An Estuary Villa', '0235 3863 ', 'Jane Doe', 'Tân Thịnh, Cẩm An, Tp Hội An, Quảng Nam', 'EstuaryVillaHoiAn.com'),
(10, 'Ivy Villa', '090 501 50', 'Michael Nguyen', '168 Nguyễn Duy Hiệu, Cẩm Châu, Hội An, Quảng Nam', 'IvyVillaHoiAn.com'),
(11, 'Hoi An River Town Hotel', '0235 3924 ', 'Emily Le', '26 Thoại Ngọc Hầu, Phường Cẩm Phổ, Hội An, Quảng Nam', 'RiverTownHotelHoiAn.com'),
(12, 'Little Town Villa', '090 540 98', 'William Tran', '239 Nguyễn Duy Hiệu, Cẩm Châu, Hội An, Quảng Nam', 'LittleTownVilla.com'),
(13, 'Khách sạn Đông Dương', '0235 3936 ', 'Daniel Tran', '87 Cửa Đại, Cẩm Sơn, Hội An, Quảng Nam', 'DongDuongHotel.com'),
(14, 'DKs Hotel', '0235 3914 ', 'Catherine Kim', '308 Nguyễn Duy Hiệu, Cẩm Châu, Tp Hội An Quảng Nam', 'DKsHotel.com'),
(15, 'Khách sạn Huy Hoàng II', '0235 38617', 'Henry Nguyen', '712 Hai Bà Trương, Tp Hội An, Quảng Nam', 'HuyHoangIIHotel.com'),
(16, 'Khách sạn Hội An', '0235 38614', 'Linda Pham', '10 Trần Hưng Đạo, Tp Hội An, Quảng Nam', 'HoiAnHotel.com'),
(17, 'Khách sạn Phương Nam', '0235 39234', 'Richard Nguyen', '224 Lý Thái Tổ, Tp Hội An, Quảng Nam', 'PhuongNamHotel.com'),
(18, 'Hoi An Holiday Villa Hotel', '0235 3924 ', 'Michelle Le', '414 Cửa Đại, Cẩm Châu, Hội An, Quảng Nam', 'HoiAnHolidayVilla.com'),
(19, 'Khách sạn Phú Thịnh II', '0235 39239', 'William Nguyen', '448 Cửa Đại, Tp Hội An, Quảng Nam', 'PhuThinhIIHotel.com'),
(20, 'Khách sạn Hướng Dương', '0235 39232', 'Jessica Le', '397 Cửa Đại, Tp Hội An, Quảng Nam', 'HuongDuongHotel.com'),
(21, 'Windbell Villa', '0235 3930 ', 'Michael Johnson', '127 Nguyễn Tri Phương, Cẩm Nam, Hội An, Quảng Nam', 'WindbellVilla.com'),
(22, 'Khách sạn An Hội', '0235 39118', 'Jennifer Nguyen', '69 Nguyễn Phúc Chu, Tp Hội An, Quảng Nam', 'AnHoiHotel.com'),
(23, 'Khách sạn Thanh Bình III', '0235 39167', 'Sophia Brown', '98 Bà Triệu, Tp Hội An, Quảng Nam', 'ThanhBinhIIIHotel.com'),
(24, 'Khách sạn Victoria', '0235 39270', 'Jason Nguyen', 'Biển Cửa Đại, Tp Hội An, Quảng Nam', 'VictoriaHotel.com'),
(25, 'Khách sạn Minh Quang', '0235 39162', 'Lily Le', 'Hai Bà Trưng, Tp Hội An, Quảng Nam', 'MinhQuangHotel.com'),
(26, 'Khách sạn Thái Bình Dương', '0235 39237', 'David Tran', '321 Cửa Đại, Tp Hội An, Quảng Nam', 'ThaiBinhDuongHotel.com'),
(27, 'Khách sạn Thuỳ Dương III', '0235 39165', 'John Smith', '92 - 94 Bà Triệu, Tp Hội An, Quảng Nam', 'ThuyDuongIIIHotel.com'),
(28, 'Khách sạn Nhật Huy Hoàng', '0235 38616', 'Daniel Nguyen', '58 Bà Triệu, Tp Hội An, Quảng Nam', 'NhatHuyHoangHotel.com'),
(29, 'Khách sạn Nhi Nhi', '0235 39167', 'Michelle Tran', '60 Hùng Vương, Tp Hội An, Quảng Nam', 'NhiNhiHotel.com'),
(30, 'Khách sạn Thanh Vân II', '0235 39349', 'William Nguyen', '467 Hai Bà Trương, Tp Hội An, Quảng Nam', 'ThanhVanIIHotel.com'),
(31, 'Thanh Binh Riverside Hotel', '0235 3922 ', 'Catherine Kim', 'Nguyễn Du, Phường Minh An, Hội An, Quảng Nam', 'ThanhBinhRiversideHotel.com'),
(32, 'Villa Orchid Garden Riverside', '0235 3666 ', 'Michael Johnson', '32 Huyền Trân Công Chúa, Cẩm Châu, Hội An, Quảng Nam', 'VillaOrchidGardenRiverside.com'),
(33, 'Khách sạn Hội Phố', '0235 39163', 'Emily Le', '4 Nhị Trưng, Tp Hội An, Quảng Nam', 'HoiPhoHotel.com'),
(34, 'Khách sạn Đại Long', '0235 39162', 'Jennifer Nguyen', '680 Hai Bà Trưng, Tp Hội An, Quảng Nam', 'DaiLongHotel.com'),
(35, 'Long Life Riverside Hotel', '0235 3911 ', 'Daniel Tran', '61 Nguyễn Phúc Chu, Tp. Hội An, Quảng Nam', 'LongLifeRiversideHotel.com'),
(36, 'Khách sạn Hoa Sen', '0235 39233', 'Hoa Sen Company', '330 Cửa Đại, Tp Hội An, Quảng Nam', 'HoaSenHotel.com'),
(37, 'Mr Tho Garden Villas', '0235 3933 ', 'Mr Tho Company', 'Cẩm Thanh, Hội An, Quảng Nam', 'MrThoGardenVillas.com'),
(38, 'Hoi An TNT Villa', '0235 3666 ', 'TNT Hospitality', '100 Trần Hưng Đạo, Phường Cẩm Phổ, Hội An, Quảng Nam', 'HoiAnTNTVilla.com'),
(39, 'Hoi An Coco River Resort & Spa', '0235 3930 ', 'Coco River Hospitality', '999 Trần Nhân Tông, Tp Hội An, Quảng Nam', 'CocoRiverResortHoiAn.com'),
(40, 'Khách sạn Vĩnh Hưng III', '0235 39172', 'Vĩnh Hưng Company', '96 Bà Triệu, Tp Hội An, Quảng Nam', 'VinhHungIIIHotel.com'),
(41, 'Khách sạn Công đoàn Hội An', '0235 38623', 'Công đoàn Hội An', '80 Trần Hưng Đạo, Tp Hội An, Quảng Nam', 'CongDoanHoiAnHotel.com'),
(42, 'Hoi An Garden Palace & Spa', '0235 6255 ', 'Garden Palace Hospitality', '311 Cửa Đại, Cẩm Châu, Hội An, Quảng Nam', 'HoiAnGardenPalace.com'),
(43, 'Hoi An Historic Hotel', '0235 3861 ', 'Historic Hotel Company', '10 Trần Hưng Đạo, Sơn Phong, Hội An, Quảng Nam', 'HoiAnHistoricHotel.com'),
(44, 'Khách sạn Hải Âu', '0235 39145', 'Hải Âu Company', '576 Cửa Đại, Tp Hội An, Quảng Nam', 'HaiAuHotel.com'),
(45, 'Khách sạn An Phú', '0235 39143', 'An Phú Company', '288 Ng Duy Hiệu, Tp Hội An, Quảng Nam', 'AnPhuHotel.com'),
(46, 'Huy Hoang River Hotel', '0235 38614', 'Huy Hoang Hospitality', '73 Phan Bội Châu, Tp Hội An, Quảng Nam', 'HuyHoangRiverHotel.com'),
(47, 'Hidden Beach Bungalow Sea View', '093 577 89', 'Hidden Beach Hospitality', 'Cẩm An, Hội An, Quảng Nam', 'HiddenBeachBungalow.com'),
(48, 'Khách sạn Ven Sông', '0235 38648', 'Ven Sông Company', '175 Cửa Đại, Tp Hội An, Quảng Nam', 'VenSongHotel.com'),
(49, 'Khách sạn Golf  Hội An', '0235 38611', 'Golf Hội An Company', '187 Lý Thường Kiệt, Tp Hội An, Quảng Nam', 'GolfHoiAnHotel.com'),
(50, 'Homie Hoi An', '090 578 22', 'Homie Company', 'Hẻm 10 Nguyễn Hoàng, An Hội, Tp. Hội An, Quảng Nam', 'HomieHoiAn.com'),
(51, 'Ally Beach Boutique Hotel Hoian', '0235 3959 ', 'Ally Beach Company', '09 Lạc Long Quân, Cửa Đại, Thành phố Hội An, Quảng Nam', 'AllyBeachHotelHoiAn.com'),
(52, 'Paddy\'s Hostel & Sports Bar', '0235 3939 ', 'Paddy\'s Company', '97 Cửa Đại, Cẩm Sơn, Hội An, Quảng Nam', 'PaddysHostelHoiAn.com'),
(53, 'Khách sạn Cát Vàng', '0235 39275', 'Cát Vàng Company', 'Biển Cửa Đại, Tp Hội An, Quảng Nam', 'CatVangHotel.com'),
(54, 'Hijal House Hoi An', '0235 3666 ', 'Hijal House Company', '11 Xuân Diệu, Tân An, Tp. Hội An, Quảng Nam', 'HijalHouseHoiAn.com'),
(55, 'Water Coconut Boutique Villas', '0235 3933 ', 'Water Coconut Company', 'Cẩm Thanh, Hội An, Quảng Nam', 'WaterCoconutVillas.com'),
(56, 'Khách sạn Hợp Yến', '0235 38631', 'Hợp Yến Company', '694 Hai Bà Trưng, Tp Hội An, Quảng Nam', 'HopYenHotel.com'),
(57, 'Khách sạn Royal Riverside Hội An', '0235 3666 ', 'Royal Riverside Company', '40 Nguyễn Du, Phường Cẩm Phổ, Hội An, Quảng Nam', 'RoyalRiversideHotelHoiAn.com'),
(58, 'La Residencia Boutique Hotel & Spa', '0235 3929 ', 'La Residencia Company', '35 Đào Duy Từ, Phường Minh An, Hội An, Quảng Nam', 'LaResidenciaHoiAn.com'),
(59, 'Khách sạn Thanh Xuân II', '0235 39116', 'Thanh Xuân II Company', '61 Nguyễn Phúc Chu, Tp Hội An, Quảng Nam', 'ThanhXuanIIHotel.com'),
(60, 'Khách sạn Thiên Nga', '0235 39163', 'Thiên Nga Company', '52 Bà Triệu, Tp Hội An, Quảng Nam', 'ThienNgaHotel.com'),
(61, 'Khách sạn Vạn Lợi', '0235 39362', 'Vạn Lợi Company', 'Thôn Xuyên Trung, Cẩm Châu, Tp Hội An, Quảng Nam', 'VanLoiHotel.com'),
(62, 'Khách sạn Nhị Trưng', '0235 38634', 'Nhị Trưng Company', '700 Hai Bà Trưng, Tp Hội An, Quảng Nam', 'NhiTrungHotel.com'),
(63, 'Khách sạn Phố Hội 1', '0235 3861 ', 'Phố Hội Company', '7/2 Trần Phú, Cẩm Châu, Hội An, Quảng Nam', 'PhoHoiHotel1.com'),
(64, 'Khách sạn Nguyên Phương', '0235 39165', 'Nguyên Phương Company', '109 Bà Triệu, Tp Hội An, Quảng Nam', 'NguyenPhuongHotel.com'),
(65, 'Khách sạn Dấu Ấn', '0235 39239', 'Dấu Ấn Company', '276 Cửa Đại, Tp Hội An, Quảng Nam', 'DauAnHotel.com'),
(66, 'La Uy Villa Hoi An', '0773 430 3', 'Maria Lê Thanh Tông', 'Lê Thánh Tông, Cẩm Sơn, Hội An, Quảng Nam', 'la-uy-villa-hoi-an.com'),
(67, 'Khách sạn Cửa Đại', '0235 38622', 'Maria Nguyễn Cửa Đại', '18 Cửa Đại, Tp Hội An, Quảng Nam', 'khach-san-cua-dai-hoi-an.com'),
(68, 'Khách sạn Thiện Trung', '0235 38617', 'Nguyễn Thiện Trung', '129 Trần Hưng Đạo, Tp Hội An, Quảng Nam', 'thien-trung-hotel-hoi-an.com'),
(69, 'Hoian Central Boutique Hotel & Spa', '0235 3959 ', 'Maria Hùng Vương', '91 Hùng Vương, Phường Cẩm Phổ, Hội An, Quảng Nam', 'hoian-central-hotel.com'),
(70, 'Khách sạn Thiện Thanh', '0235 39165', 'Nguyễn Thiện Thanh', '16 Bà Triệu, Tp Hội An, Quảng Nam', 'thien-thanh-hotel-hoi-an.com'),
(71, 'Khách sạn Hải Yến', '0235 38619', 'Maria Hải Yến', '569 Cửa Đại, Tp Hội An, Quảng Nam', 'hai-yen-hotel-hoi-an.com'),
(72, 'Khách sạn An Huy', '0235 38621', 'Maria An Huy', '30 Phan Bội Châu, Tp Hội An, Quảng Nam', 'an-huy-hotel-hoi-an.com'),
(73, 'Khách sạn Phú Thịnh I', '0235 38612', 'Maria Phú Thịnh', '144 Trần Phú, Tp Hội An, Quảng Nam', 'phu-thinh-hotel-hoi-an.com'),
(74, 'Hotel Royal Hoi An', '0235 3950 ', 'Maria Đào Duy Từ', '39 Đào Duy Từ, Phường Cẩm Phổ, Hội An, Quảng Nam', 'hotel-royal-hoi-an.com'),
(75, 'Khách sạn Vĩnh Hưng II', '0235 39103', 'Maria Trần Phú', '143 Trần Phú , Tp Hội An, Quảng Nam', 'vinh-hung-2-hotel-hoi-an.com'),
(76, 'Vaia Hotel', '0235 3916 ', 'Maria Cửa Đại', '489 Cửa Đại, Cẩm Châu, Hội An, Quảng Nam', 'vaia-hotel-hoi-an.com'),
(77, 'Riverside Impression', '091 349 91', 'Maria Nguyễn Tri Phương', '134 Nguyễn Tri Phương, Cẩm Nam, Hội An, Quảng Nam', 'riverside-impression-hoi-an.com'),
(78, 'Tan Thanh Garden', '0235 3861 ', 'Maria Cẩm An', 'Cẩm An, Hội An, Quảng Nam', 'tan-thanh-garden-hoi-an.com'),
(79, 'Hoi An Corn Riverside Villa', '0235 3933 ', 'Maria Lương Như Bích', 'Lương Như Bích, Cẩm Nam, Hội An, Quảng Nam', 'corn-riverside-villa-hoi-an.com'),
(80, 'Khách sạn Hoạ My', '0235 39165', 'Maria Lý Thường Kiệt', '201 Lý Thường Kiệt, Tp Hội An, Quảng Nam', 'hoa-my-hotel-hoi-an.com'),
(81, 'Khách sạn Phương Đông', '0235 39164', 'Maria Bà Triệu', '42 Bà Triệu, Tp Hội An, Quảng Nam', 'phuong-dong-hotel-hoi-an.com'),
(82, 'Nhà Nghỉ Bình Tân', '090 522 62', 'Ngô Thị Bình', 'Tổ 7, Khối Phố Sơn Phô 2, Phường Cẩm Châu, Tp Hội An, Quảng Nam', 'nha-nghi-binh-tan-hoi-an.com'),
(83, 'Nhà Nghỉ Cự Hơn', '0235 3923 ', 'Ngô Thị Cự Hơn', '173 Cửa Đại, Cẩm Sơn, Hội An, Quảng Nam', 'cuhon-nha-nghi-hoi-an.com'),
(84, 'Nhà Nghỉ Thiên Tân', '0235 3863 ', 'Maria Nguyen', '484 Hai Bà Trưng, Cẩm Sơn, Hội An, Quảng Nam', 'ThienTanGuesthouse.com'),
(85, 'Nhà nghỉ Thời Đại', '0235 3916 ', 'Thời Đại Guesthouse', '616 Hai Bà Trưng, Phường Cẩm Phổ, Hội An, Quảng Nam', 'ThoiDaiGuesthouse.com'),
(86, 'Nhà nghỉ Ô Lá', '0763 242 1', 'Ô Lá Guesthouse', '12, Trần Bình Trọng, Cẩm Châu, Hội An, Quảng Nam', 'OlaGuesthouse.com'),
(87, 'Tigon Homestay', '0235 39165', 'Nguyễn Thị Tigon', '34 Lê Quý Đôn, phường Cẩm Phô, Tp Hội An, Quảng Nam', 'tigon-homestay-hoi-an.com'),
(88, 'La Siesta Hoi An Resort & Spa', '0235 3915 ', 'David Nguyen', '132 Hùng Vương, Thanh Hà, Hội An, Quảng Nam', 'LaSiestaHoiAnResort.com'),
(89, 'Osaka Riverside Villa & Spa', '0235 3963 ', 'Sophia Tran', 'Cẩm Hà, Tp Hội An, Quảng Nam', 'OsakaRiversideVilla.com'),
(90, 'Allegro Hoi An . A Little Luxury Hotel & Spa', '0235 3529 ', 'Jason Nguyen', '86 Trần Hưng Đạo, Phường Minh An, Hội An, Quảng Nam', 'AllegroHoiAnLuxuryHotel.com'),
(91, 'Sunrise Premium Resort Hoi An', '0235 3937 ', 'Sophie Brown', 'Âu Cơ, Cửa Đại, Hội An, Quảng Nam', 'SunrisePremiumResortHoiAn.com'),
(92, 'Boutique Hoi An Resort', '0235 39391', 'Andrew Smith', 'Đường Lạc Long Quân, Tp Hội An, Quảng Nam', 'BoutiqueHoiAnResort.com'),
(93, 'River - Beach Resort', '0235 39278', 'Emily Le', '05 Cửa Đại, Tp Hội An, Quảng Nam', 'RiverBeachResort.com'),
(94, 'Tropical Beach Hoi An Resort', '0235 3927 ', 'Jessica Le', 'Lạc Long Quân, Cẩm An, Thành phố Hội An, Quảng Nam', 'TropicalBeachHoiAnResort.com'),
(95, 'Little Hoi An Boutique Hotel & Spa', '0235 3869 ', 'Andrew Smith', '02 Thoại Ngọc Hầu, An Hội, Tp. Hội An, Quảng Nam', 'LittleHoiAnBoutiqueHotel.com'),
(96, 'Vinpearl Resort & Spa Hội An', '0235 3753 ', 'Vinpearl Group', 'Block 06, Phước Hải, Cửa Đại, Tp. Hội An, Quảng Nam', 'VinpearlResortHoiAn.com'),
(97, 'Life Resort', '0235 39145', 'Life Hospitality', '01 Phạm Hồng Thái, Tp Hội An, Quảng Nam', 'LifeResortHoiAn.com'),
(98, 'An Bang Stilt House Villa', '099 359 30', 'An Bang Hospitality', 'Tổ 4, Khối Tân Thành, Hội An, Quảng Nam', 'AnBangStiltHouseVilla.com'),
(99, 'The Litte Hoi An Resort', '0235 3962 ', 'Little Hoi An Hospitality', 'Nguyễn Phúc Chu (nối dài), Phường Minh An, Hội An, Quảng Nam', 'LittleHoiAnResort.com'),
(100, 'Kiman Hoi An Hotel & Spa', '091 992 24', 'Kiman Hospitality', '461-463 Hai Bà Trưng, Tân An, tp. Hội An, Quảng Nam', 'KimanHoiAnHotel.com'),
(101, 'Frangipani Village Resort', '090 536 08', 'Frangipani Resorts', 'Cẩm Thanh, Hội An, Quảng Nam', 'FrangipaniResortHoiAn.com'),
(102, 'Phố Hội Riverside Resort', '0235 3862 ', 'Phố Hội Resorts', '01 Nguyễn Tri Phương, Cẩm Nam, Hội An, Quảng Nam', 'PhoHoiRiversideResort.com'),
(103, 'Memority Villas & Spa', '0235 3863 ', 'Memority Resorts', '423 Cửa Đại, Cẩm Sơn, Hội An, Quảng Nam', 'MemorityVillasHoiAn.com'),
(104, 'Victoria Hoi An Beach Resort and Spa', '0235 3927 ', 'Victoria Resorts', 'Âu Cơ, Biển Cửa Đại, Hội An, Quảng Nam', 'VictoriaHoiAnResort.com'),
(105, 'The Beach. Little Boutique Hotel & Spa', '0235 3861 ', 'John Doe', '19 Lạc Long Quân, Cửa Đại, Hội An, Quảng Nam', 'thebeach-hotel-hoi-an.com'),
(106, 'Tribee Cham', '0235 3910 ', 'John Tribee', '58 Bà Triệu, Phường Cẩm Phổ, Thành phố Hội An, Quảng Nam', 'tribee-cham-hoi-an.com'),
(107, 'Hoi An Ancient House Resort & Spa', '0235 3923 ', 'John Ancient House', '377 Cửa Đại, Cẩm Châu, Hội An, Quảng Nam', 'ancient-house-resort-hoi-an.com'),
(108, 'Vĩnh Hưng Resort', '0235 39103', 'John Vĩnh Hưng', '111 Ngô Quyền, Tp Hội An, Quảng Nam', 'vinh-hung-resort-hoi-an.com'),
(109, 'Vĩnh Hưng 4 Resort & Spa', '0235 3864 ', 'John Ngô Quyền', '120 Ngô Quyền, Phường Minh An, Hội An, Quảng Nam', 'vinh-hung-4-resort-hoi-an.com'),
(110, 'Senvila Boutique Resort', '0235 3752 ', 'John Trần Nhân Tông', 'Trần Nhân Tông, Cẩm Thanh, TP. Hội An, Quảng Nam', 'senvila-boutique-resort-hoi-an.com');
=======
-- Đang đổ dữ liệu cho bảng `accommodations`
--

INSERT INTO `accommodations` (`ID`, `Name`, `Contact`, `Owner`, `Address`, `Website`) VALUES
('HTX0001', 'Phượng Vĩ Homestay', '090 576 26', 'Tracy Nguyen', '39 Nguyễn Trường Tộ, Sơn Phong, Tp Hội An, Quảng Nam', 'PhuongViHomestay.com'),
('HTX0002', 'Coconut Garden Homestay', '0235 3939 ', 'Henry Le', '122 Nguyễn Khoa, Cẩm Nam, Hội An, Quảng Nam', 'CoconutGardenHomestay.com'),
('HTX0003', 'Horizon Homestay Hoi An', '0235 3920 ', 'Lily Le', '23 Xuân Diệu, Tân An, Hội An, Quảng Nam', 'HorizonHomestayHoiAn.com'),
('HTX0004', 'An Hoi Town Homestay', '0235 3910 ', 'Andrew Nguyen', '109 Nguyễn Phúc Tần, Phường Minh An, Hội An, Quảng Nam', 'AnHoiTownHomestay.com'),
('HTX0005', 'Mama’s House Homestay', '091 418 80', 'Maria Tran', '06 Nguyễn Đức Cảnh, Tân An, Hội An, Quảng Nam', 'MamasHouseHomestay.com'),
('HTX0006', 'Nhà Nghỉ Bình Tân', '090 522 62', 'Ngô Thị Bình', 'Tổ 7, Khối Phố Sơn Phô 2, Phường Cẩm Châu, Tp Hội An, Quảng Nam', 'nha-nghi-binh-tan-hoi-an.com'),
('HTX0007', 'Tigon Homestay', '0235 39165', 'Nguyễn Thị Tigon', '34 Lê Quý Đôn, phường Cẩm Phô, Tp Hội An, Quảng Nam', 'tigon-homestay-hoi-an.com'),
('KSX0001', 'Hoi An Odyssey Hotel', '0235 3911 ', 'John Smith', 'Trần Trung Tri, Cẩm Nam, Tp. Hội An, Quảng Nam', 'HoiAnOdysseyHotel.com'),
('KSX0002', 'Hội An Estuary Villa', '0235 3863 ', 'Jane Doe', 'Tân Thịnh, Cẩm An, Tp Hội An, Quảng Nam', 'EstuaryVillaHoiAn.com'),
('KSX0003', 'Ivy Villa', '090 501 50', 'Michael Nguyen', '168 Nguyễn Duy Hiệu, Cẩm Châu, Hội An, Quảng Nam', 'IvyVillaHoiAn.com'),
('KSX0004', 'Hoi An River Town Hotel', '0235 3924 ', 'Emily Le', '26 Thoại Ngọc Hầu, Phường Cẩm Phổ, Hội An, Quảng Nam', 'RiverTownHotelHoiAn.com'),
('KSX0005', 'Little Town Villa', '090 540 98', 'William Tran', '239 Nguyễn Duy Hiệu, Cẩm Châu, Hội An, Quảng Nam', 'LittleTownVilla.com'),
('KSX0006', 'Khách sạn Đông Dương', '0235 3936 ', 'Daniel Tran', '87 Cửa Đại, Cẩm Sơn, Hội An, Quảng Nam', 'DongDuongHotel.com'),
('KSX0007', 'DKs Hotel', '0235 3914 ', 'Catherine Kim', '308 Nguyễn Duy Hiệu, Cẩm Châu, Tp Hội An Quảng Nam', 'DKsHotel.com'),
('KSX0008', 'Khách sạn Huy Hoàng II', '0235 38617', 'Henry Nguyen', '712 Hai Bà Trương, Tp Hội An, Quảng Nam', 'HuyHoangIIHotel.com'),
('KSX0009', 'Khách sạn Hội An', '0235 38614', 'Linda Pham', '10 Trần Hưng Đạo, Tp Hội An, Quảng Nam', 'HoiAnHotel.com'),
('KSX0010', 'Khách sạn Phương Nam', '0235 39234', 'Richard Nguyen', '224 Lý Thái Tổ, Tp Hội An, Quảng Nam', 'PhuongNamHotel.com'),
('KSX0011', 'Hoi An Holiday Villa Hotel', '0235 3924 ', 'Michelle Le', '414 Cửa Đại, Cẩm Châu, Hội An, Quảng Nam', 'HoiAnHolidayVilla.com'),
('KSX0012', 'Khách sạn Phú Thịnh II', '0235 39239', 'William Nguyen', '448 Cửa Đại, Tp Hội An, Quảng Nam', 'PhuThinhIIHotel.com'),
('KSX0013', 'Khách sạn Hướng Dương', '0235 39232', 'Jessica Le', '397 Cửa Đại, Tp Hội An, Quảng Nam', 'HuongDuongHotel.com'),
('KSX0014', 'Windbell Villa', '0235 3930 ', 'Michael Johnson', '127 Nguyễn Tri Phương, Cẩm Nam, Hội An, Quảng Nam', 'WindbellVilla.com'),
('KSX0015', 'Khách sạn An Hội', '0235 39118', 'Jennifer Nguyen', '69 Nguyễn Phúc Chu, Tp Hội An, Quảng Nam', 'AnHoiHotel.com'),
('KSX0016', 'Khách sạn Thanh Bình III', '0235 39167', 'Sophia Brown', '98 Bà Triệu, Tp Hội An, Quảng Nam', 'ThanhBinhIIIHotel.com'),
('KSX0017', 'Khách sạn Victoria', '0235 39270', 'Jason Nguyen', 'Biển Cửa Đại, Tp Hội An, Quảng Nam', 'VictoriaHotel.com'),
('KSX0018', 'Khách sạn Minh Quang', '0235 39162', 'Lily Le', 'Hai Bà Trưng, Tp Hội An, Quảng Nam', 'MinhQuangHotel.com'),
('KSX0019', 'Khách sạn Thái Bình Dương', '0235 39237', 'David Tran', '321 Cửa Đại, Tp Hội An, Quảng Nam', 'ThaiBinhDuongHotel.com'),
('KSX0020', 'Khách sạn Thuỳ Dương III', '0235 39165', 'John Smith', '92 - 94 Bà Triệu, Tp Hội An, Quảng Nam', 'ThuyDuongIIIHotel.com'),
('KSX0021', 'Khách sạn Nhật Huy Hoàng', '0235 38616', 'Daniel Nguyen', '58 Bà Triệu, Tp Hội An, Quảng Nam', 'NhatHuyHoangHotel.com'),
('KSX0022', 'Khách sạn Nhi Nhi', '0235 39167', 'Michelle Tran', '60 Hùng Vương, Tp Hội An, Quảng Nam', 'NhiNhiHotel.com'),
('KSX0023', 'Khách sạn Thanh Vân II', '0235 39349', 'William Nguyen', '467 Hai Bà Trương, Tp Hội An, Quảng Nam', 'ThanhVanIIHotel.com'),
('KSX0024', 'Thanh Binh Riverside Hotel', '0235 3922 ', 'Catherine Kim', 'Nguyễn Du, Phường Minh An, Hội An, Quảng Nam', 'ThanhBinhRiversideHotel.com'),
('KSX0025', 'Villa Orchid Garden Riverside', '0235 3666 ', 'Michael Johnson', '32 Huyền Trân Công Chúa, Cẩm Châu, Hội An, Quảng Nam', 'VillaOrchidGardenRiverside.com'),
('KSX0026', 'Khách sạn Hội Phố', '0235 39163', 'Emily Le', '4 Nhị Trưng, Tp Hội An, Quảng Nam', 'HoiPhoHotel.com'),
('KSX0027', 'Khách sạn Đại Long', '0235 39162', 'Jennifer Nguyen', '680 Hai Bà Trưng, Tp Hội An, Quảng Nam', 'DaiLongHotel.com'),
('KSX0028', 'Long Life Riverside Hotel', '0235 3911 ', 'Daniel Tran', '61 Nguyễn Phúc Chu, Tp. Hội An, Quảng Nam', 'LongLifeRiversideHotel.com'),
('KSX0029', 'Khách sạn Hoa Sen', '0235 39233', 'Hoa Sen Company', '330 Cửa Đại, Tp Hội An, Quảng Nam', 'HoaSenHotel.com'),
('KSX0030', 'Mr Tho Garden Villas', '0235 3933 ', 'Mr Tho Company', 'Cẩm Thanh, Hội An, Quảng Nam', 'MrThoGardenVillas.com'),
('KSX0031', 'Hoi An TNT Villa', '0235 3666 ', 'TNT Hospitality', '100 Trần Hưng Đạo, Phường Cẩm Phổ, Hội An, Quảng Nam', 'HoiAnTNTVilla.com'),
('KSX0032', 'Hoi An Coco River Resort & Spa', '0235 3930 ', 'Coco River Hospitality', '999 Trần Nhân Tông, Tp Hội An, Quảng Nam', 'CocoRiverResortHoiAn.com'),
('KSX0033', 'Khách sạn Vĩnh Hưng III', '0235 39172', 'Vĩnh Hưng Company', '96 Bà Triệu, Tp Hội An, Quảng Nam', 'VinhHungIIIHotel.com'),
('KSX0034', 'Khách sạn Công đoàn Hội An', '0235 38623', 'Công đoàn Hội An', '80 Trần Hưng Đạo, Tp Hội An, Quảng Nam', 'CongDoanHoiAnHotel.com'),
('KSX0035', 'Hoi An Garden Palace & Spa', '0235 6255 ', 'Garden Palace Hospitality', '311 Cửa Đại, Cẩm Châu, Hội An, Quảng Nam', 'HoiAnGardenPalace.com'),
('KSX0036', 'Hoi An Historic Hotel', '0235 3861 ', 'Historic Hotel Company', '10 Trần Hưng Đạo, Sơn Phong, Hội An, Quảng Nam', 'HoiAnHistoricHotel.com'),
('KSX0037', 'Khách sạn Hải Âu', '0235 39145', 'Hải Âu Company', '576 Cửa Đại, Tp Hội An, Quảng Nam', 'HaiAuHotel.com'),
('KSX0038', 'Khách sạn An Phú', '0235 39143', 'An Phú Company', '288 Ng Duy Hiệu, Tp Hội An, Quảng Nam', 'AnPhuHotel.com'),
('KSX0039', 'Huy Hoang River Hotel', '0235 38614', 'Huy Hoang Hospitality', '73 Phan Bội Châu, Tp Hội An, Quảng Nam', 'HuyHoangRiverHotel.com'),
('KSX0040', 'Hidden Beach Bungalow Sea View', '093 577 89', 'Hidden Beach Hospitality', 'Cẩm An, Hội An, Quảng Nam', 'HiddenBeachBungalow.com'),
('KSX0041', 'Khách sạn Ven Sông', '0235 38648', 'Ven Sông Company', '175 Cửa Đại, Tp Hội An, Quảng Nam', 'VenSongHotel.com'),
('KSX0042', 'Khách sạn Golf  Hội An', '0235 38611', 'Golf Hội An Company', '187 Lý Thường Kiệt, Tp Hội An, Quảng Nam', 'GolfHoiAnHotel.com'),
('KSX0043', 'Homie Hoi An', '090 578 22', 'Homie Company', 'Hẻm 10 Nguyễn Hoàng, An Hội, Tp. Hội An, Quảng Nam', 'HomieHoiAn.com'),
('KSX0044', 'Ally Beach Boutique Hotel Hoian', '0235 3959 ', 'Ally Beach Company', '09 Lạc Long Quân, Cửa Đại, Thành phố Hội An, Quảng Nam', 'AllyBeachHotelHoiAn.com'),
('KSX0045', 'Paddy\'s Hostel & Sports Bar', '0235 3939 ', 'Paddy\'s Company', '97 Cửa Đại, Cẩm Sơn, Hội An, Quảng Nam', 'PaddysHostelHoiAn.com'),
('KSX0046', 'Khách sạn Cát Vàng', '0235 39275', 'Cát Vàng Company', 'Biển Cửa Đại, Tp Hội An, Quảng Nam', 'CatVangHotel.com'),
('KSX0047', 'Hijal House Hoi An', '0235 3666 ', 'Hijal House Company', '11 Xuân Diệu, Tân An, Tp. Hội An, Quảng Nam', 'HijalHouseHoiAn.com'),
('KSX0048', 'Water Coconut Boutique Villas', '0235 3933 ', 'Water Coconut Company', 'Cẩm Thanh, Hội An, Quảng Nam', 'WaterCoconutVillas.com'),
('KSX0049', 'Khách sạn Hợp Yến', '0235 38631', 'Hợp Yến Company', '694 Hai Bà Trưng, Tp Hội An, Quảng Nam', 'HopYenHotel.com'),
('KSX0050', 'Khách sạn Royal Riverside Hội An', '0235 3666 ', 'Royal Riverside Company', '40 Nguyễn Du, Phường Cẩm Phổ, Hội An, Quảng Nam', 'RoyalRiversideHotelHoiAn.com'),
('KSX0051', 'La Residencia Boutique Hotel & Spa', '0235 3929 ', 'La Residencia Company', '35 Đào Duy Từ, Phường Minh An, Hội An, Quảng Nam', 'LaResidenciaHoiAn.com'),
('KSX0052', 'Khách sạn Thanh Xuân II', '0235 39116', 'Thanh Xuân II Company', '61 Nguyễn Phúc Chu, Tp Hội An, Quảng Nam', 'ThanhXuanIIHotel.com'),
('KSX0053', 'Khách sạn Thiên Nga', '0235 39163', 'Thiên Nga Company', '52 Bà Triệu, Tp Hội An, Quảng Nam', 'ThienNgaHotel.com'),
('KSX0054', 'Khách sạn Vạn Lợi', '0235 39362', 'Vạn Lợi Company', 'Thôn Xuyên Trung, Cẩm Châu, Tp Hội An, Quảng Nam', 'VanLoiHotel.com'),
('KSX0055', 'Khách sạn Nhị Trưng', '0235 38634', 'Nhị Trưng Company', '700 Hai Bà Trưng, Tp Hội An, Quảng Nam', 'NhiTrungHotel.com'),
('KSX0056', 'Khách sạn Phố Hội 1', '0235 3861 ', 'Phố Hội Company', '7/2 Trần Phú, Cẩm Châu, Hội An, Quảng Nam', 'PhoHoiHotel1.com'),
('KSX0057', 'Khách sạn Nguyên Phương', '0235 39165', 'Nguyên Phương Company', '109 Bà Triệu, Tp Hội An, Quảng Nam', 'NguyenPhuongHotel.com'),
('KSX0058', 'Khách sạn Dấu Ấn', '0235 39239', 'Dấu Ấn Company', '276 Cửa Đại, Tp Hội An, Quảng Nam', 'DauAnHotel.com'),
('KSX0059', 'La Uy Villa Hoi An', '0773 430 3', 'Maria Lê Thanh Tông', 'Lê Thánh Tông, Cẩm Sơn, Hội An, Quảng Nam', 'la-uy-villa-hoi-an.com'),
('KSX0060', 'Khách sạn Cửa Đại', '0235 38622', 'Maria Nguyễn Cửa Đại', '18 Cửa Đại, Tp Hội An, Quảng Nam', 'khach-san-cua-dai-hoi-an.com'),
('KSX0061', 'Khách sạn Thiện Trung', '0235 38617', 'Nguyễn Thiện Trung', '129 Trần Hưng Đạo, Tp Hội An, Quảng Nam', 'thien-trung-hotel-hoi-an.com'),
('KSX0062', 'Hoian Central Boutique Hotel & Spa', '0235 3959 ', 'Maria Hùng Vương', '91 Hùng Vương, Phường Cẩm Phổ, Hội An, Quảng Nam', 'hoian-central-hotel.com'),
('KSX0063', 'Khách sạn Thiện Thanh', '0235 39165', 'Nguyễn Thiện Thanh', '16 Bà Triệu, Tp Hội An, Quảng Nam', 'thien-thanh-hotel-hoi-an.com'),
('KSX0064', 'Khách sạn Hải Yến', '0235 38619', 'Maria Hải Yến', '569 Cửa Đại, Tp Hội An, Quảng Nam', 'hai-yen-hotel-hoi-an.com'),
('KSX0065', 'Khách sạn An Huy', '0235 38621', 'Maria An Huy', '30 Phan Bội Châu, Tp Hội An, Quảng Nam', 'an-huy-hotel-hoi-an.com'),
('KSX0066', 'Khách sạn Phú Thịnh I', '0235 38612', 'Maria Phú Thịnh', '144 Trần Phú, Tp Hội An, Quảng Nam', 'phu-thinh-hotel-hoi-an.com'),
('KSX0067', 'Hotel Royal Hoi An', '0235 3950 ', 'Maria Đào Duy Từ', '39 Đào Duy Từ, Phường Cẩm Phổ, Hội An, Quảng Nam', 'hotel-royal-hoi-an.com'),
('KSX0068', 'Khách sạn Vĩnh Hưng II', '0235 39103', 'Maria Trần Phú', '143 Trần Phú , Tp Hội An, Quảng Nam', 'vinh-hung-2-hotel-hoi-an.com'),
('KSX0069', 'Vaia Hotel', '0235 3916 ', 'Maria Cửa Đại', '489 Cửa Đại, Cẩm Châu, Hội An, Quảng Nam', 'vaia-hotel-hoi-an.com'),
('KSX0070', 'Riverside Impression', '091 349 91', 'Maria Nguyễn Tri Phương', '134 Nguyễn Tri Phương, Cẩm Nam, Hội An, Quảng Nam', 'riverside-impression-hoi-an.com'),
('KSX0071', 'Tan Thanh Garden', '0235 3861 ', 'Maria Cẩm An', 'Cẩm An, Hội An, Quảng Nam', 'tan-thanh-garden-hoi-an.com'),
('KSX0072', 'Hoi An Corn Riverside Villa', '0235 3933 ', 'Maria Lương Như Bích', 'Lương Như Bích, Cẩm Nam, Hội An, Quảng Nam', 'corn-riverside-villa-hoi-an.com'),
('KSX0073', 'Khách sạn Hoạ My', '0235 39165', 'Maria Lý Thường Kiệt', '201 Lý Thường Kiệt, Tp Hội An, Quảng Nam', 'hoa-my-hotel-hoi-an.com'),
('KSX0074', 'Khách sạn Phương Đông', '0235 39164', 'Maria Bà Triệu', '42 Bà Triệu, Tp Hội An, Quảng Nam', 'phuong-dong-hotel-hoi-an.com'),
('NGN0004', 'Nhà Nghỉ Bình Tân', '090 522 62', 'Ngô Thị Bình', 'Tổ 7, Khối Phố Sơn Phô 2, Phường Cẩm Châu, Tp Hội An, Quảng Nam', 'nha-nghi-binh-tan-hoi-an.com'),
('NGN0005', 'Nhà Nghỉ Cự Hơn', '0235 3923 ', 'Ngô Thị Cự Hơn', '173 Cửa Đại, Cẩm Sơn, Hội An, Quảng Nam', 'cuhon-nha-nghi-hoi-an.com'),
('NGX0001', 'Nhà Nghỉ Thiên Tân', '0235 3863 ', 'Maria Nguyen', '484 Hai Bà Trưng, Cẩm Sơn, Hội An, Quảng Nam', 'ThienTanGuesthouse.com'),
('NGX0002', 'Nhà nghỉ Thời Đại', '0235 3916 ', 'Thời Đại Guesthouse', '616 Hai Bà Trưng, Phường Cẩm Phổ, Hội An, Quảng Nam', 'ThoiDaiGuesthouse.com'),
('NGX0003', 'Nhà nghỉ Ô Lá', '0763 242 1', 'Ô Lá Guesthouse', '12, Trần Bình Trọng, Cẩm Châu, Hội An, Quảng Nam', 'OlaGuesthouse.com'),
('NGX0004', 'Tigon Homestay', '0235 39165', 'Nguyễn Thị Tigon', '34 Lê Quý Đôn, phường Cẩm Phô, Tp Hội An, Quảng Nam', 'tigon-homestay-hoi-an.com'),
('RSX0001', 'La Siesta Hoi An Resort & Spa', '0235 3915 ', 'David Nguyen', '132 Hùng Vương, Thanh Hà, Hội An, Quảng Nam', 'LaSiestaHoiAnResort.com'),
('RSX0002', 'Osaka Riverside Villa & Spa', '0235 3963 ', 'Sophia Tran', 'Cẩm Hà, Tp Hội An, Quảng Nam', 'OsakaRiversideVilla.com'),
('RSX0003', 'Allegro Hoi An . A Little Luxury Hotel & Spa', '0235 3529 ', 'Jason Nguyen', '86 Trần Hưng Đạo, Phường Minh An, Hội An, Quảng Nam', 'AllegroHoiAnLuxuryHotel.com'),
('RSX0004', 'Sunrise Premium Resort Hoi An', '0235 3937 ', 'Sophie Brown', 'Âu Cơ, Cửa Đại, Hội An, Quảng Nam', 'SunrisePremiumResortHoiAn.com'),
('RSX0005', 'Boutique Hoi An Resort', '0235 39391', 'Andrew Smith', 'Đường Lạc Long Quân, Tp Hội An, Quảng Nam', 'BoutiqueHoiAnResort.com'),
('RSX0006', 'River - Beach Resort', '0235 39278', 'Emily Le', '05 Cửa Đại, Tp Hội An, Quảng Nam', 'RiverBeachResort.com'),
('RSX0007', 'Tropical Beach Hoi An Resort', '0235 3927 ', 'Jessica Le', 'Lạc Long Quân, Cẩm An, Thành phố Hội An, Quảng Nam', 'TropicalBeachHoiAnResort.com'),
('RSX0008', 'Little Hoi An Boutique Hotel & Spa', '0235 3869 ', 'Andrew Smith', '02 Thoại Ngọc Hầu, An Hội, Tp. Hội An, Quảng Nam', 'LittleHoiAnBoutiqueHotel.com'),
('RSX0009', 'Vinpearl Resort & Spa Hội An', '0235 3753 ', 'Vinpearl Group', 'Block 06, Phước Hải, Cửa Đại, Tp. Hội An, Quảng Nam', 'VinpearlResortHoiAn.com'),
('RSX0010', 'Life Resort', '0235 39145', 'Life Hospitality', '01 Phạm Hồng Thái, Tp Hội An, Quảng Nam', 'LifeResortHoiAn.com'),
('RSX0011', 'An Bang Stilt House Villa', '099 359 30', 'An Bang Hospitality', 'Tổ 4, Khối Tân Thành, Hội An, Quảng Nam', 'AnBangStiltHouseVilla.com'),
('RSX0012', 'The Litte Hoi An Resort', '0235 3962 ', 'Little Hoi An Hospitality', 'Nguyễn Phúc Chu (nối dài), Phường Minh An, Hội An, Quảng Nam', 'LittleHoiAnResort.com'),
('RSX0013', 'Kiman Hoi An Hotel & Spa', '091 992 24', 'Kiman Hospitality', '461-463 Hai Bà Trưng, Tân An, tp. Hội An, Quảng Nam', 'KimanHoiAnHotel.com'),
('RSX0014', 'Frangipani Village Resort', '090 536 08', 'Frangipani Resorts', 'Cẩm Thanh, Hội An, Quảng Nam', 'FrangipaniResortHoiAn.com'),
('RSX0015', 'Phố Hội Riverside Resort', '0235 3862 ', 'Phố Hội Resorts', '01 Nguyễn Tri Phương, Cẩm Nam, Hội An, Quảng Nam', 'PhoHoiRiversideResort.com'),
('RSX0016', 'Memority Villas & Spa', '0235 3863 ', 'Memority Resorts', '423 Cửa Đại, Cẩm Sơn, Hội An, Quảng Nam', 'MemorityVillasHoiAn.com'),
('RSX0017', 'Victoria Hoi An Beach Resort and Spa', '0235 3927 ', 'Victoria Resorts', 'Âu Cơ, Biển Cửa Đại, Hội An, Quảng Nam', 'VictoriaHoiAnResort.com'),
('RSX0018', 'The Beach. Little Boutique Hotel & Spa', '0235 3861 ', 'John Doe', '19 Lạc Long Quân, Cửa Đại, Hội An, Quảng Nam', 'thebeach-hotel-hoi-an.com'),
('RSX0019', 'Tribee Cham', '0235 3910 ', 'John Tribee', '58 Bà Triệu, Phường Cẩm Phổ, Thành phố Hội An, Quảng Nam', 'tribee-cham-hoi-an.com'),
('RSX0020', 'Hoi An Ancient House Resort & Spa', '0235 3923 ', 'John Ancient House', '377 Cửa Đại, Cẩm Châu, Hội An, Quảng Nam', 'ancient-house-resort-hoi-an.com'),
('RSX0021', 'Vĩnh Hưng Resort', '0235 39103', 'John Vĩnh Hưng', '111 Ngô Quyền, Tp Hội An, Quảng Nam', 'vinh-hung-resort-hoi-an.com'),
('RSX0022', 'Vĩnh Hưng 4 Resort & Spa', '0235 3864 ', 'John Ngô Quyền', '120 Ngô Quyền, Phường Minh An, Hội An, Quảng Nam', 'vinh-hung-4-resort-hoi-an.com'),
('RSX0023', 'Senvila Boutique Resort', '0235 3752 ', 'John Trần Nhân Tông', 'Trần Nhân Tông, Cẩm Thanh, TP. Hội An, Quảng Nam', 'senvila-boutique-resort-hoi-an.com');
>>>>>>> other/main

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Table structure for table `comments`
=======
-- Cấu trúc bảng cho bảng `comments`
>>>>>>> other/main
--

CREATE TABLE `comments` (
  `GuestName` varchar(255) NOT NULL,
  `Comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `ID` int(11) NOT NULL,
=======
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `Slotline` int(11) NOT NULL,
>>>>>>> other/main
  `Name` text NOT NULL,
  `Timezone` varchar(255) NOT NULL,
  `Location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
<<<<<<< HEAD
-- Dumping data for table `events`
--

INSERT INTO `events` (`ID`, `Name`, `Timezone`, `Location`) VALUES
=======
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`Slotline`, `Name`, `Timezone`, `Location`) VALUES
>>>>>>> other/main
(1, 'Hội An chào năm mới 2023', '31/12/2022 đến 01/01/2023', 'Vườn tượng An Hội, khu phố cổ, các điểm sinh hoạt văn hóa.'),
(2, 'Ngày hội cây Quật cảnh Cẩm Hà lần thứ 7 - 2023', '03 & 04/01/2023', 'Khu dân cư Trảng Kèo, xã Cẩm Hà'),
(3, 'Hội Tết Nguyên Đán Quý Mão 2023', '13-31/01/2023 (22/12 Nhâm Dần - 10 tháng Giêng)', 'Các điểm sinh hoạt văn hóa; Khu phố cổ.'),
(4, 'Lễ cúng Cầu Bông Trà Quế', '(28/01/202) (Mồng 7 tháng Giêng)', 'Làng rau Trà Quế'),
(5, 'Lễ tế Tiền hiền Kim Bồng', '02/02/2023 (12 tháng Giêng)', 'Đình Tiền hiền; Làng nghề mộc Kim Bồng'),
(6, 'Tết Nguyên Tiêu Quý Mão-2023', '31/01 - 06/02/2023 (10-16 tháng Giêng)', 'Quan Công miếu, hội quán, đình, chùa.'),
(7, 'Lễ cúng thần Nông', '06/02/2023 (16 tháng Giêng)', 'Bãi bắp khối Thanh Nam, P.Cẩm Nam'),
(8, 'Lễ Vía Lục Tánh Vương Gia', '07/3/2023 (16/02, Quý Mão)', 'Hội quán Phúc Kiến'),
(9, 'Lễ hội Cầu Ngư tại Cửa Đại', '07 & 08/3/2023 (16 & 17/02, Quý Mão)', 'Lăng Ông (khối Phước Thịnh, Cửa Đại), cửa biển'),
(10, 'Giờ Trái Đất 2023', '25/3/2023', 'Thành phố Hội An'),
(11, 'Chào mừng 15 năm thành lập thành phố Hội An; Kỷ niệm 48 năm Ngày giải phóng Hội An 28/3 (1975-2023)', 'Tháng 3/2023', 'Thành phố Hội An'),
(12, 'Hội thi hợp xướng quốc tế Việt Nam lần thứ 7, Hội An 2023', '02 - 06/4/2023', 'Thành phố Hội An'),
(13, 'Lễ vía Quan Âm', 'Ngày 9/4/2023 (19/2, Quý Mão)', 'Minh Hương Phật tự (Chùa Bà)'),
(14, 'Lễ giỗ Tổ nghề Yến', '29/4/2023 (10/3, Quý Mão)', 'Miếu Tổ nghề Yến, Bãi Hương, Cù Lao Chàm'),
(15, 'Những ngày văn hóa Hàn Quốc tại Quảng Nam, Hội An 2023', 'Tháng 4/2023', 'Khu phố cổ và Vườn tượng An Hội'),
(16, 'Lễ hội Âm nhạc và Ẩm thực', '29/4 đến 01/05/2023', 'Bãi biển Cẩm An'),
(17, 'Sự kiện “Nét hoa nghề Hội An” lần thứ 2 - 2023', 'Tháng 5/2023', 'Vườn tượng An Hội'),
(18, 'Con đường Nghệ thuật và sáng tạo - Trại sáng tác quốc tế 2023', 'Tháng 5/2023', 'Thành phố Hội An'),
(19, 'Lễ vía Thiên hậu Thánh Mẫu', '12/5/2023 (23/3, Quý Mão)', 'Hội quán Phước Kiến, Hội quán Ngũ Bang'),
(20, 'Kỷ niệm 14 năm ngày Cù Lao Chàm được công nhận khu dự trữ sinh quyển thế giới (26/5/2009-2023)', 'Tháng 5', 'Xã Tân Hiệp, Cù Lao Chàm'),
(21, 'Lễ hội Cầu Ngư - Cù Lao Chàm', '21&22/5/2023 (03&04/4, Quý Mão)', 'Lăng Ông Ngư, xã Tân Hiệp, Cù Lao Chàm'),
(22, 'Lễ Phật Đản', 'Từ 28/5- 02/6/2023 (10-15/4, Quý Mão)', 'Chùa, tịnh xá, cơ sở Phật giáo, Khu phố cổ'),
(23, 'Trình diễn thời trang “Đèn lồng và Phố”', '6/2023', 'Khu phố cổ Hội An'),
(24, 'Tết Đoan Ngọ', '22/6/2023 (05/5, Quý Mão)', 'Thành phố Hội An'),
(25, 'Festival biển “Hội An - Cảm xúc mùa hè”', 'Tháng 6 và 7/2023', 'Các bãi biển trên địa bàn thành phố'),
(26, 'Festival miền biển “Cù Lao Chàm - Mùa hoa Ngô đồng đỏ năm 2023 “', '7/2023', 'Cù Lao Chàm'),
(27, 'Giao lưu văn hóa Hội An - Nhật Bản lần thứ 19, năm 2023', '8/2023', 'Khu phố cổ'),
(28, 'Lễ hội đèn lồng Hội An tại Wernigerode 2023', '8/2023', 'Thành phố Wernigerode, CHLB Đức'),
(29, 'Lễ vía Quan Công', '10/8/2023 (24/6, Quý Mão)', 'Miếu Quan công (Chùa Ông)'),
(30, 'Giỗ tổ nghề Gốm Thanh Hà', '25/8/2023 (10/7, Quý Mão)', 'Làng gốm Thanh Hà'),
(31, 'Lễ Vu Lan', '30/8/2023 (15/7, Quý Mão)', 'Các chùa, tịnh xá, đình, miếu'),
(32, 'Kỷ niệm 25 năm ngày tổ chức hoạt động tái hiện “Đêm Phố cổ Hội An đầu thế kỷ XX”', 'Tháng 9', 'Khu phố cổ'),
(33, 'Festival tơ lụa Việt Nam và thế giới', 'Tháng 9', 'Khu phố cổ và Làng Lụa Hội An'),
(34, 'Hội Tết Trung Thu Quý Mão 2023', '27 - 29/9/2023 (13-15/8, Quý Mão)', 'Các điểm sinh hoạt văn hóa'),
(35, 'Liên hoan ẩm thực quốc tế, Hội An 2023', '10/2023', 'Vườn tượng An Hội và các nhà hàng trong Khu phố cổ.'),
(36, 'Chào mừng ngày Di sản Văn hóa Việt Nam 23/11; 24 năm ngày Đô thị cổ Hội An được công nhận Di sản văn hoá thế giới (04/12/1999-2023); 06 năm nghệ thuật Bài chòi Trung bộ được công nhận Di sản phi vật thể đại diện nhân loại (07/12/2017-2023)', '23/11 - 07/12/2023', 'Thành phố Hội An'),
(37, 'Mừng Giáng Sinh 2023', '24 & 25/12/2023', 'Các nhà thờ; khách sạn, nhà hàng...'),
(38, 'Đêm rằm phố cổ Hội An', 'Đêm 14 Âm lịch hằng tháng', 'Khu phố cổ'),
(39, 'Chợ phiên làng Chài Tân Thành', 'Tối thứ 7, CN hằng tuần', 'Số 17 - 48, đường Nguyễn Phan Vinh'),
(40, 'Đêm Cù Lao', 'Tối thứ 7, CN hằng tuần', 'Cù Lao Chàm');

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `ID` int(11) NOT NULL,
=======
-- Cấu trúc bảng cho bảng `restaurants`
--

CREATE TABLE `restaurants` (
  `ID` varchar(11) NOT NULL,
>>>>>>> other/main
  `Name` varchar(255) NOT NULL,
  `Contact` varchar(10) NOT NULL,
  `Owner` varchar(255) NOT NULL,
  `Address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
<<<<<<< HEAD
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`ID`, `Name`, `Contact`, `Owner`, `Address`) VALUES
(1, 'Morning Glory', '+84 235 22', 'Ms. Trinh Diem Vy', '106 Nguyễn Thái Học, Hội An'),
(2, 'Mango Rooms', '+84 235 39', 'Ms. Duc Tran', '111 Nguyễn Thái Học, Hội An'),
(3, 'Brother\'s Café', '+84 235 38', 'Ms. Trinh Diem Vy', '27-29 Phan Bội Châu, Hội An'),
(4, 'Cargo Club', '+84 235 39', 'Ms. Trinh Diem Vy', '107-109 Nguyễn Thái Học, Hội An'),
(5, 'Ancient Faifo', '+84 235 39', 'Ms. Trinh Diem Vy', '66 Nguyễn Thái Học, Hội An');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accommodations`
=======
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accommodations`
>>>>>>> other/main
--
ALTER TABLE `accommodations`
  ADD PRIMARY KEY (`ID`);

--
<<<<<<< HEAD
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accommodations`
--
ALTER TABLE `accommodations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
=======
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`Slotline`);

--
-- Chỉ mục cho bảng `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`ID`);
>>>>>>> other/main
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
