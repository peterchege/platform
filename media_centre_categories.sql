/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100139
 Source Host           : localhost:3306
 Source Schema         : apa

 Target Server Type    : MariaDB
 Target Server Version : 100139
 File Encoding         : 65001

 Date: 29/11/2019 11:06:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for media_centre_categories
-- ----------------------------
DROP TABLE IF EXISTS `media_centre_categories`;
CREATE TABLE `media_centre_categories`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `datetime` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `creatorname` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of media_centre_categories
-- ----------------------------
INSERT INTO `media_centre_categories` VALUES (25, '12,June 2019 09:46:59', 'Media Centre', 'tony', 'tony@gmail.com', '2019-06-24 16:36:37');
INSERT INTO `media_centre_categories` VALUES (26, '12,June 2019 10:01:42', 'CSR', 'tony', 'tony@gmail.com', '2019-06-24 16:36:37');

SET FOREIGN_KEY_CHECKS = 1;
