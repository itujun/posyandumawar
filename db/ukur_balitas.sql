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

 Date: 19/08/2023 21:01:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ukur_balitas
-- ----------------------------
DROP TABLE IF EXISTS `ukur_balitas`;
CREATE TABLE `ukur_balitas`  (
  `id_ukur` int NOT NULL AUTO_INCREMENT,
  `id_balita` int NOT NULL,
  `usia_ukur` int NOT NULL,
  `bb_ukur` decimal(20, 1) NOT NULL DEFAULT 0.0,
  `tb_ukur` decimal(20, 1) NOT NULL DEFAULT 0.0,
  `lk_ukur` decimal(20, 1) NOT NULL,
  `pengukuran` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jenis_kelamin` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sberat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `stinggi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sgizi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `skepala` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bulan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `tahun` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_ukur`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ukur_balitas
-- ----------------------------
INSERT INTO `ukur_balitas` VALUES (1, 28, 44, 15.5, 97.0, 49.0, 'Berdiri', 'P', 'Normal', 'Normal', 'Gizi baik', 'Normal', 'Juni', 2023, '2023-08-03 23:31:12', '2023-08-04 09:46:13');
INSERT INTO `ukur_balitas` VALUES (2, 29, 37, 12.1, 88.0, 49.0, 'Berdiri', 'P', 'Normal', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:46');
INSERT INTO `ukur_balitas` VALUES (3, 30, 34, 13.6, 93.0, 49.0, 'Berdiri', 'P', 'Normal', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:46');
INSERT INTO `ukur_balitas` VALUES (4, 31, 19, 8.7, 80.0, 45.0, 'Telentang', 'P', 'Normal', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:47');
INSERT INTO `ukur_balitas` VALUES (5, 32, 35, 16.0, 96.0, 46.0, 'Berdiri', 'P', 'Risiko BB lebih', 'Normal', 'Berisiko gizi lebih', 'Terlalu kecil', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:47');
INSERT INTO `ukur_balitas` VALUES (6, 33, 24, 12.0, 86.0, 47.0, 'Telentang', 'P', 'Normal', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:47');
INSERT INTO `ukur_balitas` VALUES (7, 34, 17, 10.0, 75.0, 45.0, 'Telentang', 'L', 'Normal', 'Pendek', 'Gizi baik', 'Terlalu kecil', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:48');
INSERT INTO `ukur_balitas` VALUES (8, 35, 26, 11.0, 88.0, 47.0, 'Berdiri', 'L', 'Normal', 'Normal', 'Gizi baik', 'Terlalu kecil', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:48');
INSERT INTO `ukur_balitas` VALUES (9, 36, 26, 12.0, 88.0, 47.0, 'Berdiri', 'L', 'Normal', 'Normal', 'Gizi baik', 'Terlalu kecil', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:48');
INSERT INTO `ukur_balitas` VALUES (10, 37, 13, 10.8, 105.0, 47.0, 'Telentang', 'L', 'Normal', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:49');
INSERT INTO `ukur_balitas` VALUES (11, 38, 36, 16.0, 95.0, 48.0, 'Berdiri', 'P', 'Risiko BB lebih', 'Normal', 'Berisiko gizi lebih', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:49');
INSERT INTO `ukur_balitas` VALUES (12, 40, 31, 10.0, 86.0, 48.0, 'Berdiri', 'P', 'Kurang', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:49');
INSERT INTO `ukur_balitas` VALUES (13, 41, 16, 10.3, 78.0, 44.0, 'Telentang', 'P', 'Normal', 'Normal', 'Gizi baik', 'Terlalu kecil', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:49');
INSERT INTO `ukur_balitas` VALUES (14, 42, 15, 9.0, 74.0, 46.0, 'Telentang', 'L', 'Normal', 'Pendek', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:50');
INSERT INTO `ukur_balitas` VALUES (15, 43, 18, 10.7, 81.0, 48.0, 'Telentang', 'P', 'Normal', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:50');
INSERT INTO `ukur_balitas` VALUES (16, 44, 16, 12.4, 84.0, 46.0, 'Telentang', 'L', 'Risiko BB lebih', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:50');
INSERT INTO `ukur_balitas` VALUES (17, 45, 51, 22.0, 100.0, 48.0, 'Berdiri', 'P', 'Risiko BB lebih', 'Normal', 'Obesitas', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:50');
INSERT INTO `ukur_balitas` VALUES (18, 46, 43, 9.4, 81.0, 47.0, 'Berdiri', 'P', 'Kurang', 'Sangat pendek', 'Gizi baik', 'Terlalu kecil', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:51');
INSERT INTO `ukur_balitas` VALUES (19, 47, 47, 16.0, 103.0, 47.0, 'Berdiri', 'L', 'Normal', 'Normal', 'Gizi baik', 'Terlalu kecil', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:51');
INSERT INTO `ukur_balitas` VALUES (20, 48, 15, 10.0, 72.0, 46.0, 'Telentang', 'P', 'Normal', 'Normal', 'Berisiko gizi lebih', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:51');
INSERT INTO `ukur_balitas` VALUES (21, 49, 12, 9.3, 73.0, 44.0, 'Telentang', 'P', 'Normal', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:51');
INSERT INTO `ukur_balitas` VALUES (22, 50, 3, 6.0, 67.0, 39.0, 'Telentang', 'L', 'Normal', 'Normal', 'Gizi buruk', 'Terlalu kecil', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:52');
INSERT INTO `ukur_balitas` VALUES (23, 51, 23, 9.6, 80.0, 44.0, 'Telentang', 'P', 'Normal', 'Normal', 'Gizi baik', 'Terlalu kecil', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:52');
INSERT INTO `ukur_balitas` VALUES (24, 52, 22, 10.6, 79.0, 48.0, 'Telentang', 'P', 'Normal', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:52');
INSERT INTO `ukur_balitas` VALUES (25, 53, 25, 13.2, 88.0, 49.0, 'Berdiri', 'L', 'Normal', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:52');
INSERT INTO `ukur_balitas` VALUES (26, 54, 44, 15.9, 106.0, 47.0, 'Berdiri', 'P', 'Normal', 'Normal', 'Gizi baik', 'Terlalu kecil', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:53');
INSERT INTO `ukur_balitas` VALUES (27, 55, 44, 13.0, 90.0, 52.0, 'Berdiri', 'L', 'Normal', 'Pendek', 'Gizi baik', 'Terlalu besar', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:53');
INSERT INTO `ukur_balitas` VALUES (28, 56, 23, 10.9, 89.0, 50.0, 'Telentang', 'L', 'Normal', 'Normal', 'Gizi kurang', 'Terlalu besar', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:53');
INSERT INTO `ukur_balitas` VALUES (29, 57, 13, 8.7, 73.0, 46.0, 'Telentang', 'L', 'Normal', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:53');
INSERT INTO `ukur_balitas` VALUES (30, 58, 55, 16.6, 104.0, 50.0, 'Berdiri', 'L', 'Normal', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:54');
INSERT INTO `ukur_balitas` VALUES (31, 59, 16, 9.0, 71.0, 47.0, 'Telentang', 'L', 'Normal', 'Pendek', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:54');
INSERT INTO `ukur_balitas` VALUES (32, 60, 41, 16.5, 82.0, 49.0, 'Berdiri', 'P', 'Normal', 'Sangat pendek', 'Obesitas', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:54');
INSERT INTO `ukur_balitas` VALUES (33, 61, 34, 11.5, 85.0, 46.0, 'Berdiri', 'P', 'Normal', 'Pendek', 'Gizi baik', 'Terlalu kecil', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:54');
INSERT INTO `ukur_balitas` VALUES (34, 62, 35, 10.3, 89.0, 49.0, 'Berdiri', 'P', 'Normal', 'Normal', 'Gizi kurang', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:55');
INSERT INTO `ukur_balitas` VALUES (35, 63, 34, 10.8, 88.0, 48.0, 'Berdiri', 'L', 'Kurang', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:55');
INSERT INTO `ukur_balitas` VALUES (36, 64, 35, 10.3, 89.0, 48.0, 'Berdiri', 'P', 'Normal', 'Normal', 'Gizi kurang', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:55');
INSERT INTO `ukur_balitas` VALUES (37, 65, 34, 12.5, 89.0, 48.0, 'Berdiri', 'L', 'Normal', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:56');
INSERT INTO `ukur_balitas` VALUES (38, 66, 35, 12.0, 89.0, 47.0, 'Berdiri', 'P', 'Normal', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:56');
INSERT INTO `ukur_balitas` VALUES (39, 67, 28, 11.1, 84.0, 48.0, 'Berdiri', 'L', 'Normal', 'Pendek', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:56');
INSERT INTO `ukur_balitas` VALUES (40, 68, 14, 8.3, 72.0, 46.0, 'Telentang', 'P', 'Normal', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:56');
INSERT INTO `ukur_balitas` VALUES (41, 69, 16, 9.0, 77.5, 47.0, 'Telentang', 'L', 'Normal', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:56');
INSERT INTO `ukur_balitas` VALUES (42, 70, 17, 9.9, 77.0, 49.0, 'Telentang', 'L', 'Normal', 'Normal', 'Gizi baik', 'Terlalu besar', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:57');
INSERT INTO `ukur_balitas` VALUES (43, 71, 13, 8.7, 74.0, 45.0, 'Telentang', 'L', 'Normal', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:57');
INSERT INTO `ukur_balitas` VALUES (44, 72, 24, 10.6, 85.5, 44.0, 'Telentang', 'P', 'Normal', 'Normal', 'Gizi baik', 'Terlalu kecil', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:57');
INSERT INTO `ukur_balitas` VALUES (45, 73, 41, 12.2, 85.0, 49.0, 'Berdiri', 'P', 'Normal', 'Sangat pendek', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:57');
INSERT INTO `ukur_balitas` VALUES (46, 74, 10, 9.0, 73.0, 46.0, 'Telentang', 'P', 'Normal', 'Normal', 'Gizi baik', 'Terlalu besar', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:58');
INSERT INTO `ukur_balitas` VALUES (47, 75, 6, 6.8, 69.0, 44.0, 'Telentang', 'L', 'Normal', 'Normal', 'Gizi kurang', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:58');
INSERT INTO `ukur_balitas` VALUES (48, 76, 4, 8.0, 67.0, 42.0, 'Telentang', 'P', 'Risiko BB lebih', 'Normal', 'Gizi baik', 'Terlalu besar', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:58');
INSERT INTO `ukur_balitas` VALUES (49, 77, 7, 8.2, 73.0, 46.0, 'Telentang', 'L', 'Normal', 'Normal', 'Gizi baik', 'Terlalu besar', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:58');
INSERT INTO `ukur_balitas` VALUES (50, 78, 48, 12.2, 91.0, 49.0, 'Berdiri', 'P', 'Normal', 'Pendek', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:58');
INSERT INTO `ukur_balitas` VALUES (51, 79, 24, 11.0, 82.0, 45.0, 'Telentang', 'P', 'Normal', 'Normal', 'Gizi baik', 'Terlalu kecil', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:59');
INSERT INTO `ukur_balitas` VALUES (52, 80, 28, 10.3, 84.0, 51.0, 'Berdiri', 'L', 'Normal', 'Pendek', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:59');
INSERT INTO `ukur_balitas` VALUES (53, 81, 51, 18.7, 110.0, 51.0, 'Berdiri', 'P', 'Normal', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:59');
INSERT INTO `ukur_balitas` VALUES (54, 82, 52, 15.5, 101.0, 47.0, 'Berdiri', 'P', 'Normal', 'Normal', 'Gizi baik', 'Terlalu kecil', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:59');
INSERT INTO `ukur_balitas` VALUES (55, 83, 52, 17.8, 106.0, 50.0, 'Berdiri', 'P', 'Normal', 'Normal', 'Gizi baik', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:30:00');
INSERT INTO `ukur_balitas` VALUES (56, 28, 45, 16.0, 98.0, 49.0, 'Berdiri', 'P', 'Normal', 'Normal', 'Berisiko gizi lebih', 'Normal', 'Juli', 2023, '2023-08-03 23:31:12', '2023-08-04 06:29:45');

SET FOREIGN_KEY_CHECKS = 1;
