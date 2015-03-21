/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2014-10-10 21:20:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shop_banner
-- ----------------------------
DROP TABLE IF EXISTS `shop_banner`;
CREATE TABLE `shop_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `alt` varchar(50) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `html` longtext,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_banner
-- ----------------------------
INSERT INTO `shop_banner` VALUES ('1', '1', '1.1', '/uploads/product/541567d409064.jpg', null, '0');
INSERT INTO `shop_banner` VALUES ('2', '2-测试修改', '2.2', '/uploads/product/541567d68ce55.jpg', '', '0');
INSERT INTO `shop_banner` VALUES ('3', '3', '3.3', '/uploads/product/541567d8c41a4.jpg', null, '0');
INSERT INTO `shop_banner` VALUES ('4', '4', '4.4', '/uploads/product/541567dbbc936.jpg', null, '0');
INSERT INTO `shop_banner` VALUES ('5', '4', '4.4', '/uploads/product/541567dbbc936.jpg', null, '0');
INSERT INTO `shop_banner` VALUES ('6', '1', '1.1', '/uploads/product/541567d409064.jpg', null, '0');
INSERT INTO `shop_banner` VALUES ('7', '2', '2.2', '/uploads/product/541567d68ce55.jpg', null, '0');
INSERT INTO `shop_banner` VALUES ('8', '3', '3.3', '/uploads/product/541567d8c41a4.jpg', null, '0');
INSERT INTO `shop_banner` VALUES ('9', '4', '4.4', '/uploads/product/541567dbbc936.jpg', null, '0');
INSERT INTO `shop_banner` VALUES ('10', '4', '4.4', '/uploads/product/541567dbbc936.jpg', null, '0');
INSERT INTO `shop_banner` VALUES ('11', '4', '4.4', '/uploads/product/541567dbbc936.jpg', null, '0');
INSERT INTO `shop_banner` VALUES ('12', '测试后台添加数据', '测试后台添加数据', '\\uploads\\banner\\5424def4b5c78.jpg', '<p>		&nbsp;		</p><p>		&nbsp;		</p><p>		&nbsp;		</p><p>		&nbsp;		</p><p>12312312312</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p>', '0');
INSERT INTO `shop_banner` VALUES ('13', '11', '111', '\\uploads\\banner\\5424cfbc926a9.jpg', '', '0');
INSERT INTO `shop_banner` VALUES ('14', '333', '333', '/uploads/banner/5422732398226.jpg', '', '0');
INSERT INTO `shop_banner` VALUES ('15', '测试1', '测试1', '/uploads/banner/54253bd9d7c3b.jpg', '<p>测试1</p>', '1');
INSERT INTO `shop_banner` VALUES ('16', '测试2', '测试2', '/uploads/banner/54253c038e5f4.jpg', '<p>测试2</p>', '0');
INSERT INTO `shop_banner` VALUES ('17', '两个下雪的夜', '两个下雪的夜', '/uploads/banner/54281a72e0f1f.jpg', '<p><br/></p><p>钢琴手的指尖</p><p>弹抒情的音乐</p><p>又一年</p><p>拥挤的咖啡店</p><p>落地窗的外面</p><p>下起雪</p><p>地球在转着圈</p><p>你那边是几点</p><p>隔好远</p><p>你发来的邮件</p><p>有温暖的字眼</p><p>读几遍都不厌</p><p>我记得那场大雪</p><p>在圣诞的夜</p><p>下在我爱上你的瞬间</p><p>两公里送我的街</p><p>到我家门前</p><p>两行脚印一深一浅</p><p>我怀念那场大雪</p><p>当事过境迁</p><p>回忆象现在一样新鲜</p><p>我靠在你的右肩</p><p>曾笑得多甜</p><p>幸福会让人晕眩</p><p>过完这个冬天</p><p>要飞去你身边</p><p>我许愿</p><p>这漫长的分别</p><p>爱却有增无减</p><p>我想念你的脸</p><p>我记得那场大雪</p><p>在圣诞的夜</p><p>下在我爱上你的瞬间</p><p>两公里送我的街</p><p>到我家门前</p><p>两行脚印一深一浅</p><p>我怀念那场大雪</p><p>当事过境迁</p><p>回忆象现在一样新鲜</p><p>我靠在你的右肩</p><p>曾笑得多甜</p><p>幸福会让人晕眩</p><p>现在又下起大雪</p><p>在圣诞的夜</p><p>我一个人在写圣诞卡片</p><p>不需要太多语言</p><p>就以吻封缄</p><p>我相信你会了解</p><p>现在又下起大雪</p><p>象昔日重现</p><p>我迫不及待等下次再见</p><p>我和你相反季节</p><p>隔半个世界</p><p>爱的是这份坚决</p><p><br/></p>', '1');

-- ----------------------------
-- Table structure for shop_children
-- ----------------------------
DROP TABLE IF EXISTS `shop_children`;
CREATE TABLE `shop_children` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '子菜单名称',
  `module` varchar(30) DEFAULT NULL COMMENT '模块',
  `method` varchar(30) DEFAULT NULL COMMENT '方法',
  `pid` int(11) DEFAULT NULL COMMENT '父id',
  `editor` varchar(30) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_children
-- ----------------------------
INSERT INTO `shop_children` VALUES ('1', '网页标题', 'System', 'modifyTitle', '1', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('2', '欢迎标题', 'System', 'modifyHeaderTitle', '1', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('3', '公司简介', 'System', 'explain', '1', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('4', '租赁中心', 'System', 'lease', '1', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('5', '联系我们', 'System', 'callme', '1', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('6', '售后服务', 'System', 'service', '1', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('7', '关于我们', 'System', 'about', '1', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('8', '地理位置', 'System', 'map', '1', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('9', '缓存管理', 'System', 'modifyRuntime', '1', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('10', '添加管理员', 'Manager', 'addManager', '2', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('11', '编辑管理员', 'Manager', 'modifyManager', '2', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('12', '添加角色', 'Role', 'addRole', '3', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('13', '编辑角色', 'Role', 'modifyRole', '3', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('14', '添加产品类型', 'Product', 'addProductType', '4', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('15', '编辑产品类型', 'Product', 'modifyProductType', '4', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('16', '添加新的产品', 'Product', 'addProduct', '4', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('17', '编辑已有产品', 'Product', 'modifyProduct', '4', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('18', '添加公告', 'Banner', 'addBanner', '5', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('19', '编辑公告', 'Banner', 'modifyBanner', '5', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('20', '添加成功案例', 'Trade', 'addTrade', '6', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('21', '编辑成功案例', 'Trade', 'modifyTrade', '6', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('22', '添加行业资讯', 'News', 'addNews', '7', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('23', '编辑行业资讯', 'News', 'modifyNews', '7', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('24', '上传视频', 'Video', 'addVideo', '8', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('25', '视频编辑', 'Video', 'modifyVideo', '8', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('26', '上传驱动', 'Drivers', 'addDrivers', '9', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('27', '编辑驱动', 'Drivers', 'modifyDrivers', '9', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_children` VALUES ('28', '留言管理', 'Message', 'modifyMessage', '10', 'admin', '1992-05-13', '00:00:00', '1');

-- ----------------------------
-- Table structure for shop_driver
-- ----------------------------
DROP TABLE IF EXISTS `shop_driver`;
CREATE TABLE `shop_driver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `explain` varchar(200) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_driver
-- ----------------------------
INSERT INTO `shop_driver` VALUES ('1', '电阻触摸屏驱动', '111', '/uploads/driver/5425399fe3d34.zip', '0');
INSERT INTO `shop_driver` VALUES ('2', '红外触摸屏驱动', '111', '/uploads/driver/542539c2ad229.zip', '0');
INSERT INTO `shop_driver` VALUES ('3', '电阻触摸屏驱动', '111', '/uploads/driver/542539cf1f767.zip', '0');
INSERT INTO `shop_driver` VALUES ('4', '红外触摸屏驱动', '111', '/uploads/driver/542539daa71f4.zip', '0');
INSERT INTO `shop_driver` VALUES ('6', '1', '	                    	\r\n\r\n	    1                ', '/uploads/driver/54225e92aece6.zip', '0');
INSERT INTO `shop_driver` VALUES ('7', '测试修改', '2              	\r\n\r\n	                    	                    	                    ', '/uploads/driver/54225ed295935.zip', '0');
INSERT INTO `shop_driver` VALUES ('8', '444', '	                    	\r\n4\r\n	                    ', '/uploads/driver/5425366519d98.zip', '0');
INSERT INTO `shop_driver` VALUES ('9', '123', '	                    	\r\n\r\n	2323                    ', '/uploads/driver/5425368e02bd4.zip', '0');
INSERT INTO `shop_driver` VALUES ('10', '测试', '测试	                    	\r\n\r\n	                    ', '/uploads/driver/54253b0493d85.zip', '0');
INSERT INTO `shop_driver` VALUES ('11', '测试1', '测试1	                    	\r\n\r\n	                    ', '/uploads/driver/54253d1ab628c.zip', '1');
INSERT INTO `shop_driver` VALUES ('12', '测试2', '测试2	                    	\r\n\r\n	                    ', '/uploads/driver/54253d3079ea8.zip', '0');

-- ----------------------------
-- Table structure for shop_history
-- ----------------------------
DROP TABLE IF EXISTS `shop_history`;
CREATE TABLE `shop_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(30) DEFAULT NULL,
  `beginip` varchar(30) DEFAULT NULL,
  `endip` varchar(30) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_history
