CREATE DATABASE sql_dat_hang;
USE sql_dat_hang;
CREATE TABLE `don_dat_hang` (
  `so_dat_hang` int NOT NULL AUTO_INCREMENT,
  `ngay_dat_hang` date DEFAULT NULL,
  `ma_ncc` int DEFAULT NULL,
  PRIMARY KEY (`so_dat_hang`),
  KEY `ma_ncc` (`ma_ncc`),
  CONSTRAINT `don_dat_hang_ibfk_1` FOREIGN KEY (`ma_ncc`) REFERENCES `nha_cung_cap` (`ma_ncc`)
  );
  CREATE TABLE `nha_cung_cap` (
  `ma_ncc` int NOT NULL AUTO_INCREMENT,
  `ten_ncc` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `dia_chi` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `sdt` text,
  PRIMARY KEY (`ma_ncc`)
);
CREATE TABLE `phieu_nhap` (
  `so_phieu_nhap` int NOT NULL AUTO_INCREMENT,
  `ngay_nhap` date DEFAULT NULL,
  PRIMARY KEY (`so_phieu_nhap`)
);
  CREATE TABLE `phieu_nhap_detail` (
  `ma_vat_tu` int NOT NULL,
  `so_phieu_nhap` int NOT NULL,
  `dg_nhap` int DEFAULT NULL,
  `sl_nhap` int DEFAULT NULL,
  PRIMARY KEY (`ma_vat_tu`,`so_phieu_nhap`),
  KEY `so_phieu_nhap` (`so_phieu_nhap`),
  CONSTRAINT `phieu_nhap_detail_ibfk_1` FOREIGN KEY (`ma_vat_tu`) REFERENCES `vat_tu` (`ma_vat_tu`),
  CONSTRAINT `phieu_nhap_detail_ibfk_2` FOREIGN KEY (`so_phieu_nhap`) REFERENCES `phieu_nhap` (`so_phieu_nhap`)
);
CREATE TABLE `phieu_xuat` (
  `so_phieu_xuat` int NOT NULL AUTO_INCREMENT,
  `ngay_xuat` date DEFAULT NULL,
  PRIMARY KEY (`so_phieu_xuat`)
);
CREATE TABLE `phieu_xuat_detail` (
  `so_phieu_xuat` int NOT NULL,
  `ma_vat_tu` int NOT NULL,
  `dg_xuat` int DEFAULT NULL,
  `sl_xuat` int DEFAULT NULL,
  PRIMARY KEY (`so_phieu_xuat`,`ma_vat_tu`),
  KEY `ma_vat_tu` (`ma_vat_tu`),
  CONSTRAINT `phieu_xuat_detail_ibfk_1` FOREIGN KEY (`so_phieu_xuat`) REFERENCES `phieu_xuat` (`so_phieu_xuat`),
  CONSTRAINT `phieu_xuat_detail_ibfk_2` FOREIGN KEY (`ma_vat_tu`) REFERENCES `vat_tu` (`ma_vat_tu`)
);
CREATE TABLE `vat_tu` (
  `ma_vat_tu` int NOT NULL AUTO_INCREMENT,
  `ten_vat_tu` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ma_vat_tu`)
);