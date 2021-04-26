/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : courier

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 26/04/2021 16:02:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for job_types
-- ----------------------------
DROP TABLE IF EXISTS `job_types`;
CREATE TABLE `job_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of job_types
-- ----------------------------
BEGIN;
INSERT INTO `job_types` VALUES (1, 'Standard', '2021-04-26 10:15:05', '2021-04-26 10:15:05');
INSERT INTO `job_types` VALUES (2, 'Gold', '2021-04-26 10:15:10', '2021-04-26 10:15:10');
INSERT INTO `job_types` VALUES (3, 'Platinum', '2021-04-26 10:15:17', '2021-04-26 10:15:17');
INSERT INTO `job_types` VALUES (4, 'Urgent', '2021-04-26 10:15:23', '2021-04-26 10:15:23');
COMMIT;

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pickup_location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `product_weight` double DEFAULT NULL,
  `pickup_date_time` datetime DEFAULT NULL,
  `job_type_id` int(11) DEFAULT NULL,
  `product_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jobs
-- ----------------------------
BEGIN;
INSERT INTO `jobs` VALUES (1, 'Nagpur', NULL, NULL, 120, '2021-04-07 06:50:55', 1, 'Nothing', '2021-04-26 10:21:05', '2021-04-26 10:21:05');
INSERT INTO `jobs` VALUES (2, 'Mumbai', NULL, NULL, 120, NULL, 2, 'Nothing', '2021-04-26 10:30:31', '2021-04-26 10:30:31');
INSERT INTO `jobs` VALUES (3, 'Delhi', NULL, NULL, 120, '2021-04-26 06:50:55', 2, 'Nothing', '2021-04-26 10:31:02', '2021-04-26 10:31:02');
COMMIT;

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of services
-- ----------------------------
BEGIN;
INSERT INTO `services` VALUES (1, 'Packing', 'http://clipart-library.com/data_images/571572.png', '#ff0000', '2021-04-26 09:47:32', '2021-04-26 10:03:09');
INSERT INTO `services` VALUES (2, 'Delivery', NULL, NULL, '2021-04-26 09:47:46', '2021-04-26 09:47:46');
INSERT INTO `services` VALUES (3, 'Box Packing', NULL, NULL, '2021-04-26 09:47:59', '2021-04-26 09:47:59');
INSERT INTO `services` VALUES (4, 'Documents', NULL, NULL, '2021-04-26 09:48:13', '2021-04-26 09:48:13');
INSERT INTO `services` VALUES (5, 'Vehicle', NULL, NULL, '2021-04-26 09:48:20', '2021-04-26 09:48:20');
INSERT INTO `services` VALUES (6, 'House Hold Packing', NULL, NULL, '2021-04-26 09:48:36', '2021-04-26 09:48:36');
INSERT INTO `services` VALUES (7, 'Others', NULL, NULL, '2021-04-26 09:48:41', '2021-04-26 09:48:41');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'admin', '$2y$10$1bVXW6JzAhUsWgF.ezM6/uBVCGA.hIZu0/L8wrpWoCLMQC2HlrRPC', 'admin@test.com', 'System', 'Admin', '2021-01-02 18:12:33', '2021-01-04');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