-- ----------------------------
INSERT INTO `shop_history` VALUES ('87', '192.168.1.105', '192.168.0.0', '192.168.255.255', '局域网', '对方和您在同一内部网', '2014-10-10', '12:46:06', '0', '1');
INSERT INTO `shop_history` VALUES ('88', '192.168.1.105', '192.168.0.0', '192.168.255.255', '局域网', '对方和您在同一内部网', '2014-10-10', '15:11:24', '0', '1');
INSERT INTO `shop_history` VALUES ('89', '175.152.210.159', '175.152.77.36', '175.152.255.255', '四川省成都市', '联通', '2014-10-10', '19:24:35', '0', '1');
INSERT INTO `shop_history` VALUES ('90', '192.168.1.105', '192.168.0.0', '192.168.255.255', '局域网', '对方和您在同一内部网', '2014-10-10', '21:10:17', '0', '1');
INSERT INTO `shop_history` VALUES ('91', '192.168.1.105', '192.168.0.0', '192.168.255.255', '局域网', '对方和您在同一内部网', '2014-10-10', '21:10:36', '0', '1');
INSERT INTO `shop_history` VALUES ('92', '192.168.1.105', '192.168.0.0', '192.168.255.255', '局域网', '对方和您在同一内部网', '2014-10-10', '21:11:48', '0', '1');
INSERT INTO `shop_history` VALUES ('93', '192.168.1.105', '192.168.0.0', '192.168.255.255', '局域网', '对方和您在同一内部网', '2014-10-10', '21:14:15', '0', '1');
INSERT INTO `shop_history` VALUES ('94', '192.168.1.105', '192.168.0.0', '192.168.255.255', '局域网', '对方和您在同一内部网', '2014-10-10', '21:15:13', '0', '1');
INSERT INTO `shop_history` VALUES ('95', '0.0.0.0', '0.0.0.0', '0.255.255.255', 'IANA保留地址', '', '2014-10-10', '21:18:36', '0', '1');
INSERT INTO `shop_history` VALUES ('96', '0.0.0.0', '0.0.0.0', '0.255.255.255', 'IANA保留地址', '', '2014-10-10', '21:18:47', '0', '1');

-- ----------------------------
-- Table structure for shop_manage
-- ----------------------------
DROP TABLE IF EXISTS `shop_manage`;
CREATE TABLE `shop_manage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(11) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `marry` int(11) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '角色',
  `date` varchar(30) DEFAULT NULL,
  `validity` varchar(30) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_manage
-- ----------------------------
INSERT INTO `shop_manage` VALUES ('1', '451658842', 'e10adc3949ba59abbe56e057f20f883e', '329121444@qq.com', 'administrator', '0', '0', '四川成都', '1', '2014-09-05', '3000-01-01', '1');
INSERT INTO `shop_manage` VALUES ('4', '617265194', 'c4ca4238a0b923820dcc509a6f75849b', '329121444@qq.com', '测试账号', '0', '1', '四川成都双流县', '2', '2014-09-09', '3000-01-01', '1');
INSERT INTO `shop_manage` VALUES ('5', '329121444', 'e10adc3949ba59abbe56e057f20f883e', '329121444@qq.com', '彭大爷', '0', '0', '四川成都双流县', '1', '2014-09-10', '3000-01-01', '1');
INSERT INTO `shop_manage` VALUES ('6', 'pengfugui', 'e10adc3949ba59abbe56e057f20f883e', '329121444@qq.com', '彭大爷', '0', '0', '', '1', '2014-09-10', '3000-01-01', '0');
INSERT INTO `shop_manage` VALUES ('7', '396578520', '0525d9add2e2c53aa140ae25a1342a32', '396578520@qq.com', '唐晓英', '1', '0', '1', '1', '2014-09-11', '3000-01-01', '0');
INSERT INTO `shop_manage` VALUES ('8', 'pfg1991513', '899f434b9687f3b6af3593fdc8efd02e', '329121444@qq.com', '彭福贵', '0', '0', '四川成都双流县', '0', '2014-09-26', '3000-01-01', '0');
INSERT INTO `shop_manage` VALUES ('9', '451658842', '27db22f3a0aacd5bd85762121e2c8f28', '451658842@qq.com', '闫志会', '0', '0', '西安碑林区李家村万达广场', '1', '2014-09-29', '3000-01-01', '1');
INSERT INTO `shop_manage` VALUES ('10', 'linxiaoyan', 'e10adc3949ba59abbe56e057f20f883e', '329121444@qq.com', 'xiaoxiao', '0', '0', '山西晋中', '4', '2014-09-30', '3000-01-01', '1');

-- ----------------------------
-- Table structure for shop_message
-- ----------------------------
DROP TABLE IF EXISTS `shop_message`;
CREATE TABLE `shop_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `adress` varchar(50) DEFAULT NULL,
  `info` varchar(300) DEFAULT NULL,
  `mac` varchar(30) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_message
-- ----------------------------

