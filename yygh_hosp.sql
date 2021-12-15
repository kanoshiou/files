/*
 Navicat Premium Data Transfer

 Source Server         : ddd
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : yygh_hosp

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 15/12/2021 14:31:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hospital_set
-- ----------------------------
DROP TABLE IF EXISTS `hospital_set`;
CREATE TABLE `hospital_set`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `hosname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医院名称',
  `hoscode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医院编号',
  `api_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'api基础路径',
  `sign_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '签名秘钥',
  `contacts_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `contacts_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人手机',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '逻辑删除(1:已删除，0:未删除)',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_hoscode`(`hoscode`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '医院设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hospital_set
-- ----------------------------
INSERT INTO `hospital_set` VALUES (1, '协和', '1', '1', '1', '1', '1', 1, '2021-10-15 13:36:37', '2021-10-17 16:12:38', 0);
INSERT INTO `hospital_set` VALUES (2, '九龙', '2', '2', '2', '2', '2', 1, '2021-10-15 17:32:21', '2021-10-17 16:02:16', 0);
INSERT INTO `hospital_set` VALUES (3, '医院', '3', '3', '3', '3', '3', 0, '2021-10-15 17:32:48', '2021-10-17 16:38:04', 0);
INSERT INTO `hospital_set` VALUES (4, '北京协和医院', '1000_0', 'http://localhost:8201', '674c4139707728439a6510eae12deea9', '张三', '110', 1, '2021-10-15 18:55:21', '2021-10-25 15:49:47', 0);
INSERT INTO `hospital_set` VALUES (5, '函数医院', '2983', '时代精神的', '542134', '朱', '222', 0, '2021-10-17 15:32:05', '2021-10-17 16:59:05', 0);
INSERT INTO `hospital_set` VALUES (6, 'xxx医院', '4234', '第三方的', '34234', '日服', '42134', 0, '2021-10-17 16:22:28', '2021-10-17 16:59:04', 0);
INSERT INTO `hospital_set` VALUES (7, '帆帆帆帆', '65345', '的风格', '4234235', '梵蒂冈', '34324', 0, '2021-10-17 16:22:49', '2021-10-17 17:01:44', 0);
INSERT INTO `hospital_set` VALUES (8, 'string', 'string', 'string', '0d10180af87bd43d805c3d59d9929c3f', 'string', 'string', 1, '2021-10-17 17:41:24', '2021-10-17 17:41:24', 0);
INSERT INTO `hospital_set` VALUES (9, '424234', '324234', '423423', '024c1a68e83ef8429273560c68853135', '423423', '4234234', 1, '2021-10-17 18:10:56', '2021-10-17 18:10:56', 0);
INSERT INTO `hospital_set` VALUES (10, 'a', 'a', 'a', 'b3b69c0bc8aa97853a8ba92260d6425e', 'a', 'a', 1, '2021-10-17 17:41:24', '2021-10-17 17:41:24', 0);
INSERT INTO `hospital_set` VALUES (11, 'ccc', 'cc', 'cc', '1f9d90f070384d829e49318e8059e428', 'cc', 'cc', 1, '2021-10-17 17:41:24', '2021-10-17 17:41:24', 0);
INSERT INTO `hospital_set` VALUES (12, '9', '9', '9', 'ecf1e6d63d7bdb7bcd6ed97c4bcea0fd', '9', '9', 1, '2021-10-17 20:26:25', '2021-10-17 20:26:25', 0);
INSERT INTO `hospital_set` VALUES (13, '55555555555555', '555555', '555555', 'ac77b78b8b1c2317c4ae8b9dba26ffd8', '555555', '55555555', 1, '2021-11-19 15:36:50', '2021-11-19 15:36:54', 1);

SET FOREIGN_KEY_CHECKS = 1;
