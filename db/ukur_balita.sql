/*
 Navicat Premium Data Transfer

 Source Server         : Laragon
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : posyandumawar

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 19/08/2023 19:28:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ukur_balita
-- ----------------------------
DROP TABLE IF EXISTS `ukur_balita`;
CREATE TABLE `ukur_balita`  (
  `id_ukur` int NOT NULL AUTO_INCREMENT,
  `id_balita` int NOT NULL,
  `usia_ukur` int NOT NULL,
  `bb_ukur` decimal(20, 1) NOT NULL DEFAULT 0.0,
  `tb_ukur` decimal(20, 1) NOT NULL DEFAULT 0.0,
  `lk_ukur` decimal(20, 1) NOT NULL DEFAULT 0.0,
  `sberat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `stinggi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sgizi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `skepala` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bulan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `tahun` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_ukur`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 147 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ukur_balita
-- ----------------------------
INSERT INTO `ukur_balita` VALUES (1, 0, 45, 16.0, 98.0, 0.0, 'Normal', 'Normal', 'Gizi normal', '', '', 2023, '2023-07-25 14:22:38');
INSERT INTO `ukur_balita` VALUES (2, 0, 37, 12.1, 88.0, 0.0, 'Normal', 'Pendek', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (3, 0, 34, 13.6, 93.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (4, 0, 0, 4.5, 52.0, 0.0, 'Risiko BB lebih', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (5, 0, 35, 16.0, 96.0, 0.0, 'Risiko BB lebih', 'Normal', 'Berisiko gizi lebih', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (6, 0, 24, 12.0, 86.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (7, 0, 17, 10.0, 75.0, 0.0, 'Normal', 'Pendek', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (8, 0, 26, 11.0, 88.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (9, 0, 26, 12.0, 88.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (10, 0, 13, 10.8, 105.0, 0.0, 'Normal', 'Tinggi', 'Gizi buruk', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (11, 0, 36, 16.0, 95.0, 0.0, 'Normal', 'Normal', 'Berisiko gizi lebih', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (12, 0, 31, 10.0, 86.0, 0.0, 'Kurang', 'Normal', 'Gizi kurang', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (13, 0, 16, 10.3, 78.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (14, 0, 15, 9.0, 74.0, 0.0, 'Normal', 'Pendek', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (15, 0, 18, 10.7, 81.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (16, 0, 16, 12.4, 84.0, 0.0, 'Risiko BB lebih', 'Normal', 'Berisiko gizi lebih', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (17, 0, 51, 22.0, 100.0, 0.0, 'Risiko BB lebih', 'Normal', 'Obesitas', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (18, 0, 43, 9.4, 81.0, 0.0, 'Sangat kurang', 'Sangat pendek', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (19, 0, 47, 16.0, 103.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (20, 0, 15, 10.0, 72.0, 0.0, 'Normal', 'Pendek', 'Berisiko gizi lebih', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (21, 0, 12, 9.3, 73.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (22, 0, 3, 6.0, 67.0, 0.0, 'Normal', 'Normal', 'Gizi kurang', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (23, 0, 23, 9.6, 80.0, 0.0, 'Normal', 'Pendek', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (24, 0, 22, 10.6, 79.0, 0.0, 'Normal', 'Pendek', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (25, 0, 25, 13.2, 88.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (26, 0, 44, 15.9, 106.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (27, 0, 44, 13.0, 90.0, 0.0, 'Normal', 'Pendek', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (28, 0, 23, 10.9, 89.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (29, 0, 13, 8.7, 73.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (30, 0, 55, 16.6, 104.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (31, 0, 16, 9.0, 71.0, 0.0, 'Normal', 'Sangat pendek', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (32, 0, 41, 16.5, 82.0, 0.0, 'Normal', 'Sangat pendek', 'Obesitas', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (33, 0, 34, 11.5, 85.0, 0.0, 'Normal', 'Pendek', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (34, 0, 35, 10.3, 89.0, 0.0, 'Kurang', 'Normal', 'Gizi kurang', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (35, 0, 34, 10.8, 88.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (36, 0, 35, 10.3, 89.0, 0.0, 'Kurang', 'Normal', 'Gizi kurang', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (37, 0, 34, 12.5, 89.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (38, 0, 35, 12.0, 89.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (39, 0, 28, 11.1, 84.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (40, 0, 14, 8.3, 72.0, 0.0, 'Normal', 'Pendek', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (41, 0, 16, 9.0, 77.5, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (42, 0, 17, 9.9, 77.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (43, 0, 13, 8.7, 74.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (44, 0, 24, 10.6, 85.5, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (45, 0, 41, 12.2, 85.0, 0.0, 'Normal', 'Sangat pendek', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (46, 0, 10, 9.0, 73.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (47, 0, 6, 6.8, 69.0, 0.0, 'Normal', 'Normal', 'Gizi kurang', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (48, 0, 4, 8.0, 67.0, 0.0, 'Risiko BB lebih', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (49, 0, 7, 8.2, 73.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (50, 0, 48, 12.2, 91.0, 0.0, 'Normal', 'Pendek', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (51, 0, 24, 11.0, 82.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (52, 0, 28, 10.3, 84.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (53, 0, 51, 18.7, 110.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (54, 0, 52, 15.5, 101.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');
INSERT INTO `ukur_balita` VALUES (55, 0, 52, 17.8, 106.0, 0.0, 'Normal', 'Normal', 'Gizi normal', NULL, '', 2023, '2023-07-25 14:24:33');

SET FOREIGN_KEY_CHECKS = 1;
