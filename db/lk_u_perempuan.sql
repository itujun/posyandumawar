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

 Date: 19/08/2023 21:01:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lk_u_perempuan
-- ----------------------------
DROP TABLE IF EXISTS `lk_u_perempuan`;
CREATE TABLE `lk_u_perempuan`  (
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
-- Records of lk_u_perempuan
-- ----------------------------
INSERT INTO `lk_u_perempuan` VALUES (1, 0, 31.7, 32.7, 33.9, 35.1, 36.1);
INSERT INTO `lk_u_perempuan` VALUES (2, 1, 34.3, 35.3, 36.5, 37.8, 38.8);
INSERT INTO `lk_u_perempuan` VALUES (3, 2, 36.0, 37.0, 38.3, 39.5, 40.5);
INSERT INTO `lk_u_perempuan` VALUES (4, 3, 37.2, 38.2, 39.5, 40.8, 41.9);
INSERT INTO `lk_u_perempuan` VALUES (5, 4, 38.2, 39.3, 40.6, 41.9, 43.0);
INSERT INTO `lk_u_perempuan` VALUES (6, 5, 39.0, 40.1, 41.5, 42.8, 43.9);
INSERT INTO `lk_u_perempuan` VALUES (7, 6, 39.7, 40.8, 42.2, 43.5, 44.6);
INSERT INTO `lk_u_perempuan` VALUES (8, 7, 40.4, 41.5, 42.8, 44.2, 45.3);
INSERT INTO `lk_u_perempuan` VALUES (9, 8, 40.9, 42.0, 43.4, 44.7, 45.9);
INSERT INTO `lk_u_perempuan` VALUES (10, 9, 41.3, 42.4, 43.8, 45.2, 46.3);
INSERT INTO `lk_u_perempuan` VALUES (11, 10, 41.7, 42.8, 44.2, 45.6, 46.8);
INSERT INTO `lk_u_perempuan` VALUES (12, 11, 42.0, 43.2, 44.6, 46.0, 47.1);
INSERT INTO `lk_u_perempuan` VALUES (13, 12, 42.3, 43.5, 44.9, 46.3, 47.5);
INSERT INTO `lk_u_perempuan` VALUES (14, 13, 42.6, 43.8, 45.2, 46.6, 47.7);
INSERT INTO `lk_u_perempuan` VALUES (15, 14, 42.9, 44.0, 45.4, 46.8, 48.0);
INSERT INTO `lk_u_perempuan` VALUES (16, 15, 43.1, 44.2, 45.7, 47.1, 48.2);
INSERT INTO `lk_u_perempuan` VALUES (17, 16, 43.3, 44.4, 45.9, 47.3, 48.5);
INSERT INTO `lk_u_perempuan` VALUES (18, 17, 43.5, 44.6, 46.1, 47.5, 48.7);
INSERT INTO `lk_u_perempuan` VALUES (19, 18, 43.6, 44.8, 46.2, 47.7, 48.8);
INSERT INTO `lk_u_perempuan` VALUES (20, 19, 43.8, 45.0, 46.4, 47.8, 49.0);
INSERT INTO `lk_u_perempuan` VALUES (21, 20, 44.0, 45.1, 46.6, 48.0, 49.2);
INSERT INTO `lk_u_perempuan` VALUES (22, 21, 44.1, 45.3, 46.7, 48.2, 49.4);
INSERT INTO `lk_u_perempuan` VALUES (23, 22, 44.3, 45.4, 46.9, 48.3, 49.5);
INSERT INTO `lk_u_perempuan` VALUES (24, 23, 44.4, 45.6, 47.0, 48.5, 49.7);
INSERT INTO `lk_u_perempuan` VALUES (25, 24, 44.6, 45.7, 47.2, 48.6, 49.8);
INSERT INTO `lk_u_perempuan` VALUES (26, 25, 44.7, 45.9, 47.3, 48.8, 49.9);
INSERT INTO `lk_u_perempuan` VALUES (27, 26, 44.8, 46.0, 47.5, 48.9, 50.1);
INSERT INTO `lk_u_perempuan` VALUES (28, 27, 44.9, 46.1, 47.6, 49.0, 50.2);
INSERT INTO `lk_u_perempuan` VALUES (29, 28, 45.1, 46.3, 47.7, 49.2, 50.3);
INSERT INTO `lk_u_perempuan` VALUES (30, 29, 45.2, 46.4, 47.8, 49.3, 50.5);
INSERT INTO `lk_u_perempuan` VALUES (31, 30, 45.3, 46.5, 47.9, 49.4, 50.6);
INSERT INTO `lk_u_perempuan` VALUES (32, 31, 45.4, 46.6, 48.0, 49.5, 50.7);
INSERT INTO `lk_u_perempuan` VALUES (33, 32, 45.5, 46.7, 48.1, 49.6, 50.8);
INSERT INTO `lk_u_perempuan` VALUES (34, 33, 45.6, 46.8, 48.2, 49.7, 50.9);
INSERT INTO `lk_u_perempuan` VALUES (35, 34, 45.7, 46.9, 48.3, 49.8, 51.0);
INSERT INTO `lk_u_perempuan` VALUES (36, 35, 45.8, 47.0, 48.4, 49.9, 51.1);
INSERT INTO `lk_u_perempuan` VALUES (37, 36, 45.9, 47.0, 48.5, 50.0, 51.2);
INSERT INTO `lk_u_perempuan` VALUES (38, 37, 45.9, 47.1, 48.6, 50.1, 51.3);
INSERT INTO `lk_u_perempuan` VALUES (39, 38, 46.0, 47.2, 48.7, 50.1, 51.3);
INSERT INTO `lk_u_perempuan` VALUES (40, 39, 46.1, 47.3, 48.7, 50.2, 51.4);
INSERT INTO `lk_u_perempuan` VALUES (41, 40, 46.2, 47.4, 48.8, 50.3, 51.5);
INSERT INTO `lk_u_perempuan` VALUES (42, 41, 46.2, 47.4, 48.9, 50.4, 51.6);
INSERT INTO `lk_u_perempuan` VALUES (43, 42, 46.3, 47.5, 49.0, 50.4, 51.6);
INSERT INTO `lk_u_perempuan` VALUES (44, 43, 46.4, 47.6, 49.0, 50.5, 51.7);
INSERT INTO `lk_u_perempuan` VALUES (45, 44, 46.4, 47.6, 49.1, 50.6, 51.8);
INSERT INTO `lk_u_perempuan` VALUES (46, 45, 46.5, 47.7, 49.2, 50.6, 51.8);
INSERT INTO `lk_u_perempuan` VALUES (47, 46, 46.5, 47.7, 49.2, 50.7, 51.9);
INSERT INTO `lk_u_perempuan` VALUES (48, 47, 46.5, 47.8, 49.3, 50.7, 51.9);
INSERT INTO `lk_u_perempuan` VALUES (49, 48, 46.7, 47.9, 49.3, 50.8, 52.0);
INSERT INTO `lk_u_perempuan` VALUES (50, 49, 46.7, 47.9, 49.4, 50.9, 52.1);
INSERT INTO `lk_u_perempuan` VALUES (51, 50, 46.8, 48.0, 49.4, 50.9, 52.1);
INSERT INTO `lk_u_perempuan` VALUES (52, 51, 46.8, 48.0, 49.5, 51.0, 52.2);
INSERT INTO `lk_u_perempuan` VALUES (53, 52, 46.9, 48.1, 49.5, 51.0, 52.2);
INSERT INTO `lk_u_perempuan` VALUES (54, 53, 46.9, 48.1, 49.6, 51.1, 52.3);
INSERT INTO `lk_u_perempuan` VALUES (55, 54, 47.0, 48.2, 49.6, 51.1, 52.3);
INSERT INTO `lk_u_perempuan` VALUES (56, 55, 47.0, 48.2, 49.7, 51.2, 52.4);
INSERT INTO `lk_u_perempuan` VALUES (57, 56, 47.1, 48.3, 49.7, 51.2, 52.4);
INSERT INTO `lk_u_perempuan` VALUES (58, 57, 47.1, 48.3, 49.8, 51.3, 52.5);
INSERT INTO `lk_u_perempuan` VALUES (59, 58, 47.2, 48.4, 49.8, 51.3, 52.5);
INSERT INTO `lk_u_perempuan` VALUES (60, 59, 47.2, 48.4, 49.9, 51.4, 52.6);
INSERT INTO `lk_u_perempuan` VALUES (61, 60, 47.2, 48.4, 49.9, 51.4, 52.6);

SET FOREIGN_KEY_CHECKS = 1;
