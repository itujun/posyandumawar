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

 Date: 19/08/2023 21:00:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bb_tb_perempuan
-- ----------------------------
DROP TABLE IF EXISTS `bb_tb_perempuan`;
CREATE TABLE `bb_tb_perempuan`  (
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
-- Records of bb_tb_perempuan
-- ----------------------------
INSERT INTO `bb_tb_perempuan` VALUES (1, 1, 45.0, 1.9, 2.1, 2.3, 2.5, 2.7, 3.0, 3.3);
INSERT INTO `bb_tb_perempuan` VALUES (2, 1, 45.5, 2.0, 2.1, 2.3, 2.5, 2.8, 3.1, 3.4);
INSERT INTO `bb_tb_perempuan` VALUES (3, 1, 46.0, 2.0, 2.2, 2.4, 2.6, 2.9, 3.2, 3.5);
INSERT INTO `bb_tb_perempuan` VALUES (4, 1, 46.5, 2.1, 2.3, 2.5, 2.7, 3.0, 3.3, 3.6);
INSERT INTO `bb_tb_perempuan` VALUES (5, 1, 47.0, 2.2, 2.4, 2.6, 2.8, 3.1, 3.4, 3.7);
INSERT INTO `bb_tb_perempuan` VALUES (6, 1, 47.5, 2.2, 2.4, 2.6, 2.9, 3.2, 3.5, 3.8);
INSERT INTO `bb_tb_perempuan` VALUES (7, 1, 48.0, 2.3, 2.5, 2.7, 3.0, 3.3, 3.6, 4.0);
INSERT INTO `bb_tb_perempuan` VALUES (8, 1, 48.5, 2.4, 2.6, 2.8, 3.1, 3.4, 3.7, 4.1);
INSERT INTO `bb_tb_perempuan` VALUES (9, 1, 49.0, 2.4, 2.6, 2.9, 3.2, 3.5, 3.8, 4.2);
INSERT INTO `bb_tb_perempuan` VALUES (10, 1, 49.5, 2.5, 2.7, 3.0, 3.3, 3.6, 3.9, 4.3);
INSERT INTO `bb_tb_perempuan` VALUES (11, 1, 50.0, 2.6, 2.8, 3.1, 3.4, 3.7, 4.0, 4.5);
INSERT INTO `bb_tb_perempuan` VALUES (12, 1, 50.5, 2.7, 2.9, 3.2, 3.5, 3.8, 4.2, 4.6);
INSERT INTO `bb_tb_perempuan` VALUES (13, 1, 51.0, 2.8, 3.0, 3.3, 3.6, 3.9, 4.3, 4.8);
INSERT INTO `bb_tb_perempuan` VALUES (14, 1, 51.5, 2.8, 3.1, 3.4, 3.7, 4.0, 4.4, 4.9);
INSERT INTO `bb_tb_perempuan` VALUES (15, 1, 52.0, 2.9, 3.2, 3.5, 3.8, 4.2, 4.6, 5.1);
INSERT INTO `bb_tb_perempuan` VALUES (16, 1, 52.5, 3.0, 3.3, 3.6, 3.9, 4.3, 4.7, 5.2);
INSERT INTO `bb_tb_perempuan` VALUES (17, 1, 53.0, 3.1, 3.4, 3.7, 4.0, 4.4, 4.9, 5.4);
INSERT INTO `bb_tb_perempuan` VALUES (18, 1, 53.5, 3.2, 3.5, 3.8, 4.2, 4.6, 5.0, 5.5);
INSERT INTO `bb_tb_perempuan` VALUES (19, 1, 54.0, 3.3, 3.6, 3.9, 4.3, 4.7, 5.2, 5.7);
INSERT INTO `bb_tb_perempuan` VALUES (20, 1, 54.5, 3.4, 3.7, 4.0, 4.4, 4.8, 5.3, 5.9);
INSERT INTO `bb_tb_perempuan` VALUES (21, 1, 55.0, 3.5, 3.8, 4.2, 4.5, 5.0, 5.5, 6.1);
INSERT INTO `bb_tb_perempuan` VALUES (22, 1, 55.5, 3.6, 3.9, 4.3, 4.7, 5.1, 5.7, 6.3);
INSERT INTO `bb_tb_perempuan` VALUES (23, 1, 56.0, 3.7, 4.0, 4.4, 4.8, 5.3, 5.8, 6.4);
INSERT INTO `bb_tb_perempuan` VALUES (24, 1, 56.5, 3.8, 4.1, 4.5, 5.0, 5.4, 6.0, 6.6);
INSERT INTO `bb_tb_perempuan` VALUES (25, 1, 57.0, 3.9, 4.3, 4.7, 5.1, 5.6, 6.1, 6.8);
INSERT INTO `bb_tb_perempuan` VALUES (26, 1, 57.5, 4.0, 4.4, 4.8, 5.2, 5.7, 6.3, 7.0);
INSERT INTO `bb_tb_perempuan` VALUES (27, 1, 58.0, 4.1, 4.5, 4.9, 5.4, 5.9, 6.5, 7.1);
INSERT INTO `bb_tb_perempuan` VALUES (28, 1, 58.5, 4.2, 4.6, 5.0, 5.5, 6.0, 6.6, 7.3);
INSERT INTO `bb_tb_perempuan` VALUES (29, 1, 59.0, 4.3, 4.7, 5.1, 5.6, 6.2, 6.8, 7.5);
INSERT INTO `bb_tb_perempuan` VALUES (30, 1, 59.5, 4.4, 4.8, 5.3, 5.7, 6.3, 6.9, 7.7);
INSERT INTO `bb_tb_perempuan` VALUES (31, 1, 60.0, 4.5, 4.9, 5.4, 5.9, 6.4, 7.1, 7.8);
INSERT INTO `bb_tb_perempuan` VALUES (32, 1, 60.5, 4.6, 5.0, 5.5, 6.0, 6.6, 7.3, 8.0);
INSERT INTO `bb_tb_perempuan` VALUES (33, 1, 61.0, 4.7, 5.1, 5.6, 6.1, 6.7, 7.4, 8.2);
INSERT INTO `bb_tb_perempuan` VALUES (34, 1, 61.5, 4.8, 5.2, 5.7, 6.3, 6.9, 7.6, 8.4);
INSERT INTO `bb_tb_perempuan` VALUES (35, 1, 62.0, 4.9, 5.3, 5.8, 6.4, 7.0, 7.7, 8.5);
INSERT INTO `bb_tb_perempuan` VALUES (36, 1, 62.5, 5.0, 5.4, 5.9, 6.5, 7.1, 7.8, 8.7);
INSERT INTO `bb_tb_perempuan` VALUES (37, 1, 63.0, 5.1, 5.5, 6.0, 6.6, 7.3, 8.0, 8.8);
INSERT INTO `bb_tb_perempuan` VALUES (38, 1, 63.5, 5.2, 5.6, 6.2, 6.7, 7.4, 8.1, 9.0);
INSERT INTO `bb_tb_perempuan` VALUES (39, 1, 64.0, 5.3, 5.7, 6.3, 6.9, 7.5, 8.3, 9.1);
INSERT INTO `bb_tb_perempuan` VALUES (40, 1, 64.5, 5.4, 5.8, 6.4, 7.0, 7.6, 8.4, 9.3);
INSERT INTO `bb_tb_perempuan` VALUES (41, 1, 65.0, 5.5, 5.9, 6.5, 7.1, 7.8, 8.6, 9.5);
INSERT INTO `bb_tb_perempuan` VALUES (42, 1, 65.5, 5.5, 6.0, 6.6, 7.2, 7.9, 8.7, 9.6);
INSERT INTO `bb_tb_perempuan` VALUES (43, 1, 66.0, 5.6, 6.1, 6.7, 7.3, 8.0, 8.8, 9.8);
INSERT INTO `bb_tb_perempuan` VALUES (44, 1, 66.5, 5.7, 6.2, 6.8, 7.4, 8.1, 9.0, 9.9);
INSERT INTO `bb_tb_perempuan` VALUES (45, 1, 67.0, 5.8, 6.3, 6.9, 7.5, 8.3, 9.1, 10.0);
INSERT INTO `bb_tb_perempuan` VALUES (46, 1, 67.5, 5.9, 6.4, 7.0, 7.6, 8.4, 9.2, 10.2);
INSERT INTO `bb_tb_perempuan` VALUES (47, 1, 68.0, 6.0, 6.5, 7.1, 7.7, 8.5, 9.4, 10.3);
INSERT INTO `bb_tb_perempuan` VALUES (48, 1, 68.5, 6.1, 6.6, 7.2, 7.9, 8.6, 9.5, 10.5);
INSERT INTO `bb_tb_perempuan` VALUES (49, 1, 69.0, 6.1, 6.7, 7.3, 8.0, 8.7, 9.6, 10.6);
INSERT INTO `bb_tb_perempuan` VALUES (50, 1, 69.5, 6.2, 6.8, 7.4, 8.1, 8.8, 9.7, 10.7);
INSERT INTO `bb_tb_perempuan` VALUES (51, 1, 70.0, 6.3, 6.9, 7.5, 8.2, 9.0, 9.9, 10.9);
INSERT INTO `bb_tb_perempuan` VALUES (52, 1, 70.5, 6.4, 6.9, 7.6, 8.3, 9.1, 10.0, 11.0);
INSERT INTO `bb_tb_perempuan` VALUES (53, 1, 71.0, 6.5, 7.0, 7.7, 8.4, 9.2, 10.1, 11.1);
INSERT INTO `bb_tb_perempuan` VALUES (54, 1, 71.5, 6.5, 7.1, 7.7, 8.5, 9.3, 10.2, 11.3);
INSERT INTO `bb_tb_perempuan` VALUES (55, 1, 72.0, 6.6, 7.2, 7.8, 8.6, 9.4, 10.3, 11.4);
INSERT INTO `bb_tb_perempuan` VALUES (56, 1, 72.5, 6.7, 7.3, 7.9, 8.7, 9.5, 10.5, 11.5);
INSERT INTO `bb_tb_perempuan` VALUES (57, 1, 73.0, 6.8, 7.4, 8.0, 8.8, 9.6, 10.6, 11.7);
INSERT INTO `bb_tb_perempuan` VALUES (58, 1, 73.5, 6.9, 7.4, 8.1, 8.9, 9.7, 10.7, 11.8);
INSERT INTO `bb_tb_perempuan` VALUES (59, 1, 74.0, 6.9, 7.5, 8.2, 9.0, 9.8, 10.8, 11.9);
INSERT INTO `bb_tb_perempuan` VALUES (60, 1, 74.5, 7.0, 7.6, 8.3, 9.1, 9.9, 10.9, 12.0);
INSERT INTO `bb_tb_perempuan` VALUES (61, 1, 75.0, 7.1, 7.7, 8.4, 9.1, 10.0, 11.0, 12.2);
INSERT INTO `bb_tb_perempuan` VALUES (62, 1, 75.5, 7.1, 7.8, 8.5, 9.2, 10.1, 11.1, 12.3);
INSERT INTO `bb_tb_perempuan` VALUES (63, 1, 76.0, 7.2, 7.8, 8.5, 9.3, 10.2, 11.2, 12.4);
INSERT INTO `bb_tb_perempuan` VALUES (64, 1, 76.5, 7.3, 7.9, 8.6, 9.4, 10.3, 11.4, 12.5);
INSERT INTO `bb_tb_perempuan` VALUES (65, 1, 77.0, 7.4, 8.0, 8.7, 9.5, 10.4, 11.5, 12.6);
INSERT INTO `bb_tb_perempuan` VALUES (66, 1, 77.5, 7.4, 8.1, 8.8, 9.6, 10.5, 11.6, 12.8);
INSERT INTO `bb_tb_perempuan` VALUES (67, 1, 78.0, 7.5, 8.2, 8.9, 9.7, 10.6, 11.7, 12.9);
INSERT INTO `bb_tb_perempuan` VALUES (68, 1, 78.5, 7.6, 8.2, 9.0, 9.8, 10.7, 11.8, 13.0);
INSERT INTO `bb_tb_perempuan` VALUES (69, 1, 79.0, 7.7, 8.3, 9.1, 9.9, 10.8, 11.9, 13.1);
INSERT INTO `bb_tb_perempuan` VALUES (70, 1, 79.5, 7.7, 8.4, 9.1, 10.0, 10.9, 12.0, 13.3);
INSERT INTO `bb_tb_perempuan` VALUES (71, 1, 80.0, 7.8, 8.5, 9.2, 10.1, 11.0, 12.1, 13.4);
INSERT INTO `bb_tb_perempuan` VALUES (72, 1, 80.5, 7.9, 8.6, 9.3, 10.2, 11.2, 12.3, 13.5);
INSERT INTO `bb_tb_perempuan` VALUES (73, 1, 81.0, 8.0, 8.7, 9.4, 10.3, 11.3, 12.4, 13.7);
INSERT INTO `bb_tb_perempuan` VALUES (74, 1, 81.5, 8.1, 8.8, 9.5, 10.4, 11.4, 12.5, 13.8);
INSERT INTO `bb_tb_perempuan` VALUES (75, 1, 82.0, 8.1, 8.8, 9.6, 10.5, 11.5, 12.6, 13.9);
INSERT INTO `bb_tb_perempuan` VALUES (76, 1, 82.5, 8.2, 8.9, 9.7, 10.6, 11.6, 12.8, 14.1);
INSERT INTO `bb_tb_perempuan` VALUES (77, 1, 83.0, 8.3, 9.0, 9.8, 10.7, 11.8, 12.9, 14.2);
INSERT INTO `bb_tb_perempuan` VALUES (78, 1, 83.5, 8.4, 9.1, 9.9, 10.9, 11.9, 13.1, 14.4);
INSERT INTO `bb_tb_perempuan` VALUES (79, 1, 84.0, 8.5, 9.2, 10.1, 11.0, 12.0, 13.2, 14.5);
INSERT INTO `bb_tb_perempuan` VALUES (80, 1, 84.5, 8.6, 9.3, 10.2, 11.1, 12.1, 13.3, 14.7);
INSERT INTO `bb_tb_perempuan` VALUES (81, 1, 85.0, 8.7, 9.4, 10.3, 11.2, 12.3, 13.5, 14.9);
INSERT INTO `bb_tb_perempuan` VALUES (82, 1, 85.5, 8.8, 9.5, 10.4, 11.3, 12.4, 13.6, 15.0);
INSERT INTO `bb_tb_perempuan` VALUES (83, 1, 86.0, 8.9, 9.7, 10.5, 11.5, 12.6, 13.8, 15.2);
INSERT INTO `bb_tb_perempuan` VALUES (84, 1, 86.5, 9.0, 9.8, 10.6, 11.6, 12.7, 13.9, 15.4);
INSERT INTO `bb_tb_perempuan` VALUES (85, 1, 87.0, 9.1, 9.9, 10.7, 11.7, 12.8, 14.1, 15.5);
INSERT INTO `bb_tb_perempuan` VALUES (86, 1, 87.5, 9.2, 10.0, 10.9, 11.8, 13.0, 14.2, 15.7);
INSERT INTO `bb_tb_perempuan` VALUES (87, 1, 88.0, 9.3, 10.1, 11.0, 12.0, 13.1, 14.4, 15.9);
INSERT INTO `bb_tb_perempuan` VALUES (88, 1, 88.5, 9.4, 10.2, 11.1, 12.1, 13.2, 14.5, 16.0);
INSERT INTO `bb_tb_perempuan` VALUES (89, 1, 89.0, 9.5, 10.3, 11.2, 12.2, 13.4, 14.7, 16.2);
INSERT INTO `bb_tb_perempuan` VALUES (90, 1, 89.5, 9.6, 10.4, 11.3, 12.3, 13.5, 14.8, 16.4);
INSERT INTO `bb_tb_perempuan` VALUES (91, 1, 90.0, 9.7, 10.5, 11.4, 12.5, 13.7, 15.0, 16.5);
INSERT INTO `bb_tb_perempuan` VALUES (92, 1, 90.5, 9.8, 10.6, 11.5, 12.6, 13.8, 15.1, 16.7);
INSERT INTO `bb_tb_perempuan` VALUES (93, 1, 91.0, 9.9, 10.7, 11.7, 12.7, 13.9, 15.3, 16.9);
INSERT INTO `bb_tb_perempuan` VALUES (94, 1, 91.5, 10.0, 10.8, 11.8, 12.8, 14.1, 15.5, 17.0);
INSERT INTO `bb_tb_perempuan` VALUES (95, 1, 92.0, 10.1, 10.9, 11.9, 13.0, 14.2, 15.6, 17.2);
INSERT INTO `bb_tb_perempuan` VALUES (96, 1, 92.5, 10.1, 11.0, 12.0, 13.1, 14.3, 15.8, 17.4);
INSERT INTO `bb_tb_perempuan` VALUES (97, 1, 93.0, 10.2, 11.1, 12.1, 13.2, 14.5, 15.9, 17.5);
INSERT INTO `bb_tb_perempuan` VALUES (98, 1, 93.5, 10.3, 11.2, 12.2, 13.3, 14.6, 16.1, 17.7);
INSERT INTO `bb_tb_perempuan` VALUES (99, 1, 94.0, 10.4, 11.3, 12.3, 13.5, 14.7, 16.2, 17.9);
INSERT INTO `bb_tb_perempuan` VALUES (100, 1, 94.5, 10.5, 11.4, 12.4, 13.6, 14.9, 16.4, 18.0);
INSERT INTO `bb_tb_perempuan` VALUES (101, 1, 95.0, 10.6, 11.5, 12.6, 13.7, 15.0, 16.5, 18.2);
INSERT INTO `bb_tb_perempuan` VALUES (102, 1, 95.5, 10.7, 11.6, 12.7, 13.8, 15.2, 16.7, 18.4);
INSERT INTO `bb_tb_perempuan` VALUES (103, 1, 96.0, 10.8, 11.7, 12.8, 14.0, 15.3, 16.8, 18.6);
INSERT INTO `bb_tb_perempuan` VALUES (104, 1, 96.5, 10.9, 11.8, 12.9, 14.1, 15.4, 17.0, 18.7);
INSERT INTO `bb_tb_perempuan` VALUES (105, 1, 97.0, 11.0, 12.0, 13.0, 14.2, 15.6, 17.1, 18.9);
INSERT INTO `bb_tb_perempuan` VALUES (106, 1, 97.5, 11.1, 12.1, 13.1, 14.4, 15.7, 17.3, 19.1);
INSERT INTO `bb_tb_perempuan` VALUES (107, 1, 98.0, 11.2, 12.2, 13.3, 14.5, 15.9, 17.5, 19.3);
INSERT INTO `bb_tb_perempuan` VALUES (108, 1, 98.5, 11.3, 12.3, 13.4, 14.6, 16.0, 17.6, 19.5);
INSERT INTO `bb_tb_perempuan` VALUES (109, 1, 99.0, 11.4, 12.4, 13.5, 14.8, 16.2, 17.8, 19.6);
INSERT INTO `bb_tb_perempuan` VALUES (110, 1, 99.5, 11.5, 12.5, 13.6, 14.9, 16.3, 18.0, 19.8);
INSERT INTO `bb_tb_perempuan` VALUES (111, 1, 100.0, 11.6, 12.6, 13.7, 15.0, 16.5, 18.1, 20.0);
INSERT INTO `bb_tb_perempuan` VALUES (112, 1, 100.5, 11.7, 12.7, 13.9, 15.2, 16.6, 18.3, 20.2);
INSERT INTO `bb_tb_perempuan` VALUES (113, 1, 101.0, 11.8, 12.8, 14.0, 15.3, 16.8, 18.5, 20.4);
INSERT INTO `bb_tb_perempuan` VALUES (114, 1, 101.5, 11.9, 13.0, 14.1, 15.5, 17.0, 18.7, 20.6);
INSERT INTO `bb_tb_perempuan` VALUES (115, 1, 102.0, 12.0, 13.1, 14.3, 15.6, 17.1, 18.9, 20.8);
INSERT INTO `bb_tb_perempuan` VALUES (116, 1, 102.5, 12.1, 13.2, 14.4, 15.8, 17.3, 19.0, 21.0);
INSERT INTO `bb_tb_perempuan` VALUES (117, 1, 103.0, 12.3, 13.3, 14.5, 15.9, 17.5, 19.2, 21.3);
INSERT INTO `bb_tb_perempuan` VALUES (118, 1, 103.5, 12.4, 13.5, 14.7, 16.1, 17.6, 19.4, 21.5);
INSERT INTO `bb_tb_perempuan` VALUES (119, 1, 104.0, 12.5, 13.6, 14.8, 16.2, 17.8, 19.6, 21.7);
INSERT INTO `bb_tb_perempuan` VALUES (120, 1, 104.5, 12.6, 13.7, 15.0, 16.4, 18.0, 19.8, 21.9);
INSERT INTO `bb_tb_perempuan` VALUES (121, 1, 105.0, 12.7, 13.8, 15.1, 16.5, 18.2, 20.0, 22.2);
INSERT INTO `bb_tb_perempuan` VALUES (122, 1, 105.5, 12.8, 14.0, 15.3, 16.7, 18.4, 20.2, 22.4);
INSERT INTO `bb_tb_perempuan` VALUES (123, 1, 106.0, 13.0, 14.1, 15.4, 16.9, 18.5, 20.5, 22.6);
INSERT INTO `bb_tb_perempuan` VALUES (124, 1, 106.5, 13.1, 14.3, 15.6, 17.1, 18.7, 20.7, 22.9);
INSERT INTO `bb_tb_perempuan` VALUES (125, 1, 107.0, 13.2, 14.4, 15.7, 17.2, 18.9, 20.9, 23.1);
INSERT INTO `bb_tb_perempuan` VALUES (126, 1, 107.5, 13.3, 14.5, 15.9, 17.4, 19.1, 21.1, 23.4);
INSERT INTO `bb_tb_perempuan` VALUES (127, 1, 108.0, 13.5, 14.7, 16.0, 17.6, 19.3, 21.3, 23.6);
INSERT INTO `bb_tb_perempuan` VALUES (128, 1, 108.5, 13.6, 14.8, 16.2, 17.8, 19.5, 21.6, 23.9);
INSERT INTO `bb_tb_perempuan` VALUES (129, 1, 109.0, 13.7, 15.0, 16.4, 18.0, 19.7, 21.8, 24.2);
INSERT INTO `bb_tb_perempuan` VALUES (130, 1, 109.5, 13.9, 15.1, 16.5, 18.1, 20.0, 22.0, 24.4);
INSERT INTO `bb_tb_perempuan` VALUES (131, 1, 110.0, 14.0, 15.3, 16.7, 18.3, 20.2, 22.3, 24.7);
INSERT INTO `bb_tb_perempuan` VALUES (132, 2, 65.0, 5.6, 6.1, 6.6, 7.2, 7.9, 8.7, 9.7);
INSERT INTO `bb_tb_perempuan` VALUES (133, 2, 65.5, 5.7, 6.2, 6.7, 7.4, 8.1, 8.9, 9.8);
INSERT INTO `bb_tb_perempuan` VALUES (134, 2, 66.0, 5.8, 6.3, 6.8, 7.5, 8.2, 9.0, 10.0);
INSERT INTO `bb_tb_perempuan` VALUES (135, 2, 66.5, 5.8, 6.4, 6.9, 7.6, 8.3, 9.1, 10.1);
INSERT INTO `bb_tb_perempuan` VALUES (136, 2, 67.0, 5.9, 6.4, 7.0, 7.7, 8.4, 9.3, 10.2);
INSERT INTO `bb_tb_perempuan` VALUES (137, 2, 67.5, 6.0, 6.5, 7.1, 7.8, 8.5, 9.4, 10.4);
INSERT INTO `bb_tb_perempuan` VALUES (138, 2, 68.0, 6.1, 6.6, 7.2, 7.9, 8.7, 9.5, 10.5);
INSERT INTO `bb_tb_perempuan` VALUES (139, 2, 68.5, 6.2, 6.7, 7.3, 8.0, 8.8, 9.7, 10.7);
INSERT INTO `bb_tb_perempuan` VALUES (140, 2, 69.0, 6.3, 6.8, 7.4, 8.1, 8.9, 9.8, 10.8);
INSERT INTO `bb_tb_perempuan` VALUES (141, 2, 69.5, 6.3, 6.9, 7.5, 8.2, 9.0, 9.9, 10.9);
INSERT INTO `bb_tb_perempuan` VALUES (142, 2, 70.0, 6.4, 7.0, 7.6, 8.3, 9.1, 10.0, 11.1);
INSERT INTO `bb_tb_perempuan` VALUES (143, 2, 70.5, 6.5, 7.1, 7.7, 8.4, 9.2, 10.1, 11.2);
INSERT INTO `bb_tb_perempuan` VALUES (144, 2, 71.0, 6.6, 7.1, 7.8, 8.5, 9.3, 10.3, 11.3);
INSERT INTO `bb_tb_perempuan` VALUES (145, 2, 71.5, 6.7, 7.2, 7.9, 8.6, 9.4, 10.4, 11.5);
INSERT INTO `bb_tb_perempuan` VALUES (146, 2, 72.0, 6.7, 7.3, 8.0, 8.7, 9.5, 10.5, 11.6);
INSERT INTO `bb_tb_perempuan` VALUES (147, 2, 72.5, 6.8, 7.4, 8.1, 8.8, 9.7, 10.6, 11.7);
INSERT INTO `bb_tb_perempuan` VALUES (148, 2, 73.0, 6.9, 7.5, 8.1, 8.9, 9.8, 10.7, 11.8);
INSERT INTO `bb_tb_perempuan` VALUES (149, 2, 73.5, 7.0, 7.6, 8.2, 9.0, 9.9, 10.8, 12.0);
INSERT INTO `bb_tb_perempuan` VALUES (150, 2, 74.0, 7.0, 7.6, 8.3, 9.1, 10.0, 11.0, 12.1);
INSERT INTO `bb_tb_perempuan` VALUES (151, 2, 74.5, 7.1, 7.7, 8.4, 9.2, 10.1, 11.1, 12.2);
INSERT INTO `bb_tb_perempuan` VALUES (152, 2, 75.0, 7.2, 7.8, 8.5, 9.3, 10.2, 11.2, 12.3);
INSERT INTO `bb_tb_perempuan` VALUES (153, 2, 75.5, 7.2, 7.9, 8.6, 9.4, 10.3, 11.3, 12.5);
INSERT INTO `bb_tb_perempuan` VALUES (154, 2, 76.0, 7.3, 8.0, 8.7, 9.5, 10.4, 11.4, 12.6);
INSERT INTO `bb_tb_perempuan` VALUES (155, 2, 76.5, 7.4, 8.0, 8.7, 9.6, 10.5, 11.5, 12.7);
INSERT INTO `bb_tb_perempuan` VALUES (156, 2, 77.0, 7.5, 8.1, 8.8, 9.6, 10.6, 11.6, 12.8);
INSERT INTO `bb_tb_perempuan` VALUES (157, 2, 77.5, 7.5, 8.2, 8.9, 9.7, 10.7, 11.7, 12.9);
INSERT INTO `bb_tb_perempuan` VALUES (158, 2, 78.0, 7.6, 8.3, 9.0, 9.8, 10.8, 11.8, 13.1);
INSERT INTO `bb_tb_perempuan` VALUES (159, 2, 78.5, 7.7, 8.4, 9.1, 9.9, 10.9, 12.0, 13.2);
INSERT INTO `bb_tb_perempuan` VALUES (160, 2, 79.0, 7.8, 8.4, 9.2, 10.0, 11.0, 12.1, 13.3);
INSERT INTO `bb_tb_perempuan` VALUES (161, 2, 79.5, 7.8, 8.5, 9.3, 10.1, 11.1, 12.2, 13.4);
INSERT INTO `bb_tb_perempuan` VALUES (162, 2, 80.0, 7.9, 8.6, 9.4, 10.2, 11.2, 12.3, 13.6);
INSERT INTO `bb_tb_perempuan` VALUES (163, 2, 80.5, 8.0, 8.7, 9.5, 10.3, 11.3, 12.4, 13.7);
INSERT INTO `bb_tb_perempuan` VALUES (164, 2, 81.0, 8.1, 8.8, 9.6, 10.4, 11.4, 12.6, 13.9);
INSERT INTO `bb_tb_perempuan` VALUES (165, 2, 81.5, 8.2, 8.9, 9.7, 10.6, 11.6, 12.7, 14.0);
INSERT INTO `bb_tb_perempuan` VALUES (166, 2, 82.0, 8.3, 9.0, 9.8, 10.7, 11.7, 12.8, 14.1);
INSERT INTO `bb_tb_perempuan` VALUES (167, 2, 82.5, 8.4, 9.1, 9.9, 10.8, 11.8, 13.0, 14.3);
INSERT INTO `bb_tb_perempuan` VALUES (168, 2, 83.0, 8.5, 9.2, 10.0, 10.9, 11.9, 13.1, 14.5);
INSERT INTO `bb_tb_perempuan` VALUES (169, 2, 83.5, 8.5, 9.3, 10.1, 11.0, 12.1, 13.3, 14.6);
INSERT INTO `bb_tb_perempuan` VALUES (170, 2, 84.0, 8.6, 9.4, 10.2, 11.1, 12.2, 13.4, 14.8);
INSERT INTO `bb_tb_perempuan` VALUES (171, 2, 84.5, 8.7, 9.5, 10.3, 11.3, 12.3, 13.5, 14.9);
INSERT INTO `bb_tb_perempuan` VALUES (172, 2, 85.0, 8.8, 9.6, 10.4, 11.4, 12.5, 13.7, 15.1);
INSERT INTO `bb_tb_perempuan` VALUES (173, 2, 85.5, 8.9, 9.7, 10.6, 11.5, 12.6, 13.8, 15.3);
INSERT INTO `bb_tb_perempuan` VALUES (174, 2, 86.0, 9.0, 9.8, 10.7, 11.6, 12.7, 14.0, 15.4);
INSERT INTO `bb_tb_perempuan` VALUES (175, 2, 86.5, 9.1, 9.9, 10.8, 11.8, 12.9, 14.2, 15.6);
INSERT INTO `bb_tb_perempuan` VALUES (176, 2, 87.0, 9.2, 10.0, 10.9, 11.9, 13.0, 14.3, 15.8);
INSERT INTO `bb_tb_perempuan` VALUES (177, 2, 87.5, 9.3, 10.1, 11.0, 12.0, 13.2, 14.5, 15.9);
INSERT INTO `bb_tb_perempuan` VALUES (178, 2, 88.0, 9.4, 10.2, 11.1, 12.1, 13.3, 14.6, 16.1);
INSERT INTO `bb_tb_perempuan` VALUES (179, 2, 88.5, 9.5, 10.3, 11.2, 12.3, 13.4, 14.8, 16.3);
INSERT INTO `bb_tb_perempuan` VALUES (180, 2, 89.0, 9.6, 10.4, 11.4, 12.4, 13.6, 14.9, 16.4);
INSERT INTO `bb_tb_perempuan` VALUES (181, 2, 89.5, 9.7, 10.5, 11.5, 12.5, 13.7, 15.1, 16.6);
INSERT INTO `bb_tb_perempuan` VALUES (182, 2, 90.0, 9.8, 10.6, 11.6, 12.6, 13.8, 15.2, 16.8);
INSERT INTO `bb_tb_perempuan` VALUES (183, 2, 90.5, 9.9, 10.7, 11.7, 12.8, 14.0, 15.4, 16.9);
INSERT INTO `bb_tb_perempuan` VALUES (184, 2, 91.0, 10.0, 10.9, 11.8, 12.9, 14.1, 15.5, 17.1);
INSERT INTO `bb_tb_perempuan` VALUES (185, 2, 91.5, 10.1, 11.0, 11.9, 13.0, 14.3, 15.7, 17.3);
INSERT INTO `bb_tb_perempuan` VALUES (186, 2, 92.0, 10.2, 11.1, 12.0, 13.1, 14.4, 15.8, 17.4);
INSERT INTO `bb_tb_perempuan` VALUES (187, 2, 92.5, 10.3, 11.2, 12.1, 13.3, 14.5, 16.0, 17.6);
INSERT INTO `bb_tb_perempuan` VALUES (188, 2, 93.0, 10.4, 11.3, 12.3, 13.4, 14.7, 16.1, 17.8);
INSERT INTO `bb_tb_perempuan` VALUES (189, 2, 93.5, 10.5, 11.4, 12.4, 13.5, 14.8, 16.3, 17.9);
INSERT INTO `bb_tb_perempuan` VALUES (190, 2, 94.0, 10.6, 11.5, 12.5, 13.6, 14.9, 16.4, 18.1);
INSERT INTO `bb_tb_perempuan` VALUES (191, 2, 94.5, 10.7, 11.6, 12.6, 13.8, 15.1, 16.6, 18.3);
INSERT INTO `bb_tb_perempuan` VALUES (192, 2, 95.0, 10.8, 11.7, 12.7, 13.9, 15.2, 16.7, 18.5);
INSERT INTO `bb_tb_perempuan` VALUES (193, 2, 95.5, 10.8, 11.8, 12.8, 14.0, 15.4, 16.9, 18.6);
INSERT INTO `bb_tb_perempuan` VALUES (194, 2, 96.0, 10.9, 11.9, 12.9, 14.1, 15.5, 17.0, 18.8);
INSERT INTO `bb_tb_perempuan` VALUES (195, 2, 96.5, 11.0, 12.0, 13.1, 14.3, 15.6, 17.2, 19.0);
INSERT INTO `bb_tb_perempuan` VALUES (196, 2, 97.0, 11.1, 12.1, 13.2, 14.4, 15.8, 17.4, 19.2);
INSERT INTO `bb_tb_perempuan` VALUES (197, 2, 97.5, 11.2, 12.2, 13.3, 14.5, 15.9, 17.5, 19.3);
INSERT INTO `bb_tb_perempuan` VALUES (198, 2, 98.0, 11.3, 12.3, 13.4, 14.7, 16.1, 17.7, 19.5);
INSERT INTO `bb_tb_perempuan` VALUES (199, 2, 98.5, 11.4, 12.4, 13.5, 14.8, 16.2, 17.9, 19.7);
INSERT INTO `bb_tb_perempuan` VALUES (200, 2, 99.0, 11.5, 12.5, 13.7, 14.9, 16.4, 18.0, 19.9);
INSERT INTO `bb_tb_perempuan` VALUES (201, 2, 99.5, 11.6, 12.7, 13.8, 15.1, 16.5, 18.2, 20.1);
INSERT INTO `bb_tb_perempuan` VALUES (202, 2, 100.0, 11.7, 12.8, 13.9, 15.2, 16.7, 18.4, 20.3);
INSERT INTO `bb_tb_perempuan` VALUES (203, 2, 100.5, 11.9, 12.9, 14.1, 15.4, 16.9, 18.6, 20.5);
INSERT INTO `bb_tb_perempuan` VALUES (204, 2, 101.0, 12.0, 13.0, 14.2, 15.5, 17.0, 18.7, 20.7);
INSERT INTO `bb_tb_perempuan` VALUES (205, 2, 101.5, 12.1, 13.1, 14.3, 15.7, 17.2, 18.9, 20.9);
INSERT INTO `bb_tb_perempuan` VALUES (206, 2, 102.0, 12.2, 13.3, 14.5, 15.8, 17.4, 19.1, 21.1);
INSERT INTO `bb_tb_perempuan` VALUES (207, 2, 102.5, 12.3, 13.4, 14.6, 16.0, 17.5, 19.3, 21.4);
INSERT INTO `bb_tb_perempuan` VALUES (208, 2, 103.0, 12.4, 13.5, 14.7, 16.1, 17.7, 19.5, 21.6);
INSERT INTO `bb_tb_perempuan` VALUES (209, 2, 103.5, 12.5, 13.6, 14.9, 16.3, 17.9, 19.7, 21.8);
INSERT INTO `bb_tb_perempuan` VALUES (210, 2, 104.0, 12.6, 13.8, 15.0, 16.4, 18.1, 19.9, 22.0);
INSERT INTO `bb_tb_perempuan` VALUES (211, 2, 104.5, 12.8, 13.9, 15.2, 16.6, 18.2, 20.1, 22.3);
INSERT INTO `bb_tb_perempuan` VALUES (212, 2, 105.0, 12.9, 14.0, 15.3, 16.8, 18.4, 20.3, 22.5);
INSERT INTO `bb_tb_perempuan` VALUES (213, 2, 105.5, 13.0, 14.2, 15.5, 16.9, 18.6, 20.5, 22.7);
INSERT INTO `bb_tb_perempuan` VALUES (214, 2, 106.0, 13.1, 14.3, 15.6, 17.1, 18.8, 20.8, 23.0);
INSERT INTO `bb_tb_perempuan` VALUES (215, 2, 106.5, 13.3, 14.5, 15.8, 17.3, 19.0, 21.0, 23.2);
INSERT INTO `bb_tb_perempuan` VALUES (216, 2, 107.0, 13.4, 14.6, 15.9, 17.5, 19.2, 21.2, 23.5);
INSERT INTO `bb_tb_perempuan` VALUES (217, 2, 107.5, 13.5, 14.7, 16.1, 17.7, 19.4, 21.4, 23.7);
INSERT INTO `bb_tb_perempuan` VALUES (218, 2, 108.0, 13.7, 14.9, 16.3, 17.8, 19.6, 21.7, 24.0);
INSERT INTO `bb_tb_perempuan` VALUES (219, 2, 108.5, 13.8, 15.0, 16.4, 18.0, 19.8, 21.9, 24.3);
INSERT INTO `bb_tb_perempuan` VALUES (220, 2, 109.0, 13.9, 15.2, 16.6, 18.2, 20.0, 22.1, 24.5);
INSERT INTO `bb_tb_perempuan` VALUES (221, 2, 109.5, 14.1, 15.4, 16.8, 18.4, 20.3, 22.4, 24.8);
INSERT INTO `bb_tb_perempuan` VALUES (222, 2, 110.0, 14.2, 15.5, 17.0, 18.6, 20.5, 22.6, 25.1);
INSERT INTO `bb_tb_perempuan` VALUES (223, 2, 110.5, 14.4, 15.7, 17.1, 18.8, 0.7, 22.9, 25.4);
INSERT INTO `bb_tb_perempuan` VALUES (224, 2, 111.0, 14.5, 15.8, 17.3, 19.0, 20.9, 23.1, 25.7);
INSERT INTO `bb_tb_perempuan` VALUES (225, 2, 111.5, 14.7, 16.0, 17.5, 19.2, 21.2, 23.4, 26.0);
INSERT INTO `bb_tb_perempuan` VALUES (226, 2, 112.0, 14.8, 16.2, 17.7, 19.4, 21.4, 23.6, 26.2);
INSERT INTO `bb_tb_perempuan` VALUES (227, 2, 112.5, 15.0, 16.3, 17.9, 19.6, 21.6, 23.9, 26.5);
INSERT INTO `bb_tb_perempuan` VALUES (228, 2, 113.0, 15.1, 16.5, 18.0, 19.8, 21.8, 24.2, 26.8);
INSERT INTO `bb_tb_perempuan` VALUES (229, 2, 113.5, 15.3, 16.7, 18.2, 20.0, 22.1, 24.4, 27.1);
INSERT INTO `bb_tb_perempuan` VALUES (230, 2, 114.0, 15.4, 16.8, 18.4, 20.2, 22.3, 24.7, 27.4);
INSERT INTO `bb_tb_perempuan` VALUES (231, 2, 114.5, 15.6, 17.0, 18.6, 20.5, 22.6, 25.0, 27.8);
INSERT INTO `bb_tb_perempuan` VALUES (232, 2, 115.0, 15.7, 17.2, 18.8, 20.7, 22.8, 25.2, 28.1);
INSERT INTO `bb_tb_perempuan` VALUES (233, 2, 115.5, 15.9, 17.3, 19.0, 20.9, 23.0, 25.5, 28.4);
INSERT INTO `bb_tb_perempuan` VALUES (234, 2, 116.0, 16.0, 17.5, 19.2, 21.1, 23.3, 25.8, 28.7);
INSERT INTO `bb_tb_perempuan` VALUES (235, 2, 116.5, 16.2, 17.7, 19.4, 21.3, 23.5, 26.1, 29.0);
INSERT INTO `bb_tb_perempuan` VALUES (236, 2, 117.0, 16.3, 17.8, 19.6, 21.5, 23.8, 26.3, 29.3);
INSERT INTO `bb_tb_perempuan` VALUES (237, 2, 117.5, 16.5, 18.0, 19.8, 21.7, 24.0, 26.6, 29.6);
INSERT INTO `bb_tb_perempuan` VALUES (238, 2, 118.0, 16.6, 18.2, 19.9, 22.0, 24.2, 26.9, 29.9);
INSERT INTO `bb_tb_perempuan` VALUES (239, 2, 118.5, 16.8, 18.4, 20.1, 22.2, 24.5, 27.2, 30.3);
INSERT INTO `bb_tb_perempuan` VALUES (240, 2, 119.0, 16.9, 18.5, 20.3, 22.4, 24.7, 27.4, 30.6);
INSERT INTO `bb_tb_perempuan` VALUES (241, 2, 119.5, 17.1, 18.7, 20.5, 22.6, 25.0, 27.7, 30.9);
INSERT INTO `bb_tb_perempuan` VALUES (242, 2, 120.0, 17.3, 18.9, 20.7, 22.8, 25.2, 28.0, 31.2);

SET FOREIGN_KEY_CHECKS = 1;
