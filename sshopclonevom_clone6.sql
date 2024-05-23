/*
 Navicat Premium Dump SQL

 Source Server         : boss_travel
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : sshopclonevom_clone6

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 17/05/2024 21:42:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT 0,
  `trans_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `seller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `buyer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `account` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `create_time` int NOT NULL DEFAULT 0,
  `update_time` int NOT NULL DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'LIVE',
  `time_live` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accounts
-- ----------------------------
INSERT INTO `accounts` VALUES (1, 1, 'UXBG1715609674', '1', '1', '1222', '2024-05-13 14:14:22', '2024-05-13 14:14:34', 1715609662, 1715609662, 'LIVE', 0);
INSERT INTO `accounts` VALUES (2, 1, NULL, '1', '2', '2213123', '2024-05-13 14:31:25', '2024-05-13 14:31:25', 1715610685, 1715610685, 'LIVE', 0);
INSERT INTO `accounts` VALUES (3, 1, 'IVYX1715612245', '1', '1', '21321321', '2024-05-13 14:49:42', '2024-05-13 14:57:25', 1715611782, 1715611782, 'LIVE', 0);
INSERT INTO `accounts` VALUES (4, 1, 'MGBH1715612363', '1', '1', 'aaaa', '2024-05-13 14:49:52', '2024-05-13 14:59:23', 1715611792, 1715611792, 'LIVE', 0);
INSERT INTO `accounts` VALUES (5, 1, 'GJCV1715612605', '1', '2', 'adasdsa', '2024-05-13 15:00:28', '2024-05-13 15:03:25', 1715612428, 1715612428, 'LIVE', 0);

-- ----------------------------
-- Table structure for addons
-- ----------------------------
DROP TABLE IF EXISTS `addons`;
CREATE TABLE `addons`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `image` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `createdate` datetime NOT NULL,
  `price` int NOT NULL DEFAULT 0,
  `purchase_key` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14233 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of addons
-- ----------------------------
INSERT INTO `addons` VALUES (1, 'Template 3', 'Giao di?n bán s?n ph?m #3', 'https://i.imgur.com/929iYyH.png', '2022-04-07 10:02:41', 200000, 'e5203a350d71f30d999153e08ad79bdf');
INSERT INTO `addons` VALUES (2, 'T?o giao d?ch ?o', 'H? th?ng t? t?o giao d?ch n?p ti?n, mua s?n ph?m ?o ?? t?ng uy tín cho shop', 'https://i.imgur.com/6kNRjfN.png', '2022-04-07 20:52:41', 100000, 'baadb924d2cadfb5c74be43d1b3eebd4');
INSERT INTO `addons` VALUES (3, 'Template 4', 'Giao di?n bán s?n ph?m #4', 'https://i.imgur.com/bXmRtMM.png', '2022-04-09 15:42:41', 200000, 'f919daa1d639c4ed0356a0466a331f41');
INSERT INTO `addons` VALUES (4, 'B?ng X?p H?ng N?p Ti?n', 'B?ng x?p hàng n?p ti?n cho thành viên', 'https://i.imgur.com/ZRIRAaB.png', '2022-04-12 02:42:41', 200000, '8d85105a3abc6a960320382955a9d5fd');
INSERT INTO `addons` VALUES (24, 'N?p Ti?n Server 2', 'N?p ti?n b?ng n?i dung + id', 'https://i.imgur.com/CydpsWl.png', '2022-04-19 01:40:11', 500000, '0965270ae13769d112787287ab5b8e6b');
INSERT INTO `addons` VALUES (211, 'S? L??ng ?ã Bán ?o', '?i?u ch?nh s? l??ng ?ã bán ?o (s? l??ng ?o + s? l??ng th?t)', 'https://i.imgur.com/3tOOFDC.png', '2022-04-26 01:40:11', 50000, 'dbc5f1fe913631d835d17aa9db663752');
INSERT INTO `addons` VALUES (14232, 'Bán Fanpage/Group', 'Addon bán Fanpage/Group th? công', 'https://i.imgur.com/jmIjBfI.png', '2022-05-07 01:59:00', 1000000, '82217701969ac859aa250667f34d7831');

-- ----------------------------
-- Table structure for banks
-- ----------------------------
DROP TABLE IF EXISTS `banks`;
CREATE TABLE `banks`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `accountName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `accountNumber` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banks
-- ----------------------------

-- ----------------------------
-- Table structure for blogs
-- ----------------------------
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `display` int NOT NULL DEFAULT 0,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `view` int NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blogs
-- ----------------------------

-- ----------------------------
-- Table structure for cards
-- ----------------------------
DROP TABLE IF EXISTS `cards`;
CREATE TABLE `cards`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT 0,
  `trans_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `telco` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `amount` int NOT NULL DEFAULT 0,
  `price` int NOT NULL DEFAULT 0,
  `serial` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `pin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` int NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `trans_id`(`trans_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cards
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stt` int NOT NULL DEFAULT 0,
  `id_api` int NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 0, 0, 'Chuyên Mục 1', 'assets/storage/images/categoryZ3G.png', 1);
INSERT INTO `categories` VALUES (2, 0, 0, 'Chuyên Mục 2', 'assets/storage/images/categoryUYP.png', 1);

-- ----------------------------
-- Table structure for coupon_used
-- ----------------------------
DROP TABLE IF EXISTS `coupon_used`;
CREATE TABLE `coupon_used`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `coupon_id` int NOT NULL DEFAULT 0,
  `user_id` int NOT NULL DEFAULT 0,
  `trans_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `createdate` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_used
-- ----------------------------

-- ----------------------------
-- Table structure for coupons
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `amount` int NOT NULL DEFAULT 0,
  `used` int NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupons
-- ----------------------------

-- ----------------------------
-- Table structure for document_categories
-- ----------------------------
DROP TABLE IF EXISTS `document_categories`;
CREATE TABLE `document_categories`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stt` int NOT NULL DEFAULT 0,
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `image` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of document_categories
-- ----------------------------

-- ----------------------------
-- Table structure for documents
-- ----------------------------
DROP TABLE IF EXISTS `documents`;
CREATE TABLE `documents`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stt` int NOT NULL DEFAULT 0,
  `user_id` int NOT NULL DEFAULT 0,
  `category_id` int NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `image` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `content` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `price` float NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 1,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of documents
-- ----------------------------

-- ----------------------------
-- Table structure for dongtien
-- ----------------------------
DROP TABLE IF EXISTS `dongtien`;
CREATE TABLE `dongtien`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT 0,
  `sotientruoc` int NOT NULL DEFAULT 0,
  `sotienthaydoi` int NOT NULL DEFAULT 0,
  `sotiensau` int NOT NULL DEFAULT 0,
  `thoigian` datetime NOT NULL,
  `noidung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dongtien
-- ----------------------------
INSERT INTO `dongtien` VALUES (1, 1, 0, 100000, 100000, '2024-05-13 13:07:26', '123');
INSERT INTO `dongtien` VALUES (2, 1, 100000, 100000, 200000, '2024-05-13 13:09:57', '');
INSERT INTO `dongtien` VALUES (3, 1, 200000, 100000, 300000, '2024-05-13 13:10:03', '');
INSERT INTO `dongtien` VALUES (4, 1, 300000, 100000, 400000, '2024-05-13 13:10:11', '');
INSERT INTO `dongtien` VALUES (5, 1, 400000, 2000, 402000, '2024-05-13 13:12:05', '');
INSERT INTO `dongtien` VALUES (6, 1, 402000, 2000, 404000, '2024-05-13 13:12:52', '');
INSERT INTO `dongtien` VALUES (7, 1, 404000, 2000, 406000, '2024-05-13 13:15:03', '');
INSERT INTO `dongtien` VALUES (8, 1, 406000, 2000, 408000, '2024-05-13 13:46:16', '');
INSERT INTO `dongtien` VALUES (9, 2, 0, 2000, 2000, '2024-05-13 14:04:12', '');
INSERT INTO `dongtien` VALUES (10, 1, 408000, 1000, 407000, '2024-05-13 14:14:34', 'Thanh toán đơn hàng mua tài khoản #UXBG1715609674');
INSERT INTO `dongtien` VALUES (11, 1, 407000, 1000, 408000, '2024-05-13 14:14:35', 'Doanh thu đơn hàng #UXBG1715609674');
INSERT INTO `dongtien` VALUES (12, 1, 408000, 1000, 407000, '2024-05-13 14:57:25', 'Thanh toán đơn hàng mua tài khoản #IVYX1715612245');
INSERT INTO `dongtien` VALUES (13, 1, 407000, 1000, 406000, '2024-05-13 14:59:23', 'Thanh toán đơn hàng mua tài khoản #MGBH1715612363');
INSERT INTO `dongtien` VALUES (14, 1, 406000, 1000, 407000, '2024-05-13 14:59:23', 'Doanh thu đơn hàng #MGBH1715612363');
INSERT INTO `dongtien` VALUES (15, 2, 2000, 1000, 1000, '2024-05-13 15:03:25', 'Thanh toán đơn hàng mua tài khoản #GJCV1715612605');
INSERT INTO `dongtien` VALUES (16, 1, 407000, 1000, 408000, '2024-05-13 15:03:25', 'Doanh thu đơn hàng #GJCV1715612605');

-- ----------------------------
-- Table structure for giftbox
-- ----------------------------
DROP TABLE IF EXISTS `giftbox`;
CREATE TABLE `giftbox`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` int NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int NOT NULL DEFAULT 0,
  `user_id` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of giftbox
-- ----------------------------

-- ----------------------------
-- Table structure for invoices
-- ----------------------------
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_id` int NOT NULL DEFAULT 0,
  `trans_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `amount` int NOT NULL DEFAULT 0,
  `pay` int NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `create_time` int NOT NULL DEFAULT 0,
  `update_time` int NOT NULL DEFAULT 0,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `tid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fake` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `trans_id`(`trans_id` ASC) USING BTREE,
  UNIQUE INDEX `tid`(`tid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoices
-- ----------------------------
INSERT INTO `invoices` VALUES (1, 'deposit_money', 1, '86CD', '', 50000, 50000, 1, '2024-05-12 10:56:56', '2024-05-12 10:56:56', 1715511416, 1715511416, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (2, 'deposit_money', 2, 'Y1NF', '', 200000, 200000, 1, '2024-05-12 11:56:14', '2024-05-12 11:56:14', 1715514974, 1715514974, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (3, 'deposit_money', 2, 'F893', '', 50000, 50000, 1, '2024-05-12 12:12:14', '2024-05-12 12:12:14', 1715515934, 1715515934, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (4, 'deposit_money', 1, 'BS7Y', '', 15000, 15000, 1, '2024-05-12 12:33:14', '2024-05-12 12:33:14', 1715517194, 1715517194, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (5, 'deposit_money', 2, 'CJXT', '', 55000, 55000, 1, '2024-05-12 12:54:14', '2024-05-12 12:54:14', 1715518454, 1715518454, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (6, 'deposit_money', 2, 'KTB4', '', 65000, 65000, 1, '2024-05-12 13:13:48', '2024-05-12 13:13:48', 1715519628, 1715519628, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (7, 'deposit_money', 2, 'DTQU', '', 15000, 15000, 1, '2024-05-12 13:15:54', '2024-05-12 13:15:54', 1715519754, 1715519754, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (8, 'deposit_money', 1, 'ES2V', '', 100000, 100000, 1, '2024-05-12 13:26:14', '2024-05-12 13:26:14', 1715520374, 1715520374, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (9, 'deposit_money', 1, 'UBYS', '', 60000, 60000, 1, '2024-05-12 13:26:14', '2024-05-12 13:26:14', 1715520374, 1715520374, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (10, 'deposit_money', 1, 'XRQC', '', 70000, 70000, 1, '2024-05-12 13:36:48', '2024-05-12 13:36:48', 1715521008, 1715521008, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (11, 'deposit_money', 2, '9QTX', '', 1500000, 1500000, 1, '2024-05-12 13:40:14', '2024-05-12 13:40:14', 1715521214, 1715521214, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (12, 'deposit_money', 2, '9ETK', '', 45000, 45000, 1, '2024-05-12 13:42:14', '2024-05-12 13:42:14', 1715521334, 1715521334, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (13, 'deposit_money', 2, '34QR', '', 40000, 40000, 1, '2024-05-12 13:49:14', '2024-05-12 13:49:14', 1715521754, 1715521754, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (14, 'deposit_money', 1, 'FNVG', '', 45000, 45000, 1, '2024-05-12 13:58:03', '2024-05-12 13:58:03', 1715522283, 1715522283, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (15, 'deposit_money', 1, 'KU4C', '', 500000, 500000, 1, '2024-05-12 14:09:14', '2024-05-12 14:09:14', 1715522954, 1715522954, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (16, 'deposit_money', 1, '957E', '', 1500000, 1500000, 1, '2024-05-12 14:14:14', '2024-05-12 14:14:14', 1715523254, 1715523254, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (17, 'deposit_money', 2, '9RGZ', '', 45000, 45000, 1, '2024-05-12 14:19:34', '2024-05-12 14:19:34', 1715523574, 1715523574, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (18, 'deposit_money', 2, 'MV8C', '', 40000, 40000, 1, '2024-05-13 11:17:52', '2024-05-13 11:17:52', 1715599072, 1715599072, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (19, 'deposit_money', 2, '6UK1', '', 35000, 35000, 1, '2024-05-13 11:43:43', '2024-05-13 11:43:43', 1715600623, 1715600623, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (20, 'deposit_money', 1, 'KYBJ', '', 1000000, 1000000, 1, '2024-05-13 11:47:43', '2024-05-13 11:47:43', 1715600863, 1715600863, '', NULL, NULL, 0);
INSERT INTO `invoices` VALUES (25, 'deposit_money', 1, '260632', 'Banking', 2000, 2000, 1, '2024-05-13 13:12:52', '2024-05-13 13:12:52', 1715605972, 1715605972, '', NULL, NULL, 0);
INSERT INTO `invoices` VALUES (26, 'deposit_money', 1, '350169', 'Banking', 2000, 2000, 1, '2024-05-13 13:15:03', '2024-05-13 13:15:03', 1715606103, 1715606103, '', NULL, NULL, 0);
INSERT INTO `invoices` VALUES (32, 'deposit_money', 2, '8BCX', '', 35000, 35000, 1, '2024-05-13 13:26:43', '2024-05-13 13:26:43', 1715606803, 1715606803, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (56, 'deposit_money', 1, '320361', 'Banking', 2000, 2000, 1, '2024-05-13 13:46:16', '2024-05-13 13:46:16', 1715607976, 1715607976, '', NULL, NULL, 0);
INSERT INTO `invoices` VALUES (57, 'deposit_money', 2, '468475', 'Banking', 2000, 2000, 1, '2024-05-13 14:04:12', '2024-05-13 14:04:12', 1715609052, 1715609052, '', NULL, NULL, 0);
INSERT INTO `invoices` VALUES (59, 'deposit_money', 2, 'TSFK', '', 50000, 50000, 1, '2024-05-13 14:40:39', '2024-05-13 14:40:39', 1715611239, 1715611239, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (60, 'deposit_money', 1, 'YEHX', '', 70000, 70000, 1, '2024-05-13 14:43:57', '2024-05-13 14:43:57', 1715611437, 1715611437, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (61, 'deposit_money', 1, 'UCM3', '', 500000, 500000, 1, '2024-05-13 14:56:42', '2024-05-13 14:56:42', 1715612202, 1715612202, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (62, 'deposit_money', 2, 'TWXP', '', 300000, 300000, 1, '2024-05-13 15:02:03', '2024-05-13 15:02:03', 1715612523, 1715612523, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (63, 'deposit_money', 1, 'DJNU', '', 55000, 55000, 1, '2024-05-13 15:03:42', '2024-05-13 15:03:42', 1715612622, 1715612622, '', NULL, NULL, 1);
INSERT INTO `invoices` VALUES (64, 'deposit_money', 1, 'W19Z', '', 70000, 70000, 1, '2024-05-13 15:05:42', '2024-05-13 15:05:42', 1715612742, 1715612742, '', NULL, NULL, 1);

-- ----------------------------
-- Table structure for ip_white
-- ----------------------------
DROP TABLE IF EXISTS `ip_white`;
CREATE TABLE `ip_white`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ip_white
-- ----------------------------

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `lang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `lang_default` int NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of languages
-- ----------------------------
INSERT INTO `languages` VALUES (8, 'Vietnamese', 'assets/storage/flags/flag_Vietnamese.png', 1, 1);
INSERT INTO `languages` VALUES (16, 'English', 'assets/storage/flags/flag_English.png', 0, 1);

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT 0,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `device` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `action` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES (1, 1, '116.110.90.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-19 08:06:39', 'Thực hiện tạo tài khoản');
INSERT INTO `logs` VALUES (2, 1, '116.110.90.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-19 08:07:16', '[Warning] Đăng nhập thành công vào hệ thống Admin');
INSERT INTO `logs` VALUES (3, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2022-12-06 19:01:34', 'Thực hiện tạo tài khoản');
INSERT INTO `logs` VALUES (4, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-12 10:45:07', 'Đăng nhập thành công vào hệ thống');
INSERT INTO `logs` VALUES (5, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-12 10:45:21', 'Đăng nhập thành công vào hệ thống');
INSERT INTO `logs` VALUES (6, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-12 10:45:45', '[Warning] Đăng nhập thành công vào hệ thống Admin');
INSERT INTO `logs` VALUES (7, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 11:13:21', '[Warning] Đăng nhập thành công vào hệ thống Admin');
INSERT INTO `logs` VALUES (9, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 13:02:09', 'Tạo hoá đơn nạp tiền #260632');
INSERT INTO `logs` VALUES (10, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 13:07:00', '[Warning] Đăng nhập thành công vào hệ thống Admin');
INSERT INTO `logs` VALUES (11, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 13:12:52', 'Tạo hoá đơn nạp tiền #260632');
INSERT INTO `logs` VALUES (12, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 13:15:03', 'Tạo hoá đơn nạp tiền #350169');
INSERT INTO `logs` VALUES (13, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 13:46:16', 'Tạo hoá đơn nạp tiền #320361');
INSERT INTO `logs` VALUES (14, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 14:00:34', 'Đăng nhập thành công vào hệ thống');
INSERT INTO `logs` VALUES (15, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 14:04:12', 'Tạo hoá đơn nạp tiền #468475');
INSERT INTO `logs` VALUES (16, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 14:08:46', 'Đăng nhập thành công vào hệ thống');
INSERT INTO `logs` VALUES (17, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 14:09:15', '[Warning] Đăng nhập thành công vào hệ thống Admin');
INSERT INTO `logs` VALUES (18, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 14:12:13', 'Thêm chuyên mục (Tài Khoản 1) vào hệ thống.');
INSERT INTO `logs` VALUES (19, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 14:13:18', 'Thêm sản phẩm (Ahihi) vào hệ thống.');
INSERT INTO `logs` VALUES (20, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 14:30:37', 'Chỉnh sửa chuyên mục (Tài Khoản 1 ID 1).');
INSERT INTO `logs` VALUES (21, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 14:31:02', 'Thêm chuyên mục (Chuyên Mục 2) vào hệ thống.');
INSERT INTO `logs` VALUES (22, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 14:48:53', 'Đăng nhập thành công vào hệ thống');
INSERT INTO `logs` VALUES (23, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 14:49:27', '[Warning] Đăng nhập thành công vào hệ thống Admin');
INSERT INTO `logs` VALUES (24, 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 15:02:25', 'Đăng nhập thành công vào hệ thống');
INSERT INTO `logs` VALUES (25, 2, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', '2024-05-13 15:02:56', 'Đăng nhập thành công vào hệ thống');
INSERT INTO `logs` VALUES (26, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-13 15:09:31', '[Warning] Đăng nhập thành công vào hệ thống Admin');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `href` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` int NOT NULL DEFAULT 0,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` int NOT NULL DEFAULT 0,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `createdate` datetime NOT NULL,
  `timeago` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notifications
-- ----------------------------

-- ----------------------------
-- Table structure for order_autofb
-- ----------------------------
DROP TABLE IF EXISTS `order_autofb`;
CREATE TABLE `order_autofb`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT 0,
  `trans_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_rate_autofb` int NOT NULL DEFAULT 0,
  `insertId` int NULL DEFAULT 0,
  `payment` int NOT NULL DEFAULT 0,
  `payment_api` int NOT NULL DEFAULT 0,
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT 0,
  `subscribers` int NOT NULL DEFAULT 0,
  `count_success` int NOT NULL DEFAULT 0,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `server` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `create_time` int NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `update_time` int NOT NULL DEFAULT 0,
  `update_gettime` datetime NOT NULL,
  `status` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_autofb
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `trans_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `seller` int NOT NULL DEFAULT 0,
  `buyer` int NOT NULL DEFAULT 0,
  `product_id` int NOT NULL DEFAULT 0,
  `document_id` int NOT NULL DEFAULT 0,
  `store_fanpage_id` int NOT NULL DEFAULT 0,
  `amount` int NOT NULL DEFAULT 0,
  `pay` int NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `create_time` int NOT NULL DEFAULT 0,
  `display` int NOT NULL DEFAULT 1,
  `fake` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `trans_id`(`trans_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 'UXBG1715609674', 1, 2, 1, 0, 0, 1, 1000, '2024-05-13 14:14:34', 1715609674, 1, 0);
INSERT INTO `orders` VALUES (2, 'X2HN', 1, 2, 1, 0, 0, 44, 44000, '2024-05-13 14:51:00', 1715611860, 1, 1);
INSERT INTO `orders` VALUES (3, 'MGBH1715612363', 1, 2, 1, 0, 0, 1, 1000, '2024-05-13 14:59:23', 1715612363, 1, 0);
INSERT INTO `orders` VALUES (4, 'GJCV1715612605', 1, 2, 1, 0, 0, 1, 1000, '2024-05-13 15:03:25', 1715612605, 1, 0);
INSERT INTO `orders` VALUES (5, 'RGZ6', 1, 2, 1, 0, 0, 19, 19000, '2024-05-13 15:03:42', 1715612622, 1, 1);
INSERT INTO `orders` VALUES (6, 'VA62', 1, 2, 1, 0, 0, 48, 48000, '2024-05-13 15:08:41', 1715612921, 1, 1);
INSERT INTO `orders` VALUES (7, 'Z6NB', 1, 1, 1, 0, 0, 37, 37000, '2024-05-13 15:09:31', 1715612971, 1, 1);

-- ----------------------------
-- Table structure for payment_paypal
-- ----------------------------
DROP TABLE IF EXISTS `payment_paypal`;
CREATE TABLE `payment_paypal`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `trans_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `amount` float NOT NULL DEFAULT 0,
  `price` int NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `create_time` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_paypal
-- ----------------------------

-- ----------------------------
-- Table structure for payment_pm
-- ----------------------------
DROP TABLE IF EXISTS `payment_pm`;
CREATE TABLE `payment_pm`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT 0,
  `payment_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `amount` int NOT NULL DEFAULT 0,
  `price` int NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `create_time` int NOT NULL DEFAULT 0,
  `update_date` datetime NOT NULL,
  `update_time` int NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_pm
-- ----------------------------

-- ----------------------------
-- Table structure for paypal
-- ----------------------------
DROP TABLE IF EXISTS `paypal`;
CREATE TABLE `paypal`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_number` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `txn_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `payment_gross` float(10, 2) NOT NULL,
  `currency_code` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `payment_status` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paypal
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `stt` int NOT NULL DEFAULT 0,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `category_id` int NOT NULL DEFAULT 0,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `flag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `price` int NOT NULL DEFAULT 0,
  `checklive` int NOT NULL DEFAULT 0,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` int NOT NULL DEFAULT 1,
  `preview` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `time_delete_account` int NOT NULL DEFAULT 0,
  `minimum` int NOT NULL DEFAULT 1,
  `maximum` int NOT NULL DEFAULT 10000,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 0, '1', 1, 'Ahihi', 'vn', 1000, 0, 'Ahihihi', 1, '', 0, 1, 10000);

-- ----------------------------
-- Table structure for promotions
-- ----------------------------
DROP TABLE IF EXISTS `promotions`;
CREATE TABLE `promotions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `amount` int NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 1,
  `create_date` datetime NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of promotions
-- ----------------------------

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `answer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of questions
-- ----------------------------

-- ----------------------------
-- Table structure for rate_autofb
-- ----------------------------
DROP TABLE IF EXISTS `rate_autofb`;
CREATE TABLE `rate_autofb`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_api` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name_api` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `loaiseeding` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  `name_loaiseeding` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rate_autofb
-- ----------------------------

-- ----------------------------
-- Table structure for reviews
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int NOT NULL DEFAULT 0,
  `order_id` int NOT NULL DEFAULT 0,
  `rating` int NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `datetime` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reviews
-- ----------------------------

-- ----------------------------
-- Table structure for send_email
-- ----------------------------
DROP TABLE IF EXISTS `send_email`;
CREATE TABLE `send_email`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `template` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `receiver` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `title` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `content` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `bcc` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` int NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `response` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of send_email
-- ----------------------------

-- ----------------------------
-- Table structure for server2_autobank
-- ----------------------------
DROP TABLE IF EXISTS `server2_autobank`;
CREATE TABLE `server2_autobank`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT 0,
  `tid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `amount` float NOT NULL DEFAULT 0,
  `received` float NOT NULL DEFAULT 0,
  `create_gettime` datetime NOT NULL,
  `create_time` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tid`(`tid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of server2_autobank
-- ----------------------------

-- ----------------------------
-- Table structure for service_order
-- ----------------------------
DROP TABLE IF EXISTS `service_order`;
CREATE TABLE `service_order`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `trans_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `seller` int NOT NULL DEFAULT 0,
  `buyer` int NOT NULL DEFAULT 0,
  `service_id` int NOT NULL DEFAULT 0,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `amount` int NOT NULL DEFAULT 0,
  `pay` int NOT NULL DEFAULT 0,
  `status` int NOT NULL DEFAULT 0 COMMENT '0 xử lý, 1 hoàn tất, 2 huỷ',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `trans_id`(`trans_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service_order
-- ----------------------------

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT 0,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `price` int NOT NULL DEFAULT 0,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of services
-- ----------------------------

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NULL DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_vietnamese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'logo', 'assets/img/cmsnt_light.png');
INSERT INTO `settings` VALUES (2, 'title', 'TeeBi - Shop Account');
INSERT INTO `settings` VALUES (3, 'thongbao', '<div class=\"iq-alert-text\">\r\n<h4>&nbsp;</h4>\r\n</div>\r\n');
INSERT INTO `settings` VALUES (4, 'logo_light', 'assets/storage/images/logo_light_7TJ.png');
INSERT INTO `settings` VALUES (5, 'logo_dark', 'assets/storage/images/logo_dark_ZHM.png');
INSERT INTO `settings` VALUES (6, 'image', 'assets/storage/images/image_0NH.png');
INSERT INTO `settings` VALUES (7, 'favicon', 'assets/storage/images/favicon_H85.png');
INSERT INTO `settings` VALUES (8, 'description', 'TeeBi.Shop - Shop Chuyên Cung Cấp Các Tài Khoản Clone Facebook, Via , Shopee, Gmail , Twitter Bm Chạy Quảng Cáo...');
INSERT INTO `settings` VALUES (9, 'keywords', 'Web bán các loại tài khoản giá rẻ');
INSERT INTO `settings` VALUES (10, 'author', 'TeeBi');
INSERT INTO `settings` VALUES (11, 'status', '1');
INSERT INTO `settings` VALUES (12, 'status_bank', '1');
INSERT INTO `settings` VALUES (13, 'type_bank', 'MBBank');
INSERT INTO `settings` VALUES (14, 'stk_bank', '888817082008');
INSERT INTO `settings` VALUES (15, 'name_bank', 'HOANG THI GIANG');
INSERT INTO `settings` VALUES (16, 'mk_bank', 'Mon17082008');
INSERT INTO `settings` VALUES (17, 'status_momo', '1');
INSERT INTO `settings` VALUES (18, 'token_momo', 'DE3EB335-5EC7-416D-92E1-2E13A0ACF346');
INSERT INTO `settings` VALUES (19, 'sdt_momo', '');
INSERT INTO `settings` VALUES (20, 'name_momo', '');
INSERT INTO `settings` VALUES (21, 'timeUpdate', '');
INSERT INTO `settings` VALUES (27, 'token_bank', 'EC9ADC5D-8199-B870-8196-1969CFAE2AC0');
INSERT INTO `settings` VALUES (28, 'javascript', '');
INSERT INTO `settings` VALUES (31, 'email_smtp', '');
INSERT INTO `settings` VALUES (32, 'pass_email_smtp', '');
INSERT INTO `settings` VALUES (34, 'bg_login', 'assets/storage/images/bg_login8O1.png');
INSERT INTO `settings` VALUES (35, 'bg_register', 'assets/storage/images/bg_registerCKA.png');
INSERT INTO `settings` VALUES (36, 'time_cron_24h', '0');
INSERT INTO `settings` VALUES (37, 'status_demo', '0');
INSERT INTO `settings` VALUES (39, 'license_key', '');
INSERT INTO `settings` VALUES (40, 'email', 'hotronguyenlieufacebook@gmail.com');
INSERT INTO `settings` VALUES (41, 'hotline', '0867080069');
INSERT INTO `settings` VALUES (42, 'qr_momo', '/assets/storage/images/momo.png');
INSERT INTO `settings` VALUES (43, 'recharge_notice', '<p><strong><u>Hướng dẫn thanh to&aacute;n</u></strong></p>\r\n\r\n<p>1. Chọn ng&acirc;n h&agrave;ng ph&ugrave; hợp, nhập số tiền cần nạp&nbsp;rồi&nbsp;ấn&nbsp;tạo đơn.</p>\r\n\r\n<p>2. Chuyển tiền đ&uacute;ng&nbsp;theo th&ocirc;ng tin trong đơn đ&atilde; tạo k&egrave;m nội dung chuyển khoản.</p>\r\n\r\n<p>3. Trở về trang chủ đợi 2 - 5 ph&uacute;t rồi load lại trang để cập nhật số dư. Nếu sau 10 ph&uacute;t&nbsp;kh&ocirc;ng nhận được tiền th&igrave; li&ecirc;n hệ&nbsp;<strong><a href=\"https://zalo.me/0772841374\" target=\"_blank\">ZALO</a></strong></p>\r\n');
INSERT INTO `settings` VALUES (44, 'contact_page', '<p><span style=\"font-size:18px\"><strong>Li&ecirc;n hệ qua th&ocirc;ng tin dưới đ&acirc;y:</strong></span></p>\r\n\r\n<ul>\r\n	<li><em><strong>Facebook :&nbsp;<a href=\"https://www.facebook.com/HuuToan.135\">Pham Huu Toan</a></strong></em></li>\r\n	<li><em><strong>Zalo:&nbsp;</strong></em><em><strong><a href=\"https://zalo.me/0913129685\">To&agrave;n</a></strong></em></li>\r\n	<li><em><strong>Facebook:&nbsp;<a href=\"https://www.facebook.com/ben.lorievernus/\">Nguyễn Bền</a></strong></em></li>\r\n	<li><em><strong>Zalo:&nbsp;</strong></em><em><strong><a href=\"https://zalo.me/0772841374\">0772841374</a></strong></em></li>\r\n</ul>\r\n');
INSERT INTO `settings` VALUES (45, 'gif_loading', 'assets/storage/images/gif_loadingZOA.png');
INSERT INTO `settings` VALUES (46, 'check_time_cron', '1715605427');
INSERT INTO `settings` VALUES (47, 'check_time_cron_bank', '1715605427');
INSERT INTO `settings` VALUES (48, 'min_rating', '10');
INSERT INTO `settings` VALUES (49, 'orders_notice', '<h2 style=\"font-style:italic\"><span style=\"font-size:14px\">Cảm Ơn Bạn Đ&atilde; Sử Dụng Dịch Vụ Của Ch&uacute;ng T&ocirc;i Dịch Vụ Clone Của Ch&uacute;ng T&ocirc;i Đ&atilde; Check Live Trước Khi B&aacute;n N&ecirc;n Bạn Y&ecirc;n T&acirc;m Khi Sử Dụng.</span></h2>\r\n');
INSERT INTO `settings` VALUES (50, 'type_showProduct', '1');
INSERT INTO `settings` VALUES (51, 'clientId_paypal', '');
INSERT INTO `settings` VALUES (52, 'status_paypal', '0');
INSERT INTO `settings` VALUES (53, 'status_thesieure', '1');
INSERT INTO `settings` VALUES (54, 'token_thesieure', 'DE3EB335-5EC7-416D-92E1-2E13A0ACF346');
INSERT INTO `settings` VALUES (55, 'check_time_cron_thesieure', '1655623445');
INSERT INTO `settings` VALUES (56, 'api_napthe', 'TwqumFzvylHICpPkVotjNExSaiQORAhZBLYbDXdfGcgMsJUKnerW');
INSERT INTO `settings` VALUES (57, 'status_napthe', '0');
INSERT INTO `settings` VALUES (58, 'notice_napthe', '<ul>\r\n	<li><span style=\"color:#ff0000\">Vui l&ograve;ng nhập đ&uacute;ng mệnh gi&aacute;, đ&uacute;ng loại thẻ</span></li>\r\n	<li><span style=\"color:#ff0000\">Nạp sai mệnh gi&aacute;, sai loại thẻ sẽ mất thẻ, vui l&ograve;ng ch&uacute; &yacute;&nbsp;</span></li>\r\n	<li><span style=\"color:#ff0000\">Chiếu khấu thẻ chung : 20%</span></li>\r\n</ul>\r\n');
INSERT INTO `settings` VALUES (59, 'ck_napthe', '20');
INSERT INTO `settings` VALUES (60, 'chinh_sach_bao_mat', '<p>Điều 1 : Quy định sử dụng L&agrave; c&aacute;c quy định li&ecirc;n quan đến việc sử dụng dịch vụ tr&ecirc;n&nbsp;<strong>TeeBi.Shop</strong>. Người d&ugrave;ng khi đăng k&yacute;, v&agrave; sau khi đi đăng k&yacute; đều phải tu&acirc;n thủ những quy định n&agrave;y.</p>\r\n\r\n<p>Điều 2 : Thay đổi quy định C&ocirc;ng ty ch&uacute;ng t&ocirc;i c&oacute; thể thay đổi quy định theo c&aacute;c ch&iacute;nh s&aacute;ch của c&ocirc;ng ty. Khi c&oacute; thay đổi, ch&uacute;ng t&ocirc;i sẽ đăng tải một phi&ecirc;n bản l&ecirc;n&nbsp;<strong>TeeBi.Shop</strong>, phi&ecirc;n bản sửa đổi sẽ c&oacute; hiệu lực tại thời điểm được đăng. Sau khi quy định thay đổi, nếu th&agrave;nh vi&ecirc;n sử dụng&nbsp;<strong>TeeBi.Shop</strong>, ch&uacute;ng t&ocirc;i coi th&agrave;nh vi&ecirc;n đ&atilde; chấp nhận tất cả c&aacute;c quy định mới.</p>\r\n\r\n<p>Điều 3 : Sử dụng dịch vụ Người d&ugrave;ng đăng k&yacute; t&agrave;i khoản tr&ecirc;n&nbsp;<strong>TeeBi.Shop</strong>&nbsp;l&agrave; người đ&atilde; đăng k&yacute; sử dụng dịch vụ theo quy định của C&ocirc;ng ty.</p>\r\n\r\n<p>Điều 4: Tạm ngừng cung cấp dịch vụ&nbsp;<strong>TeeBi.Shop</strong>&nbsp;c&oacute; quyền ngưng cung cấp dịch vụ m&agrave; kh&ocirc;ng ho&agrave;n lại bất kỳ một chi ph&iacute; n&agrave;o trong c&aacute;c trường hợp sau:</p>\r\n\r\n<p>&ndash; Người d&ugrave;ng d&ugrave;ng website v&agrave;o bất kỳ mục đ&iacute;ch/h&igrave;nh thức n&agrave;o vi phạm ph&aacute;p luật Việt Nam.</p>\r\n\r\n<p>&ndash; Người d&ugrave;ng gửi, tạo li&ecirc;n kết hoặc trung chuyển cho c&aacute;c dữ liệu mang t&iacute;nh chất bất hợp ph&aacute;p , đe doạ, lừa dối, th&ugrave; hằn, xuy&ecirc;n tạc, n&oacute;i xấu, tục tĩu, khi&ecirc;u d&acirc;m, x&uacute;c phạm&hellip; hay c&aacute;c h&igrave;nh thức bị ph&aacute;p luật Việt Nam ngăn cấm kh&aacute;c dưới bất kỳ c&aacute;ch thức n&agrave;o.</p>\r\n\r\n<p>&ndash; Người d&ugrave;ng lưu trữ, truyền b&aacute; c&aacute;c dữ liệu n&agrave;o m&agrave; cấu th&agrave;nh hoặc khuyến kh&iacute;ch c&aacute;c h&igrave;nh thức phạm tội; hoặc c&aacute;c dữ liệu mang t&iacute;nh vi phạm luật s&aacute;ng chế, nh&atilde;n hiệu, quyền thiết kế, bản quyền hay bất kỳ quyền sỡ hữu tr&iacute; tuệ hoặc c&aacute;c quyền hạn của bất kỳ c&aacute; nh&acirc;n n&agrave;o.</p>\r\n\r\n<p>&ndash; Người d&ugrave;ng sử dụng website để ph&aacute; hoại một website kh&aacute;c.</p>\r\n\r\n<p>&ndash; Người d&ugrave;ng sử dụng c&aacute;c chương tr&igrave;nh c&oacute; khả năng l&agrave;m tắc nghẽn hoặc đ&igrave;nh trệ hệ thống, như g&acirc;y cạn kiệt t&agrave;i nguy&ecirc;n hệ thống, l&agrave;m qu&aacute; tải bộ vi xử l&yacute; v&agrave; bộ nhớ.</p>\r\n\r\n<p>&ndash; Người d&ugrave;ng kh&ocirc;ng thanh to&aacute;n c&aacute;c chi ph&iacute; đ&uacute;ng hạn.</p>\r\n\r\n<p>Điều 5: Giải quyết tranh chấp, luật &aacute;p dụng Trong qu&aacute; tr&igrave;nh sử dụng nếu xảy ra tranh chấp giữa người sử dụng v&agrave; c&ocirc;ng ty ch&uacute;ng t&ocirc;i, hai b&ecirc;n sẽ tiến h&agrave;nh đ&agrave;m ph&aacute;n h&ograve;a giải với tinh thần hữu nghị. Trong trường hợp kh&ocirc;ng giải quyết được bằng h&ograve;a giải sẽ đưa ra to&agrave; &aacute;n kinh tế giải quyết.</p>\r\n');
INSERT INTO `settings` VALUES (61, 'dieu_khoan_su_dung', '<p>Khi qu&yacute; kh&aacute;ch truy cập v&agrave;o trang web của ch&uacute;ng t&ocirc;i c&oacute; nghĩa l&agrave; qu&yacute; kh&aacute;ch đồng &yacute; với c&aacute;c điều khoản n&agrave;y. Trang web c&oacute; quyền thay đổi, chỉnh sửa, th&ecirc;m hoặc lược bỏ bất kỳ phần n&agrave;o trong Quy định v&agrave; Điều kiện sử dụng, v&agrave;o bất cứ l&uacute;c n&agrave;o. C&aacute;c thay đổi c&oacute; hiệu lực ngay khi được đăng tr&ecirc;n trang web m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o trước. V&agrave; khi qu&yacute; kh&aacute;ch tiếp tục sử dụng trang web, sau khi c&aacute;c thay đổi về quy định v&agrave; điều kiện được đăng tải, c&oacute; nghĩa l&agrave; qu&yacute; kh&aacute;ch chấp nhận với những thay đổi đ&oacute;. Qu&yacute; kh&aacute;ch vui l&ograve;ng kiểm tra thường xuy&ecirc;n để cập nhật những thay đổi của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p><strong>1. Hướng dẫn sử dụng web</strong></p>\r\n\r\n<p>&ndash; Khi v&agrave;o web của ch&uacute;ng t&ocirc;i, người d&ugrave;ng tối thiểu phải 18 tuổi hoặc truy cập dưới sự gi&aacute;m s&aacute;t của cha mẹ hay người gi&aacute;m hộ hợp ph&aacute;p. &ndash; Ch&uacute;ng t&ocirc;i cấp giấy ph&eacute;p sử dụng để bạn c&oacute; thể mua sắm tr&ecirc;n web trong khu&ocirc;n khổ điều khoản v&agrave; điều kiện sử dụng đ&atilde; đề ra. &ndash; Nghi&ecirc;m cấm sử dụng bất kỳ phần n&agrave;o của trang web n&agrave;y với mục đ&iacute;ch thương mại hoặc nh&acirc;n danh bất kỳ đối t&aacute;c thứ ba n&agrave;o nếu kh&ocirc;ng được ch&uacute;ng t&ocirc;i cho ph&eacute;p bằng văn bản. Nếu vi phạm bất cứ điều n&agrave;o trong đ&acirc;y, ch&uacute;ng t&ocirc;i sẽ hủy giấy ph&eacute;p của bạn m&agrave; kh&ocirc;ng cần b&aacute;o trước. &ndash; Trang web n&agrave;y chỉ d&ugrave;ng để cung cấp th&ocirc;ng tin sản phẩm chứ ch&uacute;ng t&ocirc;i kh&ocirc;ng phải nh&agrave; sản xuất n&ecirc;n những nhận x&eacute;t hiển thị tr&ecirc;n web l&agrave; &yacute; kiến c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng, kh&ocirc;ng phải của ch&uacute;ng t&ocirc;i. &ndash; Qu&yacute; kh&aacute;ch phải đăng k&yacute; t&agrave;i khoản với th&ocirc;ng tin x&aacute;c thực về bản th&acirc;n v&agrave; phải cập nhật nếu c&oacute; bất kỳ thay đổi n&agrave;o. Mỗi người truy cập phải c&oacute; tr&aacute;ch nhiệm với mật khẩu, t&agrave;i khoản v&agrave; hoạt động của m&igrave;nh tr&ecirc;n web. Hơn nữa, qu&yacute; kh&aacute;ch phải th&ocirc;ng b&aacute;o cho ch&uacute;ng t&ocirc;i biết khi t&agrave;i khoản bị truy cập tr&aacute;i ph&eacute;p. Ch&uacute;ng t&ocirc;i kh&ocirc;ng chịu bất kỳ tr&aacute;ch nhiệm n&agrave;o, d&ugrave; trực tiếp hay gi&aacute;n tiếp, đối với những thiệt hại hoặc mất m&aacute;t g&acirc;y ra do qu&yacute; kh&aacute;ch kh&ocirc;ng tu&acirc;n thủ quy định. &ndash; Trong suốt qu&aacute; tr&igrave;nh đăng k&yacute;, qu&yacute; kh&aacute;ch đồng &yacute; nhận email quảng c&aacute;o từ website. Sau đ&oacute;, nếu kh&ocirc;ng muốn tiếp tục nhận mail, qu&yacute; kh&aacute;ch c&oacute; thể từ chối bằng c&aacute;ch nhấp v&agrave;o đường link ở dưới c&ugrave;ng trong mọi email quảng c&aacute;o.</p>\r\n\r\n<p><strong>2. Chấp nhận đơn h&agrave;ng v&agrave; gi&aacute; cả</strong></p>\r\n\r\n<p>&ndash; Ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối hoặc hủy đơn h&agrave;ng của qu&yacute; kh&aacute;ch v&igrave; bất kỳ l&yacute; do g&igrave; v&agrave;o bất kỳ l&uacute;c n&agrave;o. Ch&uacute;ng t&ocirc;i c&oacute; thể hỏi th&ecirc;m về số điện thoại v&agrave; địa chỉ trước khi nhận đơn h&agrave;ng. &ndash; Ch&uacute;ng t&ocirc;i cam kết sẽ cung cấp th&ocirc;ng tin gi&aacute; cả ch&iacute;nh x&aacute;c nhất cho người ti&ecirc;u d&ugrave;ng. Tuy nhi&ecirc;n, đ&ocirc;i l&uacute;c vẫn c&oacute; sai s&oacute;t xảy ra, v&iacute; dụ như trường hợp gi&aacute; sản phẩm kh&ocirc;ng hiển thị ch&iacute;nh x&aacute;c tr&ecirc;n trang web hoặc sai gi&aacute;, t&ugrave;y theo từng trường hợp ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ hướng dẫn hoặc th&ocirc;ng b&aacute;o hủy đơn h&agrave;ng đ&oacute; cho qu&yacute; kh&aacute;ch. Ch&uacute;ng t&ocirc;i cũng c&oacute; quyền từ chối hoặc hủy bỏ bất kỳ đơn h&agrave;ng n&agrave;o d&ugrave; đơn h&agrave;ng đ&oacute; đ&atilde; hay chưa được x&aacute;c nhận hoặc đ&atilde; bị thanh to&aacute;n.</p>\r\n\r\n<p><strong>3. Thương hiệu v&agrave; bản quyền</strong></p>\r\n\r\n<p>&ndash; Mọi quyền sở hữu tr&iacute; tuệ (đ&atilde; đăng k&yacute; hoặc chưa đăng k&yacute;), nội dung th&ocirc;ng tin v&agrave; tất cả c&aacute;c thiết kế, văn bản, đồ họa, phần mềm, h&igrave;nh ảnh, video, &acirc;m nhạc, &acirc;m thanh, bi&ecirc;n dịch phần mềm, m&atilde; nguồn v&agrave; phần mềm cơ bản đều l&agrave; t&agrave;i sản của ch&uacute;ng t&ocirc;i. To&agrave;n bộ nội dung của trang web được bảo vệ bởi luật bản quyền của Việt Nam v&agrave; c&aacute;c c&ocirc;ng ước quốc tế. Bản quyền đ&atilde; được bảo lưu.</p>\r\n\r\n<p><strong>4. Quyền ph&aacute;p l&yacute;</strong></p>\r\n\r\n<p>&ndash; C&aacute;c điều kiện, điều khoản v&agrave; nội dung của trang web n&agrave;y được điều chỉnh bởi luật ph&aacute;p Việt Nam v&agrave; T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam sẽ giải quyết bất kỳ tranh chấp n&agrave;o ph&aacute;t sinh từ việc sử dụng tr&aacute;i ph&eacute;p trang web n&agrave;y.</p>\r\n\r\n<p><strong>5. Quy định về bảo mật</strong></p>\r\n\r\n<p>&ndash; Trang web của ch&uacute;ng t&ocirc;i coi trọng việc bảo mật th&ocirc;ng tin v&agrave; sử dụng c&aacute;c biện ph&aacute;p tốt nhất bảo vệ th&ocirc;ng tin v&agrave; việc thanh to&aacute;n của qu&yacute; kh&aacute;ch. Th&ocirc;ng tin của qu&yacute; kh&aacute;ch trong qu&aacute; tr&igrave;nh thanh to&aacute;n sẽ được m&atilde; h&oacute;a để đảm bảo an to&agrave;n. Sau khi qu&yacute; kh&aacute;ch ho&agrave;n th&agrave;nh qu&aacute; tr&igrave;nh đặt h&agrave;ng, qu&yacute; kh&aacute;ch sẽ tho&aacute;t khỏi chế độ an to&agrave;n. &ndash; Qu&yacute; kh&aacute;ch kh&ocirc;ng được sử dụng bất kỳ chương tr&igrave;nh, c&ocirc;ng cụ hay h&igrave;nh thức n&agrave;o kh&aacute;c để can thiệp v&agrave;o hệ thống hay l&agrave;m thay đổi cấu tr&uacute;c dữ liệu. Trang web cũng nghi&ecirc;m cấm việc ph&aacute;t t&aacute;n, truyền b&aacute; hay cổ vũ cho bất kỳ hoạt động n&agrave;o nhằm can thiệp, ph&aacute; hoại hay x&acirc;m nhập v&agrave;o dữ liệu của hệ thống. C&aacute; nh&acirc;n hay tổ chức vi phạm sẽ bị tước bỏ mọi quyền lợi cũng như sẽ bị truy tố trước ph&aacute;p luật nếu cần thiết. &ndash; Mọi th&ocirc;ng tin giao dịch sẽ được bảo mật nhưng trong trường hợp cơ quan ph&aacute;p luật y&ecirc;u cầu, ch&uacute;ng t&ocirc;i sẽ buộc phải cung cấp những th&ocirc;ng tin n&agrave;y cho c&aacute;c cơ quan ph&aacute;p luật.</p>\r\n\r\n<p><strong>6. Thay đổi, hủy bỏ giao dịch tại website</strong></p>\r\n\r\n<p>Trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y: &ndash; Th&ocirc;ng b&aacute;o cho ch&uacute;ng t&ocirc;i về việc hủy giao dịch qua đường d&acirc;y n&oacute;ng &ndash; Trả lại h&agrave;ng ho&aacute; đ&atilde; nhận nhưng chưa sử dụng hoặc hưởng bất kỳ lợi &iacute;ch n&agrave;o từ h&agrave;ng h&oacute;a đ&oacute; (theo quy định của ch&iacute;nh s&aacute;ch đổi trả h&agrave;ng).</p>\r\n');
INSERT INTO `settings` VALUES (62, 'status_update', '1');
INSERT INTO `settings` VALUES (63, 'status_captcha', '0');
INSERT INTO `settings` VALUES (64, 'session_login', '2592000');
INSERT INTO `settings` VALUES (65, 'gif_giftbox', 'assets/storage/images/gif_giftboxWUL.png');
INSERT INTO `settings` VALUES (66, 'display_sold', '1');
INSERT INTO `settings` VALUES (67, 'status_zalopay', '1');
INSERT INTO `settings` VALUES (68, 'token_zalopay', 'DE3EB335-5EC7-416D-92E1-2E13A0ACF346');
INSERT INTO `settings` VALUES (69, 'check_time_cron_zalopay', '1655623446');
INSERT INTO `settings` VALUES (70, 'type_password', 'md5');
INSERT INTO `settings` VALUES (71, 'theme_color', '#040404');
INSERT INTO `settings` VALUES (72, 'min_recharge', '1000');
INSERT INTO `settings` VALUES (73, 'time_check_live', '1800');
INSERT INTO `settings` VALUES (74, 'currency', 'VND');
INSERT INTO `settings` VALUES (75, 'usd_rate', '23000');
INSERT INTO `settings` VALUES (76, 'clientSecret_paypal', '');
INSERT INTO `settings` VALUES (77, 'rate_paypal', '23000');
INSERT INTO `settings` VALUES (78, 'paypal_notice', '<p>Thay đổi ghi ch&uacute; nạp thẻ&nbsp;trong <strong>C&agrave;i Đặt -&gt;&nbsp;Ghi ch&uacute; nạp paypal</strong></p>');
INSERT INTO `settings` VALUES (79, 'gif_loader', 'assets/storage/images/gif_loader893.png');
INSERT INTO `settings` VALUES (80, 'invoice_expiration', '7200');
INSERT INTO `settings` VALUES (81, 'mouse_click_effect', '0');
INSERT INTO `settings` VALUES (82, 'notice_spin', '<p>Gi&aacute; trị phần thưởng sẽ được cộng v&agrave;o số dư của t&agrave;i khoản th&agrave;nh vi&ecirc;n.</p>\r\n');
INSERT INTO `settings` VALUES (83, 'status_spin', '0');
INSERT INTO `settings` VALUES (84, 'condition_spin', '100000');
INSERT INTO `settings` VALUES (85, 'status_perfectmoney', '0');
INSERT INTO `settings` VALUES (86, 'perfectmoney_notice', '<p>Thay đổi ghi ch&uacute; nạp perfect money <strong>C&agrave;i Đặt -&gt;&nbsp;Ghi ch&uacute; nạp perfect money</strong></p>\r\n');
INSERT INTO `settings` VALUES (87, 'PAYEE_ACCOUNT_PM', '');
INSERT INTO `settings` VALUES (88, 'PAYMENT_UNITS_PM', 'USD');
INSERT INTO `settings` VALUES (89, 'perfectmoney_pass_pm', '');
INSERT INTO `settings` VALUES (90, 'rate_pm', '23000');
INSERT INTO `settings` VALUES (91, 'status_crypto', '0');
INSERT INTO `settings` VALUES (92, 'notice_crypto', '');
INSERT INTO `settings` VALUES (93, 'status_giao_dich_gan_day', '1');
INSERT INTO `settings` VALUES (94, 'check_time_cron_card', '0');
INSERT INTO `settings` VALUES (95, 'check_time_cron_checklivefb', '1655623445');
INSERT INTO `settings` VALUES (96, 'partner_id_card', '5112720561');
INSERT INTO `settings` VALUES (97, 'partner_key_card', '7577c26ca7b22c65b170a87aa1cc3b39');
INSERT INTO `settings` VALUES (98, 'javascript_header', '');
INSERT INTO `settings` VALUES (99, 'sign_view_product', '0');
INSERT INTO `settings` VALUES (100, 'display_box_shop', '0');
INSERT INTO `settings` VALUES (101, 'type_notice_order', 'Email');
INSERT INTO `settings` VALUES (102, 'font_family', 'font-family: \'Roboto\', sans-serif;');
INSERT INTO `settings` VALUES (103, 'time_delete_orders', '');
INSERT INTO `settings` VALUES (104, 'check_time_cron_cron', '1715613151');
INSERT INTO `settings` VALUES (105, 'display_show_product', '1');
INSERT INTO `settings` VALUES (106, 'display_rating', '1');
INSERT INTO `settings` VALUES (107, 'stt_giaodichao', '1');
INSERT INTO `settings` VALUES (108, 'theme_color2', '#064C92');
INSERT INTO `settings` VALUES (109, 'stt_topnap', '1');
INSERT INTO `settings` VALUES (110, 'sv1_autobank', '1');
INSERT INTO `settings` VALUES (111, 'sv2_autobank', '1');
INSERT INTO `settings` VALUES (112, 'prefix_autobank', 'nguyenlieufacebook');
INSERT INTO `settings` VALUES (113, 'status_buff_like_sub', '1');
INSERT INTO `settings` VALUES (114, 'domain_autofb', 'https://cmslike.com/');
INSERT INTO `settings` VALUES (115, 'token_autofb', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjU0MzI3LCJ1c2VybmFtZSI6Im1vbmRlcHphaSIsInR5cGUiOjAsIm1vbmV5IjowLCJub3RlcyI6IlRow6BuaCB2acOqbiIsInRpZW5fbmFwIjowLCJlbWFpbCI6ImhvdHJvbmd1eWVubGlldWZhY2Vib29rQGdtYWlsLmNvbSIsImZhY2Vib29rX2lkIjoiNCIsInBob25lIjoiMDg2NzA4MDA2OSIsImNyZWF0ZV9hdCI6MTY1MTQ0NDQ4NCwiaWF0IjoxNjUxNDQ0NDg0LCJleHAiOjE2ODMwMDE0MTB9.gv2iuuTFH48wDH8GhTOmRWIEu00cKGBu1j-Z4UcaxAw');
INSERT INTO `settings` VALUES (116, 'virtual_sold_quantity', '100000');
INSERT INTO `settings` VALUES (117, 'status_store_fanpage', '0');
INSERT INTO `settings` VALUES (118, 'notice_store_fanpage', '');
INSERT INTO `settings` VALUES (119, 'status_security', '0');
INSERT INTO `settings` VALUES (120, 'status_active_member', '0');

-- ----------------------------
-- Table structure for spin_history
-- ----------------------------
DROP TABLE IF EXISTS `spin_history`;
CREATE TABLE `spin_history`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `trans_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_id` int NOT NULL DEFAULT 0,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `create_date` datetime NOT NULL,
  `create_time` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spin_history
-- ----------------------------

-- ----------------------------
-- Table structure for spin_option
-- ----------------------------
DROP TABLE IF EXISTS `spin_option`;
CREATE TABLE `spin_option`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `price` int NOT NULL DEFAULT 0,
  `rate` float NOT NULL DEFAULT 0,
  `display` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spin_option
-- ----------------------------
INSERT INTO `spin_option` VALUES (1, '+ 20.000', 20000, 5, 1);
INSERT INTO `spin_option` VALUES (2, '+ 10.000', 10000, 10, 1);
INSERT INTO `spin_option` VALUES (3, '+ 50.000', 50000, 1, 1);
INSERT INTO `spin_option` VALUES (4, '+ 2.000', 2000, 26, 1);
INSERT INTO `spin_option` VALUES (5, '+ 100', 100, 40, 1);
INSERT INTO `spin_option` VALUES (6, '+ 100.000', 100000, 0.1, 1);
INSERT INTO `spin_option` VALUES (7, '+ 500.000', 500000, 0.1, 1);
INSERT INTO `spin_option` VALUES (8, '+ 30.000', 30000, 5, 1);
INSERT INTO `spin_option` VALUES (9, '+ 99.999', 99999, 0.1, 1);
INSERT INTO `spin_option` VALUES (10, '+ 11.111', 11111, 9, 1);
INSERT INTO `spin_option` VALUES (11, '+ 1.000.000', 1000000, 0.1, 1);
INSERT INTO `spin_option` VALUES (12, '+ 22.000', 22000, 4, 1);
INSERT INTO `spin_option` VALUES (13, '+ 222.222', 222222, 0.1, 1);
INSERT INTO `spin_option` VALUES (14, '+ 6.666', 6666, 35, 1);
INSERT INTO `spin_option` VALUES (15, '+ 77.777', 77777, 5, 1);

-- ----------------------------
-- Table structure for store_fanpage
-- ----------------------------
DROP TABLE IF EXISTS `store_fanpage`;
CREATE TABLE `store_fanpage`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `seller` int NOT NULL DEFAULT 0,
  `buyer` int NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `new_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `uid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sl_like` int NOT NULL DEFAULT 0,
  `nam_tao_fanpage` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `fb_admin` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `price` float NOT NULL DEFAULT 0,
  `content` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `create_gettime` datetime NOT NULL,
  `create_time` int NOT NULL DEFAULT 0,
  `update_gettime` datetime NOT NULL,
  `update_time` int NOT NULL DEFAULT 0,
  `note` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_fanpage
-- ----------------------------

-- ----------------------------
-- Table structure for translate
-- ----------------------------
DROP TABLE IF EXISTS `translate`;
CREATE TABLE `translate`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `lang_id` int NOT NULL DEFAULT 0,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1091 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of translate
-- ----------------------------
INSERT INTO `translate` VALUES (20, 8, 'Đăng Nhập', 'Đăng Nhập');
INSERT INTO `translate` VALUES (24, 8, 'Đăng Ký', 'Đăng Ký');
INSERT INTO `translate` VALUES (28, 8, 'Tên đăng nhập', 'Tên đăng nhập');
INSERT INTO `translate` VALUES (32, 8, 'Mật khẩu', 'Mật khẩu');
INSERT INTO `translate` VALUES (39, 8, 'Vui lòng nhập mật khẩu', 'Vui lòng nhập mật khẩu');
INSERT INTO `translate` VALUES (43, 8, 'Bạn không có tài khoản?', 'Bạn không có tài khoản?');
INSERT INTO `translate` VALUES (47, 8, 'Đăng ký', 'Đăng ký');
INSERT INTO `translate` VALUES (51, 8, 'Quên mật khẩu', 'Quên mật khẩu');
INSERT INTO `translate` VALUES (55, 8, 'Đăng nhập vào tài khoản của bạn để tiếp tục', 'Đăng nhập vào tài khoản của bạn để tiếp tục');
INSERT INTO `translate` VALUES (59, 8, 'Đăng Nhập', 'Đăng Nhập');
INSERT INTO `translate` VALUES (63, 8, 'hoặc', 'hoặc');
INSERT INTO `translate` VALUES (67, 8, 'Đăng Nhập', 'Đăng Nhập');
INSERT INTO `translate` VALUES (71, 8, 'Đang xử lý...', 'Đang xử lý...');
INSERT INTO `translate` VALUES (75, 8, 'Đăng Ký', 'Đăng Ký');
INSERT INTO `translate` VALUES (79, 8, 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản', 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản');
INSERT INTO `translate` VALUES (83, 8, 'Địa chỉ Email', 'Địa chỉ Email');
INSERT INTO `translate` VALUES (87, 8, 'Nhập lại mật khẩu', 'Nhập lại mật khẩu');
INSERT INTO `translate` VALUES (91, 8, 'Vui lòng nhập lại mật khẩu', 'Vui lòng nhập lại mật khẩu');
INSERT INTO `translate` VALUES (95, 8, 'Bạn đã có tài khoản?', 'Bạn đã có tài khoản?');
INSERT INTO `translate` VALUES (99, 8, 'Thông tin đăng nhập không chính xác', 'Thông tin đăng nhập không chính xác');
INSERT INTO `translate` VALUES (104, 8, 'Username không được để trống', 'Username không được để trống');
INSERT INTO `translate` VALUES (108, 8, 'Mật khẩu không được để trống', 'Mật khẩu không được để trống');
INSERT INTO `translate` VALUES (112, 8, 'Hệ thống đang bảo trì', 'Hệ thống đang bảo trì');
INSERT INTO `translate` VALUES (116, 8, 'Tài khoản của bạn đã bị khoá truy cập', 'Tài khoản của bạn đã bị khoá truy cập');
INSERT INTO `translate` VALUES (120, 8, 'Đăng nhập thành công vào hệ thống', 'Đăng nhập thành công vào hệ thống');
INSERT INTO `translate` VALUES (124, 8, 'Đăng nhập thành công', 'Đăng nhập thành công');
INSERT INTO `translate` VALUES (128, 8, 'Email không được để trống', 'Email không được để trống');
INSERT INTO `translate` VALUES (132, 8, 'Nhập lại mật khẩu không đúng', 'Nhập lại mật khẩu không đúng');
INSERT INTO `translate` VALUES (136, 8, 'Định dạng Email không đúng', 'Định dạng Email không đúng');
INSERT INTO `translate` VALUES (140, 8, 'Tên đăng nhập đã tồn tại trong hệ thống', 'Tên đăng nhập đã tồn tại trong hệ thống');
INSERT INTO `translate` VALUES (144, 8, 'Địa chỉ email đã tồn tại trong hệ thống', 'Địa chỉ email đã tồn tại trong hệ thống');
INSERT INTO `translate` VALUES (148, 8, 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép', 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép');
INSERT INTO `translate` VALUES (152, 8, 'Đăng ký thành công', 'Đăng ký thành công');
INSERT INTO `translate` VALUES (156, 8, 'Tạo tài khoản thất bại, vui lòng thử lại', 'Tạo tài khoản thất bại, vui lòng thử lại');
INSERT INTO `translate` VALUES (160, 8, 'Thực hiện tạo tài khoản', 'Thực hiện tạo tài khoản');
INSERT INTO `translate` VALUES (452, 8, 'Trang cá nhân', 'Trang cá nhân');
INSERT INTO `translate` VALUES (453, 8, 'Thay đổi mật khẩu', 'Thay đổi mật khẩu');
INSERT INTO `translate` VALUES (454, 8, 'Đăng xuất', 'Đăng xuất');
INSERT INTO `translate` VALUES (455, 8, 'Trang quản trị', 'Trang quản trị');
INSERT INTO `translate` VALUES (456, 8, 'Bảo mật', 'Bảo mật');
INSERT INTO `translate` VALUES (457, 8, 'Cộng tác viên', 'Cộng tác viên');
INSERT INTO `translate` VALUES (458, 16, 'Đăng Nhập', 'Login');
INSERT INTO `translate` VALUES (459, 16, 'Đăng Ký', 'Register');
INSERT INTO `translate` VALUES (460, 16, 'Tên đăng nhập', 'Username');
INSERT INTO `translate` VALUES (461, 16, 'Mật khẩu', 'Password');
INSERT INTO `translate` VALUES (462, 16, 'Vui lòng nhập mật khẩu', 'Please enter a password');
INSERT INTO `translate` VALUES (463, 16, 'Bạn không có tài khoản?', 'You don\\\'t have an account?');
INSERT INTO `translate` VALUES (464, 16, 'Đăng ký', 'Register');
INSERT INTO `translate` VALUES (465, 16, 'Quên mật khẩu', 'Forgot password');
INSERT INTO `translate` VALUES (466, 16, 'Đăng nhập vào tài khoản của bạn để tiếp tục', 'Log in to your account to continue');
INSERT INTO `translate` VALUES (467, 16, 'Đăng Nhập', 'Log in');
INSERT INTO `translate` VALUES (468, 16, 'hoặc', 'or');
INSERT INTO `translate` VALUES (469, 16, 'Đăng Nhập', 'Log in');
INSERT INTO `translate` VALUES (470, 16, 'Đang xử lý...', 'Processing...');
INSERT INTO `translate` VALUES (471, 16, 'Đăng Ký', 'Đăng Ký');
INSERT INTO `translate` VALUES (472, 16, 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản', 'Chọn phương tiện truyền thông xã hội của bạn để tạo tài khoản');
INSERT INTO `translate` VALUES (473, 16, 'Địa chỉ Email', 'Email address');
INSERT INTO `translate` VALUES (474, 16, 'Nhập lại mật khẩu', 'Nhập lại mật khẩu');
INSERT INTO `translate` VALUES (475, 16, 'Vui lòng nhập lại mật khẩu', 'Vui lòng nhập lại mật khẩu');
INSERT INTO `translate` VALUES (476, 16, 'Bạn đã có tài khoản?', 'Bạn đã có tài khoản?');
INSERT INTO `translate` VALUES (477, 16, 'Thông tin đăng nhập không chính xác', 'Login information is incorrect');
INSERT INTO `translate` VALUES (478, 16, 'Username không được để trống', 'Username không được để trống');
INSERT INTO `translate` VALUES (479, 16, 'Mật khẩu không được để trống', 'Mật khẩu không được để trống');
INSERT INTO `translate` VALUES (480, 16, 'Hệ thống đang bảo trì', 'The system is maintenance');
INSERT INTO `translate` VALUES (481, 16, 'Tài khoản của bạn đã bị khoá truy cập', 'Your account has been locked');
INSERT INTO `translate` VALUES (482, 16, 'Đăng nhập thành công vào hệ thống', 'Successfully logged into the system');
INSERT INTO `translate` VALUES (483, 16, 'Đăng nhập thành công', 'Logged in successfully');
INSERT INTO `translate` VALUES (484, 16, 'Email không được để trống', 'Email cannot be blank');
INSERT INTO `translate` VALUES (485, 16, 'Nhập lại mật khẩu không đúng', 'Password incorrect, please try again');
INSERT INTO `translate` VALUES (486, 16, 'Định dạng Email không đúng', 'Email format is not correct');
INSERT INTO `translate` VALUES (487, 16, 'Tên đăng nhập đã tồn tại trong hệ thống', 'Username already exists in the system');
INSERT INTO `translate` VALUES (488, 16, 'Địa chỉ email đã tồn tại trong hệ thống', 'Email address already exists in the system');
INSERT INTO `translate` VALUES (489, 16, 'IP của bạn đã đạt giới hạn tạo tài khoản cho phép', 'Your IP has reached the allowable account creation limit');
INSERT INTO `translate` VALUES (490, 16, 'Đăng ký thành công', 'Sign Up Success');
INSERT INTO `translate` VALUES (491, 16, 'Tạo tài khoản thất bại, vui lòng thử lại', 'Account creation failed, please try again');
INSERT INTO `translate` VALUES (492, 16, 'Thực hiện tạo tài khoản', 'Make an account');
INSERT INTO `translate` VALUES (493, 16, 'Trang cá nhân', 'Profile');
INSERT INTO `translate` VALUES (494, 16, 'Thay đổi mật khẩu', 'Change password');
INSERT INTO `translate` VALUES (495, 16, 'Đăng xuất', 'Logout');
INSERT INTO `translate` VALUES (496, 16, 'Trang quản trị', 'Admin');
INSERT INTO `translate` VALUES (497, 16, 'Bảo mật', 'Security');
INSERT INTO `translate` VALUES (498, 16, 'Cộng tác viên', 'CTV');
INSERT INTO `translate` VALUES (499, 8, 'Bảng Điều Khiển', 'Bảng Điều Khiển');
INSERT INTO `translate` VALUES (500, 16, 'Bảng Điều Khiển', 'Dashboard');
INSERT INTO `translate` VALUES (501, 8, 'Nạp Tiền', 'Nạp Tiền');
INSERT INTO `translate` VALUES (502, 16, 'Nạp Tiền', 'RECHARGE');
INSERT INTO `translate` VALUES (505, 8, 'Ngân Hàng', 'Ngân Hàng');
INSERT INTO `translate` VALUES (506, 16, 'Ngân Hàng', 'Bank Transfer');
INSERT INTO `translate` VALUES (507, 8, 'Ví Điện Tử', 'Ví Điện Tử');
INSERT INTO `translate` VALUES (508, 16, 'Ví Điện Tử', 'Electronic Wallet');
INSERT INTO `translate` VALUES (509, 8, 'Cửa Hàng', 'Cửa Hàng');
INSERT INTO `translate` VALUES (510, 16, 'Cửa Hàng', 'Store');
INSERT INTO `translate` VALUES (511, 8, 'Lịch Sử Mua Hàng', 'Lịch Sử Mua Hàng');
INSERT INTO `translate` VALUES (512, 16, 'Lịch Sử Mua Hàng', 'Purchase History');
INSERT INTO `translate` VALUES (513, 8, 'Liên Hệ', 'Liên Hệ');
INSERT INTO `translate` VALUES (514, 16, 'Liên Hệ', 'Contact');
INSERT INTO `translate` VALUES (515, 8, 'Thông tin liên hệ', 'Thông tin liên hệ');
INSERT INTO `translate` VALUES (516, 16, 'Thông tin liên hệ', 'Contact Info');
INSERT INTO `translate` VALUES (517, 8, 'Mã giao dịch', 'Mã giao dịch');
INSERT INTO `translate` VALUES (518, 16, 'Mã giao dịch', 'TransId');
INSERT INTO `translate` VALUES (519, 8, 'Sản phẩm', 'Sản phẩm');
INSERT INTO `translate` VALUES (520, 16, 'Sản phẩm', 'Product');
INSERT INTO `translate` VALUES (521, 8, 'Số lượng', 'Số lượng');
INSERT INTO `translate` VALUES (522, 16, 'Số lượng', 'Amount');
INSERT INTO `translate` VALUES (523, 8, 'Thanh toán', 'Thanh toán');
INSERT INTO `translate` VALUES (524, 16, 'Thanh toán', 'Pay');
INSERT INTO `translate` VALUES (525, 8, 'Thời gian', 'Thời gian');
INSERT INTO `translate` VALUES (526, 16, 'Thời gian', 'Time');
INSERT INTO `translate` VALUES (527, 8, 'Thao tác', 'Thao tác');
INSERT INTO `translate` VALUES (528, 16, 'Thao tác', 'Action');
INSERT INTO `translate` VALUES (529, 8, 'Xem Thêm', 'Xem Thêm');
INSERT INTO `translate` VALUES (530, 16, 'Xem Thêm', 'See More');
INSERT INTO `translate` VALUES (531, 8, 'Thông Tin Cá Nhân', 'Thông Tin Cá Nhân');
INSERT INTO `translate` VALUES (532, 16, 'Thông Tin Cá Nhân', 'Profile');
INSERT INTO `translate` VALUES (533, 8, 'Họ và Tên', 'Họ và Tên');
INSERT INTO `translate` VALUES (534, 16, 'Họ và Tên', 'First and Last Name');
INSERT INTO `translate` VALUES (535, 8, 'Nhập họ và tên', 'Nhập họ và tên');
INSERT INTO `translate` VALUES (536, 16, 'Nhập họ và tên', 'Enter your first and last name');
INSERT INTO `translate` VALUES (537, 8, 'Số điện thoại', 'Số điện thoại');
INSERT INTO `translate` VALUES (538, 16, 'Số điện thoại', 'Phone number');
INSERT INTO `translate` VALUES (539, 8, 'Nhập số điện thoại', 'Nhập số điện thoại');
INSERT INTO `translate` VALUES (540, 16, 'Nhập số điện thoại', 'Enter your phone number');
INSERT INTO `translate` VALUES (541, 8, 'Nhập địa chỉ Email', 'Nhập địa chỉ Email');
INSERT INTO `translate` VALUES (542, 16, 'Nhập địa chỉ Email', 'Enter your email address');
INSERT INTO `translate` VALUES (543, 8, 'Thời gian đăng ký', 'Thời gian đăng ký');
INSERT INTO `translate` VALUES (544, 16, 'Thời gian đăng ký', 'Registration time');
INSERT INTO `translate` VALUES (545, 8, 'Đăng nhập gần đây', 'Đăng nhập gần đây');
INSERT INTO `translate` VALUES (546, 16, 'Đăng nhập gần đây', 'Login time');
INSERT INTO `translate` VALUES (547, 8, 'Huỷ', 'Huỷ');
INSERT INTO `translate` VALUES (548, 16, 'Huỷ', 'Cancel');
INSERT INTO `translate` VALUES (549, 8, 'Lưu Thay Đổi', 'Lưu Thay Đổi');
INSERT INTO `translate` VALUES (550, 16, 'Lưu Thay Đổi', 'Save Changes');
INSERT INTO `translate` VALUES (551, 8, 'Tổng Tiền Nạp', 'Tổng Tiền Nạp');
INSERT INTO `translate` VALUES (552, 16, 'Tổng Tiền Nạp', 'Total Deposit');
INSERT INTO `translate` VALUES (553, 8, 'Tổng Tiền Sử Dụng', 'Tổng Tiền Sử Dụng');
INSERT INTO `translate` VALUES (555, 8, 'Số Dư Hiện Tại', 'Số Dư Hiện Tại');
INSERT INTO `translate` VALUES (556, 16, 'Số Dư Hiện Tại', 'Current Balance');
INSERT INTO `translate` VALUES (557, 8, 'Số Dư Sử Dụng', 'Số Dư Sử Dụng');
INSERT INTO `translate` VALUES (558, 16, 'Số Dư Sử Dụng', 'Usage Balance');
INSERT INTO `translate` VALUES (559, 8, 'Vui lòng đăng nhập', 'Vui lòng đăng nhập');
INSERT INTO `translate` VALUES (560, 16, 'Vui lòng đăng nhập', 'Please login');
INSERT INTO `translate` VALUES (561, 8, 'Vui lòng nhập địa chỉ Email', 'Vui lòng nhập địa chỉ Email');
INSERT INTO `translate` VALUES (562, 16, 'Vui lòng nhập địa chỉ Email', 'Please enter your email address');
INSERT INTO `translate` VALUES (563, 8, 'Định dạng Email không hợp lệ', 'Định dạng Email không hợp lệ');
INSERT INTO `translate` VALUES (564, 16, 'Định dạng Email không hợp lệ', 'Invalid Email Format');
INSERT INTO `translate` VALUES (565, 8, 'Thay đổi thông tin hồ sơ', 'Thay đổi thông tin hồ sơ');
INSERT INTO `translate` VALUES (566, 16, 'Thay đổi thông tin hồ sơ', 'Change profile information');
INSERT INTO `translate` VALUES (567, 8, 'Lưu thành công', 'Lưu thành công');
INSERT INTO `translate` VALUES (568, 16, 'Lưu thành công', 'Successfully saved');
INSERT INTO `translate` VALUES (569, 8, 'Lưu thất bại', 'Lưu thất bại');
INSERT INTO `translate` VALUES (570, 16, 'Lưu thất bại', 'Save failed');
INSERT INTO `translate` VALUES (571, 8, 'Vui lòng nhập mật khẩu hiện tại', 'Vui lòng nhập mật khẩu hiện tại');
INSERT INTO `translate` VALUES (572, 16, 'Vui lòng nhập mật khẩu hiện tại', 'Please enter your current password');
INSERT INTO `translate` VALUES (573, 8, 'Vui lòng nhập mật khẩu mới', 'Vui lòng nhập mật khẩu mới');
INSERT INTO `translate` VALUES (574, 16, 'Vui lòng nhập mật khẩu mới', 'Please enter a new password');
INSERT INTO `translate` VALUES (575, 8, 'Mật khẩu hiện tại không chính xác', 'Mật khẩu hiện tại không chính xác');
INSERT INTO `translate` VALUES (576, 16, 'Mật khẩu hiện tại không chính xác', 'Current password is incorrect');
INSERT INTO `translate` VALUES (577, 8, 'Đổi mật khẩu thành công', 'Đổi mật khẩu thành công');
INSERT INTO `translate` VALUES (578, 16, 'Đổi mật khẩu thành công', 'Change password successfully');
INSERT INTO `translate` VALUES (579, 8, 'Đổi mật khẩu thất bại', 'Đổi mật khẩu thất bại');
INSERT INTO `translate` VALUES (580, 16, 'Đổi mật khẩu thất bại', 'Change password failed');
INSERT INTO `translate` VALUES (581, 8, 'Đóng', 'Đóng');
INSERT INTO `translate` VALUES (582, 16, 'Đóng', 'Close');
INSERT INTO `translate` VALUES (583, 8, 'Mật khẩu hiện tại', 'Mật khẩu hiện tại');
INSERT INTO `translate` VALUES (584, 16, 'Mật khẩu hiện tại', 'Current password');
INSERT INTO `translate` VALUES (585, 8, 'Nhập lại mật khẩu mới', 'Nhập lại mật khẩu mới');
INSERT INTO `translate` VALUES (586, 16, 'Nhập lại mật khẩu mới', 'Enter a new password');
INSERT INTO `translate` VALUES (587, 8, 'Mật khẩu mới', 'Mật khẩu mới');
INSERT INTO `translate` VALUES (588, 16, 'Mật khẩu mới', 'New password');
INSERT INTO `translate` VALUES (589, 8, 'Vui lòng nhập lại mật khẩu mới', 'Vui lòng nhập lại mật khẩu mới');
INSERT INTO `translate` VALUES (590, 16, 'Vui lòng nhập lại mật khẩu mới', 'Please re-enter new password');
INSERT INTO `translate` VALUES (591, 8, 'Nhật ký hoạt động', 'Nhật ký hoạt động');
INSERT INTO `translate` VALUES (592, 16, 'Nhật ký hoạt động', 'Activity Log');
INSERT INTO `translate` VALUES (593, 8, 'Biến động số dư', 'Biến động số dư');
INSERT INTO `translate` VALUES (594, 16, 'Biến động số dư', 'Balance log');
INSERT INTO `translate` VALUES (595, 8, 'Hành động', 'Hành động');
INSERT INTO `translate` VALUES (596, 16, 'Hành động', 'Action');
INSERT INTO `translate` VALUES (597, 8, 'Địa chỉ IP', 'Địa chỉ IP');
INSERT INTO `translate` VALUES (598, 16, 'Địa chỉ IP', 'IP address');
INSERT INTO `translate` VALUES (599, 8, 'Thiết bị', 'Thiết bị');
INSERT INTO `translate` VALUES (600, 16, 'Thiết bị', 'Device');
INSERT INTO `translate` VALUES (601, 8, 'Số tiền trước', 'Số tiền trước');
INSERT INTO `translate` VALUES (602, 16, 'Số tiền trước', 'Amount in advance');
INSERT INTO `translate` VALUES (603, 8, 'Số tiền thay đổi', 'Số tiền thay đổi');
INSERT INTO `translate` VALUES (604, 16, 'Số tiền thay đổi', 'Amount of change');
INSERT INTO `translate` VALUES (605, 8, 'Số tiền hiện tại', 'Số tiền hiện tại');
INSERT INTO `translate` VALUES (606, 16, 'Số tiền hiện tại', 'Current amount');
INSERT INTO `translate` VALUES (607, 8, 'Nội dung', 'Nội dung');
INSERT INTO `translate` VALUES (608, 16, 'Nội dung', 'Content');
INSERT INTO `translate` VALUES (609, 8, 'Chọn phương thức thanh toán', 'Chọn phương thức thanh toán');
INSERT INTO `translate` VALUES (610, 16, 'Chọn phương thức thanh toán', 'Select a payment method');
INSERT INTO `translate` VALUES (611, 8, 'Nhập số tiền cần nạp', 'Nhập số tiền cần nạp');
INSERT INTO `translate` VALUES (612, 16, 'Nhập số tiền cần nạp', 'Enter the amount to deposit');
INSERT INTO `translate` VALUES (613, 8, 'Tạo hoá đơn', 'Tạo hoá đơn');
INSERT INTO `translate` VALUES (614, 16, 'Tạo hoá đơn', 'Create invoice');
INSERT INTO `translate` VALUES (615, 8, 'Nhập số tiền bạn cần nạp vào hệ thống', 'Nhập số tiền bạn cần nạp vào hệ thống');
INSERT INTO `translate` VALUES (616, 16, 'Nhập số tiền bạn cần nạp vào hệ thống', 'Enter the amount you need to deposit into the system');
INSERT INTO `translate` VALUES (617, 8, 'Hoá Đơn', 'Hoá Đơn');
INSERT INTO `translate` VALUES (618, 16, 'Hoá Đơn', 'Invoices');
INSERT INTO `translate` VALUES (619, 8, 'Trạng thái', 'Trạng thái');
INSERT INTO `translate` VALUES (620, 16, 'Trạng thái', 'Status');
INSERT INTO `translate` VALUES (621, 8, 'Phương thức thanh toán', 'Phương thức thanh toán');
INSERT INTO `translate` VALUES (622, 16, 'Phương thức thanh toán', 'Payment Method');
INSERT INTO `translate` VALUES (623, 8, 'Huỷ bỏ', 'Huỷ bỏ');
INSERT INTO `translate` VALUES (624, 16, 'Huỷ bỏ', 'Cancelled');
INSERT INTO `translate` VALUES (625, 8, 'Đang chờ thanh toán', 'Đang chờ thanh toán');
INSERT INTO `translate` VALUES (626, 16, 'Đang chờ thanh toán', 'Pending');
INSERT INTO `translate` VALUES (627, 8, 'Đã thanh toán', 'Đã thanh toán');
INSERT INTO `translate` VALUES (628, 16, 'Đã thanh toán', 'Paid');
INSERT INTO `translate` VALUES (629, 8, 'Vui lòng chọn phương thức thanh toán', 'Vui lòng chọn phương thức thanh toán');
INSERT INTO `translate` VALUES (630, 16, 'Vui lòng chọn phương thức thanh toán', 'Please choose a payment method');
INSERT INTO `translate` VALUES (631, 8, 'Vui lòng nhập số tiền cần nạp', 'Vui lòng nhập số tiền cần nạp');
INSERT INTO `translate` VALUES (632, 16, 'Vui lòng nhập số tiền cần nạp', 'Please enter the amount to deposit');
INSERT INTO `translate` VALUES (633, 8, 'Phương thức thanh toán không tồn tại trong hệ thống', 'Phương thức thanh toán không tồn tại trong hệ thống');
INSERT INTO `translate` VALUES (634, 16, 'Phương thức thanh toán không tồn tại trong hệ thống', 'Payment method does not exist in the system');
INSERT INTO `translate` VALUES (635, 8, 'Bạn đang thao tác quá nhanh, vui lòng chờ', 'Bạn đang thao tác quá nhanh, vui lòng chờ');
INSERT INTO `translate` VALUES (636, 16, 'Bạn đang thao tác quá nhanh, vui lòng chờ', 'You are working too fast, please wait');
INSERT INTO `translate` VALUES (637, 8, 'Số tiền nạp tối thiểu là', 'Số tiền nạp tối thiểu là');
INSERT INTO `translate` VALUES (638, 16, 'Số tiền nạp tối thiểu là', 'Minimum deposit amount is');
INSERT INTO `translate` VALUES (639, 8, 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày', 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày');
INSERT INTO `translate` VALUES (640, 16, 'Bạn đang có quá nhiều hoá đơn đang chờ xử lý trong ngày', 'You have too many pending invoices for the day');
INSERT INTO `translate` VALUES (641, 8, 'Tạo hoá đơn nạp tiền', 'Tạo hoá đơn nạp tiền');
INSERT INTO `translate` VALUES (642, 16, 'Tạo hoá đơn nạp tiền', 'Create a recharge invoice');
INSERT INTO `translate` VALUES (643, 8, 'Tạo hoá đơn thành công', 'Tạo hoá đơn thành công');
INSERT INTO `translate` VALUES (644, 16, 'Tạo hoá đơn thành công', 'Successful invoice generation');
INSERT INTO `translate` VALUES (645, 8, 'Tạo hoá đơn thất bại, vui lòng thử lại', 'Tạo hoá đơn thất bại, vui lòng thử lại');
INSERT INTO `translate` VALUES (646, 16, 'Tạo hoá đơn thất bại, vui lòng thử lại', 'Invoice generation failed, please try again');
INSERT INTO `translate` VALUES (647, 8, 'Chi tiết hoá đơn', 'Chi tiết hoá đơn');
INSERT INTO `translate` VALUES (648, 16, 'Chi tiết hoá đơn', 'Invoice details');
INSERT INTO `translate` VALUES (649, 8, 'Tải Về', 'Tải Về');
INSERT INTO `translate` VALUES (650, 16, 'Tải Về', 'Download');
INSERT INTO `translate` VALUES (651, 8, 'Xoá', 'Xoá');
INSERT INTO `translate` VALUES (652, 16, 'Xoá', 'Delete');
INSERT INTO `translate` VALUES (653, 8, 'Xác nhận xoá đơn hàng', 'Xác nhận xoá đơn hàng');
INSERT INTO `translate` VALUES (654, 16, 'Xác nhận xoá đơn hàng', 'Order deletion confirmation');
INSERT INTO `translate` VALUES (655, 8, 'Bạn có chắc chắn muốn xóa đơn hàng này không ?', 'Bạn có chắc chắn muốn xóa đơn hàng này không ?');
INSERT INTO `translate` VALUES (656, 16, 'Bạn có chắc chắn muốn xóa đơn hàng này không ?', 'Are you sure you want to delete this order?');
INSERT INTO `translate` VALUES (657, 8, 'Đồng Ý', 'Đồng Ý');
INSERT INTO `translate` VALUES (658, 16, 'Đồng Ý', 'Agree');
INSERT INTO `translate` VALUES (659, 8, 'Đơn hàng không tồn tại trong hệ thống', 'Đơn hàng không tồn tại trong hệ thống');
INSERT INTO `translate` VALUES (660, 16, 'Đơn hàng không tồn tại trong hệ thống', 'The order does not exist in the system');
INSERT INTO `translate` VALUES (661, 8, 'Xóa đơn hàng thành công', 'Xóa đơn hàng thành công');
INSERT INTO `translate` VALUES (662, 16, 'Xóa đơn hàng thành công', 'Deleted order successfully');
INSERT INTO `translate` VALUES (663, 8, 'Dữ liệu không hợp lệ', 'Dữ liệu không hợp lệ');
INSERT INTO `translate` VALUES (664, 16, 'Dữ liệu không hợp lệ', 'Invalid data');
INSERT INTO `translate` VALUES (665, 8, 'Xoá đơn hàng', 'Xoá đơn hàng');
INSERT INTO `translate` VALUES (666, 16, 'Xoá đơn hàng', 'Delete order');
INSERT INTO `translate` VALUES (667, 8, 'Xóa sản phẩm thất bại', 'Xóa sản phẩm thất bại');
INSERT INTO `translate` VALUES (668, 16, 'Xóa sản phẩm thất bại', 'Delete failed products');
INSERT INTO `translate` VALUES (669, 8, 'Chi tiết đơn hàng', 'Chi tiết đơn hàng');
INSERT INTO `translate` VALUES (670, 16, 'Chi tiết đơn hàng', 'Order details');
INSERT INTO `translate` VALUES (671, 8, 'Sao Chép', 'Sao Chép');
INSERT INTO `translate` VALUES (672, 16, 'Sao Chép', 'Copy');
INSERT INTO `translate` VALUES (673, 8, 'Quay Lại', 'Quay Lại');
INSERT INTO `translate` VALUES (674, 16, 'Quay Lại', 'Back');
INSERT INTO `translate` VALUES (675, 8, 'Đánh giá sản phẩm', 'Đánh giá sản phẩm');
INSERT INTO `translate` VALUES (676, 16, 'Đánh giá sản phẩm', 'Product Reviews');
INSERT INTO `translate` VALUES (677, 8, 'Đánh giá ngay', 'Đánh giá ngay');
INSERT INTO `translate` VALUES (678, 16, 'Đánh giá ngay', 'Rate now');
INSERT INTO `translate` VALUES (679, 8, 'Bạn có thể đánh giá đơn hàng này', 'Bạn có thể đánh giá đơn hàng này');
INSERT INTO `translate` VALUES (680, 16, 'Bạn có thể đánh giá đơn hàng này', 'You can rate this order');
INSERT INTO `translate` VALUES (681, 8, 'Đơn hàng lớn hơn', 'Đơn hàng lớn hơn');
INSERT INTO `translate` VALUES (682, 16, 'Đơn hàng lớn hơn', 'Larger orders');
INSERT INTO `translate` VALUES (683, 8, 'mới có thể đánh giá', 'mới có thể đánh giá');
INSERT INTO `translate` VALUES (684, 16, 'mới có thể đánh giá', 'can only evaluate');
INSERT INTO `translate` VALUES (685, 8, 'Gửi Đánh Giá', 'Gửi Đánh Giá');
INSERT INTO `translate` VALUES (686, 16, 'Gửi Đánh Giá', 'Submit Review');
INSERT INTO `translate` VALUES (687, 8, 'Xác Nhận', 'Xác Nhận');
INSERT INTO `translate` VALUES (688, 16, 'Xác Nhận', 'Confirm');
INSERT INTO `translate` VALUES (689, 8, 'Nhập nội dung cần đánh giá', 'Nhập nội dung cần đánh giá');
INSERT INTO `translate` VALUES (690, 16, 'Nhập nội dung cần đánh giá', 'Enter the content to evaluate');
INSERT INTO `translate` VALUES (691, 8, 'Vui lòng nhập review', 'Vui lòng nhập review');
INSERT INTO `translate` VALUES (692, 16, 'Vui lòng nhập review', 'Please enter a review');
INSERT INTO `translate` VALUES (693, 8, 'Đã sao chép vào bộ nhớ tạm', 'Đã sao chép vào bộ nhớ tạm');
INSERT INTO `translate` VALUES (694, 16, 'Đã sao chép vào bộ nhớ tạm', 'Copied to clipboard');
INSERT INTO `translate` VALUES (695, 8, 'Bạn đã đánh giá đơn hàng này rồi', 'Bạn đã đánh giá đơn hàng này rồi');
INSERT INTO `translate` VALUES (696, 16, 'Bạn đã đánh giá đơn hàng này rồi', 'You have already rated this order');
INSERT INTO `translate` VALUES (697, 8, 'Bạn không đủ điều kiện đánh giá đơn hàng này', 'Bạn không đủ điều kiện đánh giá đơn hàng này');
INSERT INTO `translate` VALUES (698, 16, 'Bạn không đủ điều kiện đánh giá đơn hàng này', 'You are not eligible to rate this order');
INSERT INTO `translate` VALUES (699, 8, 'Gửi đánh giá thành công', 'Gửi đánh giá thành công');
INSERT INTO `translate` VALUES (700, 16, 'Gửi đánh giá thành công', 'Submit a successful review');
INSERT INTO `translate` VALUES (701, 8, 'Gửi đánh giá thất bại', 'Gửi đánh giá thất bại');
INSERT INTO `translate` VALUES (702, 16, 'Gửi đánh giá thất bại', 'Submit a failed review');
INSERT INTO `translate` VALUES (703, 8, 'Sản phẩm mới', 'Sản phẩm mới');
INSERT INTO `translate` VALUES (704, 16, 'Sản phẩm mới', 'New products');
INSERT INTO `translate` VALUES (705, 8, 'Nạp tiền qua PayPal', 'Nạp tiền qua PayPal');
INSERT INTO `translate` VALUES (706, 16, 'Nạp tiền qua PayPal', 'Recharge via PayPal');
INSERT INTO `translate` VALUES (707, 8, 'Nhập số tiền cần nạp định dạng VNĐ', 'Nhập số tiền cần nạp định dạng VNĐ');
INSERT INTO `translate` VALUES (709, 8, 'Nhập số tiền cần nạp bằng USD', 'Nhập số tiền cần nạp bằng USD');
INSERT INTO `translate` VALUES (710, 16, 'Nhập số tiền cần nạp bằng USD', 'Enter the amount to deposit in USD');
INSERT INTO `translate` VALUES (711, 8, 'Tạo hoá đơn nạp tiền qua PayPal', 'Tạo hoá đơn nạp tiền qua PayPal');
INSERT INTO `translate` VALUES (712, 16, 'Tạo hoá đơn nạp tiền qua PayPal', 'Create a bill top up via PayPal');
INSERT INTO `translate` VALUES (713, 8, 'Số tiền cần nạp', 'Số tiền cần nạp');
INSERT INTO `translate` VALUES (714, 16, 'Số tiền cần nạp', 'Amount to deposit');
INSERT INTO `translate` VALUES (715, 8, 'Giá', 'Giá');
INSERT INTO `translate` VALUES (716, 16, 'Giá', 'Price');
INSERT INTO `translate` VALUES (717, 8, 'MUA NGAY', 'MUA NGAY');
INSERT INTO `translate` VALUES (718, 16, 'MUA NGAY', 'BUY NOW');
INSERT INTO `translate` VALUES (719, 8, 'Đã bán', 'Đã bán');
INSERT INTO `translate` VALUES (720, 16, 'Đã bán', 'Sold');
INSERT INTO `translate` VALUES (721, 8, 'Sản phẩm không tồn tại', 'Sản phẩm không tồn tại');
INSERT INTO `translate` VALUES (722, 16, 'Sản phẩm không tồn tại', 'Product does not exist');
INSERT INTO `translate` VALUES (723, 8, 'Quốc gia', 'Quốc gia');
INSERT INTO `translate` VALUES (724, 16, 'Quốc gia', 'Country');
INSERT INTO `translate` VALUES (725, 8, 'Clone MOMO + Live Ads', 'Clone MOMO + Live Ads');
INSERT INTO `translate` VALUES (727, 8, 'Tất Cả Sản Phẩm', 'Tất Cả Sản Phẩm');
INSERT INTO `translate` VALUES (728, 16, 'Tất Cả Sản Phẩm', 'All Product');
INSERT INTO `translate` VALUES (729, 8, 'Tên sản phẩm', 'Tên sản phẩm');
INSERT INTO `translate` VALUES (730, 16, 'Tên sản phẩm', 'Product name');
INSERT INTO `translate` VALUES (731, 8, 'Hiện có', 'Hiện có');
INSERT INTO `translate` VALUES (732, 16, 'Hiện có', 'Available');
INSERT INTO `translate` VALUES (733, 8, 'Thanh toán đơn hàng', 'Thanh toán đơn hàng');
INSERT INTO `translate` VALUES (734, 16, 'Thanh toán đơn hàng', 'Payment Orders');
INSERT INTO `translate` VALUES (735, 8, 'Nhập số lượng cần mua', 'Nhập số lượng cần mua');
INSERT INTO `translate` VALUES (736, 16, 'Nhập số lượng cần mua', 'Enter the quantity you want to buy');
INSERT INTO `translate` VALUES (737, 8, 'Tổng tiền cần thanh toán', 'Tổng tiền cần thanh toán');
INSERT INTO `translate` VALUES (738, 16, 'Tổng tiền cần thanh toán', 'Total amount to pay');
INSERT INTO `translate` VALUES (739, 8, 'Bạn có mã giảm giá?', 'Bạn có mã giảm giá?');
INSERT INTO `translate` VALUES (741, 8, 'Nhập mã giảm giá của bạn', 'Nhập mã giảm giá của bạn');
INSERT INTO `translate` VALUES (743, 8, 'Nhập mã giảm giá', 'Nhập mã giảm giá');
INSERT INTO `translate` VALUES (744, 16, 'Nhập mã giảm giá', 'Enter coupon');
INSERT INTO `translate` VALUES (745, 16, 'Nhập mã giảm giá của bạn', 'Enter your coupon');
INSERT INTO `translate` VALUES (746, 8, 'Huỷ mã giảm giá', 'Huỷ mã giảm giá');
INSERT INTO `translate` VALUES (747, 16, 'Huỷ mã giảm giá', 'Cancel coupon');
INSERT INTO `translate` VALUES (748, 8, 'Số lượng cần mua', 'Số lượng cần mua');
INSERT INTO `translate` VALUES (749, 16, 'Số lượng cần mua', 'Quantity to buy');
INSERT INTO `translate` VALUES (750, 8, 'Mã giảm giá', 'Mã giảm giá');
INSERT INTO `translate` VALUES (751, 16, 'Mã giảm giá', 'Coupon');
INSERT INTO `translate` VALUES (752, 8, 'Đánh giá', 'Đánh giá');
INSERT INTO `translate` VALUES (753, 16, 'Đánh giá', 'Evaluate');
INSERT INTO `translate` VALUES (754, 8, 'Tải Về File Backup VIA', 'Tải Về File Backup VIA');
INSERT INTO `translate` VALUES (755, 16, 'Tải Về File Backup VIA', 'Download File Backup VIA');
INSERT INTO `translate` VALUES (756, 8, 'Nhập UID VIA cần tải về file backup', 'Nhập UID VIA cần tải về file backup');
INSERT INTO `translate` VALUES (757, 16, 'Nhập UID VIA cần tải về file backup', 'Enter the VIA UID to download the backup file');
INSERT INTO `translate` VALUES (758, 8, 'Vui lòng nhập UID cần tải', 'Vui lòng nhập UID cần tải');
INSERT INTO `translate` VALUES (759, 16, 'Vui lòng nhập UID cần tải', 'Please enter the UID to download');
INSERT INTO `translate` VALUES (760, 8, 'FAQ', 'FAQ');
INSERT INTO `translate` VALUES (761, 16, 'FAQ', 'FAQ');
INSERT INTO `translate` VALUES (762, 8, 'Xác nhận tải về đơn hàng', 'Xác nhận tải về đơn hàng');
INSERT INTO `translate` VALUES (763, 16, 'Xác nhận tải về đơn hàng', 'Order download confirmation');
INSERT INTO `translate` VALUES (764, 8, 'Bạn có chắc chắn muốn tải về hàng này không', 'Bạn có chắc chắn muốn tải về hàng này không');
INSERT INTO `translate` VALUES (765, 16, 'Bạn có chắc chắn muốn tải về hàng này không', 'Are you sure you want to download this item?');
INSERT INTO `translate` VALUES (766, 8, 'Tải về đơn hàng', 'Tải về đơn hàng');
INSERT INTO `translate` VALUES (767, 16, 'Tải về đơn hàng', 'Download order');
INSERT INTO `translate` VALUES (768, 8, 'Tải về đơn hàng thành công', 'Tải về đơn hàng thành công');
INSERT INTO `translate` VALUES (769, 16, 'Tải về đơn hàng thành công', 'Download order successfully');
INSERT INTO `translate` VALUES (770, 8, 'Tải về đơn hàng thất bại', 'Tải về đơn hàng thất bại');
INSERT INTO `translate` VALUES (771, 16, 'Tải về đơn hàng thất bại', 'Order download failed');
INSERT INTO `translate` VALUES (772, 8, 'Tài Liệu API', 'Tài Liệu API');
INSERT INTO `translate` VALUES (773, 16, 'Tài Liệu API', 'API Documentation');
INSERT INTO `translate` VALUES (774, 8, 'Số Dư', 'Số Dư');
INSERT INTO `translate` VALUES (775, 16, 'Số Dư', 'Balance');
INSERT INTO `translate` VALUES (776, 8, 'Sản phẩm không tồn tại trong hệ thống', 'Sản phẩm không tồn tại trong hệ thống');
INSERT INTO `translate` VALUES (777, 16, 'Sản phẩm không tồn tại trong hệ thống', 'The product does not exist in the system');
INSERT INTO `translate` VALUES (778, 8, 'Vui lòng nhập số lượng cần mua', 'Vui lòng nhập số lượng cần mua');
INSERT INTO `translate` VALUES (779, 16, 'Vui lòng nhập số lượng cần mua', 'Please enter the quantity you want to buy');
INSERT INTO `translate` VALUES (780, 8, 'Số lượng trong hệ thống không đủ', 'Số lượng trong hệ thống không đủ');
INSERT INTO `translate` VALUES (781, 16, 'Số lượng trong hệ thống không đủ', 'The number in the system is not enough');
INSERT INTO `translate` VALUES (782, 8, 'Số dư không đủ, vui lòng nạp thêm', 'Số dư không đủ, vui lòng nạp thêm');
INSERT INTO `translate` VALUES (783, 16, 'Số dư không đủ, vui lòng nạp thêm', 'The balance is not enough, please top up');
INSERT INTO `translate` VALUES (784, 8, 'Bạn đã bị khoá tài khoản vì gian lận', 'Bạn đã bị khoá tài khoản vì gian lận');
INSERT INTO `translate` VALUES (785, 16, 'Bạn đã bị khoá tài khoản vì gian lận', 'Your account has been blocked for cheating');
INSERT INTO `translate` VALUES (786, 8, 'Thanh toán đơn hàng thành công', 'Thanh toán đơn hàng thành công');
INSERT INTO `translate` VALUES (787, 16, 'Thanh toán đơn hàng thành công', 'Order payment successful');
INSERT INTO `translate` VALUES (788, 8, 'Không thể thanh toán, vui lòng thử lại', 'Không thể thanh toán, vui lòng thử lại');
INSERT INTO `translate` VALUES (789, 16, 'Không thể thanh toán, vui lòng thử lại', 'Unable to pay, please try again');
INSERT INTO `translate` VALUES (790, 8, 'Đang tải xuống đơn hàng...', 'Đang tải xuống đơn hàng...');
INSERT INTO `translate` VALUES (791, 16, 'Đang tải xuống đơn hàng...', 'Order downloading...');
INSERT INTO `translate` VALUES (792, 8, 'Xóa sản phẩm thành công', 'Xóa sản phẩm thành công');
INSERT INTO `translate` VALUES (793, 16, 'Xóa sản phẩm thành công', 'Delete product successfully');
INSERT INTO `translate` VALUES (794, 8, 'Tài khoản', 'Tài khoản');
INSERT INTO `translate` VALUES (796, 8, 'Tài khoản:', 'Tài khoản:');
INSERT INTO `translate` VALUES (797, 16, 'Tài khoản:', 'Account:');
INSERT INTO `translate` VALUES (798, 8, 'Số lượng mua:', 'Số lượng mua:');
INSERT INTO `translate` VALUES (800, 8, 'Thông báo', 'Thông báo');
INSERT INTO `translate` VALUES (801, 16, 'Thông báo', 'Notifications');
INSERT INTO `translate` VALUES (802, 8, 'Chi tiết thông báo', 'Chi tiết thông báo');
INSERT INTO `translate` VALUES (803, 16, 'Chi tiết thông báo', 'Notice details');
INSERT INTO `translate` VALUES (804, 8, 'Nạp Thẻ', 'Nạp Thẻ');
INSERT INTO `translate` VALUES (805, 16, 'Nạp Thẻ', 'Nạp Thẻ');
INSERT INTO `translate` VALUES (806, 8, 'Lưu Ý', 'Lưu Ý');
INSERT INTO `translate` VALUES (807, 16, 'Lưu Ý', 'Note');
INSERT INTO `translate` VALUES (808, 8, 'Lý do', 'Lý do');
INSERT INTO `translate` VALUES (809, 16, 'Lý do', 'Reason');
INSERT INTO `translate` VALUES (810, 8, 'Thực nhận', 'Thực nhận');
INSERT INTO `translate` VALUES (811, 16, 'Thực nhận', 'Received');
INSERT INTO `translate` VALUES (812, 8, 'Nhà mạng', 'Nhà mạng');
INSERT INTO `translate` VALUES (813, 16, 'Nhà mạng', 'Telco');
INSERT INTO `translate` VALUES (1011, 8, 'Chính sách bảo mật', 'Chính sách bảo mật');
INSERT INTO `translate` VALUES (1012, 16, 'Chính sách bảo mật', 'Privacy Policy');
INSERT INTO `translate` VALUES (1013, 8, 'Điều khoản sử dụng', 'Điều khoản sử dụng');
INSERT INTO `translate` VALUES (1014, 16, 'Điều khoản sử dụng', 'Terms of Use');
INSERT INTO `translate` VALUES (1015, 8, 'Captcha không chính xác', 'Captcha không chính xác');
INSERT INTO `translate` VALUES (1016, 16, 'Captcha không chính xác', 'Captcha is incorrect');
INSERT INTO `translate` VALUES (1017, 8, 'Nhập nội dung bên trái', 'Nhập nội dung bên trái');
INSERT INTO `translate` VALUES (1018, 16, 'Nhập nội dung bên trái', 'Enter the content on the left');
INSERT INTO `translate` VALUES (1019, 8, 'Vui lòng nhập mã captcha để xác minh', 'Vui lòng nhập mã captcha để xác minh');
INSERT INTO `translate` VALUES (1020, 16, 'Vui lòng nhập mã captcha để xác minh', 'Please enter captcha code to verify');
INSERT INTO `translate` VALUES (1021, 8, 'Bật/Tắt Google 2FA', 'Bật/Tắt Google 2FA');
INSERT INTO `translate` VALUES (1022, 16, 'Bật/Tắt Google 2FA', 'Enable/Disable Google 2FA');
INSERT INTO `translate` VALUES (1023, 8, 'Bật', 'Bật');
INSERT INTO `translate` VALUES (1024, 16, 'Bật', 'Enable');
INSERT INTO `translate` VALUES (1025, 8, 'Tắt', 'Tắt');
INSERT INTO `translate` VALUES (1026, 16, 'Tắt', 'Disable');
INSERT INTO `translate` VALUES (1027, 8, 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này', 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này');
INSERT INTO `translate` VALUES (1028, 16, 'Vui lòng lưu thông tin phía dưới trước khi Bật chức năng này', 'Please save the information below before Enable this function');
INSERT INTO `translate` VALUES (1029, 8, 'Vui lòng chọn trạng thái 2FA', 'Vui lòng chọn trạng thái 2FA');
INSERT INTO `translate` VALUES (1030, 16, 'Vui lòng chọn trạng thái 2FA', 'Please select 2FA status');
INSERT INTO `translate` VALUES (1031, 8, 'Nhập mã xác minh để lưu thay đổi', 'Nhập mã xác minh để lưu thay đổi');
INSERT INTO `translate` VALUES (1032, 16, 'Nhập mã xác minh để lưu thay đổi', 'Enter the verification code to save changes');
INSERT INTO `translate` VALUES (1033, 8, 'Mã Xác Minh', 'Mã Xác Minh');
INSERT INTO `translate` VALUES (1034, 16, 'Mã Xác Minh', 'Verification Code');
INSERT INTO `translate` VALUES (1035, 8, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator', 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator');
INSERT INTO `translate` VALUES (1037, 8, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng &lt;b&gt;Google Authenticator&lt;/b&gt;', 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng &lt;b&gt;Google Authenticator&lt;/b&gt;');
INSERT INTO `translate` VALUES (1039, 16, 'Xác minh OTP: Thực hiện xác minh bằng Ứng dụng Google Authenticator', 'OTP Verification: Perform verification using Google Authenticator App');
INSERT INTO `translate` VALUES (1040, 8, 'Xác thực hai yếu tố', 'Xác thực hai yếu tố');
INSERT INTO `translate` VALUES (1042, 8, 'Two-Factor Authentication', 'Two-Factor Authentication');
INSERT INTO `translate` VALUES (1043, 16, 'Two-Factor Authentication', 'Two-Factor Authentication');
INSERT INTO `translate` VALUES (1044, 8, 'Vui lòng nhập mã xác minh 2FA', 'Vui lòng nhập mã xác minh 2FA');
INSERT INTO `translate` VALUES (1045, 16, 'Vui lòng nhập mã xác minh 2FA', 'Please enter 2FA verification code');
INSERT INTO `translate` VALUES (1046, 8, 'Mã xác minh không chính xác', 'Mã xác minh không chính xác');
INSERT INTO `translate` VALUES (1047, 16, 'Mã xác minh không chính xác', 'Verification code is incorrect');
INSERT INTO `translate` VALUES (1048, 8, 'Xác minh 2FA', 'Xác minh 2FA');
INSERT INTO `translate` VALUES (1049, 16, 'Xác minh 2FA', '2FA Verification');
INSERT INTO `translate` VALUES (1050, 8, 'Xác minh Google Authenticator', 'Xác minh Google Authenticator');
INSERT INTO `translate` VALUES (1052, 8, 'Xác Minh OTP', 'Xác Minh OTP');
INSERT INTO `translate` VALUES (1053, 16, 'Xác Minh OTP', 'OTP Verification');
INSERT INTO `translate` VALUES (1054, 8, 'Nhập mã xác minh', 'Nhập mã xác minh');
INSERT INTO `translate` VALUES (1055, 16, 'Nhập mã xác minh', 'Enter verification code');
INSERT INTO `translate` VALUES (1056, 8, 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập', 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập');
INSERT INTO `translate` VALUES (1057, 16, 'Vui lòng xác minh 2FA để hoàn tất quá trình đăng nhập', 'Please verify 2FA to complete the login process');
INSERT INTO `translate` VALUES (1058, 8, 'Vui lòng nhập mã xác minh', 'Vui lòng nhập mã xác minh');
INSERT INTO `translate` VALUES (1059, 16, 'Vui lòng nhập mã xác minh', 'Please enter the verification code');
INSERT INTO `translate` VALUES (1060, 8, 'Đang bật bảo mật', 'Đang bật bảo mật');
INSERT INTO `translate` VALUES (1061, 16, 'Đang bật bảo mật', 'Security is on');
INSERT INTO `translate` VALUES (1062, 8, 'Đang tắt bảo mật', 'Đang tắt bảo mật');
INSERT INTO `translate` VALUES (1063, 16, 'Đang tắt bảo mật', 'Turning off security');
INSERT INTO `translate` VALUES (1064, 8, 'Số sao đánh giá không hợp lệ', 'Số sao đánh giá không hợp lệ');
INSERT INTO `translate` VALUES (1065, 16, 'Số sao đánh giá không hợp lệ', 'Invalid rating stars');
INSERT INTO `translate` VALUES (1066, 8, 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.', 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.');
INSERT INTO `translate` VALUES (1067, 16, 'Vui lòng bật xác minh 2 bước Google 2FA để bảo vệ tài khoản của bạn.', 'Please enable Google 2FA 2-step verification to protect your account.');
INSERT INTO `translate` VALUES (1068, 8, 'Số tiền thực nhận', 'Số tiền thực nhận');
INSERT INTO `translate` VALUES (1069, 16, 'Số tiền thực nhận', 'The amount actually received');
INSERT INTO `translate` VALUES (1070, 8, 'Bảo Mật Tài Khoản', 'Bảo Mật Tài Khoản');
INSERT INTO `translate` VALUES (1071, 16, 'Bảo Mật Tài Khoản', 'Account Security');
INSERT INTO `translate` VALUES (1072, 8, 'Thông tin tài nguyên', 'Thông tin tài nguyên');
INSERT INTO `translate` VALUES (1073, 16, 'Thông tin tài nguyên', 'Resource Information');
INSERT INTO `translate` VALUES (1074, 8, 'Mở hộp quà', 'Mở hộp quà');
INSERT INTO `translate` VALUES (1075, 16, 'Mở hộp quà', 'Open the gift box');
INSERT INTO `translate` VALUES (1076, 8, 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau', 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau');
INSERT INTO `translate` VALUES (1077, 16, 'Hộp quà này đã có người nhận, chúc bạn máy mắn lần sau', 'This gift box has already been received, good luck next time');
INSERT INTO `translate` VALUES (1078, 8, 'Nhận Quà Thất Bại', 'Nhận Quà Thất Bại');
INSERT INTO `translate` VALUES (1079, 16, 'Nhận Quà Thất Bại', 'Receive Failure Gift');
INSERT INTO `translate` VALUES (1080, 8, 'Bạn đã mở hộp quà này rồi', 'Bạn đã mở hộp quà này rồi');
INSERT INTO `translate` VALUES (1081, 16, 'Bạn đã mở hộp quà này rồi', 'You have already opened this gift box');
INSERT INTO `translate` VALUES (1084, 8, 'Chúc mừng bạn đã nhận được hộp quà trị giá', 'Chúc mừng bạn đã nhận được hộp quà trị giá');
INSERT INTO `translate` VALUES (1085, 16, 'Chúc mừng bạn đã nhận được hộp quà trị giá', 'Congratulations on receiving a valuable gift box');
INSERT INTO `translate` VALUES (1086, 8, 'Quay về Trang Chủ', 'Quay về Trang Chủ');
INSERT INTO `translate` VALUES (1087, 16, 'Quay về Trang Chủ', 'Back to Home');
INSERT INTO `translate` VALUES (1089, 8, 'Nhận Quà Thành Công', 'Nhận Quà Thành Công');
INSERT INTO `translate` VALUES (1090, 16, 'Nhận Quà Thành Công', 'Receive Success Gifts');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `admin` int NOT NULL DEFAULT 0,
  `ctv` int NOT NULL DEFAULT 0,
  `banned` int NOT NULL DEFAULT 0,
  `active` int NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `time_session` int NULL DEFAULT 0,
  `time_request` int NOT NULL DEFAULT 0,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `money` int NOT NULL DEFAULT 0,
  `total_money` int NOT NULL DEFAULT 0,
  `rankings` int NOT NULL DEFAULT 0,
  `icon_ranking` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Male',
  `device` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `avatar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status_2fa` int NOT NULL DEFAULT 0,
  `SecretKey_2fa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `chietkhau` float NOT NULL DEFAULT 0,
  `spin` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `token`(`token` ASC) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '2fb60fc7a3fd2105f81009c89d5ee2f4', 'admin@gmail.com', NULL, NULL, 1, 1, 0, 0, '2022-06-19 08:06:38', '2022-06-19 08:06:38', 1715612971, 1715612971, '127.0.0.1', 'b3a202d5ffe9a4407b7632c2b45148ef', 408000, 411000, 0, NULL, 'Male', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', NULL, 0, 'BUTQUMBMG2QH4AZA', 0, 0);
INSERT INTO `users` VALUES (2, 'thanhben01', '2fb60fc7a3fd2105f81009c89d5ee2f4', 'thanhben01@gmail.com', NULL, NULL, 0, 0, 0, 0, '2022-12-06 19:01:34', '2022-12-06 19:01:34', 1715612576, 1715612605, '127.0.0.1', '110717f25c676da9919a93bbcb1c7e98', 1000, 2000, 1, '<i class=\"fas fa-long-arrow-alt-down text-danger\"></i>', 'Male', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, 0, '72LBF33B7OHKHHIH', 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