-- ----------------------------
-- Table structure for shop_news
-- ----------------------------
DROP TABLE IF EXISTS `shop_news`;
CREATE TABLE `shop_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `html` longtext,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_news
-- ----------------------------
INSERT INTO `shop_news` VALUES ('1', '21.5寸高清电容安卓系统一体机隆重推出 ', '2014-09-01', '00:00:00', null, '0');
INSERT INTO `shop_news` VALUES ('2', '我公司六月份促销活动已开展 ', '2014-09-01', '00:00:00', null, '0');
INSERT INTO `shop_news` VALUES ('3', '我公司六月份促销活动已开展 ', '2014-09-01', '00:00:00', '', '0');
INSERT INTO `shop_news` VALUES ('4', '我公司六月份促销活动已开展 ', '2014-09-01', '00:00:00', '', '0');
INSERT INTO `shop_news` VALUES ('5', '我公司六月份促销活动已开展 ', '2014-09-01', '00:00:00', '', '0');
INSERT INTO `shop_news` VALUES ('6', '我公司六月份促销活动已开展 ', '2014-09-01', '00:00:00', '', '0');
INSERT INTO `shop_news` VALUES ('7', '我公司六月份促销活动已开展 ', '2014-09-01', '00:00:00', '', '0');
INSERT INTO `shop_news` VALUES ('8', '我公司六月份促销活动已开展 ', '2014-09-01', '00:00:00', '<p><img class=\"BDE_Image\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=e46acf942d2eb938ec6d7afae56385fe/5339a144ad345982023a29e70ef431adcaef847c.jpg\" pic_ext=\"jpeg\" pic_type=\"0\" width=\"560\" height=\"365\" style=\"border: 0px; margin-top: 8px; max-width: 570px; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; cursor: url(http://tb2.bdstatic.com/tb/static-pb/img/cur_zin.cur), pointer; background-color: rgb(255, 255, 255);\"/><br style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">W,我</span><a href=\"http://www.baidu.com/s?wd=%D5%E6%B5%C4%CF%EB%C4%E3%C1%CB&ie=gbk&tn=SE_hldp00990_u6vqbx10\" class=\"ps_cb\" target=\"_blank\" style=\"color: rgb(45, 100, 179); outline: 0px; text-decoration: none; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">真的想你了</a><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">，我不明白，为什么，每次你都是说走就走.........我舍不得.....你说的每一句话我都信了，包括你说你18岁，我信了，一开始就信了，后面你和别人开玩笑，说你25岁，我知道你18岁就经历了与同龄人不一样的经历，我都懂</span><img class=\"BDE_Image\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=875cd66bbb389b5038ffe05ab534e5f1/65a0ad345982b2b7612ff5b133adcbef77099b7c.jpg\" pic_ext=\"jpeg\" pic_type=\"0\" width=\"487\" height=\"282\" style=\"border: 0px; margin-top: 8px; max-width: 570px; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; cursor: url(http://tb2.bdstatic.com/tb/static-pb/img/cur_zin.cur), pointer; background-color: rgb(255, 255, 255);\"/><br style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">我实在是找不到你的联系方式了，</span><a href=\"http://www.baidu.com/s?wd=%CE%D2%D7%F6%B4%ED%C1%CB%CA%B2%C3%B4&ie=gbk&tn=SE_hldp00990_u6vqbx10\" class=\"ps_cb\" target=\"_blank\" style=\"color: rgb(45, 100, 179); outline: 0px; text-decoration: none; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">我做错了什么</a><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">吗，我们认识快半年了，你把手机关机，不上Q，我竟找不到你......你知道我有多担心你吗？每天睡觉都会想起你，那天，我梦见了你，是哭着醒来的，我一直没告诉你我梦见了什么，我梦见我以后见不到你了，我哭了，醒来还在哭，那次，你很久没和我联系了，早上5点多，有一个电话，未知号码，我接了，声音好像你的，我以为是你，我一直和他聊，到最后，他说不是你，我当时就哭了，电话那头紧张的问</span><a href=\"http://www.baidu.com/s?wd=%CE%D2%D4%F5%C3%B4%C1%CB&ie=gbk&tn=SE_hldp00990_u6vqbx10\" class=\"ps_cb\" target=\"_blank\" style=\"color: rgb(45, 100, 179); outline: 0px; text-decoration: none; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">我怎么了</a><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">，我告诉他，</span><a href=\"http://www.baidu.com/s?wd=%CE%D2%CF%EB%D2%BB%B8%F6%C8%CB&ie=gbk&tn=SE_hldp00990_u6vqbx10\" class=\"ps_cb\" target=\"_blank\" style=\"color: rgb(45, 100, 179); outline: 0px; text-decoration: none; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">我想一个人</a><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">了，一个很重要的人，我不喜欢睡觉时被人吵醒，唯独你吵醒我不生气.........&nbsp;</span><img class=\"BDE_Image\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=9da3407d99504fc2a25fb00dd5dce7f0/69d05982b2b7d0a2be79c8e8c9ef76094a369a7c.jpg\" pic_ext=\"jpeg\" pic_type=\"0\" width=\"356\" height=\"220\" style=\"border: 0px; margin-top: 8px; max-width: 570px; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; cursor: url(http://tb2.bdstatic.com/tb/static-pb/img/cur_zin.cur), pointer; background-color: rgb(255, 255, 255);\"/><br style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">你知道吗，你说我什么事都不和你说，我只是笑笑，可是你不知道，我第一次为一个人哭这么久，那天，你说你要去死，在马路上，12点了，我家里人不给我出去，我哭着打电话给你的朋友们，问他们你在哪，他们说不知道，我说你要去死，他们劝我别当真，你只是说说，你知道当时我有多担心吗，后来，你说在我家楼下，见不到我就去死，我哭着跑下去，我妈追出来，问</span><a href=\"http://www.baidu.com/s?wd=%CE%D2%D4%F5%C3%B4%C1%CB&ie=gbk&tn=SE_hldp00990_u6vqbx10\" class=\"ps_cb\" target=\"_blank\" style=\"color: rgb(45, 100, 179); outline: 0px; text-decoration: none; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">我怎么了</a><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">，我只是哭这叫她别跟过来，我妈拉着我，不让我走，在楼下，我明明看到你的了，我想追过去，我妈拉着我不让，我就这么看着你走远，那种撕心裂肺的感觉，你有吗，我那晚蹲在楼下</span><a href=\"http://www.baidu.com/s?wd=%BF%DE%C1%CB%B6%E0%BE%C3&ie=gbk&tn=SE_hldp00990_u6vqbx10\" class=\"ps_cb\" target=\"_blank\" style=\"color: rgb(45, 100, 179); outline: 0px; text-decoration: none; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">哭了多久</a><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">，路人保安都来看，我妈也来劝我，我都不听，我想看到你，我哭了多久你知道吗 ，你第二天看到我 打了快100多个电话，短信还没看完就打电话给我，你说你在广西了，当时我就哭了，你叫我别哭，你马上回来，我哽咽着说好，你说你再也不会这样的了，你说你再也不走的了</span><img class=\"BDE_Image\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=0ab562154dc2d562f208d0e5d71090f3/9d66b2b7d0a20cf4822032aa74094b36adaf997c.jpg\" pic_ext=\"jpeg\" pic_type=\"0\" width=\"330\" height=\"220\" style=\"border: 0px; margin-top: 8px; max-width: 570px; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; cursor: url(http://tb2.bdstatic.com/tb/static-pb/img/cur_zin.cur), pointer; background-color: rgb(255, 255, 255);\"/><br style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">那天，小梦生日，你和我聊天，你说你明天要去云南了，我说我想见你，你在哪，你过来接我，去吃你的送别饭，我在那没说几句话，我怕我说多了眼泪会掉，还没吃完我们就走了，在门口，我哭着说不走好不好，你说不行，那晚我们遛街我一直在哭，你叫我别哭可是我忍不住，我真的舍不得，我第一次这么舍不得一个人，我说我明天不上课请假我去送你好不好，你不让，说到了第一个电话就打电话给我(后面到了也没打，还是我打过去的)你边檫我眼泪边说，不管我们以后在不在一起，都不要忘记对方好不好，我哭着说好，可是我们现在怎么了，曾经说好的呢&nbsp;</span><img class=\"BDE_Image\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=2fddb687d762853592e0d229a0ee76f2/7653d0a20cf431ad7f628f4c4936acaf2fdd987c.jpg\" pic_ext=\"jpeg\" pic_type=\"0\" width=\"397\" height=\"220\" style=\"border: 0px; margin-top: 8px; max-width: 570px; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; cursor: url(http://tb2.bdstatic.com/tb/static-pb/img/cur_zin.cur), pointer; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">&nbsp;我为你和家里吵架，因为你只是晚上叫我出去，出去吃宵夜什么的，每次我都说好，你却不知道我和家里吵了多凶，读书的时候不能出去玩，我还是和你出去了，我违背家里的意见，父母快对我绝望了，我不怕，为你，值得，每当我心情不好时，叫你出来，你总是能过来，无论多忙，有段时间，我对你很绝情，我以为我能离开你，你不知道，那天，在楼梯里，你拉着我的手说别走，我甩开时信有多痛，我的另一个手紧握拳头，强忍着，转过楼梯时，我的眼泪都掉下来了，我却还是大声说叫你别来找我，还记得你送我的钥匙扣吗，我走到你看不见的位置时它的2个娃娃掉了一个，我把它拿起来，忍着泪回家了，一上楼我就后悔了......</span><img class=\"BDE_Image\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=fa4f2c278735e5dd902ca5d746c7a7f5/14460cf431adcbefc384b273aeaf2edda2cc9f7c.jpg\" pic_ext=\"jpeg\" pic_type=\"0\" width=\"221\" height=\"220\" style=\"border: 0px; margin-top: 8px; max-width: 570px; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; cursor: url(http://tb2.bdstatic.com/tb/static-pb/img/cur_zin.cur), pointer; background-color: rgb(255, 255, 255);\"/><br style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">你说你不喜欢我哭，我强忍着不住抽泣的肩膀紧握拳头却还是哭了，你回来我就不哭了好不好，我</span><a href=\"http://www.baidu.com/s?wd=%D5%E6%B5%C4%CF%EB%C4%E3%C1%CB&ie=gbk&tn=SE_hldp00990_u6vqbx10\" class=\"ps_cb\" target=\"_blank\" style=\"color: rgb(45, 100, 179); outline: 0px; text-decoration: none; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">真的想你了</a><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">，离不开你了 ，你回来我什么都听你的，好不好，不要不管我，我受不了......这么晚了我还没睡你怎么不说我了......你在哪，我问他们，他们都说不知道.你到底在哪.....&nbsp;</span><img class=\"BDE_Image\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=63ef7c70e7dde711e7d243fe97eecef4/c81031adcbef7609fdbb55ea2cdda3cc7dd99e7c.jpg\" pic_ext=\"jpeg\" pic_type=\"0\" width=\"219\" height=\"220\" style=\"border: 0px; margin-top: 8px; max-width: 570px; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; cursor: url(http://tb2.bdstatic.com/tb/static-pb/img/cur_zin.cur), pointer; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">我们认识半年，不长，故事却很多，我没想象中那么脆弱，回忆换不回你的温柔--------我们的故事不长，却足够我用一辈子来释怀</span></p>', '0');
INSERT INTO `shop_news` VALUES ('9', '新型触摸二代', '2014-09-26', '14:33:05', '<p>22222</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p>', '0');
INSERT INTO `shop_news` VALUES ('10', '测试添加行业资讯', '2014-09-26', '14:34:03', '<p><img src=\"/shop/ueditor/php/upload/image/20140926/1411713239113281.jpg\" title=\"1411713239113281.jpg\" alt=\"Chrysanthemum.jpg\"/></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p style=\"display:none;\" data-background=\"background-repeat:no-repeat; background-position:center center; background-color:#548DD4;\"><br/></p>', '0');
INSERT INTO `shop_news` VALUES ('11', '测试', '2014-10-08', '09:43:44', '<p>		&nbsp;</p><p>		&nbsp;</p><p>测试1</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p>', '1');
INSERT INTO `shop_news` VALUES ('12', '两个下雪的夜', '2014-09-28', '22:27:04', '<p><br/></p><p>钢琴手的指尖</p><p>弹抒情的音乐</p><p>又一年</p><p>拥挤的咖啡店</p><p>落地窗的外面</p><p>下起雪</p><p>地球在转着圈</p><p>你那边是几点</p><p>隔好远</p><p>你发来的邮件</p><p>有温暖的字眼</p><p>读几遍都不厌</p><p>我记得那场大雪</p><p>在圣诞的夜</p><p>下在我爱上你的瞬间</p><p>两公里送我的街</p><p>到我家门前</p><p>两行脚印一深一浅</p><p>我怀念那场大雪</p><p>当事过境迁</p><p>回忆象现在一样新鲜</p><p>我靠在你的右肩</p><p>曾笑得多甜</p><p>幸福会让人晕眩</p><p>过完这个冬天</p><p>要飞去你身边</p><p>我许愿</p><p>这漫长的分别</p><p>爱却有增无减</p><p>我想念你的脸</p><p>我记得那场大雪</p><p>在圣诞的夜</p><p>下在我爱上你的瞬间</p><p>两公里送我的街</p><p>到我家门前</p><p>两行脚印一深一浅</p><p>我怀念那场大雪</p><p>当事过境迁</p><p>回忆象现在一样新鲜</p><p>我靠在你的右肩</p><p>曾笑得多甜</p><p>幸福会让人晕眩</p><p>现在又下起大雪</p><p>在圣诞的夜</p><p>我一个人在写圣诞卡片</p><p>不需要太多语言</p><p>就以吻封缄</p><p>我相信你会了解</p><p>现在又下起大雪</p><p>象昔日重现</p><p>我迫不及待等下次再见</p><p>我和你相反季节</p><p>隔半个世界</p><p>爱的是这份坚决</p><p><br/></p>', '1');

-- ----------------------------
-- Table structure for shop_parent
-- ----------------------------
DROP TABLE IF EXISTS `shop_parent`;
CREATE TABLE `shop_parent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '父菜单名字',
  `config` varchar(20) DEFAULT NULL COMMENT 'JS配置需要',
  `method` varchar(30) DEFAULT NULL,
  `editor` varchar(30) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_parent
