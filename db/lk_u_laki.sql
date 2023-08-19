/*
 Navicat Premium Data Transfer

 Source Server         : Laragon
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : posyandumawar_

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 19/08/2023 21:00:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lk_u_laki
-- ----------------------------
DROP TABLE IF EXISTS `lk_u_laki`;
CREATE TABLE `lk_u_laki`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `usia` int NOT NULL,
  `3rd` decimal(10, 1) NOT NULL,
  `15th` decimal(10, 1) NOT NULL,
  `median` decimal(10, 1) NOT NULL,
  `85th` decimal(10, 1) NOT NULL,
  `97th` decimal(10, 1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lk_u_laki
-- ----------------------------
INSERT INTO `lk_u_laki` VALUES (1, 0, 32.1, 33.1, 34.5, 35.8, 36.9);
INSERT INTO `lk_u_laki` VALUES (2, 1, 35.1, 36.1, 37.3, 38.5, 39.5);
INSERT INTO `lk_u_laki` VALUES (3, 2, 36.9, 37.9, 39.1, 40.3, 41.3);
INSERT INTO `lk_u_laki` VALUES (4, 3, 38.3, 39.3, 40.5, 41.7, 42.7);
INSERT INTO `lk_u_laki` VALUES (5, 4, 39.4, 40.4, 41.6, 42.9, 43.9);
INSERT INTO `lk_u_laki` VALUES (6, 5, 40.3, 41.3, 42.6, 43.8, 44.8);
INSERT INTO `lk_u_laki` VALUES (7, 6, 41.0, 42.1, 43.3, 44.6, 45.6);
INSERT INTO `lk_u_laki` VALUES (8, 7, 41.7, 42.7, 44.0, 45.3, 46.3);
INSERT INTO `lk_u_laki` VALUES (9, 8, 42.2, 43.2, 44.5, 45.8, 46.9);
INSERT INTO `lk_u_laki` VALUES (10, 9, 42.6, 43.7, 45.0, 46.3, 47.4);
INSERT INTO `lk_u_laki` VALUES (11, 10, 43.0, 44.1, 45.4, 46.7, 47.8);
INSERT INTO `lk_u_laki` VALUES (12, 11, 43.4, 44.4, 45.8, 47.1, 48.2);
INSERT INTO `lk_u_laki` VALUES (13, 12, 43.6, 44.7, 46.1, 47.4, 48.5);
INSERT INTO `lk_u_laki` VALUES (14, 13, 43.9, 45.0, 46.3, 47.7, 48.8);
INSERT INTO `lk_u_laki` VALUES (15, 14, 44.1, 45.2, 46.6, 47.9, 49.0);
INSERT INTO `lk_u_laki` VALUES (16, 15, 44.3, 45.5, 46.8, 48.2, 49.3);
INSERT INTO `lk_u_laki` VALUES (17, 16, 44.5, 45.6, 47.0, 48.4, 49.5);
INSERT INTO `lk_u_laki` VALUES (18, 17, 44.7, 45.8, 47.2, 48.6, 49.7);
INSERT INTO `lk_u_laki` VALUES (19, 18, 44.9, 46.0, 47.4, 48.7, 49.9);
INSERT INTO `lk_u_laki` VALUES (20, 19, 45.0, 46.2, 47.5, 48.9, 50.0);
INSERT INTO `lk_u_laki` VALUES (21, 20, 45.2, 46.3, 47.7, 49.1, 50.2);
INSERT INTO `lk_u_laki` VALUES (22, 21, 45.3, 46.4, 47.8, 49.2, 50.4);
INSERT INTO `lk_u_laki` VALUES (23, 22, 45.4, 46.6, 48.0, 49.4, 50.5);
INSERT INTO `lk_u_laki` VALUES (24, 23, 45.6, 46.7, 48.1, 49.5, 50.7);
INSERT INTO `lk_u_laki` VALUES (25, 24, 45.7, 46.8, 48.3, 49.7, 50.8);
INSERT INTO `lk_u_laki` VALUES (26, 25, 45.8, 47.0, 48.4, 49.8, 50.9);
INSERT INTO `lk_u_laki` VALUES (27, 26, 45.9, 47.1, 48.5, 49.9, 51.1);
INSERT INTO `lk_u_laki` VALUES (28, 27, 46.0, 47.2, 48.6, 50.0, 51.2);
INSERT INTO `lk_u_laki` VALUES (29, 28, 46.1, 47.3, 48.7, 50.2, 51.3);
INSERT INTO `lk_u_laki` VALUES (30, 29, 46.2, 47.4, 48.8, 50.3, 51.4);
INSERT INTO `lk_u_laki` VALUES (31, 30, 46.3, 47.5, 48.9, 50.4, 51.6);
INSERT INTO `lk_u_laki` VALUES (32, 31, 46.4, 47.6, 49.0, 50.5, 51.7);
INSERT INTO `lk_u_laki` VALUES (33, 32, 46.5, 47.7, 49.1, 50.6, 51.8);
INSERT INTO `lk_u_laki` VALUES (34, 33, 46.6, 47.8, 49.2, 50.7, 51.9);
INSERT INTO `lk_u_laki` VALUES (35, 34, 46.6, 47.8, 49.3, 50.8, 52.0);
INSERT INTO `lk_u_laki` VALUES (36, 35, 46.7, 47.9, 49.4, 50.8, 52.0);
INSERT INTO `lk_u_laki` VALUES (37, 36, 46.8, 48.0, 49.5, 50.9, 52.1);
INSERT INTO `lk_u_laki` VALUES (38, 37, 46.9, 48.1, 49.5, 51.0, 52.2);
INSERT INTO `lk_u_laki` VALUES (39, 38, 46.9, 48.1, 49.6, 51.1, 52.3);
INSERT INTO `lk_u_laki` VALUES (40, 39, 47.0, 48.2, 49.7, 51.2, 52.4);
INSERT INTO `lk_u_laki` VALUES (41, 40, 47.0, 48.3, 49.7, 51.2, 52.4);
INSERT INTO `lk_u_laki` VALUES (42, 41, 47.1, 48.3, 49.8, 51.3, 52.5);
INSERT INTO `lk_u_laki` VALUES (43, 42, 47.2, 48.4, 49.9, 51.4, 52.6);
INSERT INTO `lk_u_laki` VALUES (44, 43, 47.2, 48.4, 49.9, 51.4, 52.7);
INSERT INTO `lk_u_laki` VALUES (45, 44, 47.3, 48.5, 50.0, 51.5, 52.7);
INSERT INTO `lk_u_laki` VALUES (46, 45, 47.3, 48.5, 50.1, 51.6, 52.8);
INSERT INTO `lk_u_laki` VALUES (47, 46, 47.4, 48.6, 50.1, 51.6, 52.8);
INSERT INTO `lk_u_laki` VALUES (48, 47, 47.4, 48.6, 50.2, 51.7, 52.9);
INSERT INTO `lk_u_laki` VALUES (49, 48, 47.5, 48.7, 50.2, 51.7, 53.0);
INSERT INTO `lk_u_laki` VALUES (50, 49, 47.5, 48.7, 50.3, 51.8, 53.0);
INSERT INTO `lk_u_laki` VALUES (51, 50, 47.5, 48.8, 50.3, 51.8, 53.1);
INSERT INTO `lk_u_laki` VALUES (52, 51, 47.6, 48.8, 50.4, 51.9, 53.1);
INSERT INTO `lk_u_laki` VALUES (53, 52, 47.6, 48.9, 50.4, 51.9, 53.2);
INSERT INTO `lk_u_laki` VALUES (54, 53, 47.7, 48.9, 50.4, 52.0, 53.2);
INSERT INTO `lk_u_laki` VALUES (55, 54, 47.7, 49.0, 50.5, 52.0, 53.3);
INSERT INTO `lk_u_laki` VALUES (56, 55, 47.7, 49.0, 50.5, 52.1, 53.3);
INSERT INTO `lk_u_laki` VALUES (57, 56, 47.8, 49.0, 50.6, 52.1, 53.4);
INSERT INTO `lk_u_laki` VALUES (58, 57, 47.8, 49.1, 50.6, 52.2, 53.4);
INSERT INTO `lk_u_laki` VALUES (59, 58, 47.9, 49.1, 50.7, 52.2, 53.5);
INSERT INTO `lk_u_laki` VALUES (60, 59, 47.9, 49.2, 50.7, 52.2, 53.5);
INSERT INTO `lk_u_laki` VALUES (61, 60, 47.9, 49.2, 50.7, 52.3, 53.5);

SET FOREIGN_KEY_CHECKS = 1;
