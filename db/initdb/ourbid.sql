/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100421
 Source Host           : localhost:3306
 Source Schema         : ourbid

 Target Server Type    : MySQL
 Target Server Version : 100421
 File Encoding         : 65001

 Date: 24/01/2022 07:38:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for o_bid
-- ----------------------------
DROP TABLE IF EXISTS `o_bid`;
CREATE TABLE `o_bid`  (
  `b_id` int NOT NULL AUTO_INCREMENT,
  `c_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_activde` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`b_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of o_bid
-- ----------------------------

-- ----------------------------
-- Table structure for o_bid_name
-- ----------------------------
DROP TABLE IF EXISTS `o_bid_name`;
CREATE TABLE `o_bid_name`  (
  `bn_id` int NOT NULL AUTO_INCREMENT,
  `bn_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`bn_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of o_bid_name
-- ----------------------------

-- ----------------------------
-- Table structure for o_bid_product
-- ----------------------------
DROP TABLE IF EXISTS `o_bid_product`;
CREATE TABLE `o_bid_product`  (
  `bp_id` int NOT NULL,
  `b_id` int NOT NULL,
  `bn_id` int NOT NULL,
  `p_id` int NOT NULL,
  `bp_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bp_amount` int NOT NULL,
  `bp_price` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bt_id` int NOT NULL
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of o_bid_product
-- ----------------------------

-- ----------------------------
-- Table structure for o_bid_type
-- ----------------------------
DROP TABLE IF EXISTS `o_bid_type`;
CREATE TABLE `o_bid_type`  (
  `bt_id` int NOT NULL AUTO_INCREMENT,
  `bt_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`bt_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of o_bid_type
-- ----------------------------
INSERT INTO `o_bid_type` VALUES (1, 'เช่า');
INSERT INTO `o_bid_type` VALUES (2, 'ซื้อ');

-- ----------------------------
-- Table structure for o_customer
-- ----------------------------
DROP TABLE IF EXISTS `o_customer`;
CREATE TABLE `o_customer`  (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `c_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_manager` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_tel` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `c_phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `c_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `pv_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of o_customer
-- ----------------------------

-- ----------------------------
-- Table structure for o_employee
-- ----------------------------
DROP TABLE IF EXISTS `o_employee`;
CREATE TABLE `o_employee`  (
  `e_id` int NOT NULL AUTO_INCREMENT,
  `e_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_username` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_tel` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `e_fax` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `e_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `pv_id` int NOT NULL,
  `e_salary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`e_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of o_employee
-- ----------------------------
INSERT INTO `o_employee` VALUES (1, 'cv', 'cv', '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, 36000, '1100');

-- ----------------------------
-- Table structure for o_product
-- ----------------------------
DROP TABLE IF EXISTS `o_product`;
CREATE TABLE `o_product`  (
  `p_id` int NOT NULL AUTO_INCREMENT,
  `p_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_amount` int NOT NULL,
  `p_unitprice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_id` int NOT NULL,
  PRIMARY KEY (`p_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of o_product
-- ----------------------------

-- ----------------------------
-- Table structure for o_province
-- ----------------------------
DROP TABLE IF EXISTS `o_province`;
CREATE TABLE `o_province`  (
  `pv_id` int NOT NULL,
  `pv_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_id` int NOT NULL,
  PRIMARY KEY (`pv_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of o_province
-- ----------------------------
INSERT INTO `o_province` VALUES (36000, 'ชัยภูมิ', 2);

-- ----------------------------
-- Table structure for o_section
-- ----------------------------
DROP TABLE IF EXISTS `o_section`;
CREATE TABLE `o_section`  (
  `s_id` int NOT NULL AUTO_INCREMENT,
  `s_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_des` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`s_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of o_section
-- ----------------------------
INSERT INTO `o_section` VALUES (2, 'ภน.2', NULL);

SET FOREIGN_KEY_CHECKS = 1;