-- ----------------------------
INSERT INTO `shop_parent` VALUES ('1', '基础配置', 'config', 'modifySystem', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_parent` VALUES ('2', '人员设置', 'manageconfig', 'modifyManager', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_parent` VALUES ('3', '角色权限', 'roleconfig', 'modifyRole', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_parent` VALUES ('4', '产品管理', 'productconfig', 'modifyProduct', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_parent` VALUES ('5', '公告公示', 'bannerconfig', 'modifyBanner', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_parent` VALUES ('6', '成功案例', 'tradeconfig', 'modifyTrade', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_parent` VALUES ('7', '行业资讯', 'newsconfig', 'modifyNews', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_parent` VALUES ('8', '视频管理', 'videoconfig', 'modifyVideo', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_parent` VALUES ('9', '驱动管理', 'driversconfig', 'modifyDrivers', 'admin', '1992-05-13', '00:00:00', '1');
INSERT INTO `shop_parent` VALUES ('10', '留言管理', 'messageconfig', 'modifyMessage', 'admin', '1992-05-13', '00:00:00', '1');

-- ----------------------------
-- Table structure for shop_permission
-- ----------------------------
DROP TABLE IF EXISTS `shop_permission`;
CREATE TABLE `shop_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL COMMENT '角色id',
  `cid` int(11) DEFAULT NULL COMMENT '菜单id',
  `editor` varchar(30) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_permission
-- ----------------------------
INSERT INTO `shop_permission` VALUES ('1', '2', '1', '彭大爷', '2014-09-30', '12:58:38', '0');
INSERT INTO `shop_permission` VALUES ('2', '2', '3', '彭大爷', '2014-09-30', '12:51:08', '0');
INSERT INTO `shop_permission` VALUES ('3', '2', '4', '彭大爷', '2014-09-30', '13:06:47', '1');
INSERT INTO `shop_permission` VALUES ('4', '2', '20', '彭大爷', '2014-09-30', '12:58:49', '0');
INSERT INTO `shop_permission` VALUES ('5', '2', '28', '彭大爷', '2014-09-30', '12:58:43', '0');
INSERT INTO `shop_permission` VALUES ('6', '3', '18', '彭大爷', '2014-09-30', '12:15:57', '1');
INSERT INTO `shop_permission` VALUES ('7', '4', '28', '彭大爷', '2014-09-30', '12:16:05', '1');
INSERT INTO `shop_permission` VALUES ('8', '3', '20', '彭大爷', '2014-09-30', '12:16:15', '1');
INSERT INTO `shop_permission` VALUES ('9', '3', '22', '彭大爷', '2014-09-30', '12:16:18', '1');
INSERT INTO `shop_permission` VALUES ('10', '2', '17', '彭大爷', '2014-09-30', '12:51:24', '0');
INSERT INTO `shop_permission` VALUES ('11', '2', '19', '彭大爷', '2014-09-30', '12:58:41', '0');
INSERT INTO `shop_permission` VALUES ('12', '2', '5', '彭大爷', '2014-10-08', '09:05:10', '1');

-- ----------------------------
-- Table structure for shop_product
-- ----------------------------
DROP TABLE IF EXISTS `shop_product`;
CREATE TABLE `shop_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '产品名称',
  `model` varchar(30) DEFAULT NULL COMMENT '产品型号',
  `explain` varchar(500) DEFAULT NULL COMMENT '产品简介',
  `tid` int(11) DEFAULT NULL COMMENT '类型ID',
  `html` longtext COMMENT '产品详细说明',
  `state` int(11) DEFAULT NULL COMMENT '产品状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product
-- ----------------------------
INSERT INTO `shop_product` VALUES ('30', '新一代触摸查询机', 'KMS', '新一代触摸查询机	                		\r\n	                	', '17', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 25px; color: rgb(68, 68, 68); font-family: 微软雅黑; font-size: 12px; white-space: normal; text-indent: 2em; background-color: rgb(255, 255, 255);\">多点互动触摸桌，多点触摸一体机， 应用两点的任意组合，实现多种手势命令，如放大缩小、旋转、拖拽等，特别适合数字图片的浏览和编辑操作。同时支持单点触摸的所有功能，并与微软公司Windows 7操作系统完全兼容，即插即用，无需安装驱动软件，带给用户更多的操作乐趣。可以安装在个人电脑、等离子显示器、液晶显示器以及投影设备上使用。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 多点触摸显示系统，支持Windows 7操作系统的多点触摸应用，无需安装驱动，即插即用。基于Windows 7自带的SDK数据包即可进行多点触摸应用产品的完美开发和应用。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 25px; color: rgb(68, 68, 68); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 多点触摸显示系统，提供17&quot;、19&quot;、22&quot;、32&quot;、37&quot;、40&quot;、42&quot;、46&quot;、50&quot;、55&quot;、60&quot;、65&quot;、70&quot;、82&quot;、84&quot;、103&quot;、150&quot;多点触摸的全系列全规格产品，广泛应用大型商场、专卖店、连锁加盟店、大卖场、星级酒店、饭店、旅行社、学校、电影院、健身馆、度假村、俱乐部、酒吧、网吧、高尔夫球场、公园、展览馆、体育场、博物馆、会议中心等。&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 25px; color: rgb(68, 68, 68); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>特点：即插即用，任意物体触摸，性能稳定无漂移，抗磨损，防刮擦，安装方便免维护，寿命长。</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 25px; color: rgb(68, 68, 68); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><table bgcolor=\"#dddddd\" cellpadding=\"5\" cellspacing=\"1\" width=\"675\"><tbody><tr height=\"19\" class=\"firstRow\"><td bgcolor=\"#ebf1fd\" colspan=\"2\" style=\"border-color: rgb(255, 255, 255);\"><strong>尺寸范围</strong></td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\" width=\"115\">标准尺寸范围</td><td bgcolor=\"#ffffff\" width=\"411\">32&quot; 37&quot; 42&quot; 47&quot; 55&quot; 60&quot; 65&quot; 70&quot; 82&quot;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">定制尺寸范围&nbsp;</td><td bgcolor=\"#ffffff\">84″ ~ 200″&nbsp;&nbsp;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">适用于&nbsp;&nbsp;&nbsp;</td><td bgcolor=\"#ffffff\">显示屏设备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ebf1fd\" colspan=\"2\" style=\"border-color: rgb(255, 255, 255);\"><strong>性能</strong></td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">触摸模式&nbsp;&nbsp;&nbsp;&nbsp;</td><td bgcolor=\"#ffffff\">单点触摸、真2点、真4点、真6点、真10点、真16点、真32点、<br/>实现拖动、划线、图片旋转或缩放等多点触控</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">分辨率(插值)&nbsp;&nbsp;&nbsp;</td><td bgcolor=\"#ffffff\">4096*4096</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">线性误差&nbsp;&nbsp;</td><td bgcolor=\"#ffffff\">&lt;1.5mm&nbsp;&nbsp;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">反应速度</td><td bgcolor=\"#ffffff\">&lt;15ms&nbsp;&nbsp;&nbsp;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ebf1fd\" colspan=\"2\" style=\"border-color: rgb(255, 255, 255);\"><strong>机械性能</strong></td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">外框材料&nbsp;</td><td bgcolor=\"#ffffff\">全钢2mm型材</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">触摸介质</td><td bgcolor=\"#ffffff\">任何不透光的介质，如手指，带手套的手指等&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">触摸次数&nbsp;</td><td bgcolor=\"#ffffff\">无限次&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">触摸力度&nbsp;&nbsp;&nbsp;&nbsp;</td><td bgcolor=\"#ffffff\">无触摸力度要求&nbsp;&nbsp;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"38\" rowspan=\"2\">最小触摸介质&nbsp;&nbsp;&nbsp;&nbsp;</td><td bgcolor=\"#ffffff\">6 mm X 6 mm&nbsp; for size under 22&quot; (include 22&quot;）</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">8 mm X 8 mm&nbsp; for size above 22&quot;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">防暴性能</td><td bgcolor=\"#ffffff\">1KG的钢球从130CM的高度落下，玻璃不破裂，符合UL60950 钢球跌落防暴标准&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">表面硬度&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td bgcolor=\"#ffffff\">玻璃表面，莫氏7级&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ebf1fd\" colspan=\"2\" style=\"border-color: rgb(255, 255, 255);\"><strong>光学性能</strong></td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">玻璃&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td bgcolor=\"#ffffff\">无玻璃、4mm厚普通玻璃、防眩光玻璃、防反射玻璃任选</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">透光率&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td bgcolor=\"#ffffff\">90%（符合 ASTM D1003）&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">光泽度&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td bgcolor=\"#ffffff\">防眩光表面: 95 ± 15 单位或 65 ± 15 单位</td></tr><tr height=\"19\"><td bgcolor=\"#ebf1fd\" colspan=\"2\" style=\"border-color: rgb(255, 255, 255);\"><strong>环境性能</strong></td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">温度</td><td bgcolor=\"#ffffff\">工作温度: -20°C ~ 70°C ; 存储温度: -40°C ~ 85°C&nbsp;&nbsp;&nbsp;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"38\" rowspan=\"2\">湿度&nbsp;</td><td bgcolor=\"#ffffff\">工作湿度: 0%~90% RH (无凝结)&nbsp;&nbsp;&nbsp;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">存储湿度: 0% to 95% RH (无凝结)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">海拔&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td bgcolor=\"#ffffff\">3,000m海拔可用&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"38\" rowspan=\"2\">自然光&nbsp;&nbsp;&nbsp;</td><td bgcolor=\"#ffffff\">90°至 ±30°范围内阳光直射下可工作&nbsp;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">全角度阳光直射显示区域无误动作&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">寿命&nbsp;&nbsp;&nbsp;</td><td bgcolor=\"#ffffff\">5年以上&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ebf1fd\" colspan=\"2\" style=\"border-color: rgb(255, 255, 255);\"><strong>电性能</strong></td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">工作电压&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td bgcolor=\"#ffffff\">典型值 +DC 5V, +4.75V to +5.25V&nbsp;&nbsp;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"38\" rowspan=\"2\">供电&nbsp;&nbsp;&nbsp;</td><td bgcolor=\"#ffffff\">52”以下(包含52”)USB 或 PS/2 供电&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">52”以上: 外部稳压电源供电&nbsp;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"38\" rowspan=\"2\">接口&nbsp;&nbsp;&nbsp;&nbsp;</td><td bgcolor=\"#ffffff\">全双工 USB 2.0 (Full Speed) 热插拔&nbsp;&nbsp;&nbsp;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">串口 RS-232. 波特率: 9600, 8 位数据, 1 位停止, 无校验</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">电流&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td bgcolor=\"#ffffff\">典型值150MA@+5VDC;&nbsp;&nbsp; 350mA, 最大值&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">能耗&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td bgcolor=\"#ffffff\">&lt;1.5W, 工作电流&lt;300mA&nbsp;&nbsp;&nbsp;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">静电防护&nbsp;&nbsp;&nbsp;&nbsp;</td><td bgcolor=\"#ffffff\">15 kV 空气 / 8 kV 接触放电 (EN61000-4-2,1995 :Level 4)&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">控制器&nbsp;&nbsp;&nbsp;</td><td bgcolor=\"#ffffff\">内置&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">认证</td><td bgcolor=\"#ffffff\">CE, FCC, Rohs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr><tr height=\"19\"><td bgcolor=\"#ffffff\" height=\"19\">操作系统</td><td bgcolor=\"#ffffff\">Windows&nbsp;7 &nbsp; &nbsp; &nbsp;&nbsp;</td></tr></tbody></table><p><br/></p>', '0');
INSERT INTO `shop_product` VALUES ('31', '第五代电子白板', '第五代电子白板', '第五代电子白板	                		\r\n	                	', '12', '', '0');
INSERT INTO `shop_product` VALUES ('32', '新一代触摸查询机', 'KK', '新一代触摸查询机	                		\r\n	                	', '6', '', '0');
INSERT INTO `shop_product` VALUES ('33', '测试新的产品', '测试新的产品', '测试新的产品	                		\r\n	                	', '11', '', '1');
INSERT INTO `shop_product` VALUES ('34', 'textarea1', 'textarea1', '	                			                			                			textarea1        		\r\n	                		                		                		                	', '12', '<p>		&nbsp;</p><p>&nbsp;$data[&#39;explain&#39;]=$_POST[&#39;explain&#39;]; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 		 &nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p>', '1');
INSERT INTO `shop_product` VALUES ('35', '测试', '测试', '测试	                		\r\n	                	', '11', null, '0');
INSERT INTO `shop_product` VALUES ('36', '1', '1', '	                		\r\n	1                	', '11', null, '0');
INSERT INTO `shop_product` VALUES ('37', '2', '2', '	                			                			                		\r\n	2                		                		                	', '11', '<p>		&nbsp;</p><p>		&nbsp;</p><p>12</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p>', '1');

-- ----------------------------
-- Table structure for shop_productimg
-- ----------------------------
DROP TABLE IF EXISTS `shop_productimg`;
CREATE TABLE `shop_productimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `type` int(11) DEFAULT NULL COMMENT '图片类型(1:主图,0:附图)',
  `pid` int(11) DEFAULT NULL COMMENT '产品ID',
  `state` int(11) DEFAULT NULL COMMENT '产品状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_productimg
-- ----------------------------
INSERT INTO `shop_productimg` VALUES ('72', '/uploads/product/1411739342.jpg', '1', '33', '1');
INSERT INTO `shop_productimg` VALUES ('73', '/uploads/product/1411739344.jpg', '0', '33', '1');
INSERT INTO `shop_productimg` VALUES ('74', '/uploads/product/1411739346.jpg', '0', '33', '1');
INSERT INTO `shop_productimg` VALUES ('75', '/uploads/product/1411739349.jpg', '0', '33', '1');
INSERT INTO `shop_productimg` VALUES ('76', '/uploads/product/54266656aae8d.jpg', '1', '34', '1');
INSERT INTO `shop_productimg` VALUES ('77', '/uploads/product/542666865b40c.jpg', '0', '34', '1');
INSERT INTO `shop_productimg` VALUES ('78', '/uploads/product/1411739575.jpg', '0', '34', '0');
INSERT INTO `shop_productimg` VALUES ('79', '/uploads/product/1411739580.jpg', '0', '34', '0');
INSERT INTO `shop_productimg` VALUES ('80', '/uploads/product/542662e3be519.jpg', '0', '34', '0');
INSERT INTO `shop_productimg` VALUES ('81', '/uploads/product/54266718bacd9.jpg', '0', '34', '1');
INSERT INTO `shop_productimg` VALUES ('82', '/uploads/product/542667216b171.jpg', '0', '34', '1');
INSERT INTO `shop_productimg` VALUES ('83', '/uploads/product/1411803151.jpg', '1', '35', '0');
INSERT INTO `shop_productimg` VALUES ('84', '/uploads/product/1411803154.jpg', '0', '35', '0');
INSERT INTO `shop_productimg` VALUES ('85', '/uploads/product/1411803156.jpg', '0', '35', '0');
INSERT INTO `shop_productimg` VALUES ('86', '/uploads/product/1411803160.jpg', '0', '35', '0');
INSERT INTO `shop_productimg` VALUES ('87', '/uploads/product/1411803233.jpg', '1', '36', '0');
INSERT INTO `shop_productimg` VALUES ('88', '/uploads/product/1411803235.jpg', '0', '36', '0');
INSERT INTO `shop_productimg` VALUES ('89', '/uploads/product/1411803239.jpg', '0', '36', '0');
INSERT INTO `shop_productimg` VALUES ('90', '/uploads/product/1411803241.jpg', '0', '36', '0');
INSERT INTO `shop_productimg` VALUES ('91', '/uploads/product/1411803338.jpg', '1', '37', '1');
INSERT INTO `shop_productimg` VALUES ('92', '/uploads/product/1411803340.jpg', '0', '37', '1');
INSERT INTO `shop_productimg` VALUES ('93', '/uploads/product/54281a14b6205.jpg', '0', '37', '1');
INSERT INTO `shop_productimg` VALUES ('94', '/uploads/product/1411803345.jpg', '0', '37', '1');

-- ----------------------------
-- Table structure for shop_producttype
-- ----------------------------
DROP TABLE IF EXISTS `shop_producttype`;
CREATE TABLE `shop_producttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '产品类型名字',
  `date` varchar(30) DEFAULT NULL COMMENT '操作日期',
  `time` varchar(30) DEFAULT NULL COMMENT '操作时间',
  `mid` int(11) DEFAULT NULL COMMENT '操作人id',
  `state` int(11) DEFAULT NULL COMMENT '产品类型状态(1：有效，2:无效）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_producttype
-- ----------------------------
INSERT INTO `shop_producttype` VALUES ('5', 'C系列-触摸查询机(17~22)寸', '2014-09-25', '14:10:32', '5', '0');
INSERT INTO `shop_producttype` VALUES ('6', 'D系列-触摸查询机(32~65)寸', '2014-09-26', '11:34:34', '5', '0');
INSERT INTO `shop_producttype` VALUES ('7', 'E系列-触摸显示器(15~84)寸', '2014-09-11', '10:02:35', '5', '0');
INSERT INTO `shop_producttype` VALUES ('8', 'B系列-触摸屏翻书(32~65)寸', '2014-09-11', '10:02:35', '5', '0');
INSERT INTO `shop_producttype` VALUES ('9', 'Y系列-教学一体机(32~84)寸', '2014-09-11', '10:02:35', '5', '0');
INSERT INTO `shop_producttype` VALUES ('10', 'Z系列—触摸茶几、触摸桌', '2014-09-11', '10:02:35', '5', '0');
INSERT INTO `shop_producttype` VALUES ('11', '多媒体广告机(32~65)寸', '2014-09-26', '21:47:45', '5', '1');
INSERT INTO `shop_producttype` VALUES ('12', '电子白板', '2014-09-11', '10:02:35', '5', '1');
INSERT INTO `shop_producttype` VALUES ('13', '排队叫号系统', '2014-09-11', '10:02:35', '5', '1');
INSERT INTO `shop_producttype` VALUES ('14', '触摸屏软件', '2014-09-11', '10:02:35', '5', '1');
INSERT INTO `shop_producttype` VALUES ('15', '触摸屏租赁', '2014-09-11', '10:02:35', '5', '1');
INSERT INTO `shop_producttype` VALUES ('16', '触摸屏种类', '2014-09-11', '10:02:35', '5', '1');
INSERT INTO `shop_producttype` VALUES ('17', '点菜机系列', '2014-09-11', '10:02:35', '5', '1');
INSERT INTO `shop_producttype` VALUES ('18', 'Z系列-触摸查询机', '2014-09-11', '10:02:35', '5', '1');
INSERT INTO `shop_producttype` VALUES ('19', 'Z系列-触摸查询机', '2014-09-11', '10:02:35', '5', '0');
INSERT INTO `shop_producttype` VALUES ('20', 'Z系列-触摸查询机', '2014-09-11', '10:02:35', '5', '0');
INSERT INTO `shop_producttype` VALUES ('21', 'C系列-触摸查询机1025', '2014-09-26', '21:42:59', '5', '1');
INSERT INTO `shop_producttype` VALUES ('22', 'C系列', '2014-09-26', '21:44:32', '5', '1');

-- ----------------------------
-- Table structure for shop_role
-- ----------------------------
DROP TABLE IF EXISTS `shop_role`;
CREATE TABLE `shop_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '角色名称',
  `editor` varchar(30) DEFAULT NULL COMMENT '编辑人',
  `date` varchar(30) DEFAULT NULL COMMENT '最后一次编辑日期',
  `time` varchar(30) DEFAULT NULL COMMENT '最后一次编辑时间',
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_role
-- ----------------------------
INSERT INTO `shop_role` VALUES ('1', '超级管理员', '彭大爷', '2014-09-29', '14:03:06', '1');
INSERT INTO `shop_role` VALUES ('2', '部门经理', 'admin', '2014-09-28', '21:49:56', '1');
INSERT INTO `shop_role` VALUES ('3', '部门主管', 'admin', '2014-09-28', '21:49:56', '1');
INSERT INTO `shop_role` VALUES ('4', '公司职工', '彭大爷', '2014-09-29', '14:05:12', '1');

-- ----------------------------
-- Table structure for shop_system
-- ----------------------------
DROP TABLE IF EXISTS `shop_system`;
CREATE TABLE `shop_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '公司名称',
  `address` varchar(100) DEFAULT NULL COMMENT '公司地址',
  `tel` varchar(20) DEFAULT NULL COMMENT '固定电话',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机',
  `points` varchar(100) DEFAULT NULL COMMENT '地理位置坐标',
  `title` varchar(30) DEFAULT NULL COMMENT '页面标题',
  `headertitle` varchar(30) DEFAULT NULL COMMENT '欢迎语',
  `explain` longtext COMMENT '公司简介',
  `lease` longtext COMMENT '租赁中心',
  `callme` longtext COMMENT '联系我们',
  `service` longtext COMMENT '售后服务',
  `about` longtext COMMENT '关于我们',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_system
-- ----------------------------
INSERT INTO `shop_system` VALUES ('1', '西安火木科技有限公司', '陕西西安', '0827-5530509', '18702825071', '108.920471&34.313706', '欢迎光临西安火木科技', '西安火木科技', '<p>		&nbsp;</p><p><br/></p><p>&nbsp;<span style=\"font-family: 宋体, SimSun;\"> &nbsp; 西安火木电子科技有限公司（以下简称西安火木）位于古都西安。自公司成立以来，一直致力于积极推广和引进最先进的触控产品，促进国内信息化的建设。 &nbsp; &nbsp;&nbsp;</span></p><p><span style=\"font-family: 宋体, SimSun;\">　　西安火木是一家专业从事触摸屏产品的研发、生产、销售及服务为一体的综合型企业，专注于红外触摸屏、电阻触摸屏、触摸查询一体机、触摸显示器、教学触摸一体机、手写电子签到系统、触摸屏电子翻书系统、触摸查询系统等，同时有专业的软件开发团队，可针对不同行业的客户需求定制开发触摸屏查询系统及相关的演示查询软件等，其服务网络遍及全国。<br/>　　目前西安火木触控产品广泛应用于互动教学、金融证券、通讯行业、政府查询、展厅演示查询、航空车站、博物馆、展览馆、图书馆、宾馆、酒店、房地产、影视、娱乐场所等领域。 &nbsp;&nbsp;</span></p><p><span style=\"font-family: 宋体, SimSun;\">　　展望未来，我们秉承“创新、细节、专注、服务”的企业理念，不断提升技术力量，积极整合最新行业资源创新产品技术，推出专业的高端触控新产品，实时为客户服务，持续领跑触控行业，谱写科技新篇章。</span></p><p><span style=\"font-family: 宋体, SimSun;\">&nbsp;&nbsp;&nbsp; 有着多年的触控行业的销售经验，为客户量身定做出可行性方案，从为客户选择硬件搭配到软件分析，及售后服务都努力做到客户满意。目前在西北市场做的业务还没有维修记录及投诉问题，更没有牵扯到任何业务纠纷之类事情。从硬件角度来，西安火木公司尽可能为客户提供性价比最高、稳定的产品。目前我公司产品均在西北的最终用户满意率几乎为98.5%。</span></p><p><span style=\"font-size:12px\"><br/></span><br/></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br/></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p>', '<p>		&nbsp;</p><p style=\"text-align:center;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"text-align:center;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong><span style=\"font-size:32px\">触摸屏查询一体机设备租赁协议</span></strong></p><p style=\"text-align:center;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\">出租方：西安火木电子科技有限公司　　　　　　　　　　承租方：_____________________<br/>设备型号：___________________ 　　　　　　　　　　　出租台数： ________台</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\">本着互惠互利的原则经双方协商达成如下条款，共同信守：</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\">1. 租赁期：自______年_______月起至______年______月　　日租期为：________ 天&nbsp;<br/>合同到期时如贵方没有通知我方，合同延续生效。&nbsp;<br/>2. 租赁费用：设备每天每台人民币：______元，出租方人员值守设备补助：_____元（含食宿及出租方人员出差补贴金）　<br/>3. 承方负责设备运输费用，出租方保证设备在租赁期间的正常使用。&nbsp;<br/>4. 在租赁期间，承租方不得拆卸机器，由此引起的后果由承租方负责并承担相应的损失。&nbsp;<br/>5. 设备出现丢失，有人为原因造成故障，视情节由承租方全部承担&nbsp;<br/>6. 本协议经双方签字盖章后立即生效，如双方由一方违约。由双方代表友好的协商解决之间的问题。&nbsp;<br/>7. 设备租赁费用为：_____元 ，人员补贴金：______元 ，合计总金额_______元&nbsp;<br/>8. 付款方式：出租方设备进场后即付_____元，展会结束后付清余款即_______元。&nbsp;<br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\">出租方：西安火木电子科技有限公司　　　　　　　　　　租　方：___________________<br/>代 表：______________________　　　　　　　　　　　 代　表：___________________<br/>电 话：029-87876052&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 　　 　　　　　　　电　话：___________________&nbsp;<br/>传 真：029-87876052&nbsp;&nbsp;　　　　　　　 　　　　　　　　　传　真：___________________&nbsp;<br/>地 址：碑林区雁塔北路万达广场1栋2单元22006　　　　　地　址：___________________<br/>日 期：__________________　　　　 　　　　　　　　　日　期：___________________&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 		 &nbsp; <br/></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p>', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><strong>西安火木电子科技有限公司</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">地址：西安市碑林区雁塔路北段8号万达广场1栋2单元2006</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">邮编：710054&nbsp;<br/>电话：<span style=\"color:#ff0000;font-size:24px\"><strong>029-8787 6052&nbsp;&nbsp;&nbsp;<br/></strong></span>24小时热线：<span style=\"color:#ff0000;font-size:24px\"><strong>13991191023<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18991192202</strong></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">传真：029-87876052</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">邮箱：68258909@qq.com</p><p><br/></p><hr style=\"color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\"/><p><strong style=\"color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">QQ业务在线：</strong><span style=\"color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; line-height: 26px; background-color: rgb(255, 255, 255);\"></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color:#2daf0c\"><span style=\"color:#e73408\"><span style=\"color:#1bb1b1\"><span style=\"color:#1b1918\">销售一部：</span></span></span>68258909</span>&nbsp;<span style=\"color:#d5d5d5\">/&nbsp;</span>&nbsp;<span style=\"color:#e73408\">451391594 / 1978002006</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color:#e73408\"><span style=\"color:#1bb1b1\"><span style=\"color:#1b1918\">销售二部：</span>423005628</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><hr style=\"color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\"/><p><br style=\"color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: 宋体; font-size: 14px; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\"><strong>投诉电话：</strong>13991191016&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br/></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p>', '<p><strong style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\">敬尊的客户您好：</strong><br style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\">　　 首先感谢您选用西安火木电子科技有限公司的触摸产品，为了便于我们给您提供更满意的服务，同时也更好的保障您的权益。请您认真阅读此条例并妥善保存您的质保卡。&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color:#ff0000;font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\">条例说明：&nbsp;<br/></span><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\">　　 本条例适用于西安火木电子科技有限公司的触摸产品。凡购买的本公司产品，均享受本公司提供的售后服务。但以下情况除外：&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\">　　 1. 超过三包有效期的；&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\">　　 2. 未按产品说明书条例的要求使用、维护、保管而造成损坏的；&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\">　　 3. 未经授权擅自拆动造成损坏的；&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\">　　 4. 无有效三包凭证及有效购买凭证的； 　&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\">　　 5. 擅自涂改三包凭证的；&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\">　　 6. 三包凭证上的产品型号或编号与商品实物不相符合的；&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\">　　 7. 产品无我公司条码或条码残缺不全无法辨认的；&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\">　　 8. 使用盗版软件造成损坏的；&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\">　　 9. 因其他不可抗力造成损坏的；&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color:#ff0000;font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\">品质承诺：<br/></span><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\">　　 西安火木电子科技有限公司秉承 &quot; 让我们的客户永远快乐 &quot; 的宗旨，为客户提供满意的售后服务。对于本公司销售 的产品，我们承诺提供三年有限质保。具体条例如下：</span><br style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\">　　 1. 从产品购买之日起 3 个月内，如产品出现质量问题，包换良品。&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\">　　 2. 从产品购买之日起第 4 个月到 12 个月内，如产品出现质量问题，公司提供免费维修服务。&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\">　　 3. 从产品购买之日起第 13 个月至 36 个月，公司提供有偿维修服务，收取一定维修费和材料费。&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; line-height: 20px; background-color: rgb(255, 255, 255);\">　　 4. 在包换期内的产品，如因停产或其他原因无法提供同型号新品的，公司不低于原产品的同档次新产品更换。如无同档次新产品的，提供更高级新产品更换，需补足差价，差价以更换日当天市场价格计算&nbsp;</span></p>', '<p>&nbsp; &nbsp;&nbsp;<span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; line-height: 22px; text-indent: 2em; background-color: rgb(255, 255, 255);\">西安火木电子科技有限公司位于古都西安。自公司成立以来，一直致力于积极推广和引进最先进的触控产品，促进国内信息化的建设。 目前西安火木触控产品广泛应用于互动教学、金融证券、通讯行业、政府查询、展厅演示查询、航空车站、博物馆、展览馆、图书馆、宾馆、酒店、房地产、影视、娱乐场所等领域。 主营：</span><strong style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; line-height: 22px; text-indent: 2em;\">西安触摸屏</strong><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; line-height: 22px; text-indent: 2em; background-color: rgb(255, 255, 255);\">,</span><strong style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; line-height: 22px; text-indent: 2em;\">电子签到租赁</strong><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; line-height: 22px; text-indent: 2em; background-color: rgb(255, 255, 255);\">,</span><strong style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; line-height: 22px; text-indent: 2em;\">多点触摸屏</strong><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; line-height: 22px; text-indent: 2em; background-color: rgb(255, 255, 255);\">,</span><strong style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; line-height: 22px; text-indent: 2em;\">大尺寸触摸屏</strong><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; line-height: 22px; text-indent: 2em; background-color: rgb(255, 255, 255);\">,</span><strong style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; line-height: 22px; text-indent: 2em;\">电子翻书系统</strong><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; line-height: 22px; text-indent: 2em; background-color: rgb(255, 255, 255);\">,</span><strong style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; line-height: 22px; text-indent: 2em;\">触摸屏租赁</strong><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; line-height: 22px; text-indent: 2em; background-color: rgb(255, 255, 255);\">。</span></p><p><img src=\"/shop/ueditor/php/upload/image/20140922/1411365748614450.jpg\" style=\"margin: 0px; padding: 0px; width: 234px; height: 194px; font-family: Simsun; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 9px; line-height: 22px; color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; white-space: normal; background-color: rgb(255, 255, 255);\">地址：西安市碑林区雁塔路北段8号万达广场1栋2单元20楼22006<br/>邮编：710054<br/>传真：029-87876052<br/>邮箱：ohuomu@163.com</p><p><strong style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 12px; line-height: 22px; white-space: normal; background-color: rgb(255, 255, 255);\"></strong><br/></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p>');

-- ----------------------------
-- Table structure for shop_trade
-- ----------------------------
DROP TABLE IF EXISTS `shop_trade`;
CREATE TABLE `shop_trade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `html` longtext,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_trade
-- ----------------------------
INSERT INTO `shop_trade` VALUES ('1', '我公司42寸10点触摸查询机进入西安美术学', '2014-09-26', '30', '<p>		&nbsp;</p><p>		&nbsp;</p><p>		&nbsp;</p><p>1232131&nbsp; 1&nbsp;<br/></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p>', '0');
INSERT INTO `shop_trade` VALUES ('2', '我公司42寸10点触摸查询机进入西安美术学院', '2014-09-26', '30', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 		 &nbsp; 2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 		 &nbsp;</p>', '0');
INSERT INTO `shop_trade` VALUES ('4', '我公司42寸10点触摸查询机进入西安美术学院', '2014-09-26', '30', '<p>123 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br/></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p>', '0');
INSERT INTO `shop_trade` VALUES ('5', '我公司42寸10点触摸查询机进入西安美术学院', '2014-03-14', '30', '4', '0');
INSERT INTO `shop_trade` VALUES ('12', '我司42寸触摸屏翻书系统再次成功入驻陕西历史...', '2014-03-14', '30', '5', '0');
INSERT INTO `shop_trade` VALUES ('13', '我公司32寸2台连体多点触摸屏成功入驻长庆油...', '2014-03-14', '30', '6', '0');
INSERT INTO `shop_trade` VALUES ('14', '固原招标项目10台查询机现已交付', '2014-03-14', '30', '7', '0');
INSERT INTO `shop_trade` VALUES ('15', '我公司42寸10点触摸查询机进入西安美术学院', '2014-03-14', '30', '8', '0');
INSERT INTO `shop_trade` VALUES ('16', '我公司42寸10点触摸查询机进入西安美术学院', '2014-03-14', '30', '9', '0');
INSERT INTO `shop_trade` VALUES ('17', '我公司42寸10点触摸查询机进入西安美术学院', '2014-03-14', '31', '0', '0');
INSERT INTO `shop_trade` VALUES ('18', '我公司42寸10点触摸查询机进入西安美术学院', '2014-03-14', '30', '12', '0');
INSERT INTO `shop_trade` VALUES ('19', '我公司42寸10点触摸查询机进入西安美术学院', '2014-03-14', '31', '123123', '0');
INSERT INTO `shop_trade` VALUES ('20', '我司42寸触摸屏翻书系统再次成功入驻陕西历史...', '2014-03-14', '30', '123', '0');
INSERT INTO `shop_trade` VALUES ('21', '我公司32寸2台连体多点触摸屏成功入驻长庆油...', '2014-03-14', '30', '1', '0');
INSERT INTO `shop_trade` VALUES ('22', '固原招标项目10台查询机现已交付', '2014-09-26', '31', '', '0');
INSERT INTO `shop_trade` VALUES ('23', '我公司42寸10点触摸查询机进入西安美术学院', '2014-03-14', '30', '12', '0');
INSERT INTO `shop_trade` VALUES ('24', '晓晓的悲哀', '2014-09-24', '30', '<p><img class=\"BDE_Image\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=e46acf942d2eb938ec6d7afae56385fe/5339a144ad345982023a29e70ef431adcaef847c.jpg\" pic_ext=\"jpeg\" pic_type=\"0\" width=\"560\" height=\"365\" style=\"border: 0px; margin-top: 8px; max-width: 570px; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; cursor: url(http://tb2.bdstatic.com/tb/static-pb/img/cur_zin.cur), pointer; background-color: rgb(255, 255, 255);\"/><br style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">W,我</span><a href=\"http://www.baidu.com/s?wd=%D5%E6%B5%C4%CF%EB%C4%E3%C1%CB&ie=gbk&tn=SE_hldp00990_u6vqbx10\" class=\"ps_cb\" target=\"_blank\" style=\"color: rgb(45, 100, 179); outline: 0px; text-decoration: none; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">真的想你了</a><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">，我不明白，为什么，每次你都是说走就走.........我舍不得.....你说的每一句话我都信了，包括你说你18岁，我信了，一开始就信了，后面你和别人开玩笑，说你25岁，我知道你18岁就经历了与同龄人不一样的经历，我都懂</span><img class=\"BDE_Image\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=875cd66bbb389b5038ffe05ab534e5f1/65a0ad345982b2b7612ff5b133adcbef77099b7c.jpg\" pic_ext=\"jpeg\" pic_type=\"0\" width=\"487\" height=\"282\" style=\"border: 0px; margin-top: 8px; max-width: 570px; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; cursor: url(http://tb2.bdstatic.com/tb/static-pb/img/cur_zin.cur), pointer; background-color: rgb(255, 255, 255);\"/><br style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">我实在是找不到你的联系方式了，</span><a href=\"http://www.baidu.com/s?wd=%CE%D2%D7%F6%B4%ED%C1%CB%CA%B2%C3%B4&ie=gbk&tn=SE_hldp00990_u6vqbx10\" class=\"ps_cb\" target=\"_blank\" style=\"color: rgb(45, 100, 179); outline: 0px; text-decoration: none; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">我做错了什么</a><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">吗，我们认识快半年了，你把手机关机，不上Q，我竟找不到你......你知道我有多担心你吗？每天睡觉都会想起你，那天，我梦见了你，是哭着醒来的，我一直没告诉你我梦见了什么，我梦见我以后见不到你了，我哭了，醒来还在哭，那次，你很久没和我联系了，早上5点多，有一个电话，未知号码，我接了，声音好像你的，我以为是你，我一直和他聊，到最后，他说不是你，我当时就哭了，电话那头紧张的问</span><a href=\"http://www.baidu.com/s?wd=%CE%D2%D4%F5%C3%B4%C1%CB&ie=gbk&tn=SE_hldp00990_u6vqbx10\" class=\"ps_cb\" target=\"_blank\" style=\"color: rgb(45, 100, 179); outline: 0px; text-decoration: none; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">我怎么了</a><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">，我告诉他，</span><a href=\"http://www.baidu.com/s?wd=%CE%D2%CF%EB%D2%BB%B8%F6%C8%CB&ie=gbk&tn=SE_hldp00990_u6vqbx10\" class=\"ps_cb\" target=\"_blank\" style=\"color: rgb(45, 100, 179); outline: 0px; text-decoration: none; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">我想一个人</a><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">了，一个很重要的人，我不喜欢睡觉时被人吵醒，唯独你吵醒我不生气.........&nbsp;</span><img class=\"BDE_Image\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=9da3407d99504fc2a25fb00dd5dce7f0/69d05982b2b7d0a2be79c8e8c9ef76094a369a7c.jpg\" pic_ext=\"jpeg\" pic_type=\"0\" width=\"356\" height=\"220\" style=\"border: 0px; margin-top: 8px; max-width: 570px; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; cursor: url(http://tb2.bdstatic.com/tb/static-pb/img/cur_zin.cur), pointer; background-color: rgb(255, 255, 255);\"/><br style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">你知道吗，你说我什么事都不和你说，我只是笑笑，可是你不知道，我第一次为一个人哭这么久，那天，你说你要去死，在马路上，12点了，我家里人不给我出去，我哭着打电话给你的朋友们，问他们你在哪，他们说不知道，我说你要去死，他们劝我别当真，你只是说说，你知道当时我有多担心吗，后来，你说在我家楼下，见不到我就去死，我哭着跑下去，我妈追出来，问</span><a href=\"http://www.baidu.com/s?wd=%CE%D2%D4%F5%C3%B4%C1%CB&ie=gbk&tn=SE_hldp00990_u6vqbx10\" class=\"ps_cb\" target=\"_blank\" style=\"color: rgb(45, 100, 179); outline: 0px; text-decoration: none; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">我怎么了</a><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">，我只是哭这叫她别跟过来，我妈拉着我，不让我走，在楼下，我明明看到你的了，我想追过去，我妈拉着我不让，我就这么看着你走远，那种撕心裂肺的感觉，你有吗，我那晚蹲在楼下</span><a href=\"http://www.baidu.com/s?wd=%BF%DE%C1%CB%B6%E0%BE%C3&ie=gbk&tn=SE_hldp00990_u6vqbx10\" class=\"ps_cb\" target=\"_blank\" style=\"color: rgb(45, 100, 179); outline: 0px; text-decoration: none; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">哭了多久</a><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">，路人保安都来看，我妈也来劝我，我都不听，我想看到你，我哭了多久你知道吗 ，你第二天看到我 打了快100多个电话，短信还没看完就打电话给我，你说你在广西了，当时我就哭了，你叫我别哭，你马上回来，我哽咽着说好，你说你再也不会这样的了，你说你再也不走的了</span><img class=\"BDE_Image\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=0ab562154dc2d562f208d0e5d71090f3/9d66b2b7d0a20cf4822032aa74094b36adaf997c.jpg\" pic_ext=\"jpeg\" pic_type=\"0\" width=\"330\" height=\"220\" style=\"border: 0px; margin-top: 8px; max-width: 570px; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; cursor: url(http://tb2.bdstatic.com/tb/static-pb/img/cur_zin.cur), pointer; background-color: rgb(255, 255, 255);\"/><br style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">那天，小梦生日，你和我聊天，你说你明天要去云南了，我说我想见你，你在哪，你过来接我，去吃你的送别饭，我在那没说几句话，我怕我说多了眼泪会掉，还没吃完我们就走了，在门口，我哭着说不走好不好，你说不行，那晚我们遛街我一直在哭，你叫我别哭可是我忍不住，我真的舍不得，我第一次这么舍不得一个人，我说我明天不上课请假我去送你好不好，你不让，说到了第一个电话就打电话给我(后面到了也没打，还是我打过去的)你边檫我眼泪边说，不管我们以后在不在一起，都不要忘记对方好不好，我哭着说好，可是我们现在怎么了，曾经说好的呢&nbsp;</span><img class=\"BDE_Image\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=2fddb687d762853592e0d229a0ee76f2/7653d0a20cf431ad7f628f4c4936acaf2fdd987c.jpg\" pic_ext=\"jpeg\" pic_type=\"0\" width=\"397\" height=\"220\" style=\"border: 0px; margin-top: 8px; max-width: 570px; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; cursor: url(http://tb2.bdstatic.com/tb/static-pb/img/cur_zin.cur), pointer; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">&nbsp;我为你和家里吵架，因为你只是晚上叫我出去，出去吃宵夜什么的，每次我都说好，你却不知道我和家里吵了多凶，读书的时候不能出去玩，我还是和你出去了，我违背家里的意见，父母快对我绝望了，我不怕，为你，值得，每当我心情不好时，叫你出来，你总是能过来，无论多忙，有段时间，我对你很绝情，我以为我能离开你，你不知道，那天，在楼梯里，你拉着我的手说别走，我甩开时信有多痛，我的另一个手紧握拳头，强忍着，转过楼梯时，我的眼泪都掉下来了，我却还是大声说叫你别来找我，还记得你送我的钥匙扣吗，我走到你看不见的位置时它的2个娃娃掉了一个，我把它拿起来，忍着泪回家了，一上楼我就后悔了......</span><img class=\"BDE_Image\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=fa4f2c278735e5dd902ca5d746c7a7f5/14460cf431adcbefc384b273aeaf2edda2cc9f7c.jpg\" pic_ext=\"jpeg\" pic_type=\"0\" width=\"221\" height=\"220\" style=\"border: 0px; margin-top: 8px; max-width: 570px; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; cursor: url(http://tb2.bdstatic.com/tb/static-pb/img/cur_zin.cur), pointer; background-color: rgb(255, 255, 255);\"/><br style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"/><br style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">你说你不喜欢我哭，我强忍着不住抽泣的肩膀紧握拳头却还是哭了，你回来我就不哭了好不好，我</span><a href=\"http://www.baidu.com/s?wd=%D5%E6%B5%C4%CF%EB%C4%E3%C1%CB&ie=gbk&tn=SE_hldp00990_u6vqbx10\" class=\"ps_cb\" target=\"_blank\" style=\"color: rgb(45, 100, 179); outline: 0px; text-decoration: none; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; background-color: rgb(255, 255, 255);\">真的想你了</a><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">，离不开你了 ，你回来我什么都听你的，好不好，不要不管我，我受不了......这么晚了我还没睡你怎么不说我了......你在哪，我问他们，他们都说不知道.你到底在哪.....&nbsp;</span><img class=\"BDE_Image\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=63ef7c70e7dde711e7d243fe97eecef4/c81031adcbef7609fdbb55ea2cdda3cc7dd99e7c.jpg\" pic_ext=\"jpeg\" pic_type=\"0\" width=\"219\" height=\"220\" style=\"border: 0px; margin-top: 8px; max-width: 570px; font-family: Arial, 宋体; font-size: 14px; line-height: 24px; white-space: normal; cursor: url(http://tb2.bdstatic.com/tb/static-pb/img/cur_zin.cur), pointer; background-color: rgb(255, 255, 255);\"/><span style=\"font-family: Arial, 宋体; font-size: 14px; line-height: 24px; background-color: rgb(255, 255, 255);\">我们认识半年，不长，故事却很多，我没想象中那么脆弱，回忆换不回你的温柔--------我们的故事不长，却足够我用一辈子来释怀</span></p>', '0');
INSERT INTO `shop_trade` VALUES ('25', '晓晓的悲伤', '2014-09-30', '30', '<p>		&nbsp;</p><p>		&nbsp;</p><p>		&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &#39;Microsoft YaHei&#39;, &#39;Courier New&#39;, Courier; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">离开你，我哭了。从此我不会再有你的拥抱，不会再有你的关怀，不会再有你的宠<a href=\"http://www.sanwen8.cn/sanwen/love/\" target=\"_blank\" style=\"text-decoration: none; color: rgb(68, 68, 68);\">爱</a>。遇上你是我一生最大的<a href=\"http://zuowen.sanwen.net/z/219426-kuaile\" target=\"_blank\" style=\"text-decoration: none; color: rgb(68, 68, 68);\">快乐</a>，爱上你是我一生最大的快乐<a href=\"http://xingfu.sanwen8.cn/\" target=\"_blank\" style=\"text-decoration: none; color: rgb(68, 68, 68);\">幸福</a>，可是我却选择了离开你，哪怕离开你我会哭，会痛不欲生，可是我还是选择了离开你。知道为什么吗？因为我那样的爱着你，我也同样的痛。</p><p style=\"margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &#39;Microsoft YaHei&#39;, &#39;Courier New&#39;, Courier; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">你知道有句话是这样说的吗？不在乎天长地久只在乎<a href=\"http://cengjing.sanwen8.cn/\" target=\"_blank\" style=\"text-decoration: none; color: rgb(68, 68, 68);\">曾经</a>拥有，我曾经拥有了你，我此生已经足够了。在我今后的<a href=\"http://www.sanwen.net/suibi/shenghuo/\" target=\"_blank\" style=\"text-decoration: none; color: rgb(68, 68, 68);\">生活</a>里，我会带着我们那些相爱的<a href=\"http://www.sanwen8.cn/\" target=\"_blank\" style=\"text-decoration: none; color: rgb(68, 68, 68);\">美好</a><a href=\"http://huiyi.sanwen8.cn/\" target=\"_blank\" style=\"text-decoration: none; color: rgb(68, 68, 68);\">回忆</a>而生活。</p><p style=\"margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &#39;Microsoft YaHei&#39;, &#39;Courier New&#39;, Courier; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">我知道你会担心我，会<a href=\"http://sinian.sanwen8.cn/\" target=\"_blank\" style=\"text-decoration: none; color: rgb(68, 68, 68);\">牵挂</a>我，我也知道你有多么的放不下我，但是，我请你原谅我的自私，放我自由，我向你保证，我会快乐！</p><p style=\"margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &#39;Microsoft YaHei&#39;, &#39;Courier New&#39;, Courier; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">也许在未来没有你为我挡风遮<a href=\"http://www.sanwen.net/sanwen/yu/\" target=\"_blank\" style=\"text-decoration: none; color: rgb(68, 68, 68);\">雨</a>的时候，一个人的日子里，我会受伤，会痛，会流泪，但是，我不会告诉你，因为我要习惯一个人去面对一切。</p><p style=\"margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &#39;Microsoft YaHei&#39;, &#39;Courier New&#39;, Courier; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">在今后没有我的日子，我请你为我好好的保重<a href=\"http://xiangxinziji.sanwen8.cn/\" target=\"_blank\" style=\"text-decoration: none; color: rgb(68, 68, 68);\">自己</a>，照顾好自己，不管发生什么事，都要快乐，因为我也同样的担心你，牵挂你，因为我要你快乐，就像你要我快乐一样！</p><p style=\"margin-top: 0px; margin-bottom: 1em; padding: 0px; text-indent: 2em; color: rgb(68, 68, 68); font-family: &#39;Microsoft YaHei&#39;, &#39;Courier New&#39;, Courier; font-size: 14px; line-height: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">今生你我无缘，我希望下辈子我们不要再错过彼此！！</p><p><br/></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;		</p>', '1');
INSERT INTO `shop_trade` VALUES ('26', '两个下雪的夜', '2014-09-28', '37', '<p><br/></p><p>钢琴手的指尖</p><p>弹抒情的音乐</p><p>又一年</p><p>拥挤的咖啡店</p><p>落地窗的外面</p><p>下起雪</p><p>地球在转着圈</p><p>你那边是几点</p><p>隔好远</p><p>你发来的邮件</p><p>有温暖的字眼</p><p>读几遍都不厌</p><p>我记得那场大雪</p><p>在圣诞的夜</p><p>下在我爱上你的瞬间</p><p>两公里送我的街</p><p>到我家门前</p><p>两行脚印一深一浅</p><p>我怀念那场大雪</p><p>当事过境迁</p><p>回忆象现在一样新鲜</p><p>我靠在你的右肩</p><p>曾笑得多甜</p><p>幸福会让人晕眩</p><p>过完这个冬天</p><p>要飞去你身边</p><p>我许愿</p><p>这漫长的分别</p><p>爱却有增无减</p><p>我想念你的脸</p><p>我记得那场大雪</p><p>在圣诞的夜</p><p>下在我爱上你的瞬间</p><p>两公里送我的街</p><p>到我家门前</p><p>两行脚印一深一浅</p><p>我怀念那场大雪</p><p>当事过境迁</p><p>回忆象现在一样新鲜</p><p>我靠在你的右肩</p><p>曾笑得多甜</p><p>幸福会让人晕眩</p><p>现在又下起大雪</p><p>在圣诞的夜</p><p>我一个人在写圣诞卡片</p><p>不需要太多语言</p><p>就以吻封缄</p><p>我相信你会了解</p><p>现在又下起大雪</p><p>象昔日重现</p><p>我迫不及待等下次再见</p><p>我和你相反季节</p><p>隔半个世界</p><p>爱的是这份坚决</p><p><br/></p>', '1');

-- ----------------------------
-- Table structure for shop_video
-- ----------------------------
DROP TABLE IF EXISTS `shop_video`;
CREATE TABLE `shop_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(100) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `type` varchar(11) DEFAULT NULL,
  `state` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_video
-- ----------------------------
INSERT INTO `shop_video` VALUES ('20', '/uploads/media/54253126a4932.mp3', '彭大爷', '/uploads/media/542531ed3322d.jpg', '测试', '2014-09-26', '17:29:17', '1', '0');
INSERT INTO `shop_video` VALUES ('21', '/uploads/media/54253cd8c6540.mp4', '彭大爷', '/uploads/media/54253cf796e82.png', '小苹果', '2014-09-26', '18:16:23', '3', '1');
