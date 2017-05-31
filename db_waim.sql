/*
Navicat MySQL Data Transfer

Source Server         : localhost_3323
Source Server Version : 50162
Source Host           : localhost:3323
Source Database       : db_waim

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2016-05-08 01:45:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL,
  `userName` longtext,
  `userPw` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'a', 'a');

-- ----------------------------
-- Table structure for `t_catelog`
-- ----------------------------
DROP TABLE IF EXISTS `t_catelog`;
CREATE TABLE `t_catelog` (
  `catelog_id` int(11) NOT NULL,
  `catelog_name` varchar(50) DEFAULT NULL,
  `catelog_del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`catelog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_catelog
-- ----------------------------
INSERT INTO `t_catelog` VALUES ('1', '凉拌菜', 'no');
INSERT INTO `t_catelog` VALUES ('2', '热炒菜', 'no');
INSERT INTO `t_catelog` VALUES ('3', '炖汤类', 'no');
INSERT INTO `t_catelog` VALUES ('4', '甜点类', 'no');

-- ----------------------------
-- Table structure for `t_dianpu`
-- ----------------------------
DROP TABLE IF EXISTS `t_dianpu`;
CREATE TABLE `t_dianpu` (
  `id` int(11) NOT NULL DEFAULT '0',
  `loginname` varchar(255) DEFAULT NULL,
  `loginpw` varchar(255) DEFAULT NULL,
  `mingcheng` varchar(500) DEFAULT NULL,
  `zhuying` varchar(500) DEFAULT NULL,
  `lianxiren` varchar(255) DEFAULT NULL,
  `dianhua` varchar(255) DEFAULT NULL,
  `tai` varchar(255) DEFAULT NULL,
  `del` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dianpu
-- ----------------------------
INSERT INTO `t_dianpu` VALUES ('1', 'wanggang', '000000', '王刚小吃', '东北菜', '王刚', '13555555555', '已审核', 'no');
INSERT INTO `t_dianpu` VALUES ('2', 'liuqiang', '000000', '刘强餐厅', '四川菜', '刘强', '13999999999', '已审核', 'no');

-- ----------------------------
-- Table structure for `t_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `goods_id` int(11) NOT NULL,
  `dianpu_id` int(11) DEFAULT NULL,
  `goods_name` varchar(200) DEFAULT NULL,
  `goods_miaoshu` varchar(2000) DEFAULT NULL,
  `goods_pic` varchar(50) DEFAULT NULL,
  `goods_shichangjia` int(11) DEFAULT NULL,
  `goods_tejia` int(11) DEFAULT NULL,
  `goods_isnottejia` varchar(50) DEFAULT NULL,
  `goods_catelog_id` int(11) DEFAULT NULL,
  `goods_Del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('1', '1', '土豆烧牛肉', '<p>土豆烧牛肉是中国东北地区和东北亚寒温带地区人民常用菜。可以算做是民间菜肴， 这里主要以吉林地区做法为主进行介绍。主料选择土豆和牛肉，采用红烧的技法，色泽红润，口感咸香，秋冬两季食用最佳。<br />\r\n&nbsp;</p>', '/upload/1416986487701.jpg', '30', '30', 'no', '1', 'no');
INSERT INTO `t_goods` VALUES ('2', '1', '葱爆羊肉片', '<p>羊肉片炒熟加黄酒煸干些水分，放孜然粉，椒盐和少量生抽。羊肉片容易坨一块，用筷子和锅铲协作扒松羊肉片使肉均匀受热。不会做羊肉，觉得烤馕一定要配羊肉应景。胡乱炒出来味道还可以，这道菜最大好处就是省事，适合懒人做。</p>', '/upload/1416986582211.jpg', '22', '22', 'no', '2', 'no');
INSERT INTO `t_goods` VALUES ('3', '1', '杏鲍菇炒蒜苔', '<p>杏鲍菇外形醋似猪蹄，口感也非常肉实。不管怎样的炒制方法，味道都非常鲜美。切块、切片更有吃肉的感觉,蒜苔随自己喜好，炒至清脆或焦香都可。 杏鲍菇易出水，不需久煮，也不需另行加水<br />\r\n&nbsp;</p>', '/upload/1416986667703.jpg', '21', '21', 'no', '1', 'no');
INSERT INTO `t_goods` VALUES ('4', '1', '杏仁玉米虾饼', '<p>香菇可补气、润肺也活血，与红枣一样有补身益气的功效，配合含有丰富蛋白质的鸡共吃，能增强人体免疫的功效。鸡块用上荷叶包裹蒸煮，可吸收荷叶的清幽香气，不但能增香味，而且还可解腻。</p>', '/upload/1416986718437.jpg', '23', '23', 'no', '4', 'no');
INSERT INTO `t_goods` VALUES ('5', '2', '豆皮炒肉片', '<p>今天和大家分享下我的私家菜肴：豆皮炒肉片，做法非常简单，只是简单的6步就可以完成这道菜肴，胃口比较清淡，但是很清香，大家不妨试试这道菜吧，不会让你后悔的。</p>', '/upload/1416986764763.jpg', '23', '23', 'no', '3', 'no');
INSERT INTO `t_goods` VALUES ('6', '2', '香菇盹小笨鸡', '鸡腿肉川烫后冲水去杂质血水、红枣洗净划一刀(较容易释放味道)、老姜切片、香菇泡水软化鸡腿肉川烫后冲水去杂质血水、红枣洗净划一刀(较容易释放味道)、老姜切片、香菇泡水软化电锅外锅放三杯水，待电锅外锅的水沸腾后将大碗放进电锅里，锅盖留一小小缝让水蒸气不要直接滴进汤里，然后就可以去洗澡卸妆等开饭了^^<br />', '/upload/1416986863829.jpg', '32', '32', 'no', '2', 'no');

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `order_id` int(11) NOT NULL,
  `order_bianhao` varchar(200) DEFAULT NULL,
  `order_date` varchar(50) DEFAULT NULL,
  `order_songhuodizhi` varchar(50) DEFAULT NULL,
  `order_fukuangfangshi` varchar(50) DEFAULT NULL,
  `order_jine` int(11) DEFAULT NULL,
  `order_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1', '20160508014448', '2016-05-08 01:44:48', 'xxxxxxxxxxxx', '货到付款', '45', '1');

-- ----------------------------
-- Table structure for `t_orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `t_orderitem`;
CREATE TABLE `t_orderitem` (
  `orderItem_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `goods_quantity` int(11) DEFAULT NULL,
  `zt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orderItem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_orderitem
-- ----------------------------
INSERT INTO `t_orderitem` VALUES ('1', '1', '2', '1', '已受理');
INSERT INTO `t_orderitem` VALUES ('2', '1', '4', '1', '已受理');

-- ----------------------------
-- Table structure for `t_pingjia`
-- ----------------------------
DROP TABLE IF EXISTS `t_pingjia`;
CREATE TABLE `t_pingjia` (
  `id` int(11) NOT NULL DEFAULT '0',
  `neirong` varchar(255) DEFAULT NULL,
  `goodsId` int(255) DEFAULT NULL,
  `shijian` varchar(500) DEFAULT NULL,
  `userId` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pingjia
-- ----------------------------
INSERT INTO `t_pingjia` VALUES ('1', 'dddddddddddddd', '3', '2016-05-07 22:23', '1');
INSERT INTO `t_pingjia` VALUES ('2', '很好的菜', '4', '2016-05-07 22:23', '1');
INSERT INTO `t_pingjia` VALUES ('3', '11111111', '4', '2016-05-07 22:24', '1');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_pw` varchar(50) DEFAULT NULL,
  `user_realname` varchar(50) DEFAULT NULL,
  `user_address` varchar(50) DEFAULT NULL,
  `user_tel` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'liusan', '000000', '刘三', '北京路', '13444444444', 'liusan@163.com', 'no');
