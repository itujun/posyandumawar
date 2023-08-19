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

 Date: 19/08/2023 21:01:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_u_perempuan
-- ----------------------------
DROP TABLE IF EXISTS `tb_u_perempuan`;
CREATE TABLE `tb_u_perempuan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `usia` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `-3sd` decimal(10, 1) NOT NULL,
  `-2sd` decimal(10, 1) NOT NULL,
  `-1sd` decimal(10, 1) NOT NULL,
  `median` decimal(10, 1) NOT NULL,
  `+1sd` decimal(10, 1) NOT NULL,
  `+2sd` decimal(10, 1) NOT NULL,
  `+3sd` decimal(10, 1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_u_perempuan
-- ----------------------------
INSERT INTO `tb_u_perempuan` VALUES (1, '0', 43.6, 45.4, 47.3, 49.1, 51.0, 52.9, 54.7);
INSERT INTO `tb_u_perempuan` VALUES (2, '1', 47.8, 49.8, 51.7, 53.7, 55.6, 57.6, 59.5);
INSERT INTO `tb_u_perempuan` VALUES (3, '2', 51.0, 53.0, 55.0, 57.1, 59.1, 61.1, 63.2);
INSERT INTO `tb_u_perempuan` VALUES (4, '3', 53.5, 55.6, 57.7, 59.8, 61.9, 64.0, 66.1);
INSERT INTO `tb_u_perempuan` VALUES (5, '4', 55.6, 57.8, 59.9, 62.1, 64.3, 66.4, 68.6);
INSERT INTO `tb_u_perempuan` VALUES (6, '5', 57.4, 29.6, 61.8, 64.0, 66.2, 68.5, 70.7);
INSERT INTO `tb_u_perempuan` VALUES (7, '6', 58.9, 61.2, 63.5, 65.7, 68.0, 70.3, 72.5);
INSERT INTO `tb_u_perempuan` VALUES (8, '7', 60.3, 62.7, 65.0, 67.3, 69.6, 71.9, 74.2);
INSERT INTO `tb_u_perempuan` VALUES (9, '8', 61.7, 64.0, 66.4, 68.7, 71.1, 73.5, 75.8);
INSERT INTO `tb_u_perempuan` VALUES (10, '9', 62.9, 65.3, 67.7, 70.1, 72.6, 75.0, 77.4);
INSERT INTO `tb_u_perempuan` VALUES (11, '10', 64.1, 66.5, 69.0, 71.5, 73.9, 76.4, 78.9);
INSERT INTO `tb_u_perempuan` VALUES (12, '11', 65.2, 67.7, 70.3, 72.8, 75.3, 77.8, 80.3);
INSERT INTO `tb_u_perempuan` VALUES (13, '12', 66.3, 68.9, 71.4, 74.0, 76.6, 79.8, 81.7);
INSERT INTO `tb_u_perempuan` VALUES (14, '13', 67.3, 70.0, 72.6, 75.2, 77.8, 80.5, 83.1);
INSERT INTO `tb_u_perempuan` VALUES (15, '14', 68.3, 71.0, 73.7, 76.4, 79.1, 81.7, 84.4);
INSERT INTO `tb_u_perempuan` VALUES (16, '15', 69.3, 72.0, 74.8, 77.5, 80.2, 83.0, 85.7);
INSERT INTO `tb_u_perempuan` VALUES (17, '16', 70.2, 73.0, 75.8, 78.6, 81.4, 84.2, 87.0);
INSERT INTO `tb_u_perempuan` VALUES (18, '17', 71.1, 74.0, 76.8, 79.7, 82.5, 85.4, 88.2);
INSERT INTO `tb_u_perempuan` VALUES (19, '18', 72.0, 74.9, 77.8, 80.7, 83.6, 86.5, 89.4);
INSERT INTO `tb_u_perempuan` VALUES (20, '19', 72.8, 75.8, 78.8, 81.7, 84.7, 87.6, 90.6);
INSERT INTO `tb_u_perempuan` VALUES (21, '20', 73.7, 76.7, 79.7, 82.7, 85.7, 88.7, 91.7);
INSERT INTO `tb_u_perempuan` VALUES (22, '21', 74.5, 77.5, 80.6, 83.7, 86.7, 89.8, 92.9);
INSERT INTO `tb_u_perempuan` VALUES (23, '22', 75.2, 78.4, 81.5, 84.6, 87.7, 90.8, 94.0);
INSERT INTO `tb_u_perempuan` VALUES (24, '23', 76.0, 79.2, 82.3, 85.5, 88.7, 91.9, 95.0);
INSERT INTO `tb_u_perempuan` VALUES (25, '24t', 76.7, 80.0, 83.2, 86.4, 89.6, 92.9, 96.1);
INSERT INTO `tb_u_perempuan` VALUES (26, '24b', 76.0, 79.3, 82.5, 85.7, 88.9, 92.2, 95.4);
INSERT INTO `tb_u_perempuan` VALUES (27, '25', 76.8, 80.0, 83.3, 86.6, 89.9, 93.1, 96.4);
INSERT INTO `tb_u_perempuan` VALUES (28, '26', 77.5, 80.8, 84.1, 87.4, 90.8, 94.1, 97.4);
INSERT INTO `tb_u_perempuan` VALUES (29, '27', 78.1, 81.5, 84.9, 88.3, 91.7, 95.0, 98.4);
INSERT INTO `tb_u_perempuan` VALUES (30, '28', 78.8, 82.2, 85.7, 89.1, 92.5, 96.0, 99.4);
INSERT INTO `tb_u_perempuan` VALUES (31, '29', 79.5, 82.9, 86.4, 89.9, 93.4, 96.9, 100.3);
INSERT INTO `tb_u_perempuan` VALUES (32, '30', 80.1, 83.6, 87.1, 90.7, 94.2, 97.7, 101.3);
INSERT INTO `tb_u_perempuan` VALUES (33, '31', 80.7, 84.3, 87.9, 91.4, 95.0, 98.6, 102.2);
INSERT INTO `tb_u_perempuan` VALUES (34, '32', 81.3, 84.9, 88.6, 92.2, 95.8, 99.4, 103.1);
INSERT INTO `tb_u_perempuan` VALUES (35, '33', 81.9, 85.6, 89.3, 92.9, 96.6, 100.3, 103.9);
INSERT INTO `tb_u_perempuan` VALUES (36, '34', 82.5, 86.2, 89.9, 93.6, 97.4, 101.1, 104.8);
INSERT INTO `tb_u_perempuan` VALUES (37, '35', 83.1, 86.8, 90.6, 94.4, 98.1, 101.9, 105.6);
INSERT INTO `tb_u_perempuan` VALUES (38, '36', 83.6, 87.4, 91.2, 95.1, 98.9, 102.7, 106.5);
INSERT INTO `tb_u_perempuan` VALUES (39, '37', 84.2, 88.0, 91.9, 95.7, 99.6, 103.4, 107.3);
INSERT INTO `tb_u_perempuan` VALUES (40, '38', 84.7, 88.6, 92.5, 96.4, 100.3, 104.2, 108.1);
INSERT INTO `tb_u_perempuan` VALUES (41, '39', 85.3, 89.2, 93.1, 97.1, 101.0, 105.0, 108.9);
INSERT INTO `tb_u_perempuan` VALUES (42, '40', 85.8, 89.8, 93.8, 97.7, 101.7, 105.7, 109.7);
INSERT INTO `tb_u_perempuan` VALUES (43, '41', 86.3, 90.4, 94.4, 98.4, 102.4, 106.4, 110.5);
INSERT INTO `tb_u_perempuan` VALUES (44, '42', 86.8, 90.9, 95.0, 99.0, 103.1, 107.2, 111.2);
INSERT INTO `tb_u_perempuan` VALUES (45, '43', 87.4, 91.5, 95.6, 99.7, 103.8, 107.9, 112.0);
INSERT INTO `tb_u_perempuan` VALUES (46, '44', 87.9, 92.0, 96.2, 100.3, 104.5, 108.6, 112.7);
INSERT INTO `tb_u_perempuan` VALUES (47, '45', 88.4, 92.5, 96.7, 100.9, 105.1, 109.3, 113.5);
INSERT INTO `tb_u_perempuan` VALUES (48, '46', 88.9, 93.1, 97.3, 101.5, 105.8, 110.0, 114.2);
INSERT INTO `tb_u_perempuan` VALUES (49, '47', 89.3, 93.6, 97.9, 102.1, 106.4, 110.7, 114.9);
INSERT INTO `tb_u_perempuan` VALUES (50, '48', 89.8, 94.1, 98.4, 102.7, 107.0, 111.3, 115.7);
INSERT INTO `tb_u_perempuan` VALUES (51, '49', 90.3, 94.6, 99.0, 103.3, 107.7, 112.0, 116.4);
INSERT INTO `tb_u_perempuan` VALUES (52, '50', 90.7, 95.1, 99.5, 103.9, 108.3, 112.7, 117.1);
INSERT INTO `tb_u_perempuan` VALUES (53, '51', 91.2, 95.6, 100.1, 104.5, 108.9, 113.3, 117.7);
INSERT INTO `tb_u_perempuan` VALUES (54, '52', 91.7, 96.1, 100.6, 105.0, 109.5, 114.0, 118.4);
INSERT INTO `tb_u_perempuan` VALUES (55, '53', 92.1, 96.6, 101.1, 105.6, 110.1, 114.6, 119.1);
INSERT INTO `tb_u_perempuan` VALUES (56, '54', 92.6, 97.1, 101.6, 106.2, 110.7, 115.2, 119.8);
INSERT INTO `tb_u_perempuan` VALUES (57, '55', 93.0, 97.6, 102.2, 106.7, 111.3, 115.9, 120.4);
INSERT INTO `tb_u_perempuan` VALUES (58, '56', 93.4, 98.1, 102.7, 107.3, 111.9, 116.5, 121.1);
INSERT INTO `tb_u_perempuan` VALUES (59, '57', 93.9, 98.5, 103.2, 107.8, 112.5, 117.1, 121.8);
INSERT INTO `tb_u_perempuan` VALUES (60, '58', 94.3, 99.0, 103.7, 108.4, 113.0, 117.7, 122.4);
INSERT INTO `tb_u_perempuan` VALUES (61, '59', 94.7, 99.5, 104.2, 108.9, 113.6, 118.3, 123.1);
INSERT INTO `tb_u_perempuan` VALUES (62, '60', 95.2, 99.9, 104.7, 109.4, 114.2, 118.9, 123.7);

SET FOREIGN_KEY_CHECKS = 1;
