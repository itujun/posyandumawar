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

 Date: 19/08/2023 21:00:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bb_u_perempuan
-- ----------------------------
DROP TABLE IF EXISTS `bb_u_perempuan`;
CREATE TABLE `bb_u_perempuan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `usia` int NOT NULL,
  `-3sd` decimal(10, 1) NOT NULL,
  `-2sd` decimal(10, 1) NOT NULL,
  `-1sd` decimal(10, 1) NOT NULL,
  `median` decimal(10, 1) NOT NULL,
  `+1sd` decimal(10, 1) NOT NULL,
  `+2sd` decimal(10, 1) NOT NULL,
  `+3sd` decimal(10, 1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bb_u_perempuan
-- ----------------------------
INSERT INTO `bb_u_perempuan` VALUES (1, 0, 2.6, 2.4, 2.8, 3.2, 3.7, 4.2, 4.8);
INSERT INTO `bb_u_perempuan` VALUES (2, 1, 2.7, 3.2, 3.6, 4.2, 4.8, 5.5, 6.2);
INSERT INTO `bb_u_perempuan` VALUES (3, 2, 3.4, 3.9, 4.5, 5.1, 5.8, 6.6, 7.5);
INSERT INTO `bb_u_perempuan` VALUES (4, 3, 4.0, 4.5, 5.2, 5.8, 6.6, 7.5, 8.5);
INSERT INTO `bb_u_perempuan` VALUES (5, 4, 4.4, 5.0, 5.7, 6.4, 7.3, 8.2, 9.3);
INSERT INTO `bb_u_perempuan` VALUES (6, 5, 4.8, 5.4, 6.1, 6.9, 7.8, 8.8, 10.0);
INSERT INTO `bb_u_perempuan` VALUES (7, 6, 5.1, 5.7, 6.5, 7.3, 8.2, 9.3, 10.6);
INSERT INTO `bb_u_perempuan` VALUES (8, 7, 5.3, 6.0, 6.8, 7.6, 8.6, 9.8, 11.1);
INSERT INTO `bb_u_perempuan` VALUES (9, 8, 5.6, 6.3, 7.0, 7.9, 9.0, 10.2, 11.6);
INSERT INTO `bb_u_perempuan` VALUES (10, 9, 5.8, 6.5, 7.3, 8.2, 9.3, 10.5, 152.0);
INSERT INTO `bb_u_perempuan` VALUES (11, 10, 5.9, 6.7, 7.5, 8.5, 9.6, 10.9, 12.4);
INSERT INTO `bb_u_perempuan` VALUES (12, 11, 6.1, 6.9, 7.7, 8.7, 9.9, 11.2, 12.8);
INSERT INTO `bb_u_perempuan` VALUES (13, 12, 6.3, 7.0, 7.9, 8.9, 10.1, 11.5, 13.1);
INSERT INTO `bb_u_perempuan` VALUES (14, 13, 6.4, 7.2, 8.1, 9.2, 10.4, 11.8, 13.5);
INSERT INTO `bb_u_perempuan` VALUES (15, 14, 6.6, 7.4, 8.3, 9.4, 10.6, 12.1, 13.8);
INSERT INTO `bb_u_perempuan` VALUES (16, 15, 6.7, 7.6, 8.5, 9.6, 10.9, 12.4, 14.1);
INSERT INTO `bb_u_perempuan` VALUES (17, 16, 6.9, 7.7, 8.7, 9.8, 11.1, 12.6, 14.5);
INSERT INTO `bb_u_perempuan` VALUES (18, 17, 7.0, 7.9, 8.9, 10.0, 11.4, 12.9, 14.8);
INSERT INTO `bb_u_perempuan` VALUES (19, 18, 7.2, 8.1, 9.1, 10.2, 11.6, 13.2, 15.1);
INSERT INTO `bb_u_perempuan` VALUES (20, 19, 7.3, 8.2, 9.2, 10.4, 11.8, 13.5, 15.4);
INSERT INTO `bb_u_perempuan` VALUES (21, 20, 7.5, 8.4, 9.4, 10.6, 12.1, 13.7, 15.7);
INSERT INTO `bb_u_perempuan` VALUES (22, 21, 7.6, 8.6, 9.6, 10.9, 12.3, 14.0, 16.0);
INSERT INTO `bb_u_perempuan` VALUES (23, 22, 7.8, 8.7, 9.8, 11.1, 12.5, 14.3, 16.4);
INSERT INTO `bb_u_perempuan` VALUES (24, 23, 7.9, 8.9, 10.0, 11.3, 12.8, 14.6, 16.7);
INSERT INTO `bb_u_perempuan` VALUES (25, 24, 8.1, 9.0, 10.2, 11.5, 13.0, 14.8, 17.0);
INSERT INTO `bb_u_perempuan` VALUES (26, 25, 8.2, 9.2, 10.3, 11.7, 13.3, 15.1, 17.3);
INSERT INTO `bb_u_perempuan` VALUES (27, 26, 8.4, 9.4, 10.5, 11.9, 13.5, 15.4, 17.7);
INSERT INTO `bb_u_perempuan` VALUES (28, 27, 8.5, 9.5, 10.7, 12.1, 13.7, 15.7, 18.0);
INSERT INTO `bb_u_perempuan` VALUES (29, 28, 8.6, 9.7, 10.9, 12.3, 14.0, 16.0, 18.3);
INSERT INTO `bb_u_perempuan` VALUES (30, 29, 8.8, 9.8, 11.1, 12.5, 14.2, 16.2, 18.7);
INSERT INTO `bb_u_perempuan` VALUES (31, 30, 8.9, 10.0, 11.2, 12.7, 14.4, 16.5, 19.0);
INSERT INTO `bb_u_perempuan` VALUES (32, 31, 9.0, 10.1, 11.4, 12.9, 14.7, 16.8, 19.3);
INSERT INTO `bb_u_perempuan` VALUES (33, 32, 9.1, 10.3, 11.6, 13.1, 14.9, 17.1, 19.6);
INSERT INTO `bb_u_perempuan` VALUES (34, 33, 9.3, 10.4, 11.7, 13.3, 15.1, 17.3, 20.0);
INSERT INTO `bb_u_perempuan` VALUES (35, 34, 9.4, 10.5, 11.9, 13.5, 15.4, 17.6, 20.3);
INSERT INTO `bb_u_perempuan` VALUES (36, 35, 9.5, 10.7, 12.0, 13.7, 15.6, 17.9, 20.6);
INSERT INTO `bb_u_perempuan` VALUES (37, 36, 9.6, 10.8, 12.2, 13.9, 15.8, 18.1, 20.9);
INSERT INTO `bb_u_perempuan` VALUES (38, 37, 9.7, 10.9, 12.4, 14.0, 16.0, 18.4, 21.3);
INSERT INTO `bb_u_perempuan` VALUES (39, 38, 9.8, 11.1, 12.5, 14.2, 16.3, 18.7, 21.6);
INSERT INTO `bb_u_perempuan` VALUES (40, 39, 9.9, 11.2, 12.7, 14.4, 16.5, 19.0, 22.0);
INSERT INTO `bb_u_perempuan` VALUES (41, 40, 10.1, 11.3, 12.8, 14.6, 16.7, 19.2, 22.3);
INSERT INTO `bb_u_perempuan` VALUES (42, 41, 10.2, 11.5, 13.0, 14.8, 16.9, 19.5, 22.7);
INSERT INTO `bb_u_perempuan` VALUES (43, 42, 10.3, 11.6, 13.1, 15.0, 17.2, 19.8, 23.0);
INSERT INTO `bb_u_perempuan` VALUES (44, 43, 10.4, 11.7, 13.3, 15.2, 17.4, 20.1, 23.4);
INSERT INTO `bb_u_perempuan` VALUES (45, 44, 10.5, 11.8, 13.4, 15.3, 17.6, 20.4, 23.7);
INSERT INTO `bb_u_perempuan` VALUES (46, 45, 10.6, 12.0, 13.6, 15.5, 17.8, 20.7, 24.1);
INSERT INTO `bb_u_perempuan` VALUES (47, 46, 10.7, 12.1, 13.7, 15.7, 18.1, 20.9, 24.5);
INSERT INTO `bb_u_perempuan` VALUES (48, 47, 10.8, 12.2, 13.9, 15.9, 189.3, 21.2, 24.8);
INSERT INTO `bb_u_perempuan` VALUES (49, 48, 10.9, 12.3, 14.0, 16.1, 18.5, 21.5, 25.2);
INSERT INTO `bb_u_perempuan` VALUES (50, 49, 11.0, 12.4, 14.2, 16.3, 18.8, 21.8, 25.5);
INSERT INTO `bb_u_perempuan` VALUES (51, 50, 11.1, 12.6, 14.3, 16.4, 19.0, 22.1, 25.9);
INSERT INTO `bb_u_perempuan` VALUES (52, 51, 11.2, 12.7, 14.5, 16.6, 19.2, 22.4, 26.3);
INSERT INTO `bb_u_perempuan` VALUES (53, 52, 11.3, 12.8, 14.6, 16.8, 19.4, 22.6, 26.6);
INSERT INTO `bb_u_perempuan` VALUES (54, 53, 11.4, 12.9, 14.8, 17.0, 19.7, 22.9, 27.0);
INSERT INTO `bb_u_perempuan` VALUES (55, 54, 11.5, 13.0, 14.9, 17.2, 19.9, 23.2, 27.4);
INSERT INTO `bb_u_perempuan` VALUES (56, 55, 11.6, 13.2, 15.1, 17.3, 20.1, 23.5, 27.7);
INSERT INTO `bb_u_perempuan` VALUES (57, 56, 11.7, 13.3, 15.2, 17.5, 20.3, 23.8, 28.1);
INSERT INTO `bb_u_perempuan` VALUES (58, 57, 11.8, 13.4, 15.3, 17.7, 20.6, 24.1, 28.5);
INSERT INTO `bb_u_perempuan` VALUES (59, 58, 11.9, 13.5, 15.5, 17.9, 20.8, 24.4, 28.8);
INSERT INTO `bb_u_perempuan` VALUES (60, 59, 12.0, 13.6, 15.6, 18.0, 21.0, 24.6, 29.2);
INSERT INTO `bb_u_perempuan` VALUES (61, 60, 12.1, 13.7, 15.8, 18.2, 21.2, 24.9, 29.5);

SET FOREIGN_KEY_CHECKS = 1;
