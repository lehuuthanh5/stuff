/*
 Navicat Premium Data Transfer

 Source Server         : TLBB VPS
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : 103.90.225.232:3306
 Source Schema         : web

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 01/04/2020 21:11:42
*/
CREATE SCHEMA web;
USE web;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for FW_Card
-- ----------------------------
DROP TABLE IF EXISTS `FW_Card`;
CREATE TABLE `FW_Card`  (
  `AccountID` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Card_Code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Card_Seri` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Card_Ammount` int(11) NULL DEFAULT NULL,
  `Card_Type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Time_Charge` int(11) NULL DEFAULT NULL,
  `Time_Process` int(11) NULL DEFAULT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of FW_Card
-- ----------------------------

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `encode` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pin` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `question` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `answer` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qq` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_type` enum('IdCard') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'IdCard',
  `id_card` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `point` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL,
  `tel` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date_registered` datetime NULL DEFAULT NULL,
  `date_modified` datetime NULL DEFAULT NULL,
  `last_ip_login` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_admin` int(1) NOT NULL DEFAULT 0,
  `toptaiphubac` int(8) NULL DEFAULT NULL,
  `is_online` tinyint(1) NOT NULL DEFAULT 0,
  `is_lock` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `name`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, 'test', '62c8ad0a15d9d1ca38d5dee762a16e01', 'GQO7wS0YrwBXwbyeojd5OQ==', '123123', '1', '123456', 'test@gmail.com', NULL, 'IdCard', NULL, '', 15000, 15000, '+8412345678', NULL, NULL, '42.118.29.13', 1, NULL, 0, 0);
-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `ar_id` int(11) NOT NULL AUTO_INCREMENT,
  `ar_title` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ar_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ar_des` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ar_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ar_slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ar_type` int(2) NOT NULL,
  `ar_time` int(11) NOT NULL,
  `ar_by` int(11) NOT NULL,
  PRIMARY KEY (`ar_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------

-- ----------------------------
-- Table structure for billing_ip_accounts
-- ----------------------------
DROP TABLE IF EXISTS `billing_ip_accounts`;
CREATE TABLE `billing_ip_accounts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `account_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`, `account_name`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `account_name`(`account_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of billing_ip_accounts
-- ----------------------------

-- ----------------------------
-- Table structure for billing_mac_accounts
-- ----------------------------
DROP TABLE IF EXISTS `billing_mac_accounts`;
CREATE TABLE `billing_mac_accounts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mac` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `account_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`, `account_name`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `account_name`(`account_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of billing_mac_accounts
-- ----------------------------

-- ----------------------------
-- Table structure for cash_log
-- ----------------------------
DROP TABLE IF EXISTS `cash_log`;
CREATE TABLE `cash_log`  (
  `cl_id` int(11) NOT NULL AUTO_INCREMENT,
  `cl_uid` int(11) NOT NULL,
  `cl_amount` int(11) NOT NULL,
  `cl_type` int(11) NOT NULL,
  `cl_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cl_time` int(11) NOT NULL,
  PRIMARY KEY (`cl_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cash_log
-- ----------------------------
INSERT INTO `cash_log` VALUES (1, 1, 15000, 2, 'Nạp thẻ với Seri : 10006151907747, Nhận được 15000 CASH', 1585749840);

-- ----------------------------
-- Table structure for exchanges
-- ----------------------------
DROP TABLE IF EXISTS `exchanges`;
CREATE TABLE `exchanges`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `charguid` int(20) NOT NULL,
  `amount` int(40) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `trade_no`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of exchanges
-- ----------------------------

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` int(11) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of messages
-- ----------------------------

-- ----------------------------
-- Table structure for pay
-- ----------------------------
DROP TABLE IF EXISTS `pay`;
CREATE TABLE `pay`  (
  `trade_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `channel` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `server_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `fee` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `create_time` datetime NOT NULL,
  `pay_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`trade_no`) USING BTREE,
  INDEX `trade_no`(`trade_no`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pay
-- ----------------------------

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `loaithe` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `seri` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mathe` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `menhgia` int(100) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `trade_no`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of payments
-- ----------------------------

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `qs_id` int(10) NOT NULL AUTO_INCREMENT,
  `qs_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qs_status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`qs_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, 'Người mà bạn thích nhất?', 1);
INSERT INTO `question` VALUES (2, 'Cuốn sách mà bạn thích nhất?', 1);
INSERT INTO `question` VALUES (3, 'Bộ phim mà bạn thích nhất?', 1);
INSERT INTO `question` VALUES (4, 'Diễn viên mà bạn thích nhất?', 1);
INSERT INTO `question` VALUES (5, 'Ca khúc mà bạn thích nhất?', 1);
INSERT INTO `question` VALUES (6, 'Nơi mà bạn sinh ra?', 1);
INSERT INTO `question` VALUES (7, 'Biển số xe của bạn là gì?', 1);

SET FOREIGN_KEY_CHECKS = 1;
