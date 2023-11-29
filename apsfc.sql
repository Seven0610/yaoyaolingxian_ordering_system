/*
 Navicat Premium Data Transfer

 Source Server         : test01
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : apsfc

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 23/11/2023 21:51:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `pwd` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `authority` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'sa', '123', '0');
INSERT INTO `admin` VALUES (2, '苏', '123', '0');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `typeid` int(0) UNSIGNED NULL DEFAULT NULL,
  `burden` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `brief` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `price` float UNSIGNED NULL DEFAULT NULL,
  `sums` int(0) UNSIGNED NULL DEFAULT 0,
  `price1` float UNSIGNED NULL DEFAULT NULL,
  `sums1` int(0) UNSIGNED NULL DEFAULT 0,
  `imgpath` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (40, '毛巾', 1, '棉', '无', 7, 0, 5, 0, 'img//毛巾.jpg');
INSERT INTO `menus` VALUES (41, '牙膏', 1, '碳酸钙、山梨醇', '无', 28, 0, 25, 0, 'img//牙膏.jpg');
INSERT INTO `menus` VALUES (42, '菠萝', 2, '菠萝', '无', 12, 0, 10, 0, 'img//菠萝.png');
INSERT INTO `menus` VALUES (43, '巧克力', 6, '可可', '无', 40, 0, 35, 0, 'img//巧克力.png');
INSERT INTO `menus` VALUES (44, '可乐', 10, '糖、碳酸水', '无', 3, 0, 2.5, 0, 'img//可乐.jpg');
INSERT INTO `menus` VALUES (45, '软中华', 11, '烟叶', '无', 70, 0, 68, 0, 'img//软中华.jpg');
INSERT INTO `menus` VALUES (46, '牛肉', 44, '生牛肉', '无', 45, 0, 40, 0, 'img//牛肉.jpg');
INSERT INTO `menus` VALUES (47, '大米', 67, '水稻', '无', 100, 0, 95, 0, 'img//大米.jpg');
INSERT INTO `menus` VALUES (48, '盐', 89, '盐', '无', 3.5, 0, 3, 0, 'img//盐.jpg');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `times` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (43, '欢迎莅临，开业庆典，优惠大放送！', '尊敬的顾客朋友们，\r\n    倾心打造，欢声笑语，我们的超市即将盛大开业！为了感谢大家一直以来的支持与期待，我们特邀您参加我们的开业庆典，共同见证这个喜庆时刻！\r\n\r\n开业庆典亮点：\r\n1.新店特惠：开业期间，全场商品优惠力度空前，特价热销，好货不等人！\r\n2.幸运抽奖：消费满额即有机会参与大抽奖活动，精美好礼等您回家！\r\n3.新品尝鲜：丰富的试吃活动，让您品味最新鲜、最美味的商品。\r\n\r\n开业时间：2023年12月1日，早上9点整\r\n\r\n让我们共同见证超市新店的璀璨开业，共享欢乐时光。感谢您一直以来对我们的支持，期待在庆典现场与您相遇，一同共襄盛举！', '2023-11-22 13:47:49');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `userid` int(0) UNSIGNED NULL DEFAULT NULL,
  `menuid` int(0) UNSIGNED NULL DEFAULT NULL,
  `menusum` int(0) UNSIGNED NULL DEFAULT NULL,
  `times` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `delivery` int(0) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (16, 2, 12, 2, '2015-07-26 13:16:28', 1);
INSERT INTO `orders` VALUES (17, 1, 14, 1, '2015-07-26 13:23:30', 1);
INSERT INTO `orders` VALUES (19, 4, 15, 2, '2015-07-26 23:26:20', 1);
INSERT INTO `orders` VALUES (23, 4, 14, 1, '2015-07-27 00:35:09', 1);
INSERT INTO `orders` VALUES (24, 4, 17, 1, '2015-07-27 00:35:09', 1);
INSERT INTO `orders` VALUES (25, 2, 15, 1, '2015-07-27 20:14:23', 1);
INSERT INTO `orders` VALUES (27, 2, 18, 1, '2015-07-27 20:31:56', 1);
INSERT INTO `orders` VALUES (28, 2, 19, 1, '2015-07-27 20:31:56', 0);
INSERT INTO `orders` VALUES (29, 6, 17, 1, '2023-11-20 19:59:54', 0);

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES (1, '日用品类');
INSERT INTO `types` VALUES (2, '蔬菜水果类');
INSERT INTO `types` VALUES (6, '休闲食品类');
INSERT INTO `types` VALUES (10, '酒水饮料类');
INSERT INTO `types` VALUES (11, '烟草类');
INSERT INTO `types` VALUES (44, '肉类');
INSERT INTO `types` VALUES (67, '主食类');
INSERT INTO `types` VALUES (89, '调味品类');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `pwd` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `realname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `age` int(0) UNSIGNED NULL DEFAULT NULL,
  `card` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `type` int(0) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (2, '222', '222', '2221', '女', 241, '211111111111111111', '天津市', '13988888888', '123@163.com', '110044', 0);
INSERT INTO `users` VALUES (3, 'sunday', '123', '张三', '男', 26, '4222222222222222', '北京市海淀区', '13901001111', '13901001111@139.com', '101000', 0);
INSERT INTO `users` VALUES (4, '1', '1', '1', '男', 1, '1', '1', '1', '1', '1', 0);
INSERT INTO `users` VALUES (6, 'admin', '123456', '你好', '男', 1, '123456', '123', '123', '123', '123', NULL);

SET FOREIGN_KEY_CHECKS = 1;
