/*
 Navicat Premium Data Transfer

 Source Server         : 123
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : hb_needsanalyse

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 24/06/2021 10:23:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('120000', '其他（河北工大）');
INSERT INTO `address` VALUES ('130100', '石家庄市');
INSERT INTO `address` VALUES ('130181', '辛集市(直管县)');
INSERT INTO `address` VALUES ('130200', '唐山市');
INSERT INTO `address` VALUES ('130300', '秦皇岛市');
INSERT INTO `address` VALUES ('130400', '邯郸市');
INSERT INTO `address` VALUES ('130500', '邢台市');
INSERT INTO `address` VALUES ('130600', '保定市');
INSERT INTO `address` VALUES ('130682', '定州市(直管县)');
INSERT INTO `address` VALUES ('130700', '张家口市');
INSERT INTO `address` VALUES ('130800', '承德市');
INSERT INTO `address` VALUES ('130900', '沧州市');
INSERT INTO `address` VALUES ('131000', '廊坊市');
INSERT INTO `address` VALUES ('131100', '衡水市');

-- ----------------------------
-- Table structure for all_institution
-- ----------------------------
DROP TABLE IF EXISTS `all_institution`;
CREATE TABLE `all_institution`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gk` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sz_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `net` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `legal` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `post` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone_gd` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `mobile` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fax` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `institution` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `introduction` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `technology` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `time_begin` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `time_end` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `t_needtext_1` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `t_needtext_2` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `t_needtext_3` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `keyword` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `plan_invest` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `mode` varchar(450) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `hzyxdw` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `classification` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `field` varchar(450) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fieldadd` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `need_industry` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `new_time` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `xsyj` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bm_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bmyj` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of all_institution
-- ----------------------------
INSERT INTO `all_institution` VALUES (36, 'a', NULL, '石家庄铁道', '130200', '123456', '145184861@qq.com', 'pjh', '111111', '擦擦', '43333', '13363324130', '111111', '企业', '温度为敌啊                                     ', '未达到', '2014', '2020', '无敌无敌                                      ', '交由                                     ', ' 必须杀                                    ', '我', '100', '独立开发', 'AA', '基础研究', '11011.数学史', NULL, '', '', '2', '2020-10-24 15:59:51 下午', '2+', '恭喜通过！', '001', '恭喜！');
INSERT INTO `all_institution` VALUES (37, 'a', '测试1', '石家庄铁道大学', '130100', 'www.text1', '145184861@qq.com', 'zwx', '000000', 'zhaowenxuan', '43333', '13363324130', '1111111', '高等院校', '忘掉我IDad                                     ', '爱吃', '2014', '2020', '迪欧达屋                                     ', '我段位对                                     ', '我DAU我等哈                                     ', '我', '150', '独立开发', 'AA', '基础研究', '12010.信息科学与系统科学基础学科', NULL, '', '', '2', '2020-10-25 09:49:48 上午', '2+', '非常好', '001', '恭喜！');
INSERT INTO `all_institution` VALUES (38, '石家庄铁道大学', '测试1', '石家庄铁道大学1', '130300', '123456', '145184861@qq.com', 'zwx', '000000', 'zhaowenxuan', '43333', '13363324130', '111111', '高等院校', '抵达我                                     ', '物理教材', '2014', '2020', ' 大娃娃到位                                     ', '伟大无敌                                     ', '的伟大无敌啊                                     ', '我,的', '', '技术转让', 'aaa', '应用研究', '', ',电子信息技术,新材料及应用技术 ', '', '062.褐煤开采洗选', '2', '2020-10-25 17:35:19 下午', '2+', '恭喜通过！', '001', '恭喜！');
INSERT INTO `all_institution` VALUES (39, '石家庄铁道大学', NULL, '石家庄铁道大学', '130300', '123456', '145184861@qq.com', 'pjh', '000000', 'zhaowenxuan', '43333', '133', '111111', '企业', ' 达瓦大家                                     ', '物理教材', '2014', '2015', '啊呜大悟                                     ', '啊呜大悟多                                     ', '达瓦大无敌                                     ', '我', '100', '独立开发', 'aaa', '应用研究', '', ',先进制造技术 ,现代农业技术,其他', 'cccc', '022.造林和更新', '2', '2020-10-25 17:52:59 下午', '2+', '恭喜通过！', '001', '恭喜！');
INSERT INTO `all_institution` VALUES (40, '石家庄铁道大学', '测试1', '石家庄铁道', '130400', 'www.text1', '145184861@qq.com', 'pjh', '000000', '擦擦', '43333', '13363324130', '111111', '研究机构', '大大大                                     ', '物理教材', '2014', '2015', '打打                                     ', ' 啊啊大                                    ', '  打打                                   ', 'aaa', '100', '技术转让', 'AA', '应用研究', '', ',电子信息技术,新材料及应用技术 ', '', '017.中药材种植', '2', '2020-10-26 22:54:46 下午', '1-', 'bad', '', NULL);
INSERT INTO `all_institution` VALUES (41, '石家庄铁道大学', '测试1', '河北石家庄', '130100', 'www.text1.com', '145184861@qq.com', 'zwx', '000000', 'zhaowenxuan', '43333', '13363324130', '111111', '高等院校', '这是一所高校', '信息', '2014', '2020', '我的                                     ', '你哈                                    ', '1000                                     ', '我,的', '100', '独立开发', 'AA', '基础研究', '12020.系统学', NULL, '', '', '2', '2020-11-15 11:04:56 上午', '0', NULL, NULL, NULL);
INSERT INTO `all_institution` VALUES (42, '石家庄铁道大学', '测试1', '河北石家庄', '130100', '123456', '145184861@qq.com', 'pjh', '000000', 'zhaowenxuan', '43333', '13363324130', '111111', '高等院校', '测色                                     ', '物理', '2014', '2020', '擦擦                                     ', '122                             ', '11111                                     ', '我,的,好,朋', '100', '独立开发', 'AA', '应用研究', '', ',新材料及应用技术 ', '', '144.乳制品制造', '2', '2020-12-05 09:55:42 上午', '0', NULL, NULL, NULL);
INSERT INTO `all_institution` VALUES (43, '石家庄铁道大学', '测试1', '石家庄铁道', '130100', '123456', '145184861@qq.com', 'pjh', '000000', '擦擦', '43333', '133', '111111', '高等院校', '大娃娃就带欧文                                     ', '阿达', '2014', '2020', '大大王                                     ', '   我达瓦大                                  ', '      王大大                               ', '我,的,好,朋', '100', '技术转让', '阿达', '基础研究', '18011.生物数学', NULL, '', '', '2', '2020-12-22 19:24:58 下午', '0', NULL, NULL, NULL);
INSERT INTO `all_institution` VALUES (44, '石家庄铁道大学', '测试1', '石家庄铁道', '130100', '123456', '145184861@qq.com', 'zwx', '000000', 'zhaowenxuan', '43333', '13363324130', '111111', '企业', '骄傲', 'a擦', '2014', '2020', '的我都爱无敌                                     ', 'wwww                                     ', ' 啊啊啊啊                                    ', '我,的,好,朋', '100', '独立开发', 'AA', '应用研究', '', ',电子信息技术,新材料及应用技术 ', '', '512.食品、饮料及烟草制品批发', '2', '2020-12-23 21:57:46 下午', '0', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for institution
-- ----------------------------
DROP TABLE IF EXISTS `institution`;
CREATE TABLE `institution`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of institution
-- ----------------------------
INSERT INTO `institution` VALUES (1, '企业');
INSERT INTO `institution` VALUES (2, '高等院校');
INSERT INTO `institution` VALUES (3, '研究机构');
INSERT INTO `institution` VALUES (4, '其他');

-- ----------------------------
-- Table structure for state
-- ----------------------------
DROP TABLE IF EXISTS `state`;
CREATE TABLE `state`  (
  `id` int(11) NOT NULL,
  `state` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of state
-- ----------------------------
INSERT INTO `state` VALUES (0, '未审核');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '基础研究');
INSERT INTO `type` VALUES (2, '应用研究');
INSERT INTO `type` VALUES (3, '实验发展');
INSERT INTO `type` VALUES (4, '研究发展与成果应用');
INSERT INTO `type` VALUES (5, '技术推广与科技服务');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pro` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `unit` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `zyfx` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `szhy` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `jycd` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `zc` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `code` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone_gd` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `qq` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `msn` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `qx` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456', NULL, NULL, NULL, NULL, '河北', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '0', '1');
INSERT INTO `user` VALUES (2, 'user1', '123456', 'zwx', '男', '河北省', '石家庄', '石家庄铁道大学', '软工', '软工', '大学', '团员', '河北省', '000000', '13363324130', '4233', '2725700870@qq.com', '2725700870', '123456', '1', '1');
INSERT INTO `user` VALUES (3, 'user2', '123456', 'null', 'null', 'null', 'null', 'b', 'null', 'null', 'null', 'null', 'null', '', 'null', 'null', 'null', 'null', 'null', '1', '1');
INSERT INTO `user` VALUES (4, 'user3', '123456', NULL, NULL, NULL, NULL, '河北科技大学', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', '1');
INSERT INTO `user` VALUES (5, 'user4', '123456', NULL, NULL, NULL, NULL, '河北大学', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', '1');
INSERT INTO `user` VALUES (6, 'user5', '123456', NULL, NULL, NULL, NULL, '石家庄铁道', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', '1');
INSERT INTO `user` VALUES (7, 'user6', '123456', '赵四', '男', '河北', '石家庄', '河北农业大学', '软工', '设计师', '大学', '工程师', '衡水', '000000', '1336332413', '43333', '2725700870@qq.com', '123456899', 'ad45656', '1', '1');
INSERT INTO `user` VALUES (8, 'user7', '123456', 'aaa', '男', '湖北', '武汉', 'text1', '软工', '设计师', '大学', '工程师', '邢台', '0000001', '13363324312', '43333', '145184861@qq.com', '1452666888', 'ad45656', '1', '1');
INSERT INTO `user` VALUES (9, 'user8', '123456', '张三', '男', '河南', '郑州', 'text2', '软工', '设计师', '大学', '工程师', '邢台', '0000002', '13363324130', '43333', '2725700870@qq.com', '1452666888', 'ad45656', '1', '1');
INSERT INTO `user` VALUES (10, 'user9', '123456', '王五', '男', '河南', '郑州', 'text3', '软工', '设计师', '大学', '工程师', '中国', '1111111', '13363324130', '43333', '14526262@qq.com', '1452666888', 'ad45656', '1', '1');
INSERT INTO `user` VALUES (11, 'user10', '123456', 'aaa', '男', '河南', '安阳', 'text4', '软工', '设计师', '大学', '工程师', '衡水', '000004', '13363324312', '43333', '145184861@qq.com', '1452666888', 'ad45656', '1', '1');
INSERT INTO `user` VALUES (14, 'xsuser', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '1');
INSERT INTO `user` VALUES (15, 'bm001', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '001', '1');
INSERT INTO `user` VALUES (16, 'bm002', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '002', '1');
INSERT INTO `user` VALUES (17, 'bm003', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '003', '1');
INSERT INTO `user` VALUES (18, 'bm004', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '004', '1');
INSERT INTO `user` VALUES (19, 'bm005', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '005', '1');
INSERT INTO `user` VALUES (20, 'bm006', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '006', '1');
INSERT INTO `user` VALUES (21, 'bm007', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '007', '1');
INSERT INTO `user` VALUES (22, 'bm008', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '008', '1');
INSERT INTO `user` VALUES (23, 'bm009', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '009', '1');
INSERT INTO `user` VALUES (24, 'bm010', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '010', '1');
INSERT INTO `user` VALUES (25, 'bm011', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '011', '1');
INSERT INTO `user` VALUES (26, 'bm012', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '012', '1');
INSERT INTO `user` VALUES (27, 'bm013', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '013', '1');
INSERT INTO `user` VALUES (28, 'bm014', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '014', '1');
INSERT INTO `user` VALUES (29, 'bm015', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '015', '1');
INSERT INTO `user` VALUES (30, 'bm016', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '016', '1');
INSERT INTO `user` VALUES (31, 'bm017', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '017', '1');
INSERT INTO `user` VALUES (33, 'bm020', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '020', '1');
INSERT INTO `user` VALUES (34, 'bm021', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '021', '1');
INSERT INTO `user` VALUES (35, 'bm022', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '022', '1');
INSERT INTO `user` VALUES (36, 'bm023', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '023', '1');
INSERT INTO `user` VALUES (37, 'bm024', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '024', '1');

-- ----------------------------
-- Table structure for xkfl
-- ----------------------------
DROP TABLE IF EXISTS `xkfl`;
CREATE TABLE `xkfl`  (
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `detail` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xkfl
-- ----------------------------
INSERT INTO `xkfl` VALUES ('110', '数学', '', 1);
INSERT INTO `xkfl` VALUES ('11011', '数学史', '', 1);
INSERT INTO `xkfl` VALUES ('11014', '数理逻辑与数学基础', '    包括演绎逻辑学（亦称符号逻辑学）；证明论（亦称元数学）；递归论；模型论；公理集合论；数学基础；数理逻辑与数学基础其他学科', 2);
INSERT INTO `xkfl` VALUES ('11017', '数论', '    包括初等数论；解析数论；代数数论；超越数论；丢番图逼近；数的几何；概率数论；计算数论；数论其他学科', 2);
INSERT INTO `xkfl` VALUES ('11021', '代数学', '    线性代数；群论；域论；李群；李代数；Kac-Moody代数；环论（包括交换环与交换代数,结合环与结合代数,非结合环与非结合代数等）；模论；格论；泛代数理论；范畴论；同调代数；代数K理论；微分代数；代数编码理论；代数学其他学科', 2);
INSERT INTO `xkfl` VALUES ('11024', '代数几何学', '', 1);
INSERT INTO `xkfl` VALUES ('11027', '几何学', '    几何学基础；欧氏几何学；非欧几何学(包括黎曼几何学等)；球面几何学；向量和张量分析；仿射几何学；射影几何学；微分几何学；分数维几何；计算几何学；几何学其他学科', 2);
INSERT INTO `xkfl` VALUES ('11031', '拓扑学', '    点集拓扑学；代数拓扑学；同伦论；低维拓扑学；同调论；维数论；格上拓扑学；纤维丛论；几何拓扑学；奇点理论；微分拓扑学；拓扑学其他学科', 2);
INSERT INTO `xkfl` VALUES ('11034', '数学分析', '    微分学；积分学；级数论；数学分析其他学科', 2);
INSERT INTO `xkfl` VALUES ('11037', '非标准分析', '', 1);
INSERT INTO `xkfl` VALUES ('11041', '函数论', '    实变函数论；单复变函数论；多复变函数论；函数逼近论；调和分析；复流形；特殊函数论；函数论其他学科', 2);
INSERT INTO `xkfl` VALUES ('11044', '常微分方程', '    定性理论；稳定性理论；解析理论；常微分方程其他学科', 2);
INSERT INTO `xkfl` VALUES ('11047', '偏微分方程', '    椭圆型偏微分方程；双曲型偏微分方程；抛物型偏微分方程；非线性偏微分方程；偏微分方程其他学科', 2);
INSERT INTO `xkfl` VALUES ('11051', '动力系统', '    微分动力系统；拓扑动力系统；复动力系统；动力系统其他学科', 2);
INSERT INTO `xkfl` VALUES ('11054', '积分方程', '', 1);
INSERT INTO `xkfl` VALUES ('11057', '泛函分析', '    线性算子理论；变分法；拓扑线性空间；希尔伯特空间；函数空间；巴拿赫空间；算子代数；测度与积分；广义函数论；非线性泛函分析；泛函分析其他学科', 2);
INSERT INTO `xkfl` VALUES ('11061', '计算数学', '    常微分方程数值解；偏微分方程数值解；积分变换与积分方程数值方法（原名为“积分方程数值解”）；数值代数；优化计算方法；数值逼近与计算几何；随机数值方法与统计计算（原名为“随机数值实验”）；并行计算算法；误差分析与区间算法（原名为“误差分析”）；小波分析与傅立叶分析的数值方法；反问题计算方法；符号计算与计算机推理；计算数学其他学科', 2);
INSERT INTO `xkfl` VALUES ('11064', '概率论', '    几何概率；概率分布；极限理论；随机过程（包括正态过程与平稳过程、点过程等）；马尔可夫过程；随机分析；鞅论；应用概率论（具体应用入有关学科）；概率论其他学科', 2);
INSERT INTO `xkfl` VALUES ('11067', '数理统计学', '    抽样理论（包括抽样分布、抽样调查等）；假设检验；非参数统计；方差分析；相关回归分析；统计推断；贝叶斯统计（包括参数估计等）；试验设计；多元分析；统计判决理论；时间序列分析；空间统计；数理统计学其他学科', 2);
INSERT INTO `xkfl` VALUES ('11071', '应用统计数学', '    统计质量控制；可靠性数学；保险数学；统计计算；统计模拟；应用统计数学其他学科', 2);
INSERT INTO `xkfl` VALUES ('11074', '运筹学', '    线性规划；非线性规划；动态规划；组合最优化；参数规划；整数规划；随机规划；排队论；对策论（亦称博弈论）；库存论；决策论；搜索论；图论；统筹论；最优化；运筹学其他学科', 2);
INSERT INTO `xkfl` VALUES ('11077', '组合数学', '', 1);
INSERT INTO `xkfl` VALUES ('11081', '离散数学', '', 1);
INSERT INTO `xkfl` VALUES ('11084', '模糊数学', '', 1);
INSERT INTO `xkfl` VALUES ('11085', '计算机数学', '', 1);
INSERT INTO `xkfl` VALUES ('11087', '应用数学', '    具体应用入有关学科', 2);
INSERT INTO `xkfl` VALUES ('11099', '数学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('120', '信息科学与系统科学', '', 1);
INSERT INTO `xkfl` VALUES ('12010', '信息科学与系统科学基础学科', '    信息论；控制论；系统论；信息科学与系统科学基础学科其他学科。运筹学（归入11074）', 2);
INSERT INTO `xkfl` VALUES ('12020', '系统学', '    微分动力系统（归入11051）；混沌；一般系统论；耗散结构理论；协同学；突变论；超循环论；复杂系统与复杂性科学；系统学其他学科', 2);
INSERT INTO `xkfl` VALUES ('12030', '控制理论', '    大系统理论；系统辨识；状态估计；鲁棒控制；控制理论其他学科', 2);
INSERT INTO `xkfl` VALUES ('12040', '系统评估与可行性分析', '', 1);
INSERT INTO `xkfl` VALUES ('12050', '系统工程方法论', '    系统建模；决策分析（归入63050）；决策支持系统（归入63050）；管理信息系统（归入63050）；系统工程方法论其他学科', 2);
INSERT INTO `xkfl` VALUES ('12099', '信息科学与系统科学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('130', '力学', '', 1);
INSERT INTO `xkfl` VALUES ('13010', '基础力学', '    理论力学；理性力学；非线性力学；连续介质力学；摩擦学；柔性多体力学；陀螺力学；飞行力学；基础力学其他学科', 2);
INSERT INTO `xkfl` VALUES ('13015', '固体力学', '    弹性力学；塑性力学（包括弹塑性力学）；粘弹性、粘塑性力学；蠕变；界面力学与表面力学；疲劳；损伤力学；断裂力学；散体力学；细观力学；微观力学；电磁固体力学；材料力学（归入43010）；结构力学；计算固体力学；实验固体力学；固体力学其他学科', 2);
INSERT INTO `xkfl` VALUES ('13020', '振动与波', '    线性振动力学；非线性振动力学；弹性体振动力学；随机振动力学；振动控制理论；固体中的波；流体—固体耦合振动；振动与波其他学科', 2);
INSERT INTO `xkfl` VALUES ('13025', '流体力学', '    理论流体力学；水动力学；气体动力学；空气动力学；悬浮体力学；湍流理论；粘性流体力学；多相流体力学；渗流力学；物理—化学流体力学；等离子体动力学；电磁流体力学；非牛顿流体力学；流体机械流体力学；旋转与分层流体力学；辐射流体力学；计算流体力学；实验流体力学；环境流体力学；微流体力学；流体力学其他学科', 2);
INSERT INTO `xkfl` VALUES ('13030', '流变学', '', 1);
INSERT INTO `xkfl` VALUES ('13035', '爆炸力学', '    爆轰与爆燃理论；爆炸波、冲击波、应力波；高速碰撞动力学；爆炸力学其他学科', 2);
INSERT INTO `xkfl` VALUES ('13040', '物理力学', '    高压固体物理力学；稠密流体物理力学；高温气体物理力学；多相介质物理力学；临界现象与相变；原子与分子动力学；物理力学其他学科', 2);
INSERT INTO `xkfl` VALUES ('13041', '生物力学', '    包括生物流体力学与生物流变学等', 2);
INSERT INTO `xkfl` VALUES ('13045', '统计力学', '', 1);
INSERT INTO `xkfl` VALUES ('13050', '应用力学', '    具体应用入有关学科', 2);
INSERT INTO `xkfl` VALUES ('13099', '力学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('140', '物理学', '', 1);
INSERT INTO `xkfl` VALUES ('14010', '物理学史', '', 1);
INSERT INTO `xkfl` VALUES ('14015', '理论物理学', '    数学物理；电磁场理论；经典场论；相对论（原名为“相对论与引力场”）；量子力学；统计物理学；理论物理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('14020', '声学', '    普通线性声学（含射线声学、波动声学、大气声学、声波反射、散射、衍射、干涉、传播衰减。原名为“物理声学”）；非线性声学；流体动力声学（含航空声学、流体运动与声波相互作用、流体声辐射、燃烧声学等）；超声学、量子声学和声学效应；次声学；水声和海洋声学（原名为“水声学”）；结构声学和振动；噪声、噪声效应及其控制；建筑声学与电声学；声学信号处理；生理、心理声学和生物声学；语言声学和语音信号处理；音乐声学；声学换能器、声学测量及方法；声学测量方法；声学材料；信息科学中的声学问题（含通信声学、声学微机电系统、声学信道）；与声学有关的其它物理问题和交叉学科（原名为“声学其他学科”）', 2);
INSERT INTO `xkfl` VALUES ('14025', '热学', '    热力学；热物性学；传热学；热学其他学科', 2);
INSERT INTO `xkfl` VALUES ('14030', '光学', '    几何光学；物理光学；非线性光学；光谱学；量子光学；信息光学；导波光学；发光学；红外物理；激光物理；光子学与集成光学；应用光学（具体应用入有关学科）；大气光学（归入17015）；环境光学；海洋光学；光学遥感；超快激光及应用；光学其他学科', 2);
INSERT INTO `xkfl` VALUES ('14035', '电磁学', '    电学；磁学（归入14050）；静电学；静磁学；电动力学；电磁学其他学科', 2);
INSERT INTO `xkfl` VALUES ('14040', '无线电物理', '    电磁波物理；量子无线电物理；微波物理学；超高频无线电物理；统计无线电物理；无线电物理其他学科', 2);
INSERT INTO `xkfl` VALUES ('14045', '电子物理学', '    量子电子学；电子离子与真空物理；带电粒子光学；电子物理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('14050', '凝聚态物理学', '    凝聚态理论；金属物理学；半导体物理学；电介质物理学；晶体学（包括晶体生长、晶体化学等）；非晶态物理学；软物质物理学（原名为“液晶物理学”）；薄膜物理学；低维物理；表面与界面物理学；固体发光；磁学；超导物理学；低温物理学；高压物理学；摩擦学（归入13010）；介观物理学；量子调控；凝聚态物理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('14055', '等离子体物理学', '    热核聚变等离子体物理学；低温等离子体物理学；等离子体诊断学（原名为“等离子体光谱学”）；凝聚态等离子体物理学；等离子体物理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('14060', '原子分子物理学', '    原子与分子理论；原子光谱学；分子光谱学；波谱学；原子与分子碰撞过程；玻色—爱因斯坦凝聚和冷原子物理；原子分子物理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('14065', '原子核物理学', '    核结构；核能谱学；低能核反应；中子物理学；裂变物理学；聚变物理学；轻粒子核物理学；重离子核物理学；中高能核物理学；原子核物理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('14070', '高能物理学', '    粒子物理学（原名为“基本粒子物理学”）；宇宙线物理学；粒子加速器物理学；高能物理实验；粒子宇宙学；高能物理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('14075', '计算物理学', '', 1);
INSERT INTO `xkfl` VALUES ('14080', '应用物理学', '    具体应用入有关学科', 2);
INSERT INTO `xkfl` VALUES ('14099', '物理学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('150', '化学', '', 1);
INSERT INTO `xkfl` VALUES ('15010', '化学史', '', 1);
INSERT INTO `xkfl` VALUES ('15015', '无机化学', '    元素化学；配位化学；同位素化学；无机固体化学；无机合成化学；无机分离化学；物理无机化学；生物无机化学；无机化学其他学科', 2);
INSERT INTO `xkfl` VALUES ('15020', '有机化学', '    元素有机化学（包括金属有机化学等）；天然产物有机化学；有机固体化学；有机合成化学；有机光化学；物理有机化学（包括理论有机化学、立体化学等）；生物有机化学；金属有机光化学；有机化学其他学科', 2);
INSERT INTO `xkfl` VALUES ('15025', '分析化学', '    化学分析（包括定性分析、定量分析等）；电化学分析；光谱分析；波谱分析；质谱分析；热化学分析（原名为“热谱分析”）；色谱分析；光度分析；放射分析；状态分析与物相分析；分析化学计量学；分析化学其他学科', 2);
INSERT INTO `xkfl` VALUES ('15030', '物理化学', '    化学热力学；化学动力学（包括分子反应动力学等）；结构化学（包括表面化学、结构分析等）；量子化学；胶体化学与界面化学；催化化学；热化学；光化学（包括超分子光化学、光电化学、激光化学、感光化学等）；电化学；磁化学；高能化学（包括辐射化学,等离体化学）；计算化学；物理化学其他学科', 2);
INSERT INTO `xkfl` VALUES ('15035', '化学物理学', '', 1);
INSERT INTO `xkfl` VALUES ('15040', '高分子物理', '', 1);
INSERT INTO `xkfl` VALUES ('15045', '高分子化学', '    无机高分子化学；天然高分子化学；功能高分子（包括液晶高分子化学）；高分子合成化学；高分子物理化学；高分子光化学；高分子化学其他学科', 2);
INSERT INTO `xkfl` VALUES ('15050', '核化学', '    放射化学；核反应化学；裂变化学；聚变化学；重离子核化学；核转变化学；环境放射化学；核化学其他学科', 2);
INSERT INTO `xkfl` VALUES ('15055', '应用化学', '    具体应用入有关学科', 2);
INSERT INTO `xkfl` VALUES ('15060', '化学生物学', '', 1);
INSERT INTO `xkfl` VALUES ('15065', '材料化学', '    软化学；碳化学；纳米化学；材料化学其他学科', 2);
INSERT INTO `xkfl` VALUES ('15099', '化学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('160', '天文学', '', 1);
INSERT INTO `xkfl` VALUES ('16010', '天文学史', '', 1);
INSERT INTO `xkfl` VALUES ('16015', '天体力学', '    摄动理论；天体力学定性理论；天体形状与自转理论；天体力学数值方法；天文动力学（包括人造卫星、宇宙飞船动力学等）；历书天文学；天体力学其他学科', 2);
INSERT INTO `xkfl` VALUES ('16020', '天体物理学', '    理论天体物理学；相对论天体物理学；磁流体力学（归入13025）；等离子体动力学（归入13025）；高能天体物理学（包括天体核物理学）；实测天体物理学；天体物理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('16025', '宇宙化学', '    原名为“天体化学”。包括空间化学；天体元素学；月球与行星化学；宇宙化学其他学科', 2);
INSERT INTO `xkfl` VALUES ('16030', '天体测量学', '    基本天体测量学；照相天体测量学；射电天体测量学；空间天体测量学；方位天文学；实用天文学；天体测量学其他学科', 2);
INSERT INTO `xkfl` VALUES ('16035', '射电天文学', '    射电天体物理学；射电天文方法；射电天文学其他学科', 2);
INSERT INTO `xkfl` VALUES ('16040', '空间天文学', '    红外天文学；紫外天文学；X射线天文学；γ射线天文学；中微子天文学；空间天文学其他学科', 2);
INSERT INTO `xkfl` VALUES ('16045', '天体演化学', '    各层次天体形成与演化入各学科', 2);
INSERT INTO `xkfl` VALUES ('16050', '星系与宇宙学', '    星系动力学；星系天文学；运动宇宙学；星系际物质；大爆炸宇宙论；星系形成与演化；宇宙大尺度结构起源与演化；星系与宇宙学其他学科', 2);
INSERT INTO `xkfl` VALUES ('16055', '恒星与银河系', '    恒星物理学；恒星天文学；恒星形成与演化；星际物质物理学；银河系结构与运动；恒星与银河系其他学科', 2);
INSERT INTO `xkfl` VALUES ('16060', '太阳与太阳系', '    太阳物理学；太阳系物理学；太阳系形成与演化；行星物理学；行星际物理学；陨星学；比较行星学；月球科学；太阳与太阳系其他学科', 2);
INSERT INTO `xkfl` VALUES ('16065', '天体生物学', '', 1);
INSERT INTO `xkfl` VALUES ('16070', '天文地球动力学', '    从原16030中分离出来', 2);
INSERT INTO `xkfl` VALUES ('16075', '时间测量学', '    时间尺度；时间测量与方法；守时理论；授时理论与方法；时间测量学其他学科', 2);
INSERT INTO `xkfl` VALUES ('16099', '天文学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('170', '地球科学', '', 1);
INSERT INTO `xkfl` VALUES ('17010', '地球科学史', '', 1);
INSERT INTO `xkfl` VALUES ('17015', '大气科学', '    大气物理学（包括大气光学、大气声学、大气电学、中层物理学等）；大气化学；大气环境学（归入61020）；大气探测（包括大气遥感）；动力气象学（包括数值天气预报与数值模拟等）；天气学；气候学；大气边界层物理学（原名为“云与降水物理学”）；应用气象学（具体应用入有关学科）；大气科学其他学科', 2);
INSERT INTO `xkfl` VALUES ('17020', '固体地球物理学', '    地球动力学（亦有“大陆动力学，大地构造物理学，地质物理”等名称）；地球重力学；地球流体力学；地壳与地形变；地球内部物理学；地声学；地热学；地电学；地磁学；放射性地球物理学；地震学；勘探地球物理学；计算地球物理学；实验地球物理学；固体地球物理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('17025', '空间物理学', '    电离层物理学；高层大气物理学；磁层物理学；空间物理探测；空间环境学；空间物理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('17030', '地球化学', '    元素地球化学；有机地球化学；放射性地球化学；同位素地球化学；生物地球化学；地球内部化学；同位素地质年代学；成矿地球化学；勘探地球化学；实验地球化学；能源地球化学；地球化学其他学科', 2);
INSERT INTO `xkfl` VALUES ('17035', '大地测量学', '    地球形状学；几何大地测量学；物理大地测量学；动力大地测量学；空间大地测量学；行星大地测量学；大地测量学其他学科', 2);
INSERT INTO `xkfl` VALUES ('17040', '地图学', '', 1);
INSERT INTO `xkfl` VALUES ('17045', '地理学', '    自然地理学（包括生态地理学、冰川学、冻土学、沙漠学、岩溶学等）；生物地理学；土壤地理学（归入21050）；化学地理学；地貌学；人文地理学；区域地理学；城市地理学；人口地理学（归入84071）；旅游地理学；经济地理学（归入79019）；世界地理学；历史地理学（归入77070）；地理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('17050', '地质学', '    数学地质学；地质力学；动力地质学；矿物学（包括放射性矿物学）；矿床学与矿相学（包括放射性矿床学，不包括石油、天然气和煤）；岩石学；岩土力学；沉积学；古地理学；古生物学；地层学与地史学；前寒武纪地质学；第四纪地质学；构造地质学（包括显微构造学等）；大地构造学；勘查地质学；水文地质学（包括放射性水文地质学）；遥感地质学；区域地质学；火山学；石油与天然气地质学（含天然气水合物地质学）；煤田地质学；实验地质学；工程地质学（归入41030）；地质学其他学科', 2);
INSERT INTO `xkfl` VALUES ('17055', '水文学', '    水文物理学；水文化学；水文地理学；水文气象学；水文测量；水文图学；湖沼学；河流学与河口水文学；地下水文学；区域水文学；生态水文学；水文学其他学科', 2);
INSERT INTO `xkfl` VALUES ('17060', '海洋科学', '    海洋物理学；海洋化学；海洋地球物理学；海洋气象学；海洋地质学；物理海洋学；海洋生物学；海洋地理学和河口海岸学（原名为“河口、海岸学”）；海洋调查与监测；海洋工程（归入41630）；海洋测绘学（归入42050）；遥感海洋学（亦名卫星海洋学）；海洋生态学；环境海洋学；海洋资源学；极地科学；海洋科学其他学科', 2);
INSERT INTO `xkfl` VALUES ('17099', '地球科学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('180', '生物学', '', 1);
INSERT INTO `xkfl` VALUES ('18011', '生物数学', '', 1);
INSERT INTO `xkfl` VALUES ('18014', '生物物理学', '    生物信息论与生物控制论；理论生物物理学；生物声学与声生物物理学；生物光学与光生物物理学；生物电磁学；生物能量学；低温生物物理学；分子生物物理学与结构生物学（原名为“分子生物物理学”）；空间生物物理学；仿生学（参见41040）；系统生物物理学；生物影像学；生物物理学其他学科。生物力学（归入13041）', 2);
INSERT INTO `xkfl` VALUES ('18017', '生物化学', '    多肽与蛋白质生物化学；核酸生物化学；多糖生物化学；脂类生物化学；酶学；膜生物化学；激素生物化学；生殖生物化学；免疫生物化学；毒理生物化学；比较生物化学；生物化学工程（归入53067）；应用生物化学（具体应用入有关学科）；生物化学其他学科', 2);
INSERT INTO `xkfl` VALUES ('18021', '细胞生物学', '    细胞生物物理学；细胞结构与形态学；细胞生理学；细胞进化学；细胞免疫学；细胞病理学；膜生物学；干细胞生物学；细胞生物学其他学科', 2);
INSERT INTO `xkfl` VALUES ('18022', '免疫学', '    分子免疫学；细胞免疫学（归入18021）；肿瘤免疫学（归入32067）；免疫病理学（归入31044）；免疫治疗学；疫苗学；免疫遗传学（归入18031）；人体免疫学（归入31034）；免疫学其他学科', 2);
INSERT INTO `xkfl` VALUES ('18024', '生理学', '    形态生理学；新陈代谢与营养生理学；心血管生理学；呼吸生理学；消化生理学；血液生理学；泌尿生理学；内分泌生理学；感官生理学；生殖生理学；骨骼生理学；肌肉生理学；皮肤生理学；循环生理学；比较生理学；年龄生理学；特殊环境生理学；语言生理学；生理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('18027', '发育生物学', '    动物发育生物学（归入18057）；植物发育生物学（归入18051）；比较发育生物学；演化发育生物学；繁殖生物学；发育生物学其他学科', 2);
INSERT INTO `xkfl` VALUES ('18031', '遗传学', '    数量遗传学；生化遗传学；细胞遗传学；体细胞遗传学；发育遗传学（亦称发生遗传学）；分子遗传学；辐射遗传学；进化遗传学；生态遗传学；免疫遗传学；毒理遗传学；行为遗传学；群体遗传学；表观遗传学；遗传学其他学科', 2);
INSERT INTO `xkfl` VALUES ('18034', '放射生物学', '    放射生物物理学；细胞放射生物学；放射生理学；分子放射生物学；放射免疫学；放射毒理学；放射生物学其他学科', 2);
INSERT INTO `xkfl` VALUES ('18037', '分子生物学', '    基因组学（包括结构基因组学、营养基因组学）；核糖核酸组学；蛋白质组学；代谢组学；生物信息学；分子生物学其他学科', 2);
INSERT INTO `xkfl` VALUES ('18039', '专题生物学研究', '    水生生物学；保护生物学；计算生物学；营养生物学（包括生化营养学、动物营养学、植物营养学、微生物营养学等）；专题生物学研究其他学科', 2);
INSERT INTO `xkfl` VALUES ('18041', '生物进化论', '', 1);
INSERT INTO `xkfl` VALUES ('18044', '生态学', '    数学生态学；化学生态学；生理生态学；进化生态学；分子生态学；行为生态学；生态毒理学；区域生态学；种群生态学；群落生态学；生态系统生态学；生态工程学；恢复生态学；景观生态学；水生生态学与湖泊生态学；海洋生态学（归入17060）；生态学其他学科', 2);
INSERT INTO `xkfl` VALUES ('18047', '神经生物学', '    神经生物物理学；神经生物化学；神经形态学；细胞神经生物学；神经生理学；发育神经生物学；分子神经生物学；比较神经生物学；系统神经生物学；神经生物学其他学科', 2);
INSERT INTO `xkfl` VALUES ('18051', '植物学', '    植物化学；植物生物物理学；植物生物化学；植物形态学；植物解剖学；植物细胞学；植物生理学（包括植物营养学）；植物生殖生物学（原名为“植物胚胎学”）；植物发育学（包括植物孢粉学）；植物遗传学；植物引种驯化；植物生态学；植物病理学（归入21060）；植物地理学；植物群落学；植物分类学；实验植物学；民族植物学；植物寄生虫学；植物学其他学科', 2);
INSERT INTO `xkfl` VALUES ('18054', '昆虫学', '    昆虫生物化学；昆虫形态学；昆虫组织学；昆虫生理学；昆虫生态学；昆虫病理学；昆虫毒理学；昆虫行为学；昆虫分类学；实验昆虫学；昆虫病毒学；昆虫学其他学科', 2);
INSERT INTO `xkfl` VALUES ('18057', '动物学', '    动物生物物理学；动物生物化学；动物形态学；动物解剖学；动物组织学；动物细胞学；动物生理学；动物生殖生物学（包括动物繁殖学）；动物生长发育学（包括动物胚胎学）；动物遗传学；动物生态学；动物病理学；动物行为学（含动物驯化学）；动物地理学（含昆虫生物地理学）；动物分类学；实验动物学；动物寄生虫学；动物病毒学；动物学其他学科', 2);
INSERT INTO `xkfl` VALUES ('18061', '微生物学', '    微生物生物化学；微生物生理学；微生物遗传学；微生物生态学；微生物免疫学；微生物分类学；真菌学；细菌学；应用与环境微生物学（具体应用入有关学科。原名为“应用微生物学”）；微生物学其他学科', 2);
INSERT INTO `xkfl` VALUES ('18064', '病毒学', '    普通病毒学；病毒生物化学；分子病毒学；病毒生态学；病毒分类学；噬菌体学；植物病毒学（归入21060）；昆虫病毒学（归入18054）；动物病毒学（归入18057）；医学病毒学；病毒学其他学科', 2);
INSERT INTO `xkfl` VALUES ('18067', '人类学', '    人类起源与演化学；人类形态学；人类遗传学；分子人类学；人类生态学（亦称“人文生态学”）；心理人类学；古人类学；人种学；人体测量学；人类学其他学科', 2);
INSERT INTO `xkfl` VALUES ('18099', '生物学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('190', '心理学', '', 1);
INSERT INTO `xkfl` VALUES ('19010', '心理学史', '    科学心理学（归入63035）；心理学国际传播；心理学理论（包括西方心理学流派）', 2);
INSERT INTO `xkfl` VALUES ('19015', '认知心理学', '    知觉；阅读心理学；心理语言学；认知神经科学；色彩心理学；认知心理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('19020', '社会心理学', '    代码原为84051。包括家庭心理学；婚姻心理学；人际心理学；道德心理学；社会心理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('19025', '实验心理学', '    心理学研究方法；实验心理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('19030', '发展心理学', '    婴儿心理学；儿童心理学；妇女心理学；老年心理学（包括长寿心理学）；发展心理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('19040', '医学心理学', '    代码原为31054。包括护理心理学（归入32071）；医患心理学；健康心理学；医学心理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('19041', '人格心理学', '    异常心理学；人格心理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('19042', '临床与咨询心理学', '    咨询心理技术；员工援助技术；临床与咨询心理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('19045', '心理测量', '    心理测量理论；心理测量技术', 2);
INSERT INTO `xkfl` VALUES ('19046', '心理统计', '    心理统计原理；心理统计方法', 2);
INSERT INTO `xkfl` VALUES ('19050', '生理心理学', '    感觉心理学；比较心理学；心理神经免疫学；心理药理学；生理心理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('19055', '工业心理学', '    工效学（归入63050）；工程心理学（归入41045）；交通心理学；安全心理学（归入62025）；消费心理学（参见79063）；营销心理学；劳动心理学（归入84074）；经济心理学（包括市场心理学、投资心理学）；工业心理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('19060', '管理心理学', '    代码原为63020。包括干部心理学；绩效评估技术；管理心理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('19065', '应用心理学', '    艺术心理学（归入76010）；宗教心理学（归入73011）；心理人类学；应用心理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('19070', '教育心理学', '    代码原为88027。包括学习心理学；学校心理学；教育心理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('19075', '法制心理学', '    罪犯心理学；证人心理学；法制心理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('19099', '心理学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('210', '农学', '', 1);
INSERT INTO `xkfl` VALUES ('21010', '农业史', '    农业科技史；农业经济史（归入79059）；农村社会史（参见84027）；农业文化史；农业史其他学科', 2);
INSERT INTO `xkfl` VALUES ('21020', '农业基础学科', '    农业数学；农业气象学与农业气候学；农业生物物理学；农业生物化学；农业生态学；农业植物学；农业微生物学；植物营养学；农业基础学科其他学科', 2);
INSERT INTO `xkfl` VALUES ('21030', '农艺学', '    作物形态学；作物生理学；作物遗传学；作物生态学；种子学；作物育种学（包括航天育种学）；良种繁育学；作物栽培学；作物耕作学；作物种质资源学；农艺学其他学科', 2);
INSERT INTO `xkfl` VALUES ('21040', '园艺学', '    果树学；瓜果学；蔬菜学；茶学（包括茶加工等）；观赏园艺学；园艺学其他学科', 2);
INSERT INTO `xkfl` VALUES ('21045', '农产品贮藏与加工', '    农产品贮藏与加工；粮油产品贮藏与加工；果蔬贮藏与加工；畜产品贮藏与加工（归入23020）；土特产品贮藏与加工；农副产品综合利用；农产品贮藏与加工其他学科', 2);
INSERT INTO `xkfl` VALUES ('21050', '土壤学', '    土壤物理学；土壤化学；土壤地理学；土壤生物学；土壤生态学；土壤耕作学；土壤改良学；土壤肥料学；土壤分类学；土壤环境学（归入61020）；土壤调查与评价；土壤修复；土壤学其他学科', 2);
INSERT INTO `xkfl` VALUES ('21060', '植物保护学', '    植物检疫学；植物免疫学；植物病理学；植物药理学；农业昆虫学；植物病毒学；植物真菌学；植物细菌学；植物线虫学；农药学；有害生物监测预警（原名为“植物病虫害测报学”）；抗病虫害育种；有害生物化学防治；有害生物生物防治；有害生物综合防治；有害生物生态调控；农业转基因生物安全学；杂草防除（原名为“杂草防治”）；鸟兽、鼠害防治；植物保护学其他学科', 2);
INSERT INTO `xkfl` VALUES ('21099', '农学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('220', '林学', '', 1);
INSERT INTO `xkfl` VALUES ('22010', '林业基础学科', '    森林气象学；森林地理学；森林水文学；森林土壤学；树木生理学；森林生态学；森林植物学；林业基础学科其他学科', 2);
INSERT INTO `xkfl` VALUES ('22015', '林木遗传育种学', '    林木育种学；林木遗传学；林木遗传育种学其他学科', 2);
INSERT INTO `xkfl` VALUES ('22020', '森林培育学', '    种苗学；造林学（包括治沙造林学）；水土保持学（归入41650）；森林培育学其他学科', 2);
INSERT INTO `xkfl` VALUES ('22025', '森林经理学', '    森林测计学；森林测量学；林业遥感；林业信息管理；林业系统工程；森林经理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('22030', '森林保护学', '    森林病理学；森林昆虫学；森林防火学；森林保护学其他学科', 2);
INSERT INTO `xkfl` VALUES ('22035', '野生动物保护与管理', '', 1);
INSERT INTO `xkfl` VALUES ('22040', '防护林学', '', 1);
INSERT INTO `xkfl` VALUES ('22045', '经济林学', '', 1);
INSERT INTO `xkfl` VALUES ('22050', '园林学', '    园林植物学；风景园林工程；风景园林经营与管理；园林学其他学科', 2);
INSERT INTO `xkfl` VALUES ('22055', '林业工程', '    森林采运学；林业机械；林业机械化与电气化；木材学；木材加工与人造板工艺学（包括家具设计与制造等）；木材防腐学；林产化学加工学；林业工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('22060', '森林统计学', '', 1);
INSERT INTO `xkfl` VALUES ('22065', '林业经济学', '', 1);
INSERT INTO `xkfl` VALUES ('22099', '林学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('230', '畜牧、兽医科学', '', 1);
INSERT INTO `xkfl` VALUES ('23010', '畜牧、兽医科学基础学科', '    家畜生物化学；家畜生理学；家畜遗传学；家畜生态学；家畜微生物学；畜牧、兽医科学基础学科其他学科', 2);
INSERT INTO `xkfl` VALUES ('23020', '畜牧学', '    农业动物资源学；家畜遗传育种学（原名为“家畜育种学”）；家畜繁殖学（参见18057）；动物营养学；饲料学；家畜饲养管理学；特种经济动物饲养学；家畜行为学；家畜卫生学；草原学（包括牧草学、牧草育种学、牧草栽培学、草地生态学、草地保护学等）；畜产品贮藏与加工；畜牧机械化；养禽学；养蜂学；养蚕学；畜牧经济学；畜牧学其他学科', 2);
INSERT INTO `xkfl` VALUES ('23030', '兽医学', '    预防兽医学；兽医病原学；兽医流行学；家畜解剖学与组织学（原名为“家畜解剖学”）；家畜生理学（归入23010）；家畜组织胚胎学；动物分子病原学；兽医免疫学；家畜病理学（亦称兽医病理学）；兽医药理学与毒理学（原名为“兽医药理学”）；兽医临床学；兽医卫生检疫学；家畜寄生虫学；家畜传染病学；家畜病毒学；中兽医学；兽医器械学；兽医学其他学科', 2);
INSERT INTO `xkfl` VALUES ('23099', '畜牧、兽医科学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('240', '水产学', '', 1);
INSERT INTO `xkfl` VALUES ('24010', '水产学基础学科', '    水产化学；水产地理学；水产生物学；水产遗传育种学；水产动物医学；水域生态学；水产学基础学科其他学科', 2);
INSERT INTO `xkfl` VALUES ('24015', '水产增殖学', '', 1);
INSERT INTO `xkfl` VALUES ('24020', '水产养殖学', '', 1);
INSERT INTO `xkfl` VALUES ('24025', '水产饲料学', '', 1);
INSERT INTO `xkfl` VALUES ('24030', '水产保护学', '', 1);
INSERT INTO `xkfl` VALUES ('24035', '捕捞学', '', 1);
INSERT INTO `xkfl` VALUES ('24040', '水产品贮藏与加工', '', 1);
INSERT INTO `xkfl` VALUES ('24045', '水产工程学', '', 1);
INSERT INTO `xkfl` VALUES ('24050', '水产资源学', '', 1);
INSERT INTO `xkfl` VALUES ('24055', '水产经济学', '', 1);
INSERT INTO `xkfl` VALUES ('24099', '水产学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('310', '基础医学', '', 1);
INSERT INTO `xkfl` VALUES ('31010', '医学史', '', 1);
INSERT INTO `xkfl` VALUES ('31011', '医学生物化学', '', 1);
INSERT INTO `xkfl` VALUES ('31014', '人体解剖学', '    系统解剖学；局部解剖学；人体解剖学其他学科', 2);
INSERT INTO `xkfl` VALUES ('31017', '医学细胞生物学', '', 1);
INSERT INTO `xkfl` VALUES ('31021', '人体生理学', '', 1);
INSERT INTO `xkfl` VALUES ('31024', '人体组织胚胎学', '', 1);
INSERT INTO `xkfl` VALUES ('31027', '医学遗传学', '', 1);
INSERT INTO `xkfl` VALUES ('31031', '放射医学', '', 1);
INSERT INTO `xkfl` VALUES ('31034', '人体免疫学', '', 1);
INSERT INTO `xkfl` VALUES ('31037', '医学寄生虫学', '    医学寄生虫免疫学；医学昆虫学；医学蠕虫学；医学原虫学；医学寄生虫学其他学科', 2);
INSERT INTO `xkfl` VALUES ('31041', '医学微生物学', '', 1);
INSERT INTO `xkfl` VALUES ('31044', '病理学', '    病理生物学；病理解剖学；病理生理学；免疫病理学；实验病理学；比较病理学；系统病理学；环境病理学；分子病理学；病理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('31047', '药理学', '    基础药理学；临床药理学；生化药理学；分子药理学；免疫药理学；药理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('31051', '医学实验动物学', '', 1);
INSERT INTO `xkfl` VALUES ('31057', '医学统计学', '', 1);
INSERT INTO `xkfl` VALUES ('31099', '基础医学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('320', '临床医学', '', 1);
INSERT INTO `xkfl` VALUES ('32011', '临床诊断学', '    症状诊断学；物理诊断学；机能诊断学；医学影像学（包括放射诊断学、同位素诊断学、超声诊断学等）；临床放射学；实验诊断学；临床诊断学其他学科', 2);
INSERT INTO `xkfl` VALUES ('32014', '保健医学', '    康复医学；运动医学（包括力学运动医学等）；老年医学（包括老年基础医学和老年临床医学）；保健医学其他学科', 2);
INSERT INTO `xkfl` VALUES ('32017', '理疗学', '', 1);
INSERT INTO `xkfl` VALUES ('32021', '麻醉学', '    麻醉生理学；麻醉药理学；麻醉应用解剖学；麻醉学其他学科', 2);
INSERT INTO `xkfl` VALUES ('32024', '内科学', '    心血管病学；呼吸病学；结核病学；消化病学（原名为“胃肠病学”）；血液病学；肾脏病学；内分泌病学与代谢病学（原名为“内分泌学”）；风湿病学与自体免疫病学；变态反应学；感染性疾病学；传染病学（代码原为33024）；内科学其他学科', 2);
INSERT INTO `xkfl` VALUES ('32027', '外科学', '    普通外科学；显微外科学；神经外科学；颅脑外科学；胸外科学；心血管外科学；泌尿外科学；骨外科学；烧伤外科学；整形外科学；器官移植外科学；实验外科学；小儿外科学（包括小儿普通外科学、小儿骨外科学、小儿胸外科学、小儿心血管外科学、小儿烧伤外科学、小儿整形外科学、小儿神经外科学、新生儿外科学等）；外科学其他学科', 2);
INSERT INTO `xkfl` VALUES ('32031', '妇产科学', '    妇科学；产科学；围产医学（亦称围生医学）；助产学；胎儿学；妇科产科手术学；妇产科学其他学科', 2);
INSERT INTO `xkfl` VALUES ('32034', '儿科学', '    小儿外科学（归入32027）；；小儿内科学；儿科学其他学科', 2);
INSERT INTO `xkfl` VALUES ('32037', '眼科学', '', 1);
INSERT INTO `xkfl` VALUES ('32041', '耳鼻咽喉科学', '', 1);
INSERT INTO `xkfl` VALUES ('32044', '口腔医学', '    口腔解剖生理学；口腔组织学与口腔病理学；口腔材料学；口腔影象诊断学；口腔内科学；口腔颌面外科学；口腔矫形学；口腔正畸学；口腔病预防学；口腔医学其他学科', 2);
INSERT INTO `xkfl` VALUES ('32047', '皮肤病学', '', 1);
INSERT INTO `xkfl` VALUES ('32051', '性医学', '', 1);
INSERT INTO `xkfl` VALUES ('32054', '神经病学', '', 1);
INSERT INTO `xkfl` VALUES ('32057', '精神病学', '    包括精神卫生及行为医学等', 2);
INSERT INTO `xkfl` VALUES ('32058', '重症医学', '', 1);
INSERT INTO `xkfl` VALUES ('32061', '急诊医学', '', 1);
INSERT INTO `xkfl` VALUES ('32064', '核医学', '    含放射治疗学', 2);
INSERT INTO `xkfl` VALUES ('32065', '全科医学', '', 1);
INSERT INTO `xkfl` VALUES ('32067', '肿瘤学', '    肿瘤免疫学；肿瘤病因学；肿瘤病理学；肿瘤诊断学；肿瘤治疗学；肿瘤预防学；实验肿瘤学；肿瘤学其他学科', 2);
INSERT INTO `xkfl` VALUES ('32071', '护理学', '    基础护理学；专科护理学；特殊护理学；护理心理学；护理伦理学；护理管理学；护理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('32099', '临床医学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('330', '预防医学与公共卫生学', '    原名为“预防医学与卫生学”', 2);
INSERT INTO `xkfl` VALUES ('33011', '营养学', '', 1);
INSERT INTO `xkfl` VALUES ('33014', '毒理学', '', 1);
INSERT INTO `xkfl` VALUES ('33017', '消毒学', '', 1);
INSERT INTO `xkfl` VALUES ('33021', '流行病学', '', 1);
INSERT INTO `xkfl` VALUES ('33027', '媒介生物控制学', '', 1);
INSERT INTO `xkfl` VALUES ('33031', '环境医学', '    亦为环境卫生学', 2);
INSERT INTO `xkfl` VALUES ('33034', '职业病学', '', 1);
INSERT INTO `xkfl` VALUES ('33035', '热带医学', '', 1);
INSERT INTO `xkfl` VALUES ('33037', '地方病学', '', 1);
INSERT INTO `xkfl` VALUES ('33041', '社会医学', '', 1);
INSERT INTO `xkfl` VALUES ('33044', '卫生检验学', '', 1);
INSERT INTO `xkfl` VALUES ('33047', '食品卫生学', '', 1);
INSERT INTO `xkfl` VALUES ('33051', '儿少与学校卫生学', '    原名为“儿少卫生学”', 2);
INSERT INTO `xkfl` VALUES ('33054', '妇幼卫生学', '', 1);
INSERT INTO `xkfl` VALUES ('33057', '环境卫生学', '', 1);
INSERT INTO `xkfl` VALUES ('33061', '劳动卫生学', '', 1);
INSERT INTO `xkfl` VALUES ('33064', '放射卫生学', '', 1);
INSERT INTO `xkfl` VALUES ('33067', '卫生工程学', '', 1);
INSERT INTO `xkfl` VALUES ('33071', '卫生经济学', '', 1);
INSERT INTO `xkfl` VALUES ('33072', '卫生统计学', '    从原91040中分离出来', 2);
INSERT INTO `xkfl` VALUES ('33074', '优生学', '', 1);
INSERT INTO `xkfl` VALUES ('33077', '健康促进与健康教育学', '    原名为“健康教育学”', 2);
INSERT INTO `xkfl` VALUES ('33081', '卫生管理学', '    卫生监督学；卫生政策学；卫生法学（归入82030）；卫生信息管理学；卫生管理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('33099', '预防医学与公共卫生学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('340', '军事医学与特种医学', '', 1);
INSERT INTO `xkfl` VALUES ('34010', '军事医学', '    野战外科学和创伤外科学（原名为“野战外科学”）；军队流行病学；军事环境医学；军队卫生学；军队卫生装备学；军事人机工效学；核武器医学防护学；化学武器医学防护学；生物武器医学防护学；激光与微波医学防护学；军事医学其他学科', 2);
INSERT INTO `xkfl` VALUES ('34020', '特种医学', '    航空航天医学；潜水医学；航海医学；法医学；高压氧医学；特种医学其他学科', 2);
INSERT INTO `xkfl` VALUES ('34099', '军事医学与特种医学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('350', '药学', '', 1);
INSERT INTO `xkfl` VALUES ('35010', '药物化学', '    包括天然药物化学等', 2);
INSERT INTO `xkfl` VALUES ('35020', '生物药物学', '', 1);
INSERT INTO `xkfl` VALUES ('35025', '微生物药物学', '', 1);
INSERT INTO `xkfl` VALUES ('35030', '放射性药物学', '', 1);
INSERT INTO `xkfl` VALUES ('35035', '药剂学', '', 1);
INSERT INTO `xkfl` VALUES ('35040', '药效学', '', 1);
INSERT INTO `xkfl` VALUES ('35045', '药物管理学', '', 1);
INSERT INTO `xkfl` VALUES ('35050', '药物统计学', '', 1);
INSERT INTO `xkfl` VALUES ('35099', '药学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('360', '中医学与中药学', '', 1);
INSERT INTO `xkfl` VALUES ('36010', '中医学', '    中医基础理论（包括经络学等）；中医诊断学；中医内科学；中医外科学；中医骨伤科学；中医妇科学；中医儿科学；中医眼科学；中医耳鼻咽喉科学；中医口腔科学；中医老年病学；针灸学（包括针刺镇痛与麻醉等）；按摩推拿学；中医养生康复学（包括气功研究等）；中医护理学；中医食疗学；方剂学；中医文献学（包括难经、内经、伤寒论、金匮要略、腧穴学等）；中医学其他学科', 2);
INSERT INTO `xkfl` VALUES ('36020', '民族医学', '    藏医药学；蒙医药学；维吾尔医药学；民族草药学；民族医学其他学科', 2);
INSERT INTO `xkfl` VALUES ('36030', '中西医结合医学', '    中西医结合基础医学；中西医结合医学导论；中西医结合预防医学；中西医结合临床医学；中西医结合护理学；中西医结合康复医学；中西医结合养生保健医学；中西医结合医学其他学科', 2);
INSERT INTO `xkfl` VALUES ('36040', '中药学', '    中药化学；中药药理学；本草学；药用植物学；中药鉴定学；中药炮制学；中药药剂学；中药资源学；中药管理学；中药学其他学科', 2);
INSERT INTO `xkfl` VALUES ('36099', '中医学与中药学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('410', '工程与技术科学基础学科', '', 1);
INSERT INTO `xkfl` VALUES ('41010', '工程数学', '', 1);
INSERT INTO `xkfl` VALUES ('41015', '工程控制论', '', 1);
INSERT INTO `xkfl` VALUES ('41020', '工程力学', '', 1);
INSERT INTO `xkfl` VALUES ('41025', '工程物理学', '', 1);
INSERT INTO `xkfl` VALUES ('41030', '工程地质学', '', 1);
INSERT INTO `xkfl` VALUES ('41035', '工程水文学', '    参见17055', 2);
INSERT INTO `xkfl` VALUES ('41040', '工程仿生学', '    参见18014', 2);
INSERT INTO `xkfl` VALUES ('41045', '工程心理学', '', 1);
INSERT INTO `xkfl` VALUES ('41050', '标准科学技术', '    又名标准学。标准原理与方法（包括标准原理、标准体系、标准一致性测试、标准统计方法、标准化认证与认可方法、标准规程与格式等方面的研究）；标准基础学（包括标准化发展史、标准经济学、术语标准化、信息分类编码标准化、图形符号标准化、标准物质研究、标准文献学等）；标准工程与应用（包括标准化机制与体制研究、标准管理学、质量控制与评价标准化、人类工效标准化等）；标准科学技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('41055', '计量学', '', 1);
INSERT INTO `xkfl` VALUES ('41060', '工程图学', '', 1);
INSERT INTO `xkfl` VALUES ('41065', '勘查技术', '', 1);
INSERT INTO `xkfl` VALUES ('41070', '工程通用技术', '    密封技术；粉末技术；真空技术；薄膜技术；爆破技术；包装技术；照相技术；物料搬运技术；工程通用技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('41075', '工业工程学', '    亦称工程系统工程', 2);
INSERT INTO `xkfl` VALUES ('41099', '工程与技术科学基础学科其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('413', '信息与系统科学相关工程与技术', '', 1);
INSERT INTO `xkfl` VALUES ('41310', '控制科学与技术', '    自动控制应用理论（包括线性、非线性、随机控制，最优控制、自适应控制系统、分布式控制系统、柔性控制系统等）；指挥与控制系统工程；控制系统仿真技术；导航制导与控制（包括惯性导航与惯性制导）；机电一体化技术；流体传动与控制（归入46045）；自动化仪器仪表与装置；机器人控制；自动化技术应用（具体应用入有关学科）；控制科学与技术其它学科', 2);
INSERT INTO `xkfl` VALUES ('41315', '仿真科学技术', '    仿真科学技术基础学科；仿真建模理论与技术；仿真系统理论与技术；控制系统仿真技术（归入41310）；仿真应用（具体应用入有关学科）；仿真科学技术其它学科', 2);
INSERT INTO `xkfl` VALUES ('41320', '信息安全技术', '    密码学；安全协议；系统安全；网络安全；软件安全；信息隐藏；安全测评；信息安全工程；信息安全其他学科', 2);
INSERT INTO `xkfl` VALUES ('41330', '信息技术系统性应用', '    地理信息系统；全球定位系统；海洋信息技术；信息技术系统性应用其他学科', 2);
INSERT INTO `xkfl` VALUES ('41399', '信息与系统科学相关工程与技术其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('416', '自然科学相关工程与技术', '', 1);
INSERT INTO `xkfl` VALUES ('41610', '物理学相关工程与技术', '    同步辐射及实验技术；物理学相关工程与技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('41620', '光学工程', '', 1);
INSERT INTO `xkfl` VALUES ('41630', '海洋工程与技术', '    代码原为57050，原名为“海洋工程”。包括海洋工程结构与施工；海底矿产开发；海水资源利用；海洋环境工程；海岸工程；近海工程；深海工程；海洋资源开发利用技术（包括海洋矿产资源、海水资源、海洋生物、海洋能开发技术等）；海洋观测预报技术（包括海洋水下技术、海洋观测技术、海洋遥感技术、海洋预报预测技术等）；海洋环境保护技术；海洋工程与技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('41640', '生物工程', '    亦称生物技术。代码原为18071。包括基因工程（亦称遗传工程）；细胞工程；蛋白质工程；代谢工程；酶工程；发酵工程（亦称微生物工程）；生物传感技术；纳米生物分析技术；生物工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('41650', '农业工程', '    代码原为21070。包括农业机械学（包括农业机械制造等）；农业机械化；农业电气化与自动化；农田水利（包括灌溉工程、排水工程等）；水土保持学（包括土壤侵蚀学、水土保持监测、水土保持生态学、水土保持工程、荒漠化防治等）；农田测量；农业环保工程；农业区划（含农业土地利用学）；农业系统工程；农业工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('41660', '生物医学工程学', '    代码原为31061。包括生物医学电子学；临床工程学；康复工程学；生物医学测量学；人工器官与生物医学材料学；干细胞与组织工程学；医学成像技术；生物医学工程学其他学科', 2);
INSERT INTO `xkfl` VALUES ('420', '测绘科学技术', '', 1);
INSERT INTO `xkfl` VALUES ('42010', '大地测量技术', '    大地测量定位；重力测量；测量平差；大地测量技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('42020', '摄影测量与遥感技术', '    地物波谱学；近景摄影测量；航空摄影测量；遥感信息工程；摄影测量与遥感技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('42030', '地图制图技术', '    地图投影学；地图设计与编绘；图形图象复制技术；地图制图技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('42040', '工程测量技术', '    地籍测量；精密工程测量；矿山测量（归入44015）；土木建筑工程测量（归入56020）；水利工程测量（归入57015）；工程测量技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('42050', '海洋测绘', '    海洋大地测量；海洋重力测量；海洋磁力测量；海洋跃层测量；海洋声速测量；海道测量；海底地形测量；海图制图；海洋工程测量；海洋测绘其他学科', 2);
INSERT INTO `xkfl` VALUES ('42060', '测绘仪器', '', 1);
INSERT INTO `xkfl` VALUES ('42099', '测绘科学技术其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('430', '材料科学', '', 1);
INSERT INTO `xkfl` VALUES ('43010', '材料科学基础学科', '    材料力学；相图与相变（包括合金化等）；材料的组织、结构、缺陷与性能；计算材料学；金属学；陶瓷学；高分子材料学；材料科学基础学科其他学科', 2);
INSERT INTO `xkfl` VALUES ('43015', '材料表面与界面', '    包括表面优化技术', 2);
INSERT INTO `xkfl` VALUES ('43020', '材料失效与保护', '    包括材料腐蚀、磨损、老化、断裂及其控制等', 2);
INSERT INTO `xkfl` VALUES ('43025', '材料检测与分析技术', '', 1);
INSERT INTO `xkfl` VALUES ('43030', '材料实验', '', 1);
INSERT INTO `xkfl` VALUES ('43035', '材料合成与加工工艺', '', 1);
INSERT INTO `xkfl` VALUES ('43040', '金属材料', '    黑色金属及其合金；有色金属及其合金；非晶、微晶金属材料（包括准晶和纳米晶材料等）；低维金属材料（包括薄膜、纤维和零维金属材料等）；特种功能金属材料；金属材料其他学科', 2);
INSERT INTO `xkfl` VALUES ('43045', '无机非金属材料', '    玻璃与非晶无机非金属材料（包括生物玻璃材料）；低维无机非金属材料（包括薄膜、纤维和零维非金属材料等）；人工晶体；陶瓷材料（包括陶瓷膜材料、多孔陶瓷材料、生物陶瓷材料、耐火材料等。原名为“无机陶瓷材料”）；特种功能无机非金属材料；无机非金属材料其他学科', 2);
INSERT INTO `xkfl` VALUES ('43050', '有机高分子材料', '    塑料、橡胶和纤维；功能高分子材料；高性能高分子材料；高分子液晶材料；有机高分子材料其他学科', 2);
INSERT INTO `xkfl` VALUES ('43055', '复合材料', '    金属基复合材料（包括多相复合材料等）；无机非金属基复合材料（包括无机多相复合材料等）；聚合物基复合材料（包括有机多相复合材料等）；有机-无机杂化复合材料（又名混杂复合材料）；生物复合材料；功能复合材料；复合材料其他学科', 2);
INSERT INTO `xkfl` VALUES ('43060', '生物材料', '    组织工程材料；医学工程材料；环境友好材料；生物材料其他学科', 2);
INSERT INTO `xkfl` VALUES ('43070', '纳米材料', '    包括纳米光电材料、纳米信息材料、纳米存储材料等', 2);
INSERT INTO `xkfl` VALUES ('43099', '材料科学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('440', '矿山工程技术', '', 1);
INSERT INTO `xkfl` VALUES ('44010', '矿山地质学', '', 1);
INSERT INTO `xkfl` VALUES ('44015', '矿山测量', '', 1);
INSERT INTO `xkfl` VALUES ('44020', '矿山设计', '    地下矿设计；露天矿设计；矿山设计其他学科', 2);
INSERT INTO `xkfl` VALUES ('44025', '矿山地面工程', '', 1);
INSERT INTO `xkfl` VALUES ('44030', '井巷工程', '    矿山压力工程；矿山支护工程；井巷工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('44035', '采矿工程', '    煤矿开采；煤及油母页岩地下气化；金属矿开采；非金属矿开采；采矿工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('44040', '选矿工程', '    选矿理论；选矿技术；矿石处理；选矿工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('44045', '钻井工程', '', 1);
INSERT INTO `xkfl` VALUES ('44050', '油气田井开发工程', '', 1);
INSERT INTO `xkfl` VALUES ('44055', '石油、天然气储存与运输工程', '', 1);
INSERT INTO `xkfl` VALUES ('44060', '矿山机械工程', '    采矿机械；选矿机械；矿山运输机械；矿山机械工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('44065', '矿山电气工程', '', 1);
INSERT INTO `xkfl` VALUES ('44070', '采矿环境工程', '', 1);
INSERT INTO `xkfl` VALUES ('44075', '矿山安全', '', 1);
INSERT INTO `xkfl` VALUES ('44080', '矿山综合利用工程', '', 1);
INSERT INTO `xkfl` VALUES ('44099', '矿山工程技术其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('450', '冶金工程技术', '', 1);
INSERT INTO `xkfl` VALUES ('45010', '冶金物理化学', '', 1);
INSERT INTO `xkfl` VALUES ('45015', '冶金反应工程', '', 1);
INSERT INTO `xkfl` VALUES ('45020', '冶金原料与预处理', '', 1);
INSERT INTO `xkfl` VALUES ('45025', '冶金热能工程', '    冶金燃料；燃烧理论；燃烧计算；冶金分析；冶金热能工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('45030', '冶金技术', '    提炼冶金；粉末冶金；真空冶金；电磁冶金；原子能冶金；湿法冶金；纤维冶金；卤素冶金；微生物冶金；冶金技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('45035', '钢铁冶金', '    炼铁；炼钢；铁合金冶炼；钢铁冶金其他学科', 2);
INSERT INTO `xkfl` VALUES ('45040', '有色金属冶金', '', 1);
INSERT INTO `xkfl` VALUES ('45045', '轧制', '', 1);
INSERT INTO `xkfl` VALUES ('45050', '冶金机械及自动化', '', 1);
INSERT INTO `xkfl` VALUES ('45099', '冶金工程技术其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('460', '机械工程', '', 1);
INSERT INTO `xkfl` VALUES ('46010', '机械史', '', 1);
INSERT INTO `xkfl` VALUES ('46015', '机械学', '    机械原理与机构学；机械动力学与振动；机械强度；机械摩擦、磨损及润滑；机械学其他学科', 2);
INSERT INTO `xkfl` VALUES ('46020', '机械设计', '    机械设计原理与方法；机械零件及传动；机械公差、配合与技术测量；机械制图；机械设计其他学科；计算机辅助设计（归入52060）', 2);
INSERT INTO `xkfl` VALUES ('46025', '机械制造工艺与设备', '    铸造工艺与设备；焊接工艺与设备（包括连接工艺与设备）；塑性加工工艺与设备；热处理工艺与设备；切削加工工艺；特种加工工艺；机器装配工艺；非金属加工工艺；机械制造工艺与设备其他学科', 2);
INSERT INTO `xkfl` VALUES ('46030', '刀具技术', '    切削理论；切削刀具；磨削工具；刀具技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('46035', '机床技术', '    机床基础理论；金属切削机床；数字控制机床；特种加工机床；机床技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('46045', '流体传动与控制', '    包括气动液压控制技术等', 2);
INSERT INTO `xkfl` VALUES ('46050', '机械制造自动化', '    成组技术；数控技术；机器人技术（包括工业机器人、智能机器人、服务机器人）；计算机辅助制造；机械制造自动化其他学科', 2);
INSERT INTO `xkfl` VALUES ('46099', '机械工程其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('470', '动力与电气工程', '', 1);
INSERT INTO `xkfl` VALUES ('47010', '工程热物理', '    工程热力学；工程传热、传质学；燃烧学；多相流动；微尺度热物理学；工程热物理其他学科', 2);
INSERT INTO `xkfl` VALUES ('47020', '热工学', '    热工测量与仪器仪表；供热工程；工业锅炉；热工学其他学科', 2);
INSERT INTO `xkfl` VALUES ('47030', '动力机械工程', '    蒸汽工程（包括锅炉、蒸汽机、汽轮机等）；内燃机工程（包括汽油机、柴油机、气体燃料发动机等）；流体机械及流体动力工程；喷气推进机与涡轮机械；微动力工程；动力机械工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('47035', '制冷与低温工程', '    从原47020中分离出来。包括制冷工程；低温工程；热泵与空调；制冷与低温工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('47040', '电气工程', '    电工学；电路理论；电磁场理论（归入14015）；电磁测量技术及其仪器（原名为“电气测量技术及其仪器仪表”）；电工材料；电机学；电源技术；电器学；电力电子技术；高电压工程；绝缘技术；电热与高频技术；超导电工技术；发电工程（包括水力、热力、风力、磁流体发电工程等）；输配电工程；电力系统及其自动化；电力拖动及其自动化；用电技术（包括节电技术）；电加工技术（亦可称作微细加工技术）；脉冲功率技术；放电理论与发电等离子体技术；电磁环境与电磁兼容；生物与医学电工技术；可再生能源发电技术；分布式电力技术；电气化交通技术；强磁场技术；电气工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('47099', '动力与电气工程其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('480', '能源科学技术', '', 1);
INSERT INTO `xkfl` VALUES ('48010', '能源化学', '', 1);
INSERT INTO `xkfl` VALUES ('48020', '能源地理学', '', 1);
INSERT INTO `xkfl` VALUES ('48030', '能源计算与测量', '', 1);
INSERT INTO `xkfl` VALUES ('48040', '储能技术', '', 1);
INSERT INTO `xkfl` VALUES ('48050', '节能技术', '    包括工业节能、生活节能、建筑节能等', 2);
INSERT INTO `xkfl` VALUES ('48060', '一次能源', '    煤炭能；石油、天然气能；水能（包括海洋能等）；风能；地热能；生物能；太阳能；生活固体废弃物能（即城市生活垃圾能源）；核能；天然气水合物能；一次能源其他学科', 2);
INSERT INTO `xkfl` VALUES ('48070', '二次能源', '    煤气能；电能；蒸汽能；沼气能；氢能；激光能；二次能源其他学科', 2);
INSERT INTO `xkfl` VALUES ('48080', '能源系统工程', '', 1);
INSERT INTO `xkfl` VALUES ('48099', '能源科学技术其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('490', '核科学技术', '', 1);
INSERT INTO `xkfl` VALUES ('49010', '辐射物理与技术', '', 1);
INSERT INTO `xkfl` VALUES ('49015', '核探测技术与核电子学', '', 1);
INSERT INTO `xkfl` VALUES ('49020', '放射性计量学', '', 1);
INSERT INTO `xkfl` VALUES ('49025', '核仪器、仪表', '', 1);
INSERT INTO `xkfl` VALUES ('49030', '核材料与工艺技术', '    核燃料与工艺技术；核材料与工艺技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('49035', '粒子加速器', '    粒子加速器物理学（归入14070）；粒子加速器工程技术（原名为“粒子加速器工艺”）；粒子加速器应用；粒子加速器其他学科', 2);
INSERT INTO `xkfl` VALUES ('49040', '裂变堆工程技术', '    裂变堆物理；裂变堆热工与水力；裂变堆控制；裂变堆结构；裂变堆屏蔽与防护；裂变堆建造技术；裂变堆工程技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('49045', '核聚变工程技术', '    磁约束聚变技术；惯性约束聚变技术；聚变堆工程；聚变裂变混合堆工程；核聚变工程技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('49050', '核动力工程技术', '    舰船核动力；空间核动力；核电站；核动力运行技术；核动力工程技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('49055', '同位素技术', '    同位素分离技术；同位素制备技术；同位素应用技术；同位素技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('49060', '核爆炸工程', '', 1);
INSERT INTO `xkfl` VALUES ('49065', '核安全', '    包括核电站安全', 2);
INSERT INTO `xkfl` VALUES ('49070', '乏燃料后处理技术', '', 1);
INSERT INTO `xkfl` VALUES ('49075', '辐射防护技术', '', 1);
INSERT INTO `xkfl` VALUES ('49080', '核设施退役技术', '', 1);
INSERT INTO `xkfl` VALUES ('49085', '放射性三废处理、处置技术', '', 1);
INSERT INTO `xkfl` VALUES ('49099', '核科学技术其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('510', '电子与通信技术', '    原名为“电子、通信与自动控制技术”', 2);
INSERT INTO `xkfl` VALUES ('51010', '电子技术', '    电子电路；天线电波传播；无线电技术；微波技术；敏感电子学；微电子学；仿真技术；超导电子技术；电子元件与器件技术；电子束、离子束技术；红外与夜视技术；电子技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('51020', '光电子学与激光技术', '', 1);
INSERT INTO `xkfl` VALUES ('51030', '半导体技术', '    半导体测试技术；半导体材料；半导体器件与技术；传感器技术（归入53510）；集成电路技术；半导体加工技术；半导体技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('51040', '信息处理技术', '    信号检测；参数估计；数据处理；语音处理；图象处理；信息处理技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('51050', '通信技术', '    有线通信技术；无线通信技术（包括微波通信、卫星通信、激光通信技术等）；光纤通信技术；通信传输技术；通信网络技术；通信终端技术；电信；邮政；邮电通信管理工程；通信技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('51060', '广播与电视工程技术', '', 1);
INSERT INTO `xkfl` VALUES ('51070', '雷达工程', '', 1);
INSERT INTO `xkfl` VALUES ('51099', '电子与通信技术其他学科', '    原名为“电子、通信与自动控制技术其他学科”', 2);
INSERT INTO `xkfl` VALUES ('520', '计算机科学技术', '', 1);
INSERT INTO `xkfl` VALUES ('52010', '计算机科学技术基础学科', '    自动机理论；可计算性理论；计算机可靠性理论；算法理论；数据结构；数据安全与计算机安全；计算机科学技术基础学科其他学科', 2);
INSERT INTO `xkfl` VALUES ('52020', '人工智能', '    人工智能理论；自然语言处理；机器翻译；模式识别；计算机感知；计算机神经网络；知识工程（包括专家系统）；人工智能其他学科', 2);
INSERT INTO `xkfl` VALUES ('52030', '计算机系统结构', '    计算机系统设计；并行处理；分布式处理系统；计算机网络；计算机运行测试与性能评价；计算机系统结构其他学科', 2);
INSERT INTO `xkfl` VALUES ('52040', '计算机软件', '    软件理论；操作系统与操作环境；程序设计及其语言；编译系统；数据库；软件开发环境与开发技术；软件工程；计算机软件其他学科', 2);
INSERT INTO `xkfl` VALUES ('52050', '计算机工程', '    计算机元器件；计算机处理器技术；计算机存储技术；计算机外围设备；计算机制造与检测；计算机高密度组装技术；计算机工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('52060', '计算机应用', '    具体应用入有关学科。包括中国语言文字信息处理（包括汉字信息处理）；计算机仿真；计算机图形学；计算机图象处理；计算机辅助设计；计算机过程控制；计算机信息管理系统；计算机决策支持系统；计算机应用其他学科', 2);
INSERT INTO `xkfl` VALUES ('52099', '计算机科学技术其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('530', '化学工程', '', 1);
INSERT INTO `xkfl` VALUES ('53011', '化学工程基础学科', '    化工热力学；化工流体力学；化工流变学；颗粒学；化学工程基础学科其他学科', 2);
INSERT INTO `xkfl` VALUES ('53014', '化工测量技术与仪器仪表', '', 1);
INSERT INTO `xkfl` VALUES ('53017', '化工传递过程', '', 1);
INSERT INTO `xkfl` VALUES ('53021', '化学分离工程', '    蒸馏；吸收；萃取；吸附与离子交换；膜分离；蒸发与结晶；干燥；化学分离工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('53024', '化学反应工程', '    催化反应工程；催化剂工程；固定床反应工程；多相流反应工程；生化反应工程；聚合化学反应工程；电化学反应工程；化学反应工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('53027', '化工系统工程', '    化工过程动态学；化工过程控制与模拟；化工系统优化；化工系统工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('53031', '化工机械与设备', '', 1);
INSERT INTO `xkfl` VALUES ('53034', '无机化学工程', '    酸碱盐工程技术；硅酸盐工程技术；放射化工；化肥工程技术；化学冶金；无机化学工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('53037', '有机化学工程', '', 1);
INSERT INTO `xkfl` VALUES ('53041', '电化学工程', '    电解；电镀；电池；腐蚀与防腐化学；电化学工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('53044', '高聚物工程', '', 1);
INSERT INTO `xkfl` VALUES ('53047', '煤化学工程', '', 1);
INSERT INTO `xkfl` VALUES ('53051', '石油化学工程', '', 1);
INSERT INTO `xkfl` VALUES ('53052', '天然气化学工程', '', 1);
INSERT INTO `xkfl` VALUES ('53054', '精细化学工程', '    表面活性剂；香料学；化妆品学；染料；颜料与涂料学；粘合剂（亦称胶粘剂）；精细化学工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('53057', '造纸技术', '', 1);
INSERT INTO `xkfl` VALUES ('53061', '毛皮与制革工程', '', 1);
INSERT INTO `xkfl` VALUES ('53064', '制药工程', '    医药工程；农药工程；兽药工程；制药工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('53067', '生物化学工程', '', 1);
INSERT INTO `xkfl` VALUES ('53099', '化学工程其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('535', '产品应用相关工程与技术', '', 1);
INSERT INTO `xkfl` VALUES ('53510', '仪器仪表技术', '    代码原为46040。包括仪器仪表基础理论；仪器仪表材料；传感器技术；精密仪器制造；测试计量仪器；光学技术与仪器；天文仪器；地球科学仪器；大气仪器仪表；仪器仪表技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('53520', '兵器科学与技术', '    兵器科学与技术基础学科；兵器系统与运用工程；兵器结构、动力、传动与平台技术；弹道学（含发射、推进与毁伤）；兵器识别、导引与控制技术；军用光学与光电子技术；军事信息工程与信息对抗技术；含能材料技术；兵器制造技术；兵器材料科学与工程；兵器测试与实验技术；兵器科学与技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('53530', '产品应用专用性技术', '   包括印刷、复制技术；产品应用专用性技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('53599', '产品应用相关工程与技术其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('540', '纺织科学技术', '', 1);
INSERT INTO `xkfl` VALUES ('54010', '纺织科学技术基础学科', '    纺织化学；纺织美学与色彩学；纺织科学技术基础学科其他学科', 2);
INSERT INTO `xkfl` VALUES ('54020', '纺织材料', '', 1);
INSERT INTO `xkfl` VALUES ('54030', '纤维制造技术', '', 1);
INSERT INTO `xkfl` VALUES ('54040', '纺织技术', '    纺织品结构与设计；棉纺学；棉织学；麻纺织；毛纺织；丝纺织；化学纤维纺织；新型纺纱、无纺布与特种织物；针织；纺织技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('54050', '染整技术', '    染炼技术；印花技术；染色技术；整理技术；染整技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('54060', '服装技术', '    服装设计；服装加工；服装技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('54070', '纺织机械与设备', '    纺织器材设计与制造；纺织机械设计与制造；纺织机械与设备其他学科', 2);
INSERT INTO `xkfl` VALUES ('54099', '纺织科学技术其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('550', '食品科学技术', '', 1);
INSERT INTO `xkfl` VALUES ('55010', '食品科学技术基础学科', '    食品化学（原名为“食品生物化学”）；食品营养学；食品检验学；食品微生物学；食品生物技术；谷物化学；油脂化学；食品科学技术基础学科其他学科', 2);
INSERT INTO `xkfl` VALUES ('55020', '食品加工技术', '    食用油脂加工技术；制糖技术；肉加工技术；乳加工技术；蛋加工技术；水果、蔬菜加工技术（参见21045）；食品发酵与酿造技术；烘焙食品加工技术（原名为“食品焙烤加工技术”）；调味品加工技术（包括食盐加工技术等）；食品添加剂技术；饮料冷食制造技术；罐头技术；米面制品加工技术（包括其他粮食加工技术）；植物蛋白加工技术；食品加工技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('55030', '食品包装与储藏', '', 1);
INSERT INTO `xkfl` VALUES ('55040', '食品机械', '', 1);
INSERT INTO `xkfl` VALUES ('55050', '食品加工的副产品加工与利用', '', 1);
INSERT INTO `xkfl` VALUES ('55060', '食品工业企业管理学', '', 1);
INSERT INTO `xkfl` VALUES ('55070', '食品工程与粮油工程', '    食品工程；粮油工程', 2);
INSERT INTO `xkfl` VALUES ('55099', '食品科学技术其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('560', '土木建筑工程', '', 1);
INSERT INTO `xkfl` VALUES ('56010', '建筑史', '', 1);
INSERT INTO `xkfl` VALUES ('56015', '土木建筑工程基础学科', '    工程数学（归入41010）；工程力学（归入41020）；建筑光学；建筑声学；建筑气象学；土木建筑工程基础学科其他学科', 2);
INSERT INTO `xkfl` VALUES ('56020', '土木建筑工程测量', '', 1);
INSERT INTO `xkfl` VALUES ('56025', '建筑材料', '    金属建筑材料；非金属建筑材料；复合建筑材料；特种建筑材料（包括隔音、防水、防火、绝热、耐震、防蚀、装修材料等）；建筑材料其他学科', 2);
INSERT INTO `xkfl` VALUES ('56030', '工程结构', '    杆件结构；薄壳结构；悬索与张拉结构；实体结构；结构设计；工程结构其他学科', 2);
INSERT INTO `xkfl` VALUES ('56035', '土木建筑结构', '    木结构；砖结构；金属结构；混凝土与钢筋混凝土结构；喷锚结构；复合结构；特种结构；土木建筑结构其他学科', 2);
INSERT INTO `xkfl` VALUES ('56040', '土木建筑工程设计', '    建筑设计方法与理论；城乡规划方法与理论；建筑美学；建筑室内设计；建筑室外环境设计；土木工程设计；土木建筑工程设计其他学科', 2);
INSERT INTO `xkfl` VALUES ('56045', '土木建筑工程施工', '    地基基础工程；地面工程；地下工程；墙体工程；土木施工电器工程；装饰工程；土木建筑工程施工其他学科', 2);
INSERT INTO `xkfl` VALUES ('56050', '土木工程机械与设备', '    起重机械；土木工程运输机械；土方机械；桩工机械；石料开采加工机械；钢筋混凝土机械；装修机械；土木工程机械与设备其他学科', 2);
INSERT INTO `xkfl` VALUES ('56055', '市政工程', '    城市给水排水工程；通风与空调工程；供热与供燃气工程；电讯管道工程；城市系统工程；市政工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('56060', '建筑经济学', '', 1);
INSERT INTO `xkfl` VALUES ('56099', '土木建筑工程其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('570', '水利工程', '', 1);
INSERT INTO `xkfl` VALUES ('57010', '水利工程基础学科', '    水力学；河流与海岸动力学；工程水文学（归入41035）；水利工程基础学科其他学科', 2);
INSERT INTO `xkfl` VALUES ('57015', '水利工程测量', '', 1);
INSERT INTO `xkfl` VALUES ('57020', '水工材料', '', 1);
INSERT INTO `xkfl` VALUES ('57025', '水工结构', '    亦称水工建筑物。包括一般水工建筑物；专门水工建筑物；水工结构其他学科', 2);
INSERT INTO `xkfl` VALUES ('57030', '水力机械', '', 1);
INSERT INTO `xkfl` VALUES ('57035', '水利工程施工', '    水利建筑工程施工；水工设备安装（包括水工金属结构安装等）；水利工程施工其他学科', 2);
INSERT INTO `xkfl` VALUES ('57040', '水处理', '    不包括废水处理。包括给水处理，水处理其他学科', 2);
INSERT INTO `xkfl` VALUES ('57045', '河流泥沙工程学', '    水沙动力学；河工学；河流泥沙工程学其他学科', 2);
INSERT INTO `xkfl` VALUES ('57055', '环境水利', '    环境水利与评价（包括水资源评价；水环境评价）；区域环境水利；水资源保护；环境水利其他学科', 2);
INSERT INTO `xkfl` VALUES ('57060', '水利管理', '    水利工程管理（包括水利调度、水利施工管理、养护等）；水利工程检查观测；水利管理自动化系统；水利管理其他学科', 2);
INSERT INTO `xkfl` VALUES ('57065', '防洪工程', '    防洪；防汛；防凌；防洪工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('57070', '水利经济学', '', 1);
INSERT INTO `xkfl` VALUES ('57099', '水利工程其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('580', '交通运输工程', '', 1);
INSERT INTO `xkfl` VALUES ('58010', '道路工程', '    路基工程；桥涵工程；隧道工程；道路工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('58020', '公路运输', '    车辆工程；公路标志、信号、监控工程；公路运输管理；公路运输其他学科', 2);
INSERT INTO `xkfl` VALUES ('58030', '铁路运输', '    铁路电气化工程；铁路通信信号工程；铁路机车车辆工程；铁路运输管理；铁路运输其他学科', 2);
INSERT INTO `xkfl` VALUES ('58040', '水路运输', '    航海技术与装备工程（原名为“航海学”）；船舶通信与导航工程（原名为“导航建筑物与航标工程”）；航道工程；港口工程；疏浚工程；水路运输管理；救助、打捞与潜水作业工程；海事技术与装备工程；水路运输其他学科', 2);
INSERT INTO `xkfl` VALUES ('58050', '船舶、舰船工程', '', 1);
INSERT INTO `xkfl` VALUES ('58060', '航空运输', '    机场工程；航空运输管理；航空运输其他学科', 2);
INSERT INTO `xkfl` VALUES ('58070', '交通运输系统工程', '', 1);
INSERT INTO `xkfl` VALUES ('58080', '交通运输安全工程', '', 1);
INSERT INTO `xkfl` VALUES ('58099', '交通运输工程其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('590', '航空、航天科学技术', '', 1);
INSERT INTO `xkfl` VALUES ('59010', '航空、航天科学技术基础学科', '    大气层飞行力学；空气动力学（归入13025）；航天动力学；飞行器结构力学；热力学（归入14025）；传热学（归入14025）；燃烧学（归入47010）；航天摩擦学（又称空间摩擦学）；飞行原理；航空、航天科学技术基础学科其他学科', 2);
INSERT INTO `xkfl` VALUES ('59015', '航空器结构与设计', '    气球、飞艇；定翼机；旋翼机；航空器结构与设计其他学科', 2);
INSERT INTO `xkfl` VALUES ('59020', '航天器结构与设计', '    火箭、导弹；人造地球卫星；空间探测器；宇宙飞船；航天站；航天飞机；航天器结构与设计其他学科', 2);
INSERT INTO `xkfl` VALUES ('59025', '航空、航天推进系统', '', 1);
INSERT INTO `xkfl` VALUES ('59030', '飞行器仪表、设备', '', 1);
INSERT INTO `xkfl` VALUES ('59035', '飞行器控制、导航技术', '', 1);
INSERT INTO `xkfl` VALUES ('59040', '航空、航天材料', '    航空、航天金属材料；航空、航天非金属材料；航空、航天复合材料；航空、航天燃料与润滑剂；航空、航天材料失效与保护；航空、航天材料其他学科', 2);
INSERT INTO `xkfl` VALUES ('59045', '飞行器制造技术', '    航空器制造工艺；航天器制造工艺；飞行器制造技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('59050', '飞行器试验技术', '    航空器地面试验；航空器飞行试验；航天器地面试验；航天器飞行试验；飞行器试验技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('59055', '飞行器发射与回收、飞行技术', '    原名为“飞行器发射、飞行技术”。包括 飞行技术；飞行器发射与回收（原名为“飞行器发射、飞行事故”）；飞行事故；飞行器发射与回收、飞行技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('59060', '航空航天地面设施、技术保障', '    原名为“航天地面设施、技术保障”。包括发射场、试验场；航天测控系统；航空地面设施；航空地面技术保障；航空航天地面设施、技术保障其他学科', 2);
INSERT INTO `xkfl` VALUES ('59065', '航空、航天系统工程', '    航空系统工程；航天系统工程；航空、航天可靠性工程；航空、航天系统工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('59099', '航空、航天科学技术其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('610', '环境科学技术及资源科学技术', '    原名为“环境科学技术”', 2);
INSERT INTO `xkfl` VALUES ('61010', '环境科学技术基础学科', '    环境物理学（包括环境声学等）；环境化学；环境生物学；环境气象学；环境地学（包括环境地球化学、环境地质学等）；环境生态学；环境毒理学；环境医学（归入33031）；自然环境保护学；环境管理学；环境经济学（归入79051）；环境法学（归入82030）；环境科学技术基础学科其他学科', 2);
INSERT INTO `xkfl` VALUES ('61020', '环境学', '    大气环境学；水体环境学（包括海洋环境学）；土壤环境学；区域环境学；城市环境学；环境学其他学科', 2);
INSERT INTO `xkfl` VALUES ('61030', '环境工程学', '    环境保护工程；大气污染防治工程；水污染防治工程；固体污染防治工程；三废处理与综合利用；噪声与震动控制；环境质量监测与评价；环境规划；环境系统工程；环境修复工程（包括水环境修复工程）；环境工程学其他学科', 2);
INSERT INTO `xkfl` VALUES ('61050', '资源科学技术', '    包括资源管理', 2);
INSERT INTO `xkfl` VALUES ('61099', '环境科学技术及资源科学技术其他学科', '    原名为“环境科学技术其他学科”', 2);
INSERT INTO `xkfl` VALUES ('620', '安全科学技术', '', 1);
INSERT INTO `xkfl` VALUES ('62010', '安全科学技术基础学科', '    安全哲学；安全史；安全科学学；灾害学（包括灾害物理、灾害化学、灾害毒理等）；安全学；安全科学技术基础学科其他学科', 2);
INSERT INTO `xkfl` VALUES ('62021', '安全社会科学', '    安全社会学；安全法学（归入82030，包括安全法规体系研究）；安全经济学；安全管理学；安全教育学；安全伦理学；安全文化学；安全社会科学其他学科', 2);
INSERT INTO `xkfl` VALUES ('62023', '安全物质学', '', 1);
INSERT INTO `xkfl` VALUES ('62025', '安全人体学', '    安全生理学；安全心理学；安全人机学；安全人体学其他学科', 2);
INSERT INTO `xkfl` VALUES ('62027', '安全系统学', '    从原62020中分离出来。包括安全运筹学；安全信息论；安全控制论；安全模拟与安全仿真学；安全系统学其他学科', 2);
INSERT INTO `xkfl` VALUES ('62030', '安全工程技术科学', '    原名为“安全工程”。包括安全工程理论；火灾科学与消防工程（原名为“消防工程”）；爆炸安全工程；安全设备工程（含安全特种设备工程）；安全机械工程；安全电气工程；安全人机工程；安全系统工程（含安全运筹工程、安全控制工程、安全信息工程）；安全工程技术科学其他学科', 2);
INSERT INTO `xkfl` VALUES ('62040', '安全卫生工程技术', '    原名为“职业卫生工程”。包括防尘工程技术；防毒工程技术；通风与空调工程（归入56055）；噪声与振动控制；辐射防护技术（归入49075）；个体防护工程；安全卫生工程技术其他学科（原名为“职业卫生工程其他学科”）', 2);
INSERT INTO `xkfl` VALUES ('62060', '安全社会工程', '    安全管理工程（代码原为62050）；安全经济工程；安全教育工程；安全社会工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('62070', '部门安全工程理论', '    各部门安全工程入有关学科', 2);
INSERT INTO `xkfl` VALUES ('62080', '公共安全', '    公共安全信息工程；公共安全风险评估与规划（原名称为“风险评价与失效分析”）；公共安全检测检验；公共安全监测监控；公共安全预测预警；应急决策指挥；应急救援；公共安全其他学科', 2);
INSERT INTO `xkfl` VALUES ('62099', '安全科学技术其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('630', '管理学', '', 1);
INSERT INTO `xkfl` VALUES ('63010', '管理思想史', '', 1);
INSERT INTO `xkfl` VALUES ('63015', '管理理论', '    管理哲学；组织理论；行为科学；决策理论；系统管理理论；管理理论其他学科', 2);
INSERT INTO `xkfl` VALUES ('63025', '管理计量学', '', 1);
INSERT INTO `xkfl` VALUES ('63030', '部门经济管理', '    各部门经济管理入有关学科', 2);
INSERT INTO `xkfl` VALUES ('63032 ', '区域经济管理', '', 1);
INSERT INTO `xkfl` VALUES ('63035', '科学学与科技管理', '    科学社会学；科技政策学；科学体系学；科学心理学；科学计量学；科技管理学；科学学与科技管理其他学科', 2);
INSERT INTO `xkfl` VALUES ('63040', '企业管理', '    生产管理；经营管理；财务管理；成本管理；劳动人事管理；技术管理；营销管理；物资管理；设备管理；质量管理；企业管理其他学科', 2);
INSERT INTO `xkfl` VALUES ('63044', '公共管理', '    行政管理（代码原为63045）；危机管理（也称“应急管理”）；公共管理其他学科', 2);
INSERT INTO `xkfl` VALUES ('63050', '管理工程', '    生产系统管理；研究与开发管理；质量控制与可靠性管理；物流系统管理；战略管理；决策分析；决策支持系统；管理信息系统；管理系统仿真；工效学；部门管理工程（各部门管理工程入有关学科）；管理工程其他学科', 2);
INSERT INTO `xkfl` VALUES ('63055', '人力资源开发与管理', '    人力资源开发战略；人才学；人力资源开发与管理其他学科', 2);
INSERT INTO `xkfl` VALUES ('63060', '未来学', '    理论预测学；预测评价学；技术评估学；全球未来学；未来学其他学科', 2);
INSERT INTO `xkfl` VALUES ('63099', '管理学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('710', '马克思主义', '', 1);
INSERT INTO `xkfl` VALUES ('71010', '马、恩、列、斯思想研究', '', 1);
INSERT INTO `xkfl` VALUES ('71020', '毛泽东思想研究', '', 1);
INSERT INTO `xkfl` VALUES ('71030', '马克思主义思想史', '', 1);
INSERT INTO `xkfl` VALUES ('71040', '科学社会主义', '', 1);
INSERT INTO `xkfl` VALUES ('71050', '社会主义运动史', '    包括国际共产主义运动', 2);
INSERT INTO `xkfl` VALUES ('71060', '国外马克思主义研究', '', 1);
INSERT INTO `xkfl` VALUES ('71099', '马克思主义其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('720', '哲学', '', 1);
INSERT INTO `xkfl` VALUES ('72010', '马克思主义哲学', '    辩证唯物主义；历史唯物主义；马克思主义哲学史；马克思主义哲学其他学科', 2);
INSERT INTO `xkfl` VALUES ('72015', '自然辩证法', '    亦称科学技术哲学。包括自然观；科学哲学；技术哲学；专门自然科学哲学（包括人工智能哲学、数学哲学、物理哲学等）；自然辩证法其他学科', 2);
INSERT INTO `xkfl` VALUES ('72020', '中国哲学史', '    先秦哲学；秦汉哲学；魏晋南北朝哲学；隋唐五代哲学；宋元明清哲学；中国近代哲学；中国现代哲学；中国少数民族哲学思想；中国哲学史其他学科', 2);
INSERT INTO `xkfl` VALUES ('72025', '东方哲学史', '    印度哲学；伊斯兰哲学；日本哲学；东方哲学史其他学科', 2);
INSERT INTO `xkfl` VALUES ('72030', '西方哲学史', '    古希腊罗马哲学；中世纪哲学；文艺复兴时期哲学；十七、十八世纪欧洲哲学；德国古典哲学；俄国哲学（包括俄国革命民主主义者的哲学）；西方哲学史其他学科', 2);
INSERT INTO `xkfl` VALUES ('72035', '现代外国哲学', '    十九世纪末至二十世纪中叶西方哲学；分析哲学；欧洲大陆人文哲学；解释学；符号学；实用主义哲学；现代外国哲学其他学科', 2);
INSERT INTO `xkfl` VALUES ('72040', '逻辑学', '    逻辑史（包括中国逻辑史、西方逻辑史、印度逻辑史等）；形式逻辑（亦称传统逻辑）；数理逻辑（归入11014）；哲理逻辑（包括模态、多值、构造、时态、模糊逻辑等）；语言逻辑；归纳逻辑；辩证逻辑；逻辑学其他学科', 2);
INSERT INTO `xkfl` VALUES ('72045', '伦理学', '    伦理学原理；中国伦理思想史；东方伦理思想史；西方伦理思想史；马克思主义伦理思想史；职业伦理学；医学伦理学；教育伦理学；政治伦理学；家庭伦理学；生命伦理学；生态伦理学；环境伦理学；伦理学其他学科', 2);
INSERT INTO `xkfl` VALUES ('72050', '美学', '    美学原理；中国美学史；东方美学史；西方美学史；西方现代美学；马克思主义美学；艺术美学（包括音乐、影视美学、建筑美学等）；技术美学；美学其他学科', 2);
INSERT INTO `xkfl` VALUES ('72099', '哲学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('730', '宗教学', '', 1);
INSERT INTO `xkfl` VALUES ('73011', '宗教学理论', '    马克思主义宗教学；宗教史学；宗教哲学；宗教社会学；宗教心理学；比较宗教学；宗教地理学；宗教文学艺术；宗教文献学；神话学；宗教学理论其他学科', 2);
INSERT INTO `xkfl` VALUES ('73014', '无神论', '    无神论史；中国无神论；外国无神论；无神论其他学科', 2);
INSERT INTO `xkfl` VALUES ('73017', '原始宗教', '', 1);
INSERT INTO `xkfl` VALUES ('73021', '古代宗教', '    中国古代宗教；外国古代宗教；古代宗教其他学科', 2);
INSERT INTO `xkfl` VALUES ('73024', '佛教', '    佛教哲学；佛教因明；佛教艺术；佛教文献；佛教史；佛教宗派学；佛教其他学科', 2);
INSERT INTO `xkfl` VALUES ('73027', '基督教', '    圣经学；基督教哲学；基督教伦理学；基督教史；基督教艺术；基督教其他学科', 2);
INSERT INTO `xkfl` VALUES ('73031', '伊斯兰教', '    伊斯兰教义学；伊斯兰教法学；伊斯兰教哲学；古兰学；圣训学；伊斯兰教史；伊斯兰教艺术；伊斯兰教其他学科', 2);
INSERT INTO `xkfl` VALUES ('73034', '道教', '    道教哲学；道教文献；道教艺术；道教史；道教其他学科', 2);
INSERT INTO `xkfl` VALUES ('73037', '印度教', '', 1);
INSERT INTO `xkfl` VALUES ('73041', '犹太教', '', 1);
INSERT INTO `xkfl` VALUES ('73044', '袄教', '', 1);
INSERT INTO `xkfl` VALUES ('73047', '摩尼教', '', 1);
INSERT INTO `xkfl` VALUES ('73051', '锡克教', '', 1);
INSERT INTO `xkfl` VALUES ('73054', '耆那教', '', 1);
INSERT INTO `xkfl` VALUES ('73057', '神道教', '', 1);
INSERT INTO `xkfl` VALUES ('73061', '中国民间宗教与民间信仰', '', 1);
INSERT INTO `xkfl` VALUES ('73064', '中国少数民族宗教', '', 1);
INSERT INTO `xkfl` VALUES ('73067', '当代宗教', '    中国当代宗教；世界当代宗教；新兴宗教；当代宗教其他学科', 2);
INSERT INTO `xkfl` VALUES ('73099', '宗教学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('740', '语言学', '', 1);
INSERT INTO `xkfl` VALUES ('74010', '普通语言学', '    语音学；语法学；语义学；词汇学；语用学；方言学；修辞学；文字学；语源学；普通语言学其他学科', 2);
INSERT INTO `xkfl` VALUES ('74015', '比较语言学', '    历史比较语言学；类型比较语言学；双语对比语言学；比较语言学其他学科', 2);
INSERT INTO `xkfl` VALUES ('74020', '语言地理学', '', 1);
INSERT INTO `xkfl` VALUES ('74025', '社会语言学', '', 1);
INSERT INTO `xkfl` VALUES ('74030', '心理语言学', '', 1);
INSERT INTO `xkfl` VALUES ('74035', '应用语言学', '    语言教学；话语语言学；实验语音学；数理语言学；计算语言学；翻译学；术语学；应用语言学其他学科', 2);
INSERT INTO `xkfl` VALUES ('74040', '汉语研究', '    普通话；汉语方言；汉语语音；汉语音韵；汉语语法；汉语词汇；汉语训诂；汉语修辞；汉字规范；汉语史；汉语研究其他学科', 2);
INSERT INTO `xkfl` VALUES ('74045', '中国少数民族语言文字', '    蒙古语文；藏语文；维吾尔语文；哈萨克语文；满语文；朝鲜语文；傣族语文；彝族语文；壮语文；苗语文；瑶语文；柯尔克孜语文；锡伯语文；中国少数民族语言文字其他学科', 2);
INSERT INTO `xkfl` VALUES ('74050', '外国语言', '    英语；德语；瑞典语；丹麦语、挪威语、冰岛语；拉丁语；意大利语；法语；西班牙语、葡萄牙语；罗马尼亚语；俄语；波兰语、捷克语；塞尔维亚语、保加利亚语；希腊语；阿尔巴尼亚语；匈牙利语；芬兰语；爱沙尼亚语、拉脱维亚语、立陶宛语；梵语、印地语、乌尔都语、僧伽罗语；波斯语；土耳其语；阿拉伯语；希伯莱语；豪萨语；斯瓦希里语；越南语、柬埔寨语；印度尼西亚语、菲律宾国语、马来语；缅甸语；泰语、老挝语；日语；朝鲜语和韩国语；世界语；外国语言其他学科', 2);
INSERT INTO `xkfl` VALUES ('74099', '语言学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('750', '文学', '', 1);
INSERT INTO `xkfl` VALUES ('75011', '文学理论', '', 1);
INSERT INTO `xkfl` VALUES ('75014', '文艺美学', '', 1);
INSERT INTO `xkfl` VALUES ('75017', '文学批评', '', 1);
INSERT INTO `xkfl` VALUES ('75021', '比较文学', '', 1);
INSERT INTO `xkfl` VALUES ('75024', '中国古代文学', '    原名为“中国古代文学史”。包括周秦汉文学；魏晋文学；南北朝文学；隋唐五代文学；宋代文学；辽金文学；元代文学；明代文学；清代文学；中国古代文学其他学科（原名为“中国古代文学史其他学科”）', 2);
INSERT INTO `xkfl` VALUES ('75027', '中国近代文学', '    原名为“中国近代文学史”', 2);
INSERT INTO `xkfl` VALUES ('75031', '中国现代文学', '    包括当代文学。原名为“中国现代文学史”', 2);
INSERT INTO `xkfl` VALUES ('75034', '中国各体文学', '    中国诗歌文学；中国戏剧文学；中国小说文学；中国散文文学；中国各体文学其他学科', 2);
INSERT INTO `xkfl` VALUES ('75037', '中国民间文学', '', 1);
INSERT INTO `xkfl` VALUES ('75041', '中国儿童文学', '', 1);
INSERT INTO `xkfl` VALUES ('75044', '中国少数民族文学', '    蒙古族文学；藏族文学；维吾尔族文学；哈萨克族文学；朝鲜族文学；中国少数民族文学其他学科', 2);
INSERT INTO `xkfl` VALUES ('75047', '世界文学史', '    古代世界文学史；中世纪世界文学史；近代世界文学史；现代世界文学史（包括当代世界文学史）；世界文学史其他学科', 2);
INSERT INTO `xkfl` VALUES ('75051', '东方文学', '    印度文学；日本文学；东方文学其他学科', 2);
INSERT INTO `xkfl` VALUES ('75054', '俄国文学', '    包括原苏联文学', 2);
INSERT INTO `xkfl` VALUES ('75057', '英国文学', '', 1);
INSERT INTO `xkfl` VALUES ('75061', '法国文学', '', 1);
INSERT INTO `xkfl` VALUES ('75064', '德国文学', '', 1);
INSERT INTO `xkfl` VALUES ('75067', '意大利文学', '', 1);
INSERT INTO `xkfl` VALUES ('75071', '美国文学', '', 1);
INSERT INTO `xkfl` VALUES ('75074', '北欧文学', '', 1);
INSERT INTO `xkfl` VALUES ('75077', '东欧文学', '', 1);
INSERT INTO `xkfl` VALUES ('75081', '拉美文学', '', 1);
INSERT INTO `xkfl` VALUES ('75084', '非洲文学', '', 1);
INSERT INTO `xkfl` VALUES ('75087', '大洋洲文学', '', 1);
INSERT INTO `xkfl` VALUES ('75099', '文学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('760', '艺术学', '', 1);
INSERT INTO `xkfl` VALUES ('76010', '艺术心理学', '    包括绘画心理学、书法心理学、音乐心理学', 2);
INSERT INTO `xkfl` VALUES ('76015', '音乐', '    音乐学（包括音乐史、音乐美学等）；作曲与作曲理论；音乐表演艺术；音乐其他学科', 2);
INSERT INTO `xkfl` VALUES ('76020', '戏剧', '    戏剧史；戏剧理论；戏剧其他学科', 2);
INSERT INTO `xkfl` VALUES ('76025', '戏曲', '    戏曲史；戏曲理论；戏曲表演；戏曲其他学科', 2);
INSERT INTO `xkfl` VALUES ('76030', '舞蹈', '    舞蹈史；舞蹈理论；舞蹈编导；舞蹈表演；舞蹈其他学科', 2);
INSERT INTO `xkfl` VALUES ('76035', '电影', '    电影史；电影理论；电影艺术；电影其他学科', 2);
INSERT INTO `xkfl` VALUES ('76040', '广播电视文艺', '', 1);
INSERT INTO `xkfl` VALUES ('76045', '美术', '    美术史；美术理论；绘画艺术；雕塑艺术；美术其他学科', 2);
INSERT INTO `xkfl` VALUES ('76050', '工艺美术', '    工艺美术史；工艺美术理论；环境艺术；工艺美术其他学科', 2);
INSERT INTO `xkfl` VALUES ('76055', '书法', '    书法史；书法理论；书法其他学科', 2);
INSERT INTO `xkfl` VALUES ('76060', '摄影', '    摄影史；摄影理论；摄影其他学科', 2);
INSERT INTO `xkfl` VALUES ('76099', '艺术学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('770', '历史学', '', 1);
INSERT INTO `xkfl` VALUES ('77010', '史学史', '    中国史学史；外国史学史', 2);
INSERT INTO `xkfl` VALUES ('77015', '史学理论', '    马克思主义史学理论；中国传统史学理论；外国史学理论', 2);
INSERT INTO `xkfl` VALUES ('77020', '历史文献学', '', 1);
INSERT INTO `xkfl` VALUES ('77025', '中国通史', '', 1);
INSERT INTO `xkfl` VALUES ('77030', '中国古代史', '    先秦史；秦汉史；魏晋南北朝史；隋唐五代十国史；宋史；辽金史；元史；明史；清史；中国古文字（包括甲骨文、金文等）；中国古代契约文书（包括敦煌学、明清契约文书研究、鱼鳞册研究等）；中国古代史其他学科', 2);
INSERT INTO `xkfl` VALUES ('77035', '中国近代史、现代史', '    鸦片战争史；太平天国史；洋务运动史；戊戌政变史；义和团运动史；晚清政治史；辛亥革命史；五四运动史；新民主主义革命史；抗日战争史；中国共产党史；中国国民党史；中国民主党派史；中华民国史；中华人民共和国史；近代经济史；近代思想文化史；近代社会史；中国近代史、现代史其他学科', 2);
INSERT INTO `xkfl` VALUES ('77040', '世界通史', '    原始社会史；世界古代史；世界中世纪史；世界近代史；世界现代史；国际关系史（归入81040）；世界通史其他学科', 2);
INSERT INTO `xkfl` VALUES ('77045', '亚洲史', '    日本史；印度史；东北亚史；东南亚史；南亚史；中亚史；西亚史；亚洲史其他学科', 2);
INSERT INTO `xkfl` VALUES ('77050', '非洲史', '    北非史；撒哈拉以南非洲史；埃及史；南非联邦史；非洲史其他学科', 2);
INSERT INTO `xkfl` VALUES ('77055', '美洲史', '    美洲古代文明史；美国史；加拿大史；拉丁美洲史；美洲史其他学科', 2);
INSERT INTO `xkfl` VALUES ('77060', '欧洲史', '    俄国史（包括原苏联史）；英国史；法国史；德国史；意大利史；西班牙史；中东欧国家史（原名为“东欧国家史”）；北欧国家史；欧洲史其他学科', 2);
INSERT INTO `xkfl` VALUES ('77065', '澳洲、大洋洲史', '', 1);
INSERT INTO `xkfl` VALUES ('77070', '专门史', '    经济史（归入79027）；政治史；思想史；文化史；科技史；社会史；城市史；中外文化交流史；中外关系史；军事史（归入83015）；历史地理学；方志学；人物研究；谱牒学；专门史其他学科', 2);
INSERT INTO `xkfl` VALUES ('77099', '历史学其他学科', '    简帛学', 2);
INSERT INTO `xkfl` VALUES ('780', '考古学', '', 1);
INSERT INTO `xkfl` VALUES ('78010', '考古理论', '', 1);
INSERT INTO `xkfl` VALUES ('78020', '考古学史', '', 1);
INSERT INTO `xkfl` VALUES ('78030', '考古技术', '    考古发掘；考古修复；考古年代测定；考古技术其他学科', 2);
INSERT INTO `xkfl` VALUES ('78040', '中国考古', '    旧石器时代考古；新石器时代考古；商周考古；秦汉考古；三国两晋、南北朝、隋唐考古；宋元明考古；中国考古其他学科', 2);
INSERT INTO `xkfl` VALUES ('78050', '外国考古', '    亚洲考古；欧洲考古；非洲考古；美洲考古；大洋洲考古；外国考古其他学科', 2);
INSERT INTO `xkfl` VALUES ('78060', '专门考古', '    金石学；铭刻学；甲骨学；古钱学；古陶瓷学；美术考古；宗教考古；水下考古；专门考古其他学科', 2);
INSERT INTO `xkfl` VALUES ('78099', '考古学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('790', '经济学', '', 1);
INSERT INTO `xkfl` VALUES ('79011', '政治经济学', '    资本主义政治经济学；社会主义政治经济学；政治经济学其他学科', 2);
INSERT INTO `xkfl` VALUES ('79013', '宏观经济学', '    西方宏观经济学；社会主义宏观经济学', 2);
INSERT INTO `xkfl` VALUES ('79015', '微观经济学', '    西方微观经济学；社会主义微观经济学', 2);
INSERT INTO `xkfl` VALUES ('79017', '比较经济学', '', 1);
INSERT INTO `xkfl` VALUES ('79019', '经济地理学', '    包括工业地理学、农业地理学等', 2);
INSERT INTO `xkfl` VALUES ('79021', '发展经济学', '', 1);
INSERT INTO `xkfl` VALUES ('79023', '生产力经济学', '', 1);
INSERT INTO `xkfl` VALUES ('79025', '经济思想史', '    中国经济思想史；外国经济思想史；马克思主义经济思想史；经济思想史其他学科', 2);
INSERT INTO `xkfl` VALUES ('79027', '经济史', '    世界经济史；中国经济史；经济史其他学科', 2);
INSERT INTO `xkfl` VALUES ('79029', '世界经济学', '    亦称国际经济学。包括国际经济关系；国际贸易学（包括国际市场营销学、国际商品学）；国际货币经济学；国际金融学；国际投资学；国际收支理论；美国经济；日本经济；德国经济；法国经济；英国经济；俄罗斯经济；欧洲经济；中东欧经济；北美经济；亚太经济；拉美经济；非洲经济；中亚经济；西亚经济；世界经济统计；世界经济学其他学科', 2);
INSERT INTO `xkfl` VALUES ('79031', '国民经济学', '    国民经济计划学；区域经济学；消费经济学；投资经济学；国民经济学其他学科', 2);
INSERT INTO `xkfl` VALUES ('79033', '管理经济学', '', 1);
INSERT INTO `xkfl` VALUES ('79035', '数量经济学', '    数理经济学；经济计量学；数量经济学其他学科', 2);
INSERT INTO `xkfl` VALUES ('79037', '会计学', '    工业会计学；农业会计学；商业会计学；银行会计学；交通运输会计学；会计学其他学科', 2);
INSERT INTO `xkfl` VALUES ('79039', '审计学', '', 1);
INSERT INTO `xkfl` VALUES ('79041', '技术经济学', '    技术经济理论与方法；工程经济学；工业技术经济学；农业技术经济学；能源技术经济学；交通运输技术经济学；建筑技术经济学；物流技术经济学（原名为“商业与物流技术经济学”）；贸易技术经济学；技术进步经济学；资源开发利用技术经济学；环境保护技术经济学；生产力布局技术经济学；消费技术经济学；服务业技术经济学；技术经济学其他学科', 2);
INSERT INTO `xkfl` VALUES ('79043', '生态经济学', '    农业生态经济学（归入79059）；森林生态经济学；草原生态经济学；水域生态经济学；城市生态经济学；区域生态经济学；生态经济学其他学科', 2);
INSERT INTO `xkfl` VALUES ('79045', '劳动经济学', '    就业经济学（包括劳动市场经济学）；教育经济学（归入88031）；健康经济学；劳动经济史；劳动经济学其他学科', 2);
INSERT INTO `xkfl` VALUES ('79047', '城市经济学', '    城市经济管理学（含城市经济理论）；城市土地经济学；市政经济学；房地产经济学（原名为“住宅经济学”）；城郊经济学；城市经济学其他学科', 2);
INSERT INTO `xkfl` VALUES ('79049', '资源经济学', '    海洋资源经济学；生物资源经济学；矿产资源经济学；能源经济学；资源开发与利用；资源经济学其他学科', 2);
INSERT INTO `xkfl` VALUES ('79051', '环境经济学', '', 1);
INSERT INTO `xkfl` VALUES ('79052', '可持续发展经济学', '', 1);
INSERT INTO `xkfl` VALUES ('79053', '物流经济学', '    物流经济理论；物流管理学；物流经济学其他学科', 2);
INSERT INTO `xkfl` VALUES ('79055', '工业经济学', '    工业发展经济学；工业企业经营管理学；工业经济地理；工业部门经济学；工业经济史；工业经济学其他学科', 2);
INSERT INTO `xkfl` VALUES ('79057', '农村经济学', '    农村宏观经济学；农村产业经济学；农村区域经济学；农村经济学其他学科', 2);
INSERT INTO `xkfl` VALUES ('79059', '农业经济学', '    农业生态经济学；农业生产经济学；土地经济学（包括国土经济学、农业资源经济学等）；农业经济史；农业企业经营管理；合作经济；世界农业经济；农业区划（归入41650）；林业经济学（归入22065）；畜牧经济学（归入23020）；水产经济学（归入24055）；种植业经济学；农业经济学其他学科', 2);
INSERT INTO `xkfl` VALUES ('79061', '交通运输经济学', '    城市运输经济学；铁路运输经济学；航空运输经济学；公路运输经济学；水路运输经济学；综合运输经济学；交通运输经济学其他学科', 2);
INSERT INTO `xkfl` VALUES ('79063', '商业经济学', '    商业经济学原理；商业企业管理学；商品流通经济学；市场学；商业心理学；商业社会学；商品学（包括商品包装与技术）；商业物流学；商业经济史；广告学；服务经济学；商业经济学其他学科', 2);
INSERT INTO `xkfl` VALUES ('79065', '价格学', '    价格学原理；部门价格学；广义价格学；成本管理学；价格史；比较价格学；价格学其他学科', 2);
INSERT INTO `xkfl` VALUES ('79067', '旅游经济学', '    旅游经济学理论；旅游经济管理学；旅游企业管理学；旅游事业史；旅游经济学其他学科', 2);
INSERT INTO `xkfl` VALUES ('79069', '信息经济学', '', 1);
INSERT INTO `xkfl` VALUES ('79071', '财政学', '    理论财政学；比较财政学；财政思想史；财政史；财政管理学；税务管理学；财政学其他学科', 2);
INSERT INTO `xkfl` VALUES ('79073', '金融学', '    原名为“货币银行学”。包括货币经济学（原名为“货币理论”）；货币史（含国际货币体系史）；货币思想史（原名为“货币学说史”）；银行学；金融风险管理学；金融资产管理学（原名为“银行经营管理学”）；信贷理论；投资理论（含金融投资学）；金融市场（含货币市场学、资本市场学、国际金融市场学）；公司金融学；房地产金融学；农村金融学；开发性金融学；国际金融学（归入79029）；金融史、银行史（含金融法制史）；金融发展学；金融工程学（又可称为结构金融学）；金融制度学（含金融体制比较）；金融学其他学科（原名为“货币银行学其他学科”）', 2);
INSERT INTO `xkfl` VALUES ('79075', '保险学', '    保险史（含保险思想史）；保险管理；保险学其他学科', 2);
INSERT INTO `xkfl` VALUES ('79077', '国防经济学', '', 1);
INSERT INTO `xkfl` VALUES ('79099', '经济学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('810', '政治学', '', 1);
INSERT INTO `xkfl` VALUES ('81010', '政治学理论', '    比较政治学；政治社会学；政治心理学；地缘政治学；中外政治学说史；政治学方法论；政治学理论其他学科', 2);
INSERT INTO `xkfl` VALUES ('81020', '政治制度', '    政治制度理论；议会制度；行政制度；司法制度；政党制度；选举制度；中国政治制度；外国政治制度；比较政治制度；中国政治制度史；外国政治制度史；政治制度其他学科\n', 2);
INSERT INTO `xkfl` VALUES ('81030', '行政学', '    行政理论；行政组织；人事行政；财务行政；行政决策；行政学其他学科', 2);
INSERT INTO `xkfl` VALUES ('81040', '国际政治学', '    国际关系理论；国际关系史；国际组织；外交学；外交史；国际比较政治；美国政治；英国政治；法国政治；德国政治；日本政治；俄罗斯政治；欧洲政治；中东欧政治；北美政治；亚太政治；拉美政治；非洲政治；中亚政治；西亚政治；国际政治学其他学科', 2);
INSERT INTO `xkfl` VALUES ('81099', '政治学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('820', '法学', '', 1);
INSERT INTO `xkfl` VALUES ('82010', '理论法学', '    法理学；法哲学；比较法学；法社会学；立法学；法律逻辑学；法律教育学；法律心理学（参见19075）；理论法学其他学科', 2);
INSERT INTO `xkfl` VALUES ('82020', '法律史学', '    中国法律思想史；外国法律思想史；法律制度史；法律史学其他学科', 2);
INSERT INTO `xkfl` VALUES ('82030', '部门法学', '    宪法学；行政法学；民法学；经济法学；劳动法学；婚姻法学；民事诉讼法学；行政诉讼法学；刑事诉讼法学；刑法学；刑事侦查学；司法鉴定学；军事法学；卫生法学；环境法学；安全法学；知识产权法学；宗教法学；部门法学其他学科', 2);
INSERT INTO `xkfl` VALUES ('82040', '国际法学', '    国际公法学；国际私法学；国际刑法学；国际经济法学；国际环境法学；国际知识产权法学；国际法学其他学科', 2);
INSERT INTO `xkfl` VALUES ('82099', '法学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('830', '军事学', '', 1);
INSERT INTO `xkfl` VALUES ('83010', '军事理论', '    马、恩、列、斯军事理论；毛泽东军事思想；军事理论其他学科', 2);
INSERT INTO `xkfl` VALUES ('83015', '军事史', '    中国古代战争史；中国近代战争史；中国现代战争史；世界战争史；军事思想史；军事技术史；军事史其他学科', 2);
INSERT INTO `xkfl` VALUES ('83020', '军事心理学', '', 1);
INSERT INTO `xkfl` VALUES ('83025', '战略学', '    战略学理论；核战略学；战略学其他学科', 2);
INSERT INTO `xkfl` VALUES ('83030', '战役学', '    合同战役学；海军战役学；空军战役学；导弹部队战役学；陆军战役学（包括炮兵战役学、装甲兵战役学）；战役学其他学科', 2);
INSERT INTO `xkfl` VALUES ('83035', '战术学', '    合同战术学；陆军战术学（包括炮兵战术学、装甲兵战术学、工程兵战术学、通信兵战术学、防化兵战术学等）；海军战术学；空军战术学；导弹部队战术学；战术学其他学科', 2);
INSERT INTO `xkfl` VALUES ('83040', '军队指挥学', '    作战指挥；军事系统工程（亦称军事运筹学）；军事通信学；军事情报学；密码学（归入41320）；军队指挥学其他学科', 2);
INSERT INTO `xkfl` VALUES ('83045', '军制学', '    军事组织体制；军事装备学；军队管理学；军制学其他学科', 2);
INSERT INTO `xkfl` VALUES ('83050', '军队政治工作学', '    军队思想教育工作学；军队组织工作学；军队政治工作学其他学科', 2);
INSERT INTO `xkfl` VALUES ('83055', '军事后勤学', '    后勤组织指挥；后方专业勤务军事后勤学其他学科', 2);
INSERT INTO `xkfl` VALUES ('83060', '军事地学', '    中国军事地理；世界军事地理；军事地形学；军事测绘学；军事气象学；军事水文学；军事地学其他学科', 2);
INSERT INTO `xkfl` VALUES ('83065', '军事技术', '', 1);
INSERT INTO `xkfl` VALUES ('83099', '军事学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('840', '社会学', '', 1);
INSERT INTO `xkfl` VALUES ('84011', '社会学史', '    中国社会学史；外国社会学史；社会学史其他学科', 2);
INSERT INTO `xkfl` VALUES ('84014', '社会学理论', '    社会学原理；社会思想史；社会学理论其他学科', 2);
INSERT INTO `xkfl` VALUES ('84017', '社会学方法', '    社会调查方法；社会统计学（归入91040）；社会学方法其他学科', 2);
INSERT INTO `xkfl` VALUES ('84021', '实验社会学', '', 1);
INSERT INTO `xkfl` VALUES ('84024', '数理社会学', '', 1);
INSERT INTO `xkfl` VALUES ('84027', '应用社会学', '    职业社会学；工业社会学；劳动社会学（归入84074）；医学社会学；教育社会学（归入88024）；商业社会学（归入79063）；城市社会学；农村社会学；环境社会学；家庭社会学；青年社会学；老年社会学；犯罪社会学；越轨社会学；妇女问题研究；种族问题研究；社会问题研究；社会群体及分层问题研究；社区研究；社会保障研究；社会工作；应用社会学其他学科', 2);
INSERT INTO `xkfl` VALUES ('84031', '比较社会学', '', 1);
INSERT INTO `xkfl` VALUES ('84034', '社会地理学', '', 1);
INSERT INTO `xkfl` VALUES ('84037', '文化社会学', '    艺术社会学；知识社会学；宗教社会学（归入73011）；法社会学（归入82010）；道德社会学；文化社会学其他学科', 2);
INSERT INTO `xkfl` VALUES ('84041', '历史社会学', '', 1);
INSERT INTO `xkfl` VALUES ('84044', '经济社会学', '', 1);
INSERT INTO `xkfl` VALUES ('84047', '军事社会学', '', 1);
INSERT INTO `xkfl` VALUES ('84054', '公共关系学', '', 1);
INSERT INTO `xkfl` VALUES ('84057', '社会人类学', '', 1);
INSERT INTO `xkfl` VALUES ('84061', '组织社会学', '', 1);
INSERT INTO `xkfl` VALUES ('84064', '发展社会学', '', 1);
INSERT INTO `xkfl` VALUES ('84067', '福利社会学', '', 1);
INSERT INTO `xkfl` VALUES ('84071', '人口学', '    人口理论（原名为“人口学原理”）；人口经济学；人口社会学（包括老年人口学、妇女人口学、发展人口学等）；人口学说史；历史人口（原名为“人口史”）；人口统计学（归入91045）；人口地理学；人口生态学；区域人口学；人口系统工程；人口预测学；人口规划学；人口政策（原名为“人口政策学”）；计划生育学；人口学其他学科', 2);
INSERT INTO `xkfl` VALUES ('84074', '劳动科学', '    劳动经济学（归入79045）；劳动管理学；劳动统计学；劳动社会学；劳动心理学；社会保险学；职业安全卫生科学技术；劳动科学其他学科', 2);
INSERT INTO `xkfl` VALUES ('84099', '社会学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('850', '民族学与文化学', '    原名为“民族学”', 2);
INSERT INTO `xkfl` VALUES ('85010', '民族问题理论', '民族问题与民族政策；民族关系；民族经济；民族教育；民族法制；民族心理学；少数民族政治制度；民族问题理论其他学科', 2);
INSERT INTO `xkfl` VALUES ('85020', '民族史学', '    民族史；民族关系史；民族史学其他学科', 2);
INSERT INTO `xkfl` VALUES ('85030', '蒙古学', '', 1);
INSERT INTO `xkfl` VALUES ('85040', '藏学', '', 1);
INSERT INTO `xkfl` VALUES ('85042', '新疆民族研究', '    含维吾尔学', 2);
INSERT INTO `xkfl` VALUES ('85050', '文化人类学与民俗学', '', 1);
INSERT INTO `xkfl` VALUES ('85060', '世界民族研究', '', 1);
INSERT INTO `xkfl` VALUES ('85070', '文化学', '    文化发展史（归入77070）；文化地理学；文化心理学；文化遗产学；文化学其他学科', 2);
INSERT INTO `xkfl` VALUES ('85099', '民族和文化学其他学科', '    原名为“民族学其他学科”', 2);
INSERT INTO `xkfl` VALUES ('860', '新闻学与传播学', '', 1);
INSERT INTO `xkfl` VALUES ('86010', '新闻理论', '    新闻学；马克思主义新闻理论；西方新闻理论；新闻法；舆论学；新闻伦理学；新闻社会学；新闻心理学；比较新闻学；新闻理论其他学科', 2);
INSERT INTO `xkfl` VALUES ('86020', '新闻史', '    中国新闻事业史；世界新闻事业史；新闻思想史；传播技术史；新闻史其他学科', 2);
INSERT INTO `xkfl` VALUES ('86030', '新闻业务', '    新闻采访；新闻写作；新闻编辑；新闻评论；新闻摄影；新闻业务其他学科', 2);
INSERT INTO `xkfl` VALUES ('86040', '新闻事业经营管理', '    传媒经济；传媒管理；新闻事业经营管理其他学科', 2);
INSERT INTO `xkfl` VALUES ('86050', '广播与电视', '    广播电视史；广播电视理论；广播电视业务（包括广播电视采访、写作、编辑等）；广播电视播音；广播与电视其他学科', 2);
INSERT INTO `xkfl` VALUES ('86060', '传播学', '    传播史；传播理论；传播技术；组织传播学；传播与社会发展；人际传播；国际传播；跨文化传播；网络传播；新媒介传播；传播学其他学科', 2);
INSERT INTO `xkfl` VALUES ('86099', '新闻学与传播学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('870', '图书馆、情报与文献学', '', 1);
INSERT INTO `xkfl` VALUES ('87010', '图书馆学', '    图书馆学史（包括图书馆事业史）；比较图书馆学；图书馆社会学；图书馆管理学（包括图书馆统计学、图书馆经济学等）；图书馆建筑学；图书采访学；图书分类学；图书编目学（包括目录组织法、文献著录方法、计算机编目等）；目录学（包括普通目录学、专科目录、目录学史等）；图书馆服务学（包括读者心理学、读者咨询学等）；图书馆学其他学科', 2);
INSERT INTO `xkfl` VALUES ('87020', '文献学', '    文献类型学；文献计量学；文献检索学；图书史；版本学；校勘学；文献学其他学科', 2);
INSERT INTO `xkfl` VALUES ('87030', '情报学', '    情报学史（包括情报事业史）；情报社会学；比较情报学；情报计量学；情报心理学；情报管理学；情报服务学（包括情报用户研究等）；情报经济学；情报检索学（包括情报检索语言等）；情报系统理论（包括情报系统分析与设计、情报网络建设理论等）；情报技术；科学技术情报学；社会科学情报学；情报学其他学科', 2);
INSERT INTO `xkfl` VALUES ('87040', '档案学', '    档案学史（包括档案事业史）；档案管理学；档案保护技术学；档案编纂学；档案学其他学科', 2);
INSERT INTO `xkfl` VALUES ('87050', '博物馆学', '', 1);
INSERT INTO `xkfl` VALUES ('87099', '图书馆、情报与文献学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('880', '教育学', '', 1);
INSERT INTO `xkfl` VALUES ('88011', '教育史', '    包括中国教育史、外国教育史等', 2);
INSERT INTO `xkfl` VALUES ('88014', '教育学原理', '', 1);
INSERT INTO `xkfl` VALUES ('88017', '教学论', '', 1);
INSERT INTO `xkfl` VALUES ('88021', '德育原理', '', 1);
INSERT INTO `xkfl` VALUES ('88024', '教育社会学', '', 1);
INSERT INTO `xkfl` VALUES ('88031', '教育经济学', '', 1);
INSERT INTO `xkfl` VALUES ('88034', '教育管理学', '', 1);
INSERT INTO `xkfl` VALUES ('88037', '比较教育学', '', 1);
INSERT INTO `xkfl` VALUES ('88041', '教育技术学', '', 1);
INSERT INTO `xkfl` VALUES ('88044', '军事教育学', '', 1);
INSERT INTO `xkfl` VALUES ('88047', '学前教育学', '', 1);
INSERT INTO `xkfl` VALUES ('88051', '普通教育学', '    包括初等教育学、中等教育学等', 2);
INSERT INTO `xkfl` VALUES ('88054', '高等教育学', '', 1);
INSERT INTO `xkfl` VALUES ('88057', '成人教育学', '', 1);
INSERT INTO `xkfl` VALUES ('88061', '职业技术教育学', '', 1);
INSERT INTO `xkfl` VALUES ('88064', '特殊教育学', '', 1);
INSERT INTO `xkfl` VALUES ('88099', '教育学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('890', '体育科学', '', 1);
INSERT INTO `xkfl` VALUES ('89010', '体育史', '', 1);
INSERT INTO `xkfl` VALUES ('89015', '体育理论', '', 1);
INSERT INTO `xkfl` VALUES ('89020', '运动生物力学', '    包括运动解剖学等', 2);
INSERT INTO `xkfl` VALUES ('89025', '运动生理学', '', 1);
INSERT INTO `xkfl` VALUES ('89030', '运动心理学', '', 1);
INSERT INTO `xkfl` VALUES ('89035', '运动生物化学', '', 1);
INSERT INTO `xkfl` VALUES ('89040', '体育保健学', '', 1);
INSERT INTO `xkfl` VALUES ('89045', '运动训练学', '', 1);
INSERT INTO `xkfl` VALUES ('89050', '体育教育学', '', 1);
INSERT INTO `xkfl` VALUES ('89055', '武术理论与方法', '', 1);
INSERT INTO `xkfl` VALUES ('89060', '体育管理学', '', 1);
INSERT INTO `xkfl` VALUES ('89065', '体育经济学', '', 1);
INSERT INTO `xkfl` VALUES ('89099', '体育科学其他学科', '', 1);
INSERT INTO `xkfl` VALUES ('910', '统计学', '', 1);
INSERT INTO `xkfl` VALUES ('91010', '统计学史', '', 1);
INSERT INTO `xkfl` VALUES ('91030', '经济统计学', '    国民经济核算（原名称为“统计核算理论”）；经济统计分析；经济计量学（归入79035）；经济统计学其他学科', 2);
INSERT INTO `xkfl` VALUES ('91035', '科学技术统计学', '', 1);
INSERT INTO `xkfl` VALUES ('91040', '社会统计学', '    教育统计学；文化与体育统计学；司法统计学；劳动统计学（归入84074）；社会保障统计学（原名为“社会福利与社会保障统计学”）；生活质量统计学；社会统计学其他学科', 2);
INSERT INTO `xkfl` VALUES ('91045', '人口统计学', '', 1);
INSERT INTO `xkfl` VALUES ('91050', '环境与生态统计学', '    资源统计学（原名为“自然资源统计学”）；环境统计学；生态统计学（原名为“生态平衡统计学”）；环境与生态统计学其他学科', 2);
INSERT INTO `xkfl` VALUES ('91060', '生物与医学统计学', '    生物统计学；医学统计学（归入31057）；卫生统计学（归入33072）；生物与医学统计学其他学科', 2);
INSERT INTO `xkfl` VALUES ('91099', '统计学其他学科', '', 1);

SET FOREIGN_KEY_CHECKS = 1;
