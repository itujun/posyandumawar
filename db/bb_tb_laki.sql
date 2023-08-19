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

 Date: 19/08/2023 21:00:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bb_tb_laki
-- ----------------------------
DROP TABLE IF EXISTS `bb_tb_laki`;
CREATE TABLE `bb_tb_laki`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `usia` int NOT NULL,
  `tb` decimal(10, 1) NOT NULL,
  `-3sd` decimal(10, 1) NOT NULL,
  `-2sd` decimal(10, 1) NOT NULL,
  `-1sd` decimal(10, 1) NOT NULL,
  `median` decimal(10, 1) NOT NULL,
  `+1sd` decimal(10, 1) NOT NULL,
  `+2sd` decimal(10, 1) NOT NULL,
  `+3sd` decimal(10, 1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 244 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bb_tb_laki
-- ----------------------------
INSERT INTO `bb_tb_laki` VALUES (1, 1, 45.0, 1.9, 2.0, 2.2, 2.4, 2.7, 3.0, 3.3);
INSERT INTO `bb_tb_laki` VALUES (2, 1, 45.5, 1.9, 2.1, 2.3, 2.5, 2.8, 3.1, 3.4);
INSERT INTO `bb_tb_laki` VALUES (3, 1, 46.0, 2.0, 2.2, 2.4, 2.6, 2.9, 3.1, 3.5);
INSERT INTO `bb_tb_laki` VALUES (4, 1, 46.5, 2.1, 2.3, 2.5, 2.7, 3.0, 3.2, 3.6);
INSERT INTO `bb_tb_laki` VALUES (5, 1, 47.0, 2.1, 2.3, 2.5, 2.8, 3.0, 3.3, 3.7);
INSERT INTO `bb_tb_laki` VALUES (6, 1, 47.5, 2.2, 2.4, 2.6, 2.9, 3.1, 3.4, 3.8);
INSERT INTO `bb_tb_laki` VALUES (7, 1, 48.0, 2.3, 2.5, 2.7, 2.9, 3.2, 3.6, 3.9);
INSERT INTO `bb_tb_laki` VALUES (8, 1, 48.5, 2.3, 2.6, 2.8, 3.0, 3.3, 3.7, 4.0);
INSERT INTO `bb_tb_laki` VALUES (9, 1, 49.0, 2.4, 2.6, 2.9, 3.1, 3.4, 3.8, 4.2);
INSERT INTO `bb_tb_laki` VALUES (10, 1, 49.5, 2.5, 2.7, 3.0, 3.2, 3.5, 3.9, 4.3);
INSERT INTO `bb_tb_laki` VALUES (11, 1, 50.0, 2.6, 2.8, 3.0, 3.3, 3.6, 4.0, 4.4);
INSERT INTO `bb_tb_laki` VALUES (12, 1, 50.5, 2.7, 2.9, 3.1, 3.4, 3.8, 4.1, 4.5);
INSERT INTO `bb_tb_laki` VALUES (13, 1, 51.0, 2.7, 3.0, 3.2, 3.5, 3.9, 4.2, 4.7);
INSERT INTO `bb_tb_laki` VALUES (14, 1, 51.5, 2.8, 3.1, 3.3, 3.6, 4.0, 4.4, 4.8);
INSERT INTO `bb_tb_laki` VALUES (15, 1, 52.0, 2.9, 3.2, 3.5, 3.8, 4.1, 4.5, 5.0);
INSERT INTO `bb_tb_laki` VALUES (16, 1, 52.5, 3.0, 3.3, 3.6, 3.9, 4.2, 4.6, 5.1);
INSERT INTO `bb_tb_laki` VALUES (17, 1, 53.0, 3.1, 3.4, 3.7, 4.0, 4.4, 4.8, 5.3);
INSERT INTO `bb_tb_laki` VALUES (18, 1, 53.5, 3.2, 3.5, 3.8, 4.1, 4.5, 4.9, 5.4);
INSERT INTO `bb_tb_laki` VALUES (19, 1, 54.0, 3.3, 3.6, 3.9, 4.3, 4.7, 5.1, 5.6);
INSERT INTO `bb_tb_laki` VALUES (20, 1, 54.5, 3.4, 3.7, 4.0, 4.4, 4.8, 5.3, 5.8);
INSERT INTO `bb_tb_laki` VALUES (21, 1, 55.0, 3.6, 3.8, 4.2, 4.5, 5.0, 5.4, 6.0);
INSERT INTO `bb_tb_laki` VALUES (22, 1, 55.5, 3.7, 4.0, 4.3, 4.7, 5.1, 5.6, 6.1);
INSERT INTO `bb_tb_laki` VALUES (23, 1, 56.0, 3.8, 4.1, 4.4, 4.8, 5.3, 5.8, 6.3);
INSERT INTO `bb_tb_laki` VALUES (24, 1, 56.5, 3.9, 4.2, 4.6, 5.0, 5.4, 5.9, 6.5);
INSERT INTO `bb_tb_laki` VALUES (25, 1, 57.0, 4.0, 4.3, 4.7, 5.1, 5.6, 6.1, 6.7);
INSERT INTO `bb_tb_laki` VALUES (26, 1, 57.5, 4.1, 4.5, 4.9, 5.3, 5.7, 6.3, 6.9);
INSERT INTO `bb_tb_laki` VALUES (27, 1, 58.0, 4.3, 4.6, 5.0, 5.4, 5.9, 6.4, 7.1);
INSERT INTO `bb_tb_laki` VALUES (28, 1, 58.5, 4.4, 4.7, 5.1, 5.6, 6.1, 6.6, 7.2);
INSERT INTO `bb_tb_laki` VALUES (29, 1, 59.0, 4.5, 4.8, 5.3, 5.7, 6.2, 6.8, 7.4);
INSERT INTO `bb_tb_laki` VALUES (30, 1, 59.5, 4.6, 5.0, 5.4, 5.9, 6.4, 7.0, 7.6);
INSERT INTO `bb_tb_laki` VALUES (31, 1, 60.0, 4.7, 5.1, 5.5, 6.0, 6.5, 7.1, 7.8);
INSERT INTO `bb_tb_laki` VALUES (32, 1, 60.5, 4.8, 5.2, 5.6, 6.1, 6.7, 7.3, 8.0);
INSERT INTO `bb_tb_laki` VALUES (33, 1, 61.0, 4.9, 5.3, 5.8, 6.3, 6.8, 7.4, 8.1);
INSERT INTO `bb_tb_laki` VALUES (34, 1, 61.5, 5.0, 5.4, 5.9, 6.4, 7.0, 7.6, 8.3);
INSERT INTO `bb_tb_laki` VALUES (35, 1, 62.0, 5.1, 5.6, 6.0, 6.5, 7.1, 7.7, 8.5);
INSERT INTO `bb_tb_laki` VALUES (36, 1, 62.5, 5.2, 5.7, 6.1, 6.7, 7.2, 7.9, 8.6);
INSERT INTO `bb_tb_laki` VALUES (37, 1, 63.0, 5.3, 5.8, 6.2, 6.8, 7.4, 8.0, 8.8);
INSERT INTO `bb_tb_laki` VALUES (38, 1, 63.5, 5.4, 5.9, 6.4, 6.9, 7.5, 8.2, 8.9);
INSERT INTO `bb_tb_laki` VALUES (39, 1, 64.0, 5.5, 6.0, 6.5, 7.0, 7.6, 8.3, 9.1);
INSERT INTO `bb_tb_laki` VALUES (40, 1, 64.5, 5.6, 6.1, 6.6, 7.1, 7.8, 8.5, 9.3);
INSERT INTO `bb_tb_laki` VALUES (41, 1, 65.0, 5.7, 6.2, 6.7, 7.3, 7.9, 8.6, 9.4);
INSERT INTO `bb_tb_laki` VALUES (42, 1, 65.5, 5.8, 6.3, 6.8, 7.4, 8.0, 8.7, 9.6);
INSERT INTO `bb_tb_laki` VALUES (43, 1, 66.0, 5.9, 6.4, 6.9, 7.5, 8.2, 8.9, 9.7);
INSERT INTO `bb_tb_laki` VALUES (44, 1, 66.5, 6.0, 6.5, 7.0, 7.6, 8.3, 9.0, 9.9);
INSERT INTO `bb_tb_laki` VALUES (45, 1, 67.0, 6.1, 6.6, 7.1, 7.7, 8.4, 9.2, 10.0);
INSERT INTO `bb_tb_laki` VALUES (46, 1, 67.5, 6.2, 6.7, 7.2, 7.9, 8.5, 9.3, 10.2);
INSERT INTO `bb_tb_laki` VALUES (47, 1, 68.0, 6.3, 6.8, 7.3, 8.0, 8.7, 9.4, 10.3);
INSERT INTO `bb_tb_laki` VALUES (48, 1, 68.5, 6.4, 6.9, 7.5, 8.1, 8.8, 9.6, 10.5);
INSERT INTO `bb_tb_laki` VALUES (49, 1, 69.0, 6.5, 7.0, 7.6, 8.2, 8.9, 9.7, 10.6);
INSERT INTO `bb_tb_laki` VALUES (50, 1, 69.5, 6.6, 7.1, 7.7, 8.3, 9.0, 9.8, 10.8);
INSERT INTO `bb_tb_laki` VALUES (51, 1, 70.0, 6.6, 7.2, 7.8, 8.4, 9.2, 10.0, 10.9);
INSERT INTO `bb_tb_laki` VALUES (52, 1, 70.5, 6.7, 7.3, 7.9, 8.5, 9.3, 10.1, 11.1);
INSERT INTO `bb_tb_laki` VALUES (53, 1, 71.0, 6.8, 7.4, 8.0, 8.6, 9.4, 10.2, 11.2);
INSERT INTO `bb_tb_laki` VALUES (54, 1, 71.5, 6.9, 7.5, 8.1, 8.8, 9.5, 10.4, 11.3);
INSERT INTO `bb_tb_laki` VALUES (55, 1, 72.0, 7.0, 7.6, 8.2, 8.9, 9.6, 10.5, 11.5);
INSERT INTO `bb_tb_laki` VALUES (56, 1, 72.5, 7.1, 7.6, 8.3, 9.0, 9.8, 10.6, 11.6);
INSERT INTO `bb_tb_laki` VALUES (57, 1, 73.0, 7.2, 7.7, 8.4, 9.1, 9.9, 10.8, 11.8);
INSERT INTO `bb_tb_laki` VALUES (58, 1, 73.5, 7.2, 7.8, 8.5, 9.2, 10.0, 10.9, 11.9);
INSERT INTO `bb_tb_laki` VALUES (59, 1, 74.0, 7.3, 7.9, 8.6, 9.3, 10.1, 11.0, 12.1);
INSERT INTO `bb_tb_laki` VALUES (60, 1, 74.5, 7.4, 8.0, 8.7, 9.4, 10.2, 11.2, 12.2);
INSERT INTO `bb_tb_laki` VALUES (61, 1, 75.0, 7.5, 8.1, 8.8, 9.5, 10.3, 11.3, 12.3);
INSERT INTO `bb_tb_laki` VALUES (62, 1, 75.5, 7.6, 8.2, 8.8, 9.6, 10.4, 11.4, 12.5);
INSERT INTO `bb_tb_laki` VALUES (63, 1, 76.0, 7.6, 8.3, 8.9, 9.7, 10.6, 11.5, 12.6);
INSERT INTO `bb_tb_laki` VALUES (64, 1, 76.5, 7.7, 8.3, 9.0, 9.8, 10.7, 11.6, 12.7);
INSERT INTO `bb_tb_laki` VALUES (65, 1, 77.0, 7.8, 8.4, 9.1, 9.9, 10.8, 11.7, 12.8);
INSERT INTO `bb_tb_laki` VALUES (66, 1, 77.5, 7.9, 8.5, 9.2, 10.0, 10.9, 11.9, 13.0);
INSERT INTO `bb_tb_laki` VALUES (67, 1, 78.0, 7.9, 8.6, 9.3, 10.1, 11.0, 12.0, 13.1);
INSERT INTO `bb_tb_laki` VALUES (68, 1, 78.5, 8.0, 8.7, 9.4, 10.2, 11.1, 12.1, 13.2);
INSERT INTO `bb_tb_laki` VALUES (69, 1, 79.0, 8.1, 8.7, 9.5, 10.3, 11.2, 12.2, 13.3);
INSERT INTO `bb_tb_laki` VALUES (70, 1, 79.5, 8.2, 8.8, 9.5, 10.4, 11.3, 12.3, 13.4);
INSERT INTO `bb_tb_laki` VALUES (71, 1, 80.0, 8.2, 8.9, 9.6, 10.4, 11.4, 12.4, 13.6);
INSERT INTO `bb_tb_laki` VALUES (72, 1, 80.5, 8.3, 9.0, 9.7, 10.5, 11.5, 12.5, 13.7);
INSERT INTO `bb_tb_laki` VALUES (73, 1, 81.0, 8.4, 9.1, 9.8, 10.6, 11.6, 12.6, 13.8);
INSERT INTO `bb_tb_laki` VALUES (74, 1, 81.5, 8.5, 9.1, 9.9, 10.7, 11.7, 12.7, 13.9);
INSERT INTO `bb_tb_laki` VALUES (75, 1, 82.0, 8.5, 9.2, 10.0, 10.8, 11.8, 12.8, 14.0);
INSERT INTO `bb_tb_laki` VALUES (76, 1, 82.5, 8.6, 9.3, 10.1, 10.9, 11.9, 13.0, 14.2);
INSERT INTO `bb_tb_laki` VALUES (77, 1, 83.0, 8.7, 9.4, 10.2, 11.0, 12.0, 13.1, 14.3);
INSERT INTO `bb_tb_laki` VALUES (78, 1, 83.5, 8.8, 9.5, 10.3, 11.2, 12.1, 13.2, 14.4);
INSERT INTO `bb_tb_laki` VALUES (79, 1, 84.0, 8.9, 9.6, 10.4, 11.3, 12.2, 13.3, 14.6);
INSERT INTO `bb_tb_laki` VALUES (80, 1, 84.5, 9.0, 9.7, 10.5, 11.4, 12.4, 13.5, 14.7);
INSERT INTO `bb_tb_laki` VALUES (81, 1, 85.0, 9.1, 9.8, 10.6, 11.5, 12.5, 13.6, 14.9);
INSERT INTO `bb_tb_laki` VALUES (82, 1, 85.5, 9.2, 9.9, 10.7, 11.6, 12.6, 13.7, 15.0);
INSERT INTO `bb_tb_laki` VALUES (83, 1, 86.0, 9.3, 10.0, 10.8, 11.7, 12.8, 13.9, 15.2);
INSERT INTO `bb_tb_laki` VALUES (84, 1, 86.5, 9.4, 10.1, 11.0, 11.9, 12.9, 14.0, 15.3);
INSERT INTO `bb_tb_laki` VALUES (85, 1, 87.0, 9.5, 10.2, 11.1, 12.0, 13.0, 14.2, 15.5);
INSERT INTO `bb_tb_laki` VALUES (86, 1, 87.5, 9.6, 10.4, 11.2, 12.1, 13.2, 14.3, 15.6);
INSERT INTO `bb_tb_laki` VALUES (87, 1, 88.0, 9.7, 10.5, 11.3, 12.2, 13.3, 14.5, 15.8);
INSERT INTO `bb_tb_laki` VALUES (88, 1, 88.5, 9.8, 10.6, 11.4, 12.4, 13.4, 14.6, 15.9);
INSERT INTO `bb_tb_laki` VALUES (89, 1, 89.0, 9.9, 10.7, 11.5, 12.5, 13.5, 14.7, 16.1);
INSERT INTO `bb_tb_laki` VALUES (90, 1, 89.5, 10.0, 10.8, 11.6, 12.6, 13.7, 14.9, 16.2);
INSERT INTO `bb_tb_laki` VALUES (91, 1, 90.0, 10.1, 10.9, 11.8, 12.7, 13.8, 15.0, 16.4);
INSERT INTO `bb_tb_laki` VALUES (92, 1, 90.5, 10.2, 11.0, 11.9, 12.8, 13.9, 15.1, 16.5);
INSERT INTO `bb_tb_laki` VALUES (93, 1, 91.0, 10.3, 11.1, 12.0, 13.0, 14.1, 15.3, 16.7);
INSERT INTO `bb_tb_laki` VALUES (94, 1, 91.5, 10.4, 11.2, 12.1, 13.1, 14.2, 15.4, 16.8);
INSERT INTO `bb_tb_laki` VALUES (95, 1, 92.0, 10.5, 11.3, 12.2, 13.2, 14.3, 15.6, 17.0);
INSERT INTO `bb_tb_laki` VALUES (96, 1, 92.5, 10.6, 11.4, 12.3, 13.3, 14.4, 15.7, 17.1);
INSERT INTO `bb_tb_laki` VALUES (97, 1, 93.0, 10.7, 11.5, 12.4, 13.4, 14.6, 15.8, 17.3);
INSERT INTO `bb_tb_laki` VALUES (98, 1, 93.5, 10.7, 11.6, 12.5, 13.5, 14.7, 16.0, 17.4);
INSERT INTO `bb_tb_laki` VALUES (99, 1, 94.0, 10.8, 11.7, 12.6, 13.7, 14.8, 16.1, 17.6);
INSERT INTO `bb_tb_laki` VALUES (100, 1, 94.5, 10.9, 11.8, 12.7, 13.8, 14.9, 16.3, 17.7);
INSERT INTO `bb_tb_laki` VALUES (101, 1, 95.0, 11.0, 11.9, 12.8, 13.9, 15.1, 16.4, 17.9);
INSERT INTO `bb_tb_laki` VALUES (102, 1, 95.5, 11.1, 12.0, 12.9, 14.0, 15.2, 16.5, 18.0);
INSERT INTO `bb_tb_laki` VALUES (103, 1, 96.0, 11.2, 12.1, 13.1, 14.1, 15.3, 16.7, 18.2);
INSERT INTO `bb_tb_laki` VALUES (104, 1, 96.5, 11.3, 12.2, 13.2, 14.3, 15.5, 16.8, 18.4);
INSERT INTO `bb_tb_laki` VALUES (105, 1, 97.0, 11.4, 12.3, 13.3, 14.4, 15.6, 17.0, 18.5);
INSERT INTO `bb_tb_laki` VALUES (106, 1, 97.5, 11.5, 12.4, 13.4, 14.5, 15.7, 17.1, 18.7);
INSERT INTO `bb_tb_laki` VALUES (107, 1, 98.0, 11.6, 12.5, 13.5, 14.6, 15.9, 17.3, 18.9);
INSERT INTO `bb_tb_laki` VALUES (108, 1, 98.5, 11.7, 12.6, 13.6, 14.8, 16.0, 17.5, 19.1);
INSERT INTO `bb_tb_laki` VALUES (109, 1, 99.0, 11.8, 12.7, 13.7, 14.9, 16.2, 17.6, 19.2);
INSERT INTO `bb_tb_laki` VALUES (110, 1, 99.5, 11.9, 12.8, 13.9, 15.0, 16.3, 17.8, 19.4);
INSERT INTO `bb_tb_laki` VALUES (111, 1, 100.0, 12.0, 12.9, 14.0, 15.2, 16.5, 18.0, 19.6);
INSERT INTO `bb_tb_laki` VALUES (112, 1, 100.5, 12.1, 13.0, 14.1, 15.3, 16.6, 18.1, 19.8);
INSERT INTO `bb_tb_laki` VALUES (113, 1, 101.0, 12.2, 13.2, 14.2, 15.4, 16.8, 18.3, 20.0);
INSERT INTO `bb_tb_laki` VALUES (114, 1, 101.5, 12.3, 13.3, 14.4, 15.6, 16.9, 18.5, 20.2);
INSERT INTO `bb_tb_laki` VALUES (115, 1, 102.0, 12.4, 13.4, 14.5, 15.7, 17.1, 18.7, 20.4);
INSERT INTO `bb_tb_laki` VALUES (116, 1, 102.5, 12.5, 13.5, 14.6, 15.9, 17.3, 18.8, 20.6);
INSERT INTO `bb_tb_laki` VALUES (117, 1, 103.0, 12.6, 13.6, 14.8, 16.0, 17.4, 19.0, 20.8);
INSERT INTO `bb_tb_laki` VALUES (118, 1, 103.5, 12.7, 13.7, 14.9, 16.2, 17.6, 19.2, 21.0);
INSERT INTO `bb_tb_laki` VALUES (119, 1, 104.0, 12.8, 13.9, 15.0, 16.3, 17.8, 19.4, 21.2);
INSERT INTO `bb_tb_laki` VALUES (120, 1, 104.5, 12.9, 14.0, 15.2, 16.5, 17.9, 19.6, 21.5);
INSERT INTO `bb_tb_laki` VALUES (121, 1, 105.0, 13.0, 14.1, 15.3, 16.6, 18.1, 19.8, 21.7);
INSERT INTO `bb_tb_laki` VALUES (122, 1, 105.5, 13.2, 14.2, 15.4, 16.8, 18.3, 20.0, 21.9);
INSERT INTO `bb_tb_laki` VALUES (123, 1, 106.0, 13.3, 14.4, 15.6, 16.9, 18.5, 20.2, 22.1);
INSERT INTO `bb_tb_laki` VALUES (124, 1, 106.5, 13.4, 14.5, 15.7, 17.1, 18.6, 20.4, 22.4);
INSERT INTO `bb_tb_laki` VALUES (125, 1, 107.0, 13.5, 14.6, 15.9, 17.3, 18.8, 20.6, 22.6);
INSERT INTO `bb_tb_laki` VALUES (126, 1, 107.5, 13.6, 14.7, 16.0, 17.4, 19.0, 20.8, 22.8);
INSERT INTO `bb_tb_laki` VALUES (127, 1, 108.0, 13.7, 14.9, 16.2, 17.6, 19.2, 21.0, 23.1);
INSERT INTO `bb_tb_laki` VALUES (128, 1, 108.5, 13.8, 15.0, 16.3, 17.8, 19.4, 21.2, 23.3);
INSERT INTO `bb_tb_laki` VALUES (129, 1, 109.0, 14.0, 15.1, 16.5, 17.9, 19.6, 21.4, 23.6);
INSERT INTO `bb_tb_laki` VALUES (130, 1, 109.5, 14.1, 15.3, 16.6, 18.1, 19.8, 21.7, 23.8);
INSERT INTO `bb_tb_laki` VALUES (131, 1, 110.0, 14.2, 15.4, 16.8, 18.3, 20.0, 21.9, 24.1);
INSERT INTO `bb_tb_laki` VALUES (132, 2, 65.0, 5.9, 6.3, 6.9, 7.4, 8.1, 8.8, 9.6);
INSERT INTO `bb_tb_laki` VALUES (133, 2, 65.5, 6.0, 6.4, 7.0, 7.6, 8.2, 8.9, 9.8);
INSERT INTO `bb_tb_laki` VALUES (134, 2, 66.0, 6.1, 6.5, 7.1, 7.7, 8.3, 9.1, 9.9);
INSERT INTO `bb_tb_laki` VALUES (135, 2, 66.5, 6.1, 6.6, 7.2, 7.8, 8.5, 9.2, 10.1);
INSERT INTO `bb_tb_laki` VALUES (136, 2, 67.0, 6.2, 6.7, 7.3, 7.9, 8.6, 9.4, 10.2);
INSERT INTO `bb_tb_laki` VALUES (137, 2, 67.5, 6.3, 6.8, 7.4, 8.0, 8.7, 9.5, 10.4);
INSERT INTO `bb_tb_laki` VALUES (138, 2, 68.0, 6.4, 6.9, 7.5, 8.1, 8.8, 9.6, 10.5);
INSERT INTO `bb_tb_laki` VALUES (139, 2, 68.5, 6.5, 7.0, 7.6, 8.2, 9.0, 9.8, 10.7);
INSERT INTO `bb_tb_laki` VALUES (140, 2, 69.0, 6.6, 7.1, 7.7, 8.4, 9.1, 9.9, 10.8);
INSERT INTO `bb_tb_laki` VALUES (141, 2, 69.5, 6.7, 7.2, 7.8, 8.5, 9.2, 10.0, 11.0);
INSERT INTO `bb_tb_laki` VALUES (142, 2, 70.0, 6.8, 7.3, 7.9, 8.6, 9.3, 10.2, 11.1);
INSERT INTO `bb_tb_laki` VALUES (143, 2, 70.5, 6.9, 7.4, 8.0, 8.7, 9.5, 10.3, 11.3);
INSERT INTO `bb_tb_laki` VALUES (144, 2, 71.0, 6.9, 7.5, 8.1, 8.8, 9.6, 10.4, 11.4);
INSERT INTO `bb_tb_laki` VALUES (145, 2, 71.5, 7.0, 7.6, 8.2, 8.9, 9.7, 10.6, 11.6);
INSERT INTO `bb_tb_laki` VALUES (146, 2, 72.0, 7.1, 7.7, 8.3, 9.0, 9.8, 10.7, 11.7);
INSERT INTO `bb_tb_laki` VALUES (147, 2, 72.5, 7.2, 7.8, 8.4, 9.1, 9.9, 10.8, 11.8);
INSERT INTO `bb_tb_laki` VALUES (148, 2, 73.0, 7.3, 7.9, 8.5, 9.2, 10.0, 11.0, 12.0);
INSERT INTO `bb_tb_laki` VALUES (149, 2, 73.5, 7.4, 7.9, 8.6, 9.3, 10.2, 11.1, 12.1);
INSERT INTO `bb_tb_laki` VALUES (150, 2, 74.0, 7.4, 8.0, 8.7, 9.4, 10.3, 11.2, 12.2);
INSERT INTO `bb_tb_laki` VALUES (151, 2, 74.5, 7.5, 8.1, 8.8, 9.5, 10.4, 11.3, 12.4);
INSERT INTO `bb_tb_laki` VALUES (152, 2, 75.0, 7.6, 8.2, 8.9, 9.6, 10.5, 11.4, 12.5);
INSERT INTO `bb_tb_laki` VALUES (153, 2, 75.5, 7.7, 8.3, 9.0, 9.7, 10.6, 11.6, 12.6);
INSERT INTO `bb_tb_laki` VALUES (154, 2, 76.0, 7.7, 8.4, 9.1, 9.8, 10.7, 11.7, 12.8);
INSERT INTO `bb_tb_laki` VALUES (155, 2, 76.5, 7.8, 8.5, 9.2, 9.9, 10.8, 11.8, 12.9);
INSERT INTO `bb_tb_laki` VALUES (156, 2, 77.0, 7.9, 8.5, 9.2, 10.0, 10.9, 11.9, 13.0);
INSERT INTO `bb_tb_laki` VALUES (157, 2, 77.5, 8.0, 8.6, 9.3, 10.1, 11.0, 12.0, 13.1);
INSERT INTO `bb_tb_laki` VALUES (158, 2, 78.0, 8.0, 8.7, 9.4, 10.2, 11.1, 12.1, 13.3);
INSERT INTO `bb_tb_laki` VALUES (159, 2, 78.5, 8.1, 8.8, 9.5, 10.3, 11.2, 12.2, 13.4);
INSERT INTO `bb_tb_laki` VALUES (160, 2, 79.0, 8.2, 8.8, 9.6, 10.4, 11.3, 12.3, 13.5);
INSERT INTO `bb_tb_laki` VALUES (161, 2, 79.5, 8.3, 8.9, 9.7, 10.5, 11.4, 12.4, 13.6);
INSERT INTO `bb_tb_laki` VALUES (162, 2, 80.0, 8.3, 9.0, 9.7, 10.6, 11.5, 12.6, 13.7);
INSERT INTO `bb_tb_laki` VALUES (163, 2, 80.5, 8.4, 9.1, 9.8, 10.7, 11.6, 12.7, 13.8);
INSERT INTO `bb_tb_laki` VALUES (164, 2, 81.0, 8.5, 9.2, 9.9, 10.8, 11.7, 12.8, 14.0);
INSERT INTO `bb_tb_laki` VALUES (165, 2, 81.5, 8.6, 9.3, 10.0, 10.9, 11.8, 12.9, 14.1);
INSERT INTO `bb_tb_laki` VALUES (166, 2, 82.0, 8.7, 9.3, 10.1, 11.0, 11.9, 13.0, 14.2);
INSERT INTO `bb_tb_laki` VALUES (167, 2, 82.5, 8.7, 9.4, 10.2, 11.1, 12.1, 13.1, 14.4);
INSERT INTO `bb_tb_laki` VALUES (168, 2, 83.0, 8.8, 9.5, 10.3, 11.2, 12.2, 13.3, 14.5);
INSERT INTO `bb_tb_laki` VALUES (169, 2, 83.5, 8.9, 9.6, 10.4, 11.3, 12.3, 13.4, 14.6);
INSERT INTO `bb_tb_laki` VALUES (170, 2, 84.0, 9.0, 9.7, 10.5, 11.4, 12.4, 13.5, 14.8);
INSERT INTO `bb_tb_laki` VALUES (171, 2, 84.5, 9.1, 9.9, 10.7, 11.5, 12.5, 13.7, 14.9);
INSERT INTO `bb_tb_laki` VALUES (172, 2, 85.0, 9.2, 10.0, 10.8, 11.7, 12.7, 13.8, 15.1);
INSERT INTO `bb_tb_laki` VALUES (173, 2, 85.5, 9.3, 10.1, 10.9, 11.8, 12.8, 13.9, 15.2);
INSERT INTO `bb_tb_laki` VALUES (174, 2, 86.0, 9.4, 10.2, 11.0, 11.9, 12.9, 14.1, 15.4);
INSERT INTO `bb_tb_laki` VALUES (175, 2, 86.5, 9.5, 10.3, 11.1, 12.0, 13.1, 14.2, 15.5);
INSERT INTO `bb_tb_laki` VALUES (176, 2, 87.0, 9.6, 10.4, 11.2, 12.2, 13.2, 14.4, 15.7);
INSERT INTO `bb_tb_laki` VALUES (177, 2, 87.5, 9.7, 10.5, 11.3, 12.3, 13.3, 14.5, 15.8);
INSERT INTO `bb_tb_laki` VALUES (178, 2, 88.0, 9.8, 10.6, 11.5, 12.4, 13.5, 14.7, 16.0);
INSERT INTO `bb_tb_laki` VALUES (179, 2, 88.5, 9.9, 10.7, 11.6, 12.5, 13.6, 14.8, 16.1);
INSERT INTO `bb_tb_laki` VALUES (180, 2, 89.0, 10.0, 10.8, 11.7, 12.6, 13.7, 14.9, 16.3);
INSERT INTO `bb_tb_laki` VALUES (181, 2, 89.5, 10.1, 10.9, 11.8, 12.8, 13.9, 15.1, 16.4);
INSERT INTO `bb_tb_laki` VALUES (182, 2, 90.0, 10.2, 11.0, 11.9, 12.9, 14.0, 15.2, 16.6);
INSERT INTO `bb_tb_laki` VALUES (183, 2, 90.5, 10.3, 11.1, 12.0, 13.0, 14.1, 15.3, 16.7);
INSERT INTO `bb_tb_laki` VALUES (184, 2, 91.0, 10.4, 11.2, 12.1, 13.1, 14.2, 15.5, 16.9);
INSERT INTO `bb_tb_laki` VALUES (185, 2, 91.5, 10.5, 11.3, 12.2, 13.2, 14.4, 15.6, 17.0);
INSERT INTO `bb_tb_laki` VALUES (186, 2, 92.0, 10.6, 11.4, 12.3, 13.4, 14.5, 15.8, 17.2);
INSERT INTO `bb_tb_laki` VALUES (187, 2, 92.5, 10.7, 11.5, 12.4, 13.5, 14.6, 15.9, 17.3);
INSERT INTO `bb_tb_laki` VALUES (188, 2, 93.0, 10.8, 11.6, 12.6, 13.6, 14.7, 16.0, 17.5);
INSERT INTO `bb_tb_laki` VALUES (189, 2, 93.5, 10.9, 11.7, 12.7, 13.7, 14.9, 16.2, 17.6);
INSERT INTO `bb_tb_laki` VALUES (190, 2, 94.0, 11.0, 11.8, 12.8, 13.8, 15.0, 16.3, 17.8);
INSERT INTO `bb_tb_laki` VALUES (191, 2, 94.5, 11.1, 11.9, 12.9, 13.9, 15.1, 16.5, 17.9);
INSERT INTO `bb_tb_laki` VALUES (192, 2, 95.0, 11.1, 12.0, 13.0, 14.1, 15.3, 16.6, 18.1);
INSERT INTO `bb_tb_laki` VALUES (193, 2, 95.5, 11.2, 12.1, 13.1, 14.2, 15.4, 16.7, 18.3);
INSERT INTO `bb_tb_laki` VALUES (194, 2, 96.0, 11.3, 12.2, 13.2, 14.3, 15.5, 16.9, 18.4);
INSERT INTO `bb_tb_laki` VALUES (195, 2, 96.5, 11.4, 12.3, 13.3, 14.4, 15.7, 17.0, 18.6);
INSERT INTO `bb_tb_laki` VALUES (196, 2, 97.0, 11.5, 12.4, 13.4, 14.6, 15.8, 17.2, 18.8);
INSERT INTO `bb_tb_laki` VALUES (197, 2, 97.5, 11.6, 12.5, 13.6, 14.7, 15.9, 17.4, 18.9);
INSERT INTO `bb_tb_laki` VALUES (198, 2, 98.0, 11.7, 12.6, 13.7, 14.8, 16.1, 17.5, 19.1);
INSERT INTO `bb_tb_laki` VALUES (199, 2, 98.5, 11.8, 12.8, 13.8, 14.9, 16.2, 17.7, 19.3);
INSERT INTO `bb_tb_laki` VALUES (200, 2, 99.0, 11.9, 12.9, 13.9, 15.1, 16.4, 17.9, 19.5);
INSERT INTO `bb_tb_laki` VALUES (201, 2, 99.5, 12.0, 13.0, 14.0, 15.2, 16.5, 18.0, 19.7);
INSERT INTO `bb_tb_laki` VALUES (202, 2, 100.0, 12.1, 13.1, 14.2, 15.4, 16.7, 18.2, 19.9);
INSERT INTO `bb_tb_laki` VALUES (203, 2, 100.5, 12.2, 13.2, 14.3, 15.5, 16.9, 18.4, 20.1);
INSERT INTO `bb_tb_laki` VALUES (204, 2, 101.0, 12.3, 13.3, 14.4, 15.6, 17.0, 18.5, 20.3);
INSERT INTO `bb_tb_laki` VALUES (205, 2, 101.5, 12.4, 13.4, 14.5, 15.8, 17.2, 18.7, 20.5);
INSERT INTO `bb_tb_laki` VALUES (206, 2, 102.0, 12.5, 13.6, 14.7, 15.9, 17.3, 18.9, 20.7);
INSERT INTO `bb_tb_laki` VALUES (207, 2, 102.5, 12.6, 13.7, 14.8, 16.1, 17.5, 19.1, 20.9);
INSERT INTO `bb_tb_laki` VALUES (208, 2, 103.0, 12.8, 13.8, 14.9, 16.2, 17.7, 19.3, 21.1);
INSERT INTO `bb_tb_laki` VALUES (209, 2, 103.5, 12.9, 13.9, 15.1, 16.4, 17.8, 19.5, 21.3);
INSERT INTO `bb_tb_laki` VALUES (210, 2, 104.0, 13.0, 14.0, 15.2, 16.5, 18.0, 19.7, 21.6);
INSERT INTO `bb_tb_laki` VALUES (211, 2, 104.5, 13.1, 14.2, 15.4, 16.7, 18.2, 19.9, 21.8);
INSERT INTO `bb_tb_laki` VALUES (212, 2, 105.0, 13.2, 14.3, 15.5, 16.8, 18.4, 20.1, 22.0);
INSERT INTO `bb_tb_laki` VALUES (213, 2, 105.5, 13.3, 14.4, 15.6, 17.0, 18.5, 20.3, 22.2);
INSERT INTO `bb_tb_laki` VALUES (214, 2, 106.0, 13.4, 14.5, 15.8, 17.2, 18.7, 20.5, 22.5);
INSERT INTO `bb_tb_laki` VALUES (215, 2, 106.5, 13.5, 14.7, 15.9, 17.3, 18.9, 20.7, 22.7);
INSERT INTO `bb_tb_laki` VALUES (216, 2, 107.0, 13.7, 14.8, 16.1, 17.5, 19.1, 20.9, 22.9);
INSERT INTO `bb_tb_laki` VALUES (217, 2, 107.5, 13.8, 14.9, 16.2, 17.7, 19.3, 21.1, 23.2);
INSERT INTO `bb_tb_laki` VALUES (218, 2, 108.0, 13.9, 15.1, 16.4, 17.8, 19.5, 21.3, 23.4);
INSERT INTO `bb_tb_laki` VALUES (219, 2, 108.5, 14.0, 15.2, 16.5, 18.0, 19.7, 21.5, 23.7);
INSERT INTO `bb_tb_laki` VALUES (220, 2, 109.0, 14.1, 15.3, 16.7, 18.2, 19.8, 21.8, 23.9);
INSERT INTO `bb_tb_laki` VALUES (221, 2, 109.5, 14.3, 15.5, 16.8, 18.3, 20.0, 22.0, 24.2);
INSERT INTO `bb_tb_laki` VALUES (222, 2, 110.0, 14.4, 15.6, 17.0, 18.5, 20.2, 22.2, 24.4);
INSERT INTO `bb_tb_laki` VALUES (223, 2, 110.5, 14.5, 15.8, 17.1, 18.7, 20.4, 22.4, 24.7);
INSERT INTO `bb_tb_laki` VALUES (224, 2, 111.0, 14.6, 15.9, 17.3, 18.9, 20.7, 22.7, 25.0);
INSERT INTO `bb_tb_laki` VALUES (225, 2, 111.5, 14.8, 16.0, 17.5, 19.1, 20.9, 22.9, 25.2);
INSERT INTO `bb_tb_laki` VALUES (226, 2, 112.0, 14.9, 16.2, 17.6, 19.2, 21.1, 23.1, 25.5);
INSERT INTO `bb_tb_laki` VALUES (227, 2, 112.5, 15.0, 16.3, 17.8, 19.4, 21.3, 23.4, 25.8);
INSERT INTO `bb_tb_laki` VALUES (228, 2, 113.0, 15.2, 16.5, 18.0, 19.6, 21.5, 23.6, 26.0);
INSERT INTO `bb_tb_laki` VALUES (229, 2, 113.5, 15.3, 16.6, 18.1, 19.8, 21.7, 23.9, 26.3);
INSERT INTO `bb_tb_laki` VALUES (230, 2, 114.0, 15.4, 16.8, 18.3, 20.0, 21.9, 24.1, 26.6);
INSERT INTO `bb_tb_laki` VALUES (231, 2, 114.5, 15.6, 16.9, 18.5, 20.2, 22.1, 24.4, 26.9);
INSERT INTO `bb_tb_laki` VALUES (232, 2, 115.0, 15.7, 17.1, 18.6, 20.4, 22.4, 24.6, 27.2);
INSERT INTO `bb_tb_laki` VALUES (233, 2, 115.5, 15.8, 17.2, 18.8, 20.6, 22.6, 24.9, 27.5);
INSERT INTO `bb_tb_laki` VALUES (234, 2, 116.0, 16.0, 17.4, 19.0, 20.8, 22.8, 25.1, 27.8);
INSERT INTO `bb_tb_laki` VALUES (235, 2, 116.5, 16.1, 17.5, 19.2, 21.0, 23.0, 25.4, 28.0);
INSERT INTO `bb_tb_laki` VALUES (236, 2, 117.0, 16.2, 17.7, 19.3, 21.2, 23.3, 25.6, 28.3);
INSERT INTO `bb_tb_laki` VALUES (237, 2, 117.5, 16.4, 17.9, 19.5, 21.4, 23.5, 25.9, 28.6);
INSERT INTO `bb_tb_laki` VALUES (238, 2, 118.0, 16.5, 18.0, 19.7, 21.6, 23.7, 26.1, 28.9);
INSERT INTO `bb_tb_laki` VALUES (239, 2, 118.5, 16.7, 18.2, 19.9, 21.8, 23.9, 26.4, 29.2);
INSERT INTO `bb_tb_laki` VALUES (240, 2, 119.0, 16.8, 18.3, 20.0, 22.0, 24.1, 26.6, 29.5);
INSERT INTO `bb_tb_laki` VALUES (241, 2, 119.5, 16.9, 18.5, 20.2, 22.2, 24.4, 26.9, 29.8);
INSERT INTO `bb_tb_laki` VALUES (242, 2, 120.0, 17.1, 18.6, 20.4, 22.4, 24.6, 27.2, 30.1);

SET FOREIGN_KEY_CHECKS = 1;
