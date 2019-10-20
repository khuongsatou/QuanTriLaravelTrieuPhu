-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 20, 2019 lúc 09:26 AM
-- Phiên bản máy phục vụ: 10.3.15-MariaDB
-- Phiên bản PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `baitap_tuan4_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_hinh_app`
--

CREATE TABLE `cau_hinh_app` (
  `id` int(10) UNSIGNED NOT NULL,
  `co_hoi_sai` int(11) NOT NULL,
  `thoi_gian_tra_loi` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cau_hinh_app`
--

INSERT INTO `cau_hinh_app` (`id`, `co_hoi_sai`, `thoi_gian_tra_loi`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 20, NULL, NULL, NULL),
(2, 1, 20, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_hinh_diem_cau_hoi`
--

CREATE TABLE `cau_hinh_diem_cau_hoi` (
  `id` int(10) UNSIGNED NOT NULL,
  `thu_tu` int(11) NOT NULL,
  `diem` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cau_hinh_diem_cau_hoi`
--

INSERT INTO `cau_hinh_diem_cau_hoi` (`id`, `thu_tu`, `diem`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_hinh_tro_giup`
--

CREATE TABLE `cau_hinh_tro_giup` (
  `id` int(10) UNSIGNED NOT NULL,
  `loai_tro_giup` int(11) NOT NULL,
  `thu_tu` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cau_hinh_tro_giup`
--

INSERT INTO `cau_hinh_tro_giup` (`id`, `loai_tro_giup`, `thu_tu`, `credit`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 1200, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_hoi`
--

CREATE TABLE `cau_hoi` (
  `id` int(10) UNSIGNED NOT NULL,
  `noi_dung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linh_vuc_id` int(10) UNSIGNED NOT NULL,
  `phuong_an_a` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuong_an_b` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuong_an_c` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuong_an_d` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dap_an` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cau_hoi`
--

INSERT INTO `cau_hoi` (`id`, `noi_dung`, `linh_vuc_id`, `phuong_an_a`, `phuong_an_b`, `phuong_an_c`, `phuong_an_d`, `dap_an`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Đây là câu hỏi?', 1, 'Hỏi A', 'Hỏi B', 'Hỏi C', 'Hỏi D', 'D', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_luot_choi`
--

CREATE TABLE `chi_tiet_luot_choi` (
  `id` int(10) UNSIGNED NOT NULL,
  `luot_choi_id` int(10) UNSIGNED NOT NULL,
  `cau_hoi_id` int(10) UNSIGNED NOT NULL,
  `phuong_an` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diem` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_luot_choi`
--

INSERT INTO `chi_tiet_luot_choi` (`id`, `luot_choi_id`, `cau_hoi_id`, `phuong_an`, `diem`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'A', 50, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `goi_credit`
--

CREATE TABLE `goi_credit` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_goi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` int(11) NOT NULL,
  `so_tien` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `goi_credit`
--

INSERT INTO `goi_credit` (`id`, `ten_goi`, `credit`, `so_tien`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'gói 50k', 200, 50, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lich_su_mua_credit`
--

CREATE TABLE `lich_su_mua_credit` (
  `id` int(10) UNSIGNED NOT NULL,
  `nguoi_choi_id` int(10) UNSIGNED NOT NULL,
  `goi_credit_id` int(10) UNSIGNED NOT NULL,
  `credit` int(11) NOT NULL,
  `so_tien` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lich_su_mua_credit`
--

INSERT INTO `lich_su_mua_credit` (`id`, `nguoi_choi_id`, `goi_credit_id`, `credit`, `so_tien`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 200, 50, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `linh_vuc`
--

CREATE TABLE `linh_vuc` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_linh_vuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `linh_vuc`
--

INSERT INTO `linh_vuc` (`id`, `ten_linh_vuc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'toán', NULL, NULL, NULL),
(2, 'lý', NULL, NULL, NULL),
(3, 'hóa', NULL, NULL, NULL),
(4, 'sinh', NULL, NULL, NULL),
(5, 'địa', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luot_choi`
--

CREATE TABLE `luot_choi` (
  `id` int(10) UNSIGNED NOT NULL,
  `nguoi_choi_id` int(10) UNSIGNED NOT NULL,
  `so_cau` int(11) NOT NULL,
  `diem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_gio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `luot_choi`
--

INSERT INTO `luot_choi` (`id`, `nguoi_choi_id`, `so_cau`, `diem`, `ngay_gio`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2000', '1:20', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '2019_10_01_090042_create_table_linh_vuc', 1),
(13, '2019_10_02_141453_create_table_nguoi_choi', 1),
(14, '2019_10_03_141614_create_table_goi_credit', 1),
(15, '2019_10_04_093238_create_table_cau_hoi', 1),
(16, '2019_10_05_141426_create_table_luot_choi', 1),
(17, '2019_10_06_141716_create_table_cau_hinh_diem_cau_hoi', 1),
(18, '2019_10_06_141737_create_table_cau_hinh_app', 1),
(19, '2019_10_06_141800_create_table_quan_tri_vien', 1),
(20, '2019_10_06_141829_create_table_cau_hinh_tro_giup', 1),
(21, '2019_10_08_141536_create_table_lich_su_mua_credit', 1),
(22, '2019_10_09_140144_create_table_chi_tiet_luot_choi', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_choi`
--

CREATE TABLE `nguoi_choi` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_dang_nhap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_dai_dien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diem_cao_nhat` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoi_choi`
--

INSERT INTO `nguoi_choi` (`id`, `ten_dang_nhap`, `mat_khau`, `email`, `hinh_dai_dien`, `diem_cao_nhat`, `credit`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', '123', 'yoshi240499@gmail.com', '1.jpg', 123, 100, NULL, NULL, NULL),
(2, 'user', '123', 'yoshi240499@gmail.com', '2.jpg', 30, 200, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan_tri_vien`
--

CREATE TABLE `quan_tri_vien` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_dang_nhap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ho_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quan_tri_vien`
--

INSERT INTO `quan_tri_vien` (`id`, `ten_dang_nhap`, `mat_khau`, `ho_ten`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', '123', 'Nguyễn Văn Khương', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cau_hinh_app`
--
ALTER TABLE `cau_hinh_app`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cau_hinh_diem_cau_hoi`
--
ALTER TABLE `cau_hinh_diem_cau_hoi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cau_hinh_tro_giup`
--
ALTER TABLE `cau_hinh_tro_giup`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cau_hoi`
--
ALTER TABLE `cau_hoi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cau_hoi_linh_vuc_id_foreign` (`linh_vuc_id`);

--
-- Chỉ mục cho bảng `chi_tiet_luot_choi`
--
ALTER TABLE `chi_tiet_luot_choi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chi_tiet_luot_choi_cau_hoi_id_foreign` (`cau_hoi_id`),
  ADD KEY `chi_tiet_luot_choi_luot_choi_id_foreign` (`luot_choi_id`);

--
-- Chỉ mục cho bảng `goi_credit`
--
ALTER TABLE `goi_credit`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lich_su_mua_credit`
--
ALTER TABLE `lich_su_mua_credit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lich_su_mua_credit_nguoi_choi_id_foreign` (`nguoi_choi_id`),
  ADD KEY `lich_su_mua_credit_goi_credit_id_foreign` (`goi_credit_id`);

--
-- Chỉ mục cho bảng `linh_vuc`
--
ALTER TABLE `linh_vuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `luot_choi`
--
ALTER TABLE `luot_choi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `luot_choi_nguoi_choi_id_foreign` (`nguoi_choi_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nguoi_choi`
--
ALTER TABLE `nguoi_choi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quan_tri_vien`
--
ALTER TABLE `quan_tri_vien`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cau_hinh_app`
--
ALTER TABLE `cau_hinh_app`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cau_hinh_diem_cau_hoi`
--
ALTER TABLE `cau_hinh_diem_cau_hoi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cau_hinh_tro_giup`
--
ALTER TABLE `cau_hinh_tro_giup`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cau_hoi`
--
ALTER TABLE `cau_hoi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_luot_choi`
--
ALTER TABLE `chi_tiet_luot_choi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `goi_credit`
--
ALTER TABLE `goi_credit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `lich_su_mua_credit`
--
ALTER TABLE `lich_su_mua_credit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `linh_vuc`
--
ALTER TABLE `linh_vuc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `luot_choi`
--
ALTER TABLE `luot_choi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `nguoi_choi`
--
ALTER TABLE `nguoi_choi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `quan_tri_vien`
--
ALTER TABLE `quan_tri_vien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cau_hoi`
--
ALTER TABLE `cau_hoi`
  ADD CONSTRAINT `cau_hoi_linh_vuc_id_foreign` FOREIGN KEY (`linh_vuc_id`) REFERENCES `linh_vuc` (`id`);

--
-- Các ràng buộc cho bảng `chi_tiet_luot_choi`
--
ALTER TABLE `chi_tiet_luot_choi`
  ADD CONSTRAINT `chi_tiet_luot_choi_cau_hoi_id_foreign` FOREIGN KEY (`cau_hoi_id`) REFERENCES `cau_hoi` (`id`),
  ADD CONSTRAINT `chi_tiet_luot_choi_luot_choi_id_foreign` FOREIGN KEY (`luot_choi_id`) REFERENCES `luot_choi` (`id`);

--
-- Các ràng buộc cho bảng `lich_su_mua_credit`
--
ALTER TABLE `lich_su_mua_credit`
  ADD CONSTRAINT `lich_su_mua_credit_goi_credit_id_foreign` FOREIGN KEY (`goi_credit_id`) REFERENCES `goi_credit` (`id`),
  ADD CONSTRAINT `lich_su_mua_credit_nguoi_choi_id_foreign` FOREIGN KEY (`nguoi_choi_id`) REFERENCES `nguoi_choi` (`id`);

--
-- Các ràng buộc cho bảng `luot_choi`
--
ALTER TABLE `luot_choi`
  ADD CONSTRAINT `luot_choi_nguoi_choi_id_foreign` FOREIGN KEY (`nguoi_choi_id`) REFERENCES `nguoi_choi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
