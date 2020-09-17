/*
 Navicat Premium Data Transfer

 Source Server         : localhost3306
 Source Server Type    : MySQL
 Source Server Version : 50540
 Source Host           : localhost:3306
 Source Schema         : ssm_onlineshop

 Target Server Type    : MySQL
 Target Server Version : 50540
 File Encoding         : 65001

 Date: 25/04/2020 21:57:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `cname` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '食品');
INSERT INTO `category` VALUES (2, '服装');
INSERT INTO `category` VALUES (3, '数码');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `gid` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `gName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名',
  `picNumber` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品图片编号',
  `cid` int(11) NOT NULL COMMENT '分类id',
  `gIntroduction` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品介绍',
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品价格',
  PRIMARY KEY (`gid`) USING BTREE,
  INDEX `FK_cid`(`cid`) USING BTREE,
  CONSTRAINT `FK_cid` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '辣条', 'static/images/medium/latiao_370_451.jpg', 1, '中国辣条 五星品质 油麻爽口', '1.9');
INSERT INTO `goods` VALUES (2, '大米', 'static/images/medium/dami.jpg', 1, '江西大米 优质好米', '99');
INSERT INTO `goods` VALUES (3, '大米手机4', 'static/images/medium/mi4!160x110.jpg', 3, '雷布斯觉得好用', '1999');
INSERT INTO `goods` VALUES (4, '大米电视2/2S 全系列', 'static/images/medium/T1riKjB7VT1RXrhCrK.jpg', 3, '40/48/49/55英寸 现货购买', '1999');
INSERT INTO `goods` VALUES (5, '大米平板', 'static/images/medium/T19AbjBCDT1RXrhCrK.jpg', 3, '全球首款 NVIDIA Tegra K1 平板', '100');
INSERT INTO `goods` VALUES (6, '大米盒子增强版 1G', 'static/images/medium/T1meZjBCAT1RXrhCrK.jpg', 3, '首款4K超高清网络机顶盒', '10');
INSERT INTO `goods` VALUES (7, '全新大米路由器', 'static/images/medium/T1tsEgB7DT1RXrhCrK.jpg', 3, '顶配路由器，企业级性能', '40');
INSERT INTO `goods` VALUES (8, '大米头戴式耳机', 'static/images/medium/T10TJjB5hT1RXrhCrK.jpg', 3, '媲美主流千元级头戴耳机', '40');
INSERT INTO `goods` VALUES (9, '大米插线板', 'static/images/medium/T1hLhjB_AT1RXrhCrK.jpg', 3, '3重安全保护，插线板中的艺术品', '40');
INSERT INTO `goods` VALUES (10, '大米路由器mini', 'static/images/medium/T1KDAjBCAT1RXrhCrK.jpg', 3, '主流双频AC智能路由器', '40');
INSERT INTO `goods` VALUES (11, '大米移动电源10000mAh', 'static/images/medium/T16eEjBKhT1RXrhCrK.jpg', 3, '高密度进口电芯，仅名片大小', '40');
INSERT INTO `goods` VALUES (12, '大米蓝牙耳机', 'static/images/medium/T1JnWjBCCT1RXrhCrK.jpg', 3, '2015德国IF大奖，高清通话音质', '40');
INSERT INTO `goods` VALUES (13, '大米活塞耳机', 'static/images/medium/T1BsbjBvLT1RXrhCrK.jpg', 3, '2015红点奖，独家音质优化专利', '100');
INSERT INTO `goods` VALUES (14, '江西 食盐', 'static/images/medium/yan.jpg', 1, '吃了 这种盐，干活不累', '4.9');
INSERT INTO `goods` VALUES (15, '江西 枸杞', 'static/images/medium/gouqi.jpg', 1, '增强 免疫力', '29');
INSERT INTO `goods` VALUES (16, '大白兔 奶糖', 'static/images/medium/dabaitu.jpg', 1, '让敲代码 ，变的甜蜜', '19');
INSERT INTO `goods` VALUES (17, '江西 柑橘', 'static/images/medium/juzi.jpg', 1, '一流品质， 回味无穷', '29');
INSERT INTO `goods` VALUES (18, '女 牛仔衣', 'static/images/medium/yifu1_160_110.jpg', 2, '上街 压马路，最靓的女', '99');
INSERT INTO `goods` VALUES (19, '男 夹克', 'static/images/medium/yifu2_160_110.jpg', 2, '回头率有效提升，绅士说的就是你', '99');
INSERT INTO `goods` VALUES (20, '大米note', 'static/images/small/minote.jpg', 3, '一个更比两个强', '1999');
INSERT INTO `goods` VALUES (21, '红米2', 'static/images/small/hongmi2.jpg', 3, '更强的老年机', '999');
INSERT INTO `goods` VALUES (22, '各类水果', 'static/images/medium/suiguo.jpg', 1, '多种种类，打包回家', '50');

-- ----------------------------
-- Table structure for goods_index
-- ----------------------------
DROP TABLE IF EXISTS `goods_index`;
CREATE TABLE `goods_index`  (
  `gid` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `gName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名',
  `picNumber` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品图片编号',
  `cid` int(11) NOT NULL COMMENT '分类id',
  `gIntroduction` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品介绍',
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品价格',
  PRIMARY KEY (`gid`) USING BTREE,
  INDEX `FK_cid`(`cid`) USING BTREE,
  CONSTRAINT `goods_index_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods_index
-- ----------------------------
INSERT INTO `goods_index` VALUES (1, '辣条', 'static/images/medium/latiao_370_451.jpg', 1, '中国辣条 五星品质 油麻爽口', '1.9');
INSERT INTO `goods_index` VALUES (2, '大米', 'static/images/medium/dami.jpg', 1, '江西大米 优质好米', '99');
INSERT INTO `goods_index` VALUES (3, '大米手机4', 'static/images/medium/mi4!160x110.jpg', 3, '雷布斯觉得好用', '1999');
INSERT INTO `goods_index` VALUES (4, '大米电视2/2S 全系列', 'static/images/medium/T1riKjB7VT1RXrhCrK.jpg', 3, '40/48/49/55英寸 现货购买', '1999');
INSERT INTO `goods_index` VALUES (5, '大米平板', 'static/images/medium/T19AbjBCDT1RXrhCrK.jpg', 3, '全球首款 NVIDIA Tegra K1 平板', '100');
INSERT INTO `goods_index` VALUES (6, '大米盒子增强版 1G', 'static/images/medium/T1meZjBCAT1RXrhCrK.jpg', 3, '首款4K超高清网络机顶盒', '10');
INSERT INTO `goods_index` VALUES (7, '全新大米路由器', 'static/images/medium/T1tsEgB7DT1RXrhCrK.jpg', 3, '顶配路由器，企业级性能', '40');
INSERT INTO `goods_index` VALUES (8, '大米头戴式耳机', 'static/images/medium/T10TJjB5hT1RXrhCrK.jpg', 3, '媲美主流千元级头戴耳机', '40');
INSERT INTO `goods_index` VALUES (9, '大米插线板', 'static/images/medium/T1hLhjB_AT1RXrhCrK.jpg', 3, '3重安全保护，插线板中的艺术品', '40');
INSERT INTO `goods_index` VALUES (10, '大米路由器mini', 'static/images/medium/T1KDAjBCAT1RXrhCrK.jpg', 3, '主流双频AC智能路由器', '40');
INSERT INTO `goods_index` VALUES (11, '大米移动电源10000mAh', 'static/images/medium/T16eEjBKhT1RXrhCrK.jpg', 3, '高密度进口电芯，仅名片大小', '40');
INSERT INTO `goods_index` VALUES (12, '大米蓝牙耳机', 'static/images/medium/T1JnWjBCCT1RXrhCrK.jpg', 3, '2015德国IF大奖，高清通话音质', '40');
INSERT INTO `goods_index` VALUES (13, '大米活塞耳机', 'static/images/medium/T1BsbjBvLT1RXrhCrK.jpg', 3, '2015红点奖，独家音质优化专利', '100');
INSERT INTO `goods_index` VALUES (14, '江西 食盐', 'static/images/medium/yan.jpg', 1, '吃了 这种盐，干活不累', '4.9');
INSERT INTO `goods_index` VALUES (15, '江西 枸杞', 'static/images/medium/gouqi.jpg', 1, '增强 免疫力', '29');
INSERT INTO `goods_index` VALUES (16, '大白兔 奶糖', 'static/images/medium/dabaitu.jpg', 1, '让敲代码 ，变的甜蜜', '19');
INSERT INTO `goods_index` VALUES (17, '江西 柑橘', 'static/images/medium/juzi.jpg', 1, '一流品质， 回味无穷', '29');
INSERT INTO `goods_index` VALUES (18, '女 牛仔衣', 'static/images/medium/yifu1_160_110.jpg', 2, '上街 压马路，最靓的女', '99');
INSERT INTO `goods_index` VALUES (19, '男 夹克', 'static/images/medium/yifu2_160_110.jpg', 2, '回头率有效提升，绅士说的就是你', '99');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `orderStatus` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '支付状态',
  `count` int(11) NOT NULL COMMENT '商品数目',
  `gid` int(11) NOT NULL COMMENT '商品id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `payDate` datetime NOT NULL COMMENT '支付时间',
  PRIMARY KEY (`oid`) USING BTREE,
  INDEX `order_gid`(`gid`) USING BTREE,
  INDEX `order_uid`(`uid`) USING BTREE,
  CONSTRAINT `order_gid` FOREIGN KEY (`gid`) REFERENCES `goods` (`gid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `order_uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (23, '已支付', 1, 1, 2, '2020-04-23 22:19:39');
INSERT INTO `order` VALUES (48, '已支付', 2, 19, 1, '2020-04-25 19:37:15');
INSERT INTO `order` VALUES (49, '已支付', 2, 1, 1, '2020-04-25 19:59:15');

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `gid` int(11) NOT NULL COMMENT '商品id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`sid`) USING BTREE,
  INDEX `FK_sid_gid`(`gid`) USING BTREE,
  INDEX `FK_sid_uid`(`uid`) USING BTREE,
  CONSTRAINT `FK_sid_gid` FOREIGN KEY (`gid`) REFERENCES `goods` (`gid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_sid_uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES (33, 4, 1);
INSERT INTO `shoppingcart` VALUES (34, 4, 1);
INSERT INTO `shoppingcart` VALUES (35, 19, 1);
INSERT INTO `shoppingcart` VALUES (36, 19, 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shoppingCartCount` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'luo', '123', 6);
INSERT INTO `user` VALUES (2, '1', '1', NULL);
INSERT INTO `user` VALUES (10, '哈哈', '123', NULL);
INSERT INTO `user` VALUES (11, '123', '123', NULL);

SET FOREIGN_KEY_CHECKS = 1;
