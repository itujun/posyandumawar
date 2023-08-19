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

 Date: 19/08/2023 21:00:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bb_u_laki
-- ----------------------------
DROP TABLE IF EXISTS `bb_u_laki`;
CREATE TABLE `bb_u_laki`  (
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
-- Records of bb_u_laki
-- ----------------------------
INSERT INTO `bb_u_laki` VALUES (1, 0, 2.1, 2.5, 2.9, 3.3, 3.9, 4.4, 5.0);
INSERT INTO `bb_u_laki` VALUES (2, 1, 2.9, 3.4, 3.9, 4.5, 5.1, 5.8, 6.6);
INSERT INTO `bb_u_laki` VALUES (3, 2, 3.8, 4.3, 4.9, 5.6, 6.3, 7.1, 8.0);
INSERT INTO `bb_u_laki` VALUES (4, 3, 4.4, 5.0, 5.7, 6.4, 7.2, 8.0, 9.0);
INSERT INTO `bb_u_laki` VALUES (5, 4, 4.9, 5.6, 6.2, 7.0, 7.8, 8.7, 9.7);
INSERT INTO `bb_u_laki` VALUES (6, 5, 5.3, 6.0, 6.7, 7.5, 8.4, 9.3, 10.4);
INSERT INTO `bb_u_laki` VALUES (7, 6, 5.7, 6.4, 7.1, 7.9, 8.8, 9.8, 10.9);
INSERT INTO `bb_u_laki` VALUES (8, 7, 5.9, 6.7, 7.4, 8.3, 9.2, 10.3, 11.4);
INSERT INTO `bb_u_laki` VALUES (9, 8, 6.2, 6.9, 7.7, 8.6, 9.6, 10.7, 11.9);
INSERT INTO `bb_u_laki` VALUES (10, 9, 6.4, 7.1, 8.0, 8.9, 9.9, 11.0, 12.3);
INSERT INTO `bb_u_laki` VALUES (11, 10, 6.6, 7.4, 8.2, 9.2, 10.2, 11.4, 12.7);
INSERT INTO `bb_u_laki` VALUES (12, 11, 6.8, 7.6, 8.4, 9.4, 10.5, 11.7, 13.0);
INSERT INTO `bb_u_laki` VALUES (13, 12, 6.9, 7.7, 8.6, 9.6, 10.8, 12.0, 13.3);
INSERT INTO `bb_u_laki` VALUES (14, 13, 7.1, 7.9, 8.8, 9.9, 11.0, 12.3, 13.7);
INSERT INTO `bb_u_laki` VALUES (15, 14, 7.2, 8.1, 9.0, 10.1, 11.3, 12.6, 14.0);
INSERT INTO `bb_u_laki` VALUES (16, 15, 7.4, 8.3, 9.2, 10.3, 11.5, 12.8, 14.3);
INSERT INTO `bb_u_laki` VALUES (17, 16, 7.5, 8.4, 9.4, 10.5, 11.7, 13.1, 14.6);
INSERT INTO `bb_u_laki` VALUES (18, 17, 7.7, 8.6, 9.6, 10.7, 12.0, 13.4, 14.9);
INSERT INTO `bb_u_laki` VALUES (19, 18, 7.8, 8.8, 9.8, 10.9, 12.2, 13.7, 15.3);
INSERT INTO `bb_u_laki` VALUES (20, 19, 8.0, 8.9, 10.0, 11.1, 12.5, 13.9, 15.6);
INSERT INTO `bb_u_laki` VALUES (21, 20, 8.1, 9.1, 10.1, 11.3, 12.7, 14.2, 15.9);
INSERT INTO `bb_u_laki` VALUES (22, 21, 8.2, 9.2, 10.3, 11.5, 12.9, 14.5, 16.2);
INSERT INTO `bb_u_laki` VALUES (23, 22, 8.4, 9.4, 10.5, 11.8, 13.2, 14.7, 16.5);
INSERT INTO `bb_u_laki` VALUES (24, 23, 8.5, 9.5, 10.7, 12.0, 13.4, 15.0, 16.8);
INSERT INTO `bb_u_laki` VALUES (25, 24, 8.6, 9.7, 10.8, 12.2, 13.6, 15.3, 17.1);
INSERT INTO `bb_u_laki` VALUES (26, 25, 8.8, 9.8, 11.0, 12.4, 13.9, 15.5, 17.5);
INSERT INTO `bb_u_laki` VALUES (27, 26, 8.9, 10.0, 11.2, 12.5, 14.1, 15.8, 17.8);
INSERT INTO `bb_u_laki` VALUES (28, 27, 9.0, 10.1, 11.3, 12.7, 14.3, 16.1, 18.1);
INSERT INTO `bb_u_laki` VALUES (29, 28, 9.1, 10.2, 11.5, 12.9, 14.5, 16.3, 18.4);
INSERT INTO `bb_u_laki` VALUES (30, 29, 9.2, 10.4, 11.7, 13.1, 14.8, 16.6, 18.7);
INSERT INTO `bb_u_laki` VALUES (31, 30, 9.4, 10.5, 11.8, 13.3, 15.0, 16.9, 19.0);
INSERT INTO `bb_u_laki` VALUES (32, 31, 9.5, 10.7, 12.0, 13.5, 15.2, 17.1, 19.3);
INSERT INTO `bb_u_laki` VALUES (33, 32, 9.6, 10.8, 12.1, 13.7, 15.4, 17.4, 19.6);
INSERT INTO `bb_u_laki` VALUES (34, 33, 9.7, 10.9, 12.3, 13.8, 15.6, 17.6, 19.9);
INSERT INTO `bb_u_laki` VALUES (35, 34, 9.8, 11.0, 12.4, 14.0, 15.8, 17.8, 20.2);
INSERT INTO `bb_u_laki` VALUES (36, 35, 9.9, 11.2, 12.6, 14.2, 16.0, 18.1, 20.4);
INSERT INTO `bb_u_laki` VALUES (37, 36, 10.0, 11.3, 12.7, 14.3, 16.2, 18.3, 20.7);
INSERT INTO `bb_u_laki` VALUES (38, 37, 10.1, 11.4, 12.9, 14.5, 16.4, 18.6, 21.0);
INSERT INTO `bb_u_laki` VALUES (39, 38, 10.2, 11.5, 13.0, 14.7, 16.6, 18.8, 21.3);
INSERT INTO `bb_u_laki` VALUES (40, 39, 10.3, 11.6, 13.1, 14.8, 16.8, 19.0, 21.6);
INSERT INTO `bb_u_laki` VALUES (41, 40, 10.4, 11.8, 13.3, 15.0, 17.0, 19.3, 21.9);
INSERT INTO `bb_u_laki` VALUES (42, 41, 10.5, 11.9, 13.4, 15.2, 17.2, 19.5, 22.1);
INSERT INTO `bb_u_laki` VALUES (43, 42, 10.6, 12.0, 13.6, 15.3, 17.4, 19.7, 22.4);
INSERT INTO `bb_u_laki` VALUES (44, 43, 10.7, 12.1, 13.7, 15.5, 17.6, 20.0, 22.7);
INSERT INTO `bb_u_laki` VALUES (45, 44, 10.8, 12.2, 13.8, 15.7, 17.8, 20.2, 23.0);
INSERT INTO `bb_u_laki` VALUES (46, 45, 10.9, 12.4, 14.0, 15.8, 18.0, 20.5, 23.3);
INSERT INTO `bb_u_laki` VALUES (47, 46, 11.0, 12.5, 14.1, 16.0, 18.2, 20.7, 23.6);
INSERT INTO `bb_u_laki` VALUES (48, 47, 11.1, 12.6, 14.3, 16.2, 18.4, 20.9, 23.9);
INSERT INTO `bb_u_laki` VALUES (49, 48, 11.2, 12.7, 14.4, 16.3, 18.6, 21.2, 24.2);
INSERT INTO `bb_u_laki` VALUES (50, 49, 11.3, 12.8, 14.5, 16.5, 18.8, 21.4, 24.5);
INSERT INTO `bb_u_laki` VALUES (51, 50, 11.4, 12.9, 14.7, 16.7, 19.0, 21.7, 24.8);
INSERT INTO `bb_u_laki` VALUES (52, 51, 11.5, 13.1, 14.8, 16.8, 19.2, 21.9, 25.1);
INSERT INTO `bb_u_laki` VALUES (53, 52, 11.6, 13.2, 15.0, 17.0, 19.4, 22.2, 25.4);
INSERT INTO `bb_u_laki` VALUES (54, 53, 11.7, 13.3, 15.1, 17.2, 19.6, 22.4, 25.7);
INSERT INTO `bb_u_laki` VALUES (55, 54, 11.8, 13.4, 15.2, 17.3, 19.8, 22.7, 26.0);
INSERT INTO `bb_u_laki` VALUES (56, 55, 11.9, 13.5, 15.4, 17.5, 20.0, 22.9, 26.3);
INSERT INTO `bb_u_laki` VALUES (57, 56, 12.0, 13.6, 15.5, 17.7, 20.2, 23.2, 26.6);
INSERT INTO `bb_u_laki` VALUES (58, 57, 12.1, 13.7, 15.6, 17.8, 20.4, 23.4, 26.9);
INSERT INTO `bb_u_laki` VALUES (59, 58, 12.2, 13.8, 15.8, 18.0, 20.6, 23.7, 27.2);
INSERT INTO `bb_u_laki` VALUES (60, 59, 12.3, 14.0, 15.9, 18.2, 20.8, 23.9, 27.6);
INSERT INTO `bb_u_laki` VALUES (61, 60, 12.4, 14.1, 16.0, 18.3, 21.0, 24.2, 27.9);

SET FOREIGN_KEY_CHECKS = 1;
