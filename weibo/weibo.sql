/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : weibo

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-04-19 13:04:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attention
-- ----------------------------
DROP TABLE IF EXISTS `attention`;
CREATE TABLE `attention` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL COMMENT '用户id',
  `attentionid` int(10) NOT NULL DEFAULT '0' COMMENT '被关注人的id',
  `isgroup` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否分组 0未分组 1已分组',
  `group` char(255) NOT NULL DEFAULT '未分组' COMMENT '分组',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attention
-- ----------------------------
INSERT INTO `attention` VALUES ('5', '7', '19', '0', '0');
INSERT INTO `attention` VALUES ('7', '20', '19', '0', '0');
INSERT INTO `attention` VALUES ('10', '20', '1', '0', '0');
INSERT INTO `attention` VALUES ('12', '20', '6', '0', '0');
INSERT INTO `attention` VALUES ('13', '20', '7', '0', '0');
INSERT INTO `attention` VALUES ('14', '20', '9', '0', '0');
INSERT INTO `attention` VALUES ('15', '9', '20', '0', '0');
INSERT INTO `attention` VALUES ('16', '23', '24', '0', '0');
INSERT INTO `attention` VALUES ('17', '23', '25', '0', '0');
INSERT INTO `attention` VALUES ('18', '23', '2', '0', '0');
INSERT INTO `attention` VALUES ('50', '2', '6', '0', '未分组');
INSERT INTO `attention` VALUES ('52', '2', '9', '0', '未分组');
INSERT INTO `attention` VALUES ('53', '2', '1', '1', '学校');
INSERT INTO `attention` VALUES ('54', '2', '23', '1', '学校');
INSERT INTO `attention` VALUES ('55', '2', '23', '1', '音乐');
INSERT INTO `attention` VALUES ('56', '25', '1', '0', '未分组');

-- ----------------------------
-- Table structure for collecttag
-- ----------------------------
DROP TABLE IF EXISTS `collecttag`;
CREATE TABLE `collecttag` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `tagname` char(20) NOT NULL COMMENT '标签名',
  `concollid` bigint(15) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collecttag
-- ----------------------------

-- ----------------------------
-- Table structure for concollect
-- ----------------------------
DROP TABLE IF EXISTS `concollect`;
CREATE TABLE `concollect` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `conid` bigint(15) unsigned NOT NULL COMMENT '内容id',
  `collectid` int(10) NOT NULL COMMENT '收藏人id',
  `collecttime` int(10) unsigned NOT NULL COMMENT '收藏时间',
  `collecttags` char(255) NOT NULL DEFAULT '' COMMENT '收藏标签',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of concollect
-- ----------------------------
INSERT INTO `concollect` VALUES ('1', '61', '2', '2015', '');
INSERT INTO `concollect` VALUES ('2', '61', '2', '2015', '');
INSERT INTO `concollect` VALUES ('14', '54', '2', '2015', '');
INSERT INTO `concollect` VALUES ('45', '62', '2', '2015', '');
INSERT INTO `concollect` VALUES ('46', '62', '2', '2015', '');
INSERT INTO `concollect` VALUES ('49', '62', '2', '2015', '');
INSERT INTO `concollect` VALUES ('51', '64', '2', '2015', '');
INSERT INTO `concollect` VALUES ('54', '61', '2', '1429011443', '');
INSERT INTO `concollect` VALUES ('55', '61', '2', '1429011815', '');
INSERT INTO `concollect` VALUES ('57', '61', '2', '1429012026', '');
INSERT INTO `concollect` VALUES ('61', '64', '2', '1429012432', '');
INSERT INTO `concollect` VALUES ('62', '62', '2', '1429012468', '');
INSERT INTO `concollect` VALUES ('63', '62', '2', '1429012510', '');
INSERT INTO `concollect` VALUES ('64', '62', '2', '1429012630', '');
INSERT INTO `concollect` VALUES ('65', '62', '2', '1429012716', '');
INSERT INTO `concollect` VALUES ('68', '61', '2', '1429386245', '');
INSERT INTO `concollect` VALUES ('69', '61', '2', '1429386374', '');
INSERT INTO `concollect` VALUES ('70', '61', '2', '1429386507', '');
INSERT INTO `concollect` VALUES ('71', '61', '2', '1429386639', '');
INSERT INTO `concollect` VALUES ('72', '61', '2', '1429386777', '');
INSERT INTO `concollect` VALUES ('73', '61', '2', '1429386824', '');
INSERT INTO `concollect` VALUES ('75', '61', '2', '1429386891', '');
INSERT INTO `concollect` VALUES ('76', '61', '2', '1429406593', '');

-- ----------------------------
-- Table structure for concomment
-- ----------------------------
DROP TABLE IF EXISTS `concomment`;
CREATE TABLE `concomment` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `conid` bigint(15) unsigned NOT NULL COMMENT '内容id',
  `comment` char(255) NOT NULL DEFAULT '' COMMENT '评论内容',
  `commentid` int(10) NOT NULL COMMENT '评论人的id(即用户id)',
  `commenttime` int(10) unsigned NOT NULL COMMENT '评论时间',
  `commentsource` char(50) NOT NULL DEFAULT '' COMMENT '评论来源(即设备)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of concomment
-- ----------------------------
INSERT INTO `concomment` VALUES ('6', '76', '我的', '2', '2015', '');
INSERT INTO `concomment` VALUES ('7', '76', '我的', '2', '2015', '');
INSERT INTO `concomment` VALUES ('8', '76', '我的', '2', '2015', '');
INSERT INTO `concomment` VALUES ('9', '76', '的', '2', '2015', '');
INSERT INTO `concomment` VALUES ('10', '76', '我弟弟的', '2', '2015', '');
INSERT INTO `concomment` VALUES ('11', '61', '好歌', '2', '2015', '');
INSERT INTO `concomment` VALUES ('12', '61', '好歌', '2', '2015', '');
INSERT INTO `concomment` VALUES ('13', '61', '好歌', '2', '2015', '');
INSERT INTO `concomment` VALUES ('14', '62', '好歌', '2', '2015', '');
INSERT INTO `concomment` VALUES ('15', '62', '好歌', '2', '2015', '');
INSERT INTO `concomment` VALUES ('16', '62', '好歌', '2', '2015', '');
INSERT INTO `concomment` VALUES ('17', '63', '好歌', '2', '2015', '');
INSERT INTO `concomment` VALUES ('18', '63', '从vb', '2', '2015', '');
INSERT INTO `concomment` VALUES ('19', '81', '订单', '2', '2015', '');
INSERT INTO `concomment` VALUES ('20', '64', '和', '2', '2015', '');
INSERT INTO `concomment` VALUES ('21', '64', '浮点数', '2', '2015', '');
INSERT INTO `concomment` VALUES ('22', '64', '好歌', '2', '2015', '');
INSERT INTO `concomment` VALUES ('23', '64', '干活', '2', '2015', '');
INSERT INTO `concomment` VALUES ('24', '62', '房东', '2', '1429013181', '');
INSERT INTO `concomment` VALUES ('25', '62', '房东 房东', '2', '1429013346', '');
INSERT INTO `concomment` VALUES ('26', '62', '过分过分', '2', '1429013474', '');
INSERT INTO `concomment` VALUES ('27', '62', '还给他', '2', '1429013780', '');
INSERT INTO `concomment` VALUES ('28', '63', '大都督府', '2', '1429014204', '');
INSERT INTO `concomment` VALUES ('29', '82', '发的', '2', '1429018591', '');
INSERT INTO `concomment` VALUES ('30', '61', '好音乐', '2', '1429150454', '');
INSERT INTO `concomment` VALUES ('31', '61', '好音乐', '2', '1429150583', '');
INSERT INTO `concomment` VALUES ('32', '61', '视频', '2', '1429150763', '');
INSERT INTO `concomment` VALUES ('33', '150', '好文', '2', '1429267593', '');
INSERT INTO `concomment` VALUES ('34', '119', '好图', '2', '1429267799', '');
INSERT INTO `concomment` VALUES ('35', '116', '好音乐', '2', '1429267962', '');
INSERT INTO `concomment` VALUES ('36', '115', '佛r', '2', '1429268169', '');
INSERT INTO `concomment` VALUES ('37', '118', '好文章', '2', '1429268378', '');
INSERT INTO `concomment` VALUES ('38', '118', '好文章', '2', '1429268411', '');
INSERT INTO `concomment` VALUES ('39', '116', '炊烟', '2', '1429268441', '');
INSERT INTO `concomment` VALUES ('40', '119', '大峡谷', '2', '1429268996', '');
INSERT INTO `concomment` VALUES ('41', '150', '北大', '2', '1429269012', '');
INSERT INTO `concomment` VALUES ('42', '113', '赫本', '2', '1429270327', '');
INSERT INTO `concomment` VALUES ('43', '118', '好文章', '2', '1429270506', '');
INSERT INTO `concomment` VALUES ('44', '116', '又见炊烟', '2', '1429270548', '');
INSERT INTO `concomment` VALUES ('45', '115', '地藏王', '2', '1429270603', '');
INSERT INTO `concomment` VALUES ('46', '131', '第七个', '2', '1429270665', '');
INSERT INTO `concomment` VALUES ('47', '131', '第七个', '2', '1429270835', '');
INSERT INTO `concomment` VALUES ('48', '118', 'wenzhang', '2', '1429272412', '');
INSERT INTO `concomment` VALUES ('49', '114', '微博', '2', '1429275313', '');

-- ----------------------------
-- Table structure for conpraise
-- ----------------------------
DROP TABLE IF EXISTS `conpraise`;
CREATE TABLE `conpraise` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `conid` bigint(15) NOT NULL COMMENT '内容id',
  `praiseid` int(10) unsigned NOT NULL COMMENT '赞的人的id',
  `praisetime` int(10) unsigned NOT NULL COMMENT '赞的时间',
  `conclass` char(100) NOT NULL COMMENT '内容类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of conpraise
-- ----------------------------
INSERT INTO `conpraise` VALUES ('1', '62', '2', '2015', '');
INSERT INTO `conpraise` VALUES ('2', '62', '2', '2015', '');
INSERT INTO `conpraise` VALUES ('3', '62', '2', '2015', '');
INSERT INTO `conpraise` VALUES ('4', '62', '2', '2015', '');
INSERT INTO `conpraise` VALUES ('5', '61', '2', '2015', '');
INSERT INTO `conpraise` VALUES ('6', '61', '2', '2015', '');
INSERT INTO `conpraise` VALUES ('7', '61', '2', '2015', '');
INSERT INTO `conpraise` VALUES ('8', '61', '2', '2015', '');
INSERT INTO `conpraise` VALUES ('11', '63', '2', '2015', '');
INSERT INTO `conpraise` VALUES ('13', '67', '2', '2015', '');
INSERT INTO `conpraise` VALUES ('14', '66', '2', '2015', '');
INSERT INTO `conpraise` VALUES ('15', '114', '2', '2015', '');
INSERT INTO `conpraise` VALUES ('19', '63', '2', '1429019116', '');
INSERT INTO `conpraise` VALUES ('20', '64', '2', '1429019120', '');
INSERT INTO `conpraise` VALUES ('22', '132', '7', '1429082997', '');
INSERT INTO `conpraise` VALUES ('23', '119', '20', '1429096365', '');
INSERT INTO `conpraise` VALUES ('24', '71', '2', '1429155944', '');
INSERT INTO `conpraise` VALUES ('25', '1', '2', '1429336819', '');
INSERT INTO `conpraise` VALUES ('27', '1', '2', '1429336863', '');
INSERT INTO `conpraise` VALUES ('29', '68', '2', '1429359457', '');
INSERT INTO `conpraise` VALUES ('32', '70', '2', '1429365138', '');

-- ----------------------------
-- Table structure for contrans
-- ----------------------------
DROP TABLE IF EXISTS `contrans`;
CREATE TABLE `contrans` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `transconid` bigint(15) unsigned NOT NULL DEFAULT '0',
  `transtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contrans
-- ----------------------------
INSERT INTO `contrans` VALUES ('1', '0', '2015');
INSERT INTO `contrans` VALUES ('3', '0', '2015');
INSERT INTO `contrans` VALUES ('4', '0', '2015');
INSERT INTO `contrans` VALUES ('5', '0', '2015');
INSERT INTO `contrans` VALUES ('6', '0', '2015');
INSERT INTO `contrans` VALUES ('7', '0', '2015');
INSERT INTO `contrans` VALUES ('8', '0', '2015');
INSERT INTO `contrans` VALUES ('14', '61', '1429016081');
INSERT INTO `contrans` VALUES ('16', '63', '1429019114');
INSERT INTO `contrans` VALUES ('17', '119', '1429096371');
INSERT INTO `contrans` VALUES ('18', '63', '1429096464');
INSERT INTO `contrans` VALUES ('19', '81', '1429096471');
INSERT INTO `contrans` VALUES ('20', '118', '1429098376');
INSERT INTO `contrans` VALUES ('21', '115', '1429098450');
INSERT INTO `contrans` VALUES ('22', '61', '1429115053');
INSERT INTO `contrans` VALUES ('23', '119', '1429162942');
INSERT INTO `contrans` VALUES ('24', '81', '1429162950');
INSERT INTO `contrans` VALUES ('25', '116', '1429163781');
INSERT INTO `contrans` VALUES ('26', '128', '1429163896');
INSERT INTO `contrans` VALUES ('27', '58', '1429163968');
INSERT INTO `contrans` VALUES ('28', '127', '1429166363');
INSERT INTO `contrans` VALUES ('29', '61', '1429350205');

-- ----------------------------
-- Table structure for education
-- ----------------------------
DROP TABLE IF EXISTS `education`;
CREATE TABLE `education` (
  `id` int(30) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(30) NOT NULL COMMENT '用户id',
  `starttime` datetime NOT NULL COMMENT '开始时间',
  `endtime` datetime NOT NULL COMMENT '结束时间',
  `school` char(30) NOT NULL COMMENT '学校',
  `profess` char(30) NOT NULL COMMENT '专业',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of education
-- ----------------------------

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupname` char(20) NOT NULL COMMENT '组名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES ('1', '科技');
INSERT INTO `group` VALUES ('2', '艺术');
INSERT INTO `group` VALUES ('3', '玩');
INSERT INTO `group` VALUES ('4', '狗狗');

-- ----------------------------
-- Table structure for imagecon
-- ----------------------------
DROP TABLE IF EXISTS `imagecon`;
CREATE TABLE `imagecon` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `conid` bigint(15) unsigned NOT NULL,
  `imagename` char(120) NOT NULL,
  `imageadd` char(100) NOT NULL,
  `imagedesc` char(100) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `number` char(30) NOT NULL,
  `imagesize` int(11) unsigned NOT NULL,
  `imagetype` char(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imagecon
-- ----------------------------
INSERT INTO `imagecon` VALUES ('1', '54', '{DABF6C9D-DDC6-4995-8A86-50AC5473674C}.jpg', '/Uploads/2015-04-12/', '人物', '2015', '1428773358552959eec98e3', '0', '');
INSERT INTO `imagecon` VALUES ('2', '54', '{0BBA0A09-0A9D-49E6-ABD2-6337083D3E80}.png', '/Uploads/2015-04-12/', '风景', '2015', '1428773358552959eec98e3', '0', '');
INSERT INTO `imagecon` VALUES ('8', '58', '{AFE79CCA-C5D4-4E8E-87A0-B79CACE0FBD0}.jpg', '/Uploads/2015-04-12/', '宇宙', '2015', '1428816825552a03b930362', '0', '');
INSERT INTO `imagecon` VALUES ('9', '58', '{7F62D7DB-BA15-4DB4-AAAF-992885DE2F5A}.jpg', '/Uploads/2015-04-12/', '宇宙', '2015', '1428816825552a03b930362', '0', '');
INSERT INTO `imagecon` VALUES ('10', '58', '{FBD2938D-910C-4349-9F0F-8A7CA5629CF0}.jpg', '/Uploads/2015-04-12/', '宇宙', '2015', '1428816825552a03b930362', '0', '');
INSERT INTO `imagecon` VALUES ('11', '58', '{F0FD4B19-973B-4C43-B9E6-2FF0C5DF033B}.jpg', '/Uploads/2015-04-12/', '宇宙', '2015', '1428816825552a03b930362', '0', '');
INSERT INTO `imagecon` VALUES ('12', '58', '{01AC9DF4-B1B5-4A14-A0A9-8D23B11511AE}.jpg', '/Uploads/2015-04-12/', '宇宙', '2015', '1428816825552a03b930362', '0', '');
INSERT INTO `imagecon` VALUES ('13', '64', '{E01CC30D-2B51-4A6E-BE94-971060A654D3}.jpg', '/Uploads/2015-04-12/', '水滴', '2015', '1428817523552a067300182', '0', '');
INSERT INTO `imagecon` VALUES ('14', '64', '{CC232470-2B6E-4000-A21D-62895624ED2A}.jpg', '/Uploads/2015-04-12/', '水滴', '2015', '1428817523552a067300182', '0', '');
INSERT INTO `imagecon` VALUES ('15', '64', '{0EF9FCAA-6626-41A1-81AA-679618C30E29}.jpg', '/Uploads/2015-04-12/', '水滴', '2015', '1428817523552a067300182', '0', '');
INSERT INTO `imagecon` VALUES ('16', '64', '{7B2D5C29-E7EF-426A-9300-A75EEBFFAF3C}.jpg', '/Uploads/2015-04-12/', '水滴', '2015', '1428817523552a067300182', '0', '');
INSERT INTO `imagecon` VALUES ('17', '64', '{D7B83ED8-C138-430D-9082-1F3B1800267E}.jpg', '/Uploads/2015-04-12/', '水滴', '2015', '1428817523552a067300182', '0', '');
INSERT INTO `imagecon` VALUES ('24', '87', '{D175CF6A-0CBD-450A-9597-11CF92B3F32B}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428975337552c6ee93a258', '0', '');
INSERT INTO `imagecon` VALUES ('25', '87', '{664C200D-6423-43DB-81BA-5989701D1BD6}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428975337552c6ee93a258', '0', '');
INSERT INTO `imagecon` VALUES ('26', '87', '{665398DE-4006-43D9-AA6D-3D04A5B1AE96}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428975337552c6ee93a258', '0', '');
INSERT INTO `imagecon` VALUES ('27', '88', '{EADB5270-1C7C-40EC-9057-0645F95F81FD}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428975362552c6f0225411', '0', '');
INSERT INTO `imagecon` VALUES ('28', '88', '{1D043ABD-F42B-46C4-A56E-153B8B8EEB8A}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428975362552c6f0225411', '0', '');
INSERT INTO `imagecon` VALUES ('29', '88', '{EF0B0439-973F-4F5C-8CAF-96DD03397765}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428975362552c6f0225411', '0', '');
INSERT INTO `imagecon` VALUES ('30', '89', '{F792EFE1-B471-41C3-AB8A-27DF0C3C7AC2}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428976174552c722e572b8', '0', '');
INSERT INTO `imagecon` VALUES ('31', '89', '{98F1089D-0D98-45BE-A3EB-29E41A04F593}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428976174552c722e572b8', '0', '');
INSERT INTO `imagecon` VALUES ('32', '89', '{3B95083B-4ED6-4D03-889D-E56D373F6D8A}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428976174552c722e572b8', '0', '');
INSERT INTO `imagecon` VALUES ('33', '90', '{5FC88878-29B6-4C6B-8DE7-E0F3DA46B620}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428976351552c72df5dcad', '0', '');
INSERT INTO `imagecon` VALUES ('34', '90', '{0BCC18AD-7F00-4B32-9F05-A472B7B8E98A}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428976351552c72df5dcad', '0', '');
INSERT INTO `imagecon` VALUES ('35', '90', '{92EEBC0F-A7AF-48CA-A08B-E077337AF568}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428976351552c72df5dcad', '0', '');
INSERT INTO `imagecon` VALUES ('36', '91', '{3472D3FA-7DC1-40F8-AA74-63FAB48035D5}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428976357552c72e51a005', '0', '');
INSERT INTO `imagecon` VALUES ('37', '91', '{0BBCE57F-E1E0-4739-8E56-71BE4ED45954}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428976357552c72e51a005', '0', '');
INSERT INTO `imagecon` VALUES ('38', '91', '{794F2A1A-B28F-4A94-9482-B21C2C09AF5A}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428976357552c72e51a005', '0', '');
INSERT INTO `imagecon` VALUES ('39', '92', '{53EA5C79-17B5-4AA5-8B57-22BB151C34AF}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428976395552c730b4580c', '0', '');
INSERT INTO `imagecon` VALUES ('40', '92', '{BEF7E315-00E1-4B29-9A7F-9FAFDED8619D}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428976395552c730b4580c', '0', '');
INSERT INTO `imagecon` VALUES ('41', '92', '{A5D3A3EC-A858-4A9D-A540-041BAE3F7B6A}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428976395552c730b4580c', '0', '');
INSERT INTO `imagecon` VALUES ('42', '93', '{F0616943-C197-4EC4-A8D1-634223D36F38}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428976433552c7331bf226', '0', '');
INSERT INTO `imagecon` VALUES ('43', '93', '{A58D4E35-3A61-4F76-A4B7-1FB63B31BBBC}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428976433552c7331bf226', '0', '');
INSERT INTO `imagecon` VALUES ('44', '93', '{9DF309A3-F22B-4203-97A3-DFA855561A56}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428976433552c7331bf226', '0', '');
INSERT INTO `imagecon` VALUES ('45', '94', '{CC48E302-491B-4C93-B6DC-4F56A8EE58E3}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428976520552c7388d8084', '0', '');
INSERT INTO `imagecon` VALUES ('46', '94', '{6D172C8A-5F1E-4D75-B602-D2BC7B4E4753}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428976520552c7388d8084', '0', '');
INSERT INTO `imagecon` VALUES ('47', '94', '{7F7D3B7F-123C-4A0B-A20B-570764CFBD97}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428976520552c7388d8084', '0', '');
INSERT INTO `imagecon` VALUES ('48', '95', '{55813266-04D3-444D-AA07-953DDC8A5130}.jpg', '/Uploads/2015-04-14/', '赫本', '1429255371', '1428977252552c76641a894', '0', '');
INSERT INTO `imagecon` VALUES ('49', '95', '{62497E1B-F9D3-463E-8EC3-3F6C69CDF430}.jpg', '/Uploads/2015-04-14/', '赫本', '2015', '1428977252552c76641a894', '0', '');
INSERT INTO `imagecon` VALUES ('50', '95', '{2C7EF018-7DA8-49BF-A373-7395BC689A37}.jpg', '/Uploads/2015-04-14/', '赫本', '1429255371', '1428977252552c76641a894', '0', '');
INSERT INTO `imagecon` VALUES ('51', '96', '{3E559AB0-BCF6-4656-8972-03A66AA607D8}.jpg', '/Uploads/2015-04-14/', '赫本', '1429255371', '1428977445552c772554e61', '0', '');
INSERT INTO `imagecon` VALUES ('52', '113', '{0C60B2A9-ADE8-405D-9DBA-95B9C6BBB95F}.jpg', '/Uploads/2015-04-14/', '赫本', '1429255371', '1428980235552c820b3e556', '0', '');
INSERT INTO `imagecon` VALUES ('53', '115', '{27B6A5C6-9883-4C43-84B7-1117AA4E6F35}.jpg', '/Uploads/2015-04-14/', '地藏王', '1429255371', '1428980480552c83008ee86', '0', '');
INSERT INTO `imagecon` VALUES ('54', '119', '{6C3EFED1-0640-4CFD-B3EF-B9635ECC433A}.jpg', '/Uploads/2015-04-14/', '风景1', '1429255371', '1428990170552ca8daa04cf', '0', '');
INSERT INTO `imagecon` VALUES ('55', '119', '{BC610CC4-F25D-49EA-8A5A-F4635762AC63}.jpg', '/Uploads/2015-04-14/', '风景2', '1429255371', '1428990170552ca8daa04cf', '0', '');
INSERT INTO `imagecon` VALUES ('56', '119', '{4C20674E-C792-44F8-AEF1-C18F99C280AA}.jpg', '/Uploads/2015-04-14/', '风景3', '1429255371', '1428990170552ca8daa04cf', '0', '');
INSERT INTO `imagecon` VALUES ('57', '119', '{AB2FC7AD-03CE-4F44-B598-8F70E42FB60B}.jpg', '/Uploads/2015-04-14/', '风景4', '1429255371', '1428990170552ca8daa04cf', '0', '');
INSERT INTO `imagecon` VALUES ('58', '148', '{2BD24567-2F9E-41BA-BEBD-A4D6F5CF42B9}.jpg', '/Uploads/2015-04-17/', '北京大学', '1429255261', '14292552615530b45dc6d35', '344814', 'image/x-ms');
INSERT INTO `imagecon` VALUES ('59', '149', '{284BEAC5-C156-444F-BDE0-30C9726A049D}.jpg', '/Uploads/2015-04-17/', '美丽的北大', '1429255371', '14292553715530b4cbc56e8', '144184', 'jpg');
INSERT INTO `imagecon` VALUES ('60', '150', '{8AACAC02-81FB-4549-8A1B-BD0089DE3F01}.jpg', '/Uploads/2015-04-17/', '北大', '1429255649', '14292556495530b5e1e7d55', '206025', 'jpg');

-- ----------------------------
-- Table structure for imagemodule
-- ----------------------------
DROP TABLE IF EXISTS `imagemodule`;
CREATE TABLE `imagemodule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imgdesc` char(42) NOT NULL COMMENT '模板描述',
  `name` char(100) NOT NULL COMMENT '模板名称',
  `imadd` char(100) NOT NULL DEFAULT '_../../../../../../../Public/Module/' COMMENT '图片地址',
  `modpare` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imagemodule
-- ----------------------------
INSERT INTO `imagemodule` VALUES ('1', '经典', '1.jpg', '/Module/', '套装');
INSERT INTO `imagemodule` VALUES ('2', '蓝色天空', '2.jpg', '/Module/', '模版');
INSERT INTO `imagemodule` VALUES ('3', '海洋', '3.jpg', '/Module/', '封面图');
INSERT INTO `imagemodule` VALUES ('4', '海洋', '4.jpg', '/Module/', '模版');
INSERT INTO `imagemodule` VALUES ('5', '蓝色天空', '5.jpg', '/Module/', '模版');
INSERT INTO `imagemodule` VALUES ('6', '蓝色天空', '6.jpg', '/Module/', '模版');
INSERT INTO `imagemodule` VALUES ('7', '蓝色天空', '7.jpg', '/Module/', '模版');
INSERT INTO `imagemodule` VALUES ('8', '蓝色天空', '8.jpg', '/Module/', '模版');
INSERT INTO `imagemodule` VALUES ('9', 'haiyang', '9.jpg', '/Module/', '模版');

-- ----------------------------
-- Table structure for manaction
-- ----------------------------
DROP TABLE IF EXISTS `manaction`;
CREATE TABLE `manaction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `manid` int(10) unsigned NOT NULL,
  `action` char(25) NOT NULL,
  `actgoal` char(255) NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `conid` bigint(15) unsigned NOT NULL,
  `changmanid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manaction
-- ----------------------------

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  `password` char(32) NOT NULL,
  `sex` int(1) NOT NULL,
  `level` int(1) NOT NULL,
  `state` int(1) NOT NULL,
  `class` char(20) NOT NULL,
  `createtime` datetime NOT NULL,
  ` description` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('20', 'ert3t54', 'e10adc3949ba59abbe56e057f20f883e', '0', '2', '1', '', '2015-04-06 13:54:27', '');
INSERT INTO `manager` VALUES ('21', 'aaaaaaa', 'e10adc3949ba59abbe56e057f20f883e', '0', '1', '1', '', '2015-04-07 15:32:35', '');
INSERT INTO `manager` VALUES ('23', 'aaaaaaa', 'e10adc3949ba59abbe56e057f20f883e', '0', '1', '1', '', '2015-04-07 15:33:11', '');
INSERT INTO `manager` VALUES ('25', 'hahhahha', 'e10adc3949ba59abbe56e057f20f883e', '0', '1', '1', '', '2015-04-07 16:13:49', '');
INSERT INTO `manager` VALUES ('27', 'yige', 'd41d8cd98f00b204e9800998ecf8427e', '1', '2', '1', '', '2015-04-08 15:36:07', '');
INSERT INTO `manager` VALUES ('29', 'erge', 'e00cf25ad42683b3df678c61f42c6bda', '0', '1', '1', '', '2015-04-08 15:39:45', '');
INSERT INTO `manager` VALUES ('30', 'sange', 'e00cf25ad42683b3df678c61f42c6bda', '0', '2', '1', '', '2015-04-08 15:40:09', '');
INSERT INTO `manager` VALUES ('31', 'yige', 'd41d8cd98f00b204e9800998ecf8427e', '1', '2', '1', '', '2015-04-08 15:46:55', '');
INSERT INTO `manager` VALUES ('32', 'editor1', 'c4ca4238a0b923820dcc509a6f75849b', '0', '1', '1', '', '2015-04-08 22:29:20', 'editor1');
INSERT INTO `manager` VALUES ('33', 'editor2', 'c81e728d9d4c2f636f067f89cc14862c', '1', '1', '1', '', '2015-04-08 22:32:18', 'editor2');
INSERT INTO `manager` VALUES ('34', 'editor3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '1', '2', '2', '', '2015-04-08 22:34:08', 'editor3');
INSERT INTO `manager` VALUES ('35', 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', '1', '3', '1', '', '2015-04-10 08:59:47', '');
INSERT INTO `manager` VALUES ('36', 'admin2', 'c84258e9c39059a89ab77d846ddab909', '1', '3', '1', '', '2015-04-10 09:00:12', '');
INSERT INTO `manager` VALUES ('37', 'admin3', '32cacb2f994f6b42183a1300d9a3e8d6', '1', '3', '1', '', '2015-04-10 09:00:39', '');
INSERT INTO `manager` VALUES ('38', 'admin4', 'fc1ebc848e31e0a68e868432225e3c82', '0', '3', '1', '', '2015-04-10 09:01:09', '');
INSERT INTO `manager` VALUES ('39', 'admin5', '26a91342190d515231d7238b0c5438e1', '1', '3', '1', '', '2015-04-10 09:01:38', '');

-- ----------------------------
-- Table structure for manauth
-- ----------------------------
DROP TABLE IF EXISTS `manauth`;
CREATE TABLE `manauth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `usermaster` varchar(10) NOT NULL,
  `contmaster` varchar(10) NOT NULL,
  `picmaster` varchar(10) NOT NULL,
  `gamemaster` varchar(10) NOT NULL,
  `tongjimaster` varchar(10) NOT NULL,
  `othermaster` varchar(10) NOT NULL,
  `authtime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manauth
-- ----------------------------
INSERT INTO `manauth` VALUES ('20', '0', '3', '1,2,3,4', '1,2,3,4', '1,2,3,4', '1,2,3,4', '1,3', '1,2,3,4', '2015-04-07 09:25:02');
INSERT INTO `manauth` VALUES ('21', '0', '3', '1,2,3', '1,2', '3', '1,4', '1,3,4', '1,2,4', '2015-04-07 15:40:51');
INSERT INTO `manauth` VALUES ('22', '0', '2', '3,4', '1,2', '2,3', '1,3', '1,3', '2,4', '2015-04-07 15:44:35');
INSERT INTO `manauth` VALUES ('23', '0', '2', '1,2', '1,2', '1,2', '1,2', '1,2', '1,2', '2015-04-07 15:47:13');
INSERT INTO `manauth` VALUES ('24', '0', '3', '1,4', '3,4', '3,4', '3,4', '1,2', '3,4', '2015-04-07 16:06:15');
INSERT INTO `manauth` VALUES ('34', '0', '2', '1', '2', '3', '1,2', '1,2', '1,2,3', '2015-04-05 22:57:45');
INSERT INTO `manauth` VALUES ('35', '0', '3', '1,2,3,4', '1,2,3,4', '1,2,3,4', '1,2,3,4', '1,2', '1,2,3,4', '2015-04-07 09:00:03');
INSERT INTO `manauth` VALUES ('36', '0', '3', '1,2,3,4', '1,2,3,4', '1,2,3,4', '1,2,3,4', '1,2', '1,2,3,4', '2015-04-07 09:09:09');

-- ----------------------------
-- Table structure for mingan
-- ----------------------------
DROP TABLE IF EXISTS `mingan`;
CREATE TABLE `mingan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `con` char(30) NOT NULL DEFAULT '' COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mingan
-- ----------------------------
INSERT INTO `mingan` VALUES ('51', '广告');

-- ----------------------------
-- Table structure for musiccon
-- ----------------------------
DROP TABLE IF EXISTS `musiccon`;
CREATE TABLE `musiccon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conid` int(11) NOT NULL,
  `musicadd` char(255) NOT NULL,
  `musicname` char(255) NOT NULL DEFAULT '',
  `musicdesc` char(255) NOT NULL,
  `musicsize` bigint(12) unsigned NOT NULL,
  `musictype` char(12) NOT NULL DEFAULT 'mp3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of musiccon
-- ----------------------------
INSERT INTO `musiccon` VALUES ('7', '56', '/Uploads/2015-04-12/', '{B1AB11C7-F1C3-440C-9220-F6912C0978F3}.mp3', '千默', '0', '');
INSERT INTO `musiccon` VALUES ('8', '59', '/Uploads/2015-04-12/', '{537D3248-94B9-4959-BE94-6BF178BA9456}.mp3', '子陵周郎顾', '0', '');
INSERT INTO `musiccon` VALUES ('9', '63', '/Uploads/2015-04-12/', '{5C90D2F9-EEF0-45F1-9512-CC38FCB3B43F}.mp3', '咲', '0', '');
INSERT INTO `musiccon` VALUES ('10', '71', '/Uploads/2015-04-13/', '{E92411EB-DE30-4371-9288-2D9434F83A52}.mp3', '1312222的音乐', '0', '');
INSERT INTO `musiccon` VALUES ('11', '84', '/Uploads/2015-04-14/', '{66EB15DB-1995-4824-9ABF-9474B95E7BA5}.mp3', '刘三姐', '0', '');
INSERT INTO `musiccon` VALUES ('12', '116', '/Uploads/2015-04-14/', '{C6452C50-6E94-4123-B86D-6B8256255D14}.mp3', '又见炊烟', '0', '');

-- ----------------------------
-- Table structure for photoalbum
-- ----------------------------
DROP TABLE IF EXISTS `photoalbum`;
CREATE TABLE `photoalbum` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `number` bigint(15) unsigned NOT NULL,
  `name` char(150) NOT NULL,
  `miaoshu` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photoalbum
-- ----------------------------
INSERT INTO `photoalbum` VALUES ('1', '2', '0', '兄弟连', '哈哈哈哈哈哈啊和哈哈哈哈哈');
INSERT INTO `photoalbum` VALUES ('2', '6', '0', '爱情', '呵呵呵呵呵呵呵呵呵');

-- ----------------------------
-- Table structure for photos
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `albumid` int(11) NOT NULL,
  `imageadd` char(200) NOT NULL,
  `createtime` datetime NOT NULL,
  `photodesc` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photos
-- ----------------------------
INSERT INTO `photos` VALUES ('1', '2', '1', '1.jpg', '2015-04-07 12:00:53', '1');
INSERT INTO `photos` VALUES ('2', '2', '1', '2.jpg', '2015-04-07 13:34:23', '2');
INSERT INTO `photos` VALUES ('3', '6', '2', '3.jpg', '2015-04-07 13:41:04', '3');
INSERT INTO `photos` VALUES ('4', '6', '2', '4.jpg', '2015-04-07 14:06:06', '4');
INSERT INTO `photos` VALUES ('5', '2', '1', '3.jpg', '2015-04-07 17:06:06', '第三张');
INSERT INTO `photos` VALUES ('6', '2', '1', '4.jpg', '2015-04-07 18:06:06', '第四张');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `tagname` char(50) NOT NULL COMMENT '标签名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tags
-- ----------------------------

-- ----------------------------
-- Table structure for textcon
-- ----------------------------
DROP TABLE IF EXISTS `textcon`;
CREATE TABLE `textcon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `conid` int(11) NOT NULL,
  `contenttext` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of textcon
-- ----------------------------
INSERT INTO `textcon` VALUES ('1', '6', '<p>第三方的方式gdfg<img alt=\"005ygPH5jw1epj58adlz7j30jg0nvjsj.jpg\" src=\"/weiboTP/Public/Uploads/ueditor/image/20150411/1428733958770570.jpg\" title=\"1428733958770570.jpg\"/></p>');
INSERT INTO `textcon` VALUES ('2', '8', '<p>多情更比无情苦</p><p><img alt=\"005ygPH5jw1epj58adlz7j30jg0nvjsj.jpg\" src=\"/weiboTP/Public/Uploads/ueditor/image/20150411/1428734698129065.jpg\" title=\"1428734698129065.jpg\"/></p>');
INSERT INTO `textcon` VALUES ('3', '9', '<p>几级啊实打实的</p><p><img alt=\"986a8fd1jw1ep6sn8g8dvj20zk0npwsq.jpg\" src=\"/weiboTP/Public/Uploads/ueditor/image/20150411/1428735010862658.jpg\" title=\"1428735010862658.jpg\"/></p>');
INSERT INTO `textcon` VALUES ('4', '10', '<p>asdsdaxvcv erewr撒的方式的<br/></p>');
INSERT INTO `textcon` VALUES ('5', '14', '<p>太息花色今更易，此身虚度春雨中<br/></p>');
INSERT INTO `textcon` VALUES ('6', '36', '<p>心似千丝网，中有千千结</p><p><img alt=\"005ygPH5jw1epj58adlz7j30jg0nvjsj.jpg\" src=\"/weiboTP/Public/Uploads/ueditor/image/20150411/1428754133648790.jpg\" title=\"1428754133648790.jpg\"/></p>');
INSERT INTO `textcon` VALUES ('7', '118', '<p style=\"text-align:center\"><strong><span style=\"font-size:19px;font-family:宋体\">红楼梦》鉴赏</span></strong></p><p>&nbsp;&nbsp;&nbsp; [<span style=\";font-family:宋体\">作者介绍</span>]</p><p>&nbsp;&nbsp;&nbsp; <span style=\";font-family:宋体\">曹雪芹</span>(1715-1763)<span style=\";font-family:宋体\">，名霜，字梦阮，号雪芹、芹圃、芹溪，是我国伟大的现实主义作家。他性格豪放，喜欢饮酒，多才多艺，工诗善画。“诗笔有奇气”，诗风接近唐代诗人李贺。他孤傲不屈，嫉恶如仇。在穷困艰难的环境里，他“披阅十载，增删五次”，坚持写作长篇小说《红楼梦》。乾隆二十七年</span>(1762)<span style=\";font-family:宋体\">，由于幼子夭亡，曹雪芹感伤成疾，卧床不起，终于因贫病无医，“泪尽而逝”。死后遗留下《红楼梦》前</span>80<span style=\";font-family:宋体\">回的稿子</span>(<span style=\";font-family:宋体\">生前已传抄行世</span>)<span style=\";font-family:宋体\">，</span>80<span style=\";font-family:宋体\">回以后也可能有部分残稿，但佚失不传。今传后</span>40<span style=\";font-family:宋体\">回，一般认为是高鹗所续。</span></p><p>&nbsp;&nbsp;&nbsp; [<span style=\";font-family:宋体\">内容提要</span>]</p><p>&nbsp;&nbsp;&nbsp; <span style=\";font-family:宋体\">《红楼梦》以贾、史、王、薛四大家族为背景，故事情节由主次两条矛盾线索构成。一条是以贾宝玉、林黛玉的爱情为中心，以宝、黛争取爱情自由、婚姻自主和个性解放的思想同封建制度、封建礼教之间的矛盾为线索。林黛玉，为爱情熬尽最后一滴眼泪，含恨而死；贾宝玉，终于离弃“温柔富贵之乡”而遁人了空门；薛宝钗，虽成了荣府的“二奶奶”，却没有真正赢得</span> <span style=\";font-family:宋体\">爱情，陪伴她的是终生的凄凉孤苦。《红楼梦》的另一条线索是以宁、荣二府及其社会关系为中心，以封建的阶级压迫、等级制度以及封建贵族寄生腐朽的生活所造成的封建制度自身的矛盾为线索，以贾府及其亲族的一一衰败为结局。</span></p><p>&nbsp;&nbsp;&nbsp; [<span style=\";font-family:宋体\">脉络分析</span>]</p><p>&nbsp;&nbsp;&nbsp; <span style=\";font-family:宋体\">全书可以分为五大段落。</span></p><p>&nbsp;&nbsp;&nbsp; <span style=\";font-family:宋体\">一、作品的第一回至第五回，是全书的“序幕”</span></p><p>&nbsp;&nbsp;&nbsp; <span style=\";font-family:宋体\">第一回中写了“无材补天”的石头的故事，写了神瑛侍者与绛珠仙草的故事，还写了甄士隐和贾雨村。特别值得注意的是，通过那个石头与空空道人的对话，作者明确地发表了自己对小说创作的主张，这或者正是全书的纲领。《红楼梦》，正是作者的小说创作主张的实践。</span>&nbsp; <span style=\";font-family:宋体\">第二回写冷子兴“演说荣国府”，这在结构上是极其重要的安排。作者要给我们讲述的这个贾府，人物多，头绪多，难以说清，而冷子兴的介绍，正可使读者在“进入”这个贾府之前，对它有一个总体的了解，然后，再一一细写。这样，在第三回里，则浓墨重彩地描写了全书主要人物的出场。即通过林黛玉来到贾府，写了贾母、迎春、探春、惜春、李纨、王夫人、邢夫人、王熙风和贾宝玉等人物陆续出场。到第四回，作者又把笔锋一转，写了薛家的故事。这既是写《红楼梦》中另一个重要人物薛宝钗的出场，更是通过“葫芦僧乱判葫芦案”故事广泛地描写了社会的黑暗，为贾府日后发生的事提供了社会背景。第五回，写贾宝玉神游太虚幻境，与全书第一回中出现的有关“石头”和“灵河岸边”的神话联系起来，并通过贾宝玉看到的“判词”，听到的“仙曲”，预示了《红楼梦》中众多女性的命运，即所谓“万艳同杯</span>(<span style=\";font-family:宋体\">悲</span>)<span style=\";font-family:宋体\">”“千红一窟</span>(<span style=\";font-family:宋体\">哭</span>)<span style=\";font-family:宋体\">”。</span></p><p>&nbsp;&nbsp;&nbsp; <span style=\";font-family:宋体\">二、第六回至第十八回为第二大段</span></p><p>&nbsp;&nbsp;&nbsp; <span style=\";font-family:宋体\">在交待了上述一切之后，从第六回开始，以刘姥姥一进荣国府为契机，全面展开了《红楼梦》的故事。这一大段的主要内容是秦可卿之死和贾元春省亲。这两大事件，都发生在全书开卷不久，以惊人的豪华排场来表现当时的贾府正处于“烈火烹油，鲜花着锦”、“珠宝乾坤、玻璃世界”的兴盛时期。秦可卿，作为一个孙媳妇，其丧事居然可以如此隆重，如此奢华，而且在出殡时竟然有北静王亲来路祭，并对贾政、宝玉父子大加奖誉。这都充分显示了贾府的显要地位。而元春省亲，则更直接说明了贾府乃是封建社会中最有权势的皇亲国戚之家。作者正是通过这两大奢华热闹场面向读者表明，最终一败涂地的贾府曾经是怎样的炙手可热、不可一世。</span></p><p>&nbsp;&nbsp;&nbsp; <span style=\";font-family:宋体\">在秦可卿的丧事中，曹雪芹着力塑造了王熙风这一重要人物。可以说王熙风的最主要的性格特征，如有才干且卖弄才干</span>(<span style=\";font-family:宋体\">协理宁国府</span>)<span style=\";font-family:宋体\">，为夺取金钱而不受任何道德乃至“阴司地狱”的约束</span>(<span style=\";font-family:宋体\">弄权铁槛寺</span>)<span style=\";font-family:宋体\">等等，都得到了最充分的表现。王熙风作为整部《红楼梦》不可或缺的人物，在开卷不久就得到如此深刻的刻画，正为以后凤姐性格的发展打下了极好的基础。</span></p><p>&nbsp;&nbsp;&nbsp; <span style=\";font-family:宋体\">还应提到的是，这一大段中虽然充分表现了贾府的繁华气派，但作者却同时告诉我们，在这繁华的后面，潜藏着无告的悲辛——贾元春泣诉道：“当日既送我到那不得见人的去处……”。秦可卿死后给凤姐托梦的情节，也表明这个繁华兴旺、“赫赫扬扬已将百载”的贾府，正面临着极大的危机。</span></p><p>&nbsp;&nbsp;&nbsp; <span style=\";font-family:宋体\">三、第十九回至第五十四回为第三大段</span></p><p>&nbsp;&nbsp;&nbsp; <span style=\";font-family:宋体\">这一大段，是在秦可卿之死和元妃省亲之后，即在极力渲染了贾府的奢华富贵之后，从四个侧面来展示贾府的生活画卷。</span></p><p>&nbsp;&nbsp;&nbsp; 1<span style=\";font-family:宋体\">．以贾母为首的贾府的主人们，穷奢极欲，“福深还祷福”。清虚观打醮，两宴大观园，宝钗、风姐过生日等豪华享乐的情节都安排在这一大段之中。他们想尽了人间一切享乐的法子，尽情地享乐，每个人都根据自己的情趣而得到满足：大观园中，一大群贵族小姐加上“富贵闲人”贾宝玉，今日赏花，明日赋诗：这是高雅的享乐；呆霸王薛蟠，又有薛蟠式的享乐。而这一大段中的刘姥姥二进荣国府，正是通过刘姥姥的眼睛写出了大观园这个贵族的天堂。刘姥姥客观上成为贾府奢华生活的见证人。</span></p><p>&nbsp;&nbsp;&nbsp; 2<span style=\";font-family:宋体\">。但是，就在这一派温柔富贵的气氛中，却发生了“叔嫂逢五鬼”</span>(<span style=\";font-family:宋体\">第二十五回</span>)<span style=\";font-family:宋体\">、“变生不测风姐泼醋”</span>(<span style=\";font-family:宋体\">第四十四回</span>)<span style=\";font-family:宋体\">的情节，这却是耐人寻味的。第二十三回，写宝玉、黛玉等遵元妃谕搬进了大观园，这里的确成了“花柳繁华地，温柔富贵乡”。但到了第二十五回，先写贾环故意烫伤宝玉，接着写赵姨娘请马道婆“作法”，几乎害死了宝玉和风姐。这虽然是一场迷信的闹剧，但却反映出贾府内部的你死我活的矛盾。第四十三回至四十四回，正写风姐春风得意过生日的时候，突然发生了贾琏与鲍二家的私通的轩然大波。总之，在一派温柔富贵的气氛之中，爆发了一次又一次“灾难”，打破了盛世的假象。</span></p><p>&nbsp;&nbsp;&nbsp; 3<span style=\";font-family:宋体\">．在这一大段中，比较集中地安排了宝玉与黛玉、宝钗三人之间的故事，写出了这几个主要人物的性格和思想。如第十九回，通过袭人之口写宝玉不仅自己不爱读圣贤之书，而且把“凡读书上进的人”都叫作“禄蠹”，认为那些书都是“前人自己不能解圣人之书，便另出己意，混编纂出来的”；第二十回又写宝玉有个呆主意在心里，“他料定原来天生人为万物之灵，凡山川日月之精秀只钟于女儿，须眉男子不过是些渣滓浊沫而已”，“把一切男子都看成混沌浊物，可有可无”；第三十六回写宝玉十分反感宝钗等人对他的劝诫，说“好好的一个清净洁白女儿，也学的沽名钓誉，入了国贼禄鬼之流。这总是前人无故生事，立言竖辞，原为导后世的须眉浊物。不想我生不幸，亦且琼闺秀阁中亦染此风，真真有负天地钟灵毓秀之德……”。同时，宝玉、黛玉的爱情故事也大部分集中在这一大段之中，既表现了他们之间的纯洁、执著的爱情，更表现了他们受到的压力和痛苦的折磨。而宝玉、黛玉的叛逆思想与贾府中正统思想的矛盾，也正是在这一大段中形成激烈的对抗，第三十三回的“不肖种种大承笞挞”，就是集中的表现。</span></p><p>&nbsp;&nbsp;&nbsp; 4<span style=\";font-family:宋体\">．晴雯的不可辱以及鸳鸯抗婚等情节，也是这一大段中的重要侧面。既写出了这些女孩子的纯洁优美，更写出了她们的刚烈和抗争。而第五十三回所写的乌进孝进租，一方面可以看出贾府奢侈生活的巨大耗费，另一方面也可以看到贾府实已人不敷出。</span></p><p>&nbsp;&nbsp;&nbsp; <span style=\";font-family:宋体\">整个第三大段就是由以上四个侧面交错结构而成的。在第二大段的基础上，把表面上的、整体上的繁华富贵与已见端倪的衰败趋势、种种矛盾冲突紧紧结合在一起，真实地展现了这个贵族之家的生活画卷。</span></p><p>&nbsp;&nbsp;&nbsp; <span style=\";font-family:宋体\">四、第五十五回至第七十八回为第四大段</span></p><p>&nbsp;&nbsp;&nbsp; <span style=\";font-family:宋体\">第五十五回，是这一大段的开端，也是全书的一个转折点。读者可以清楚地感受到，此后的贾府，已经走上了无可挽救的衰败之路。在第二回书中，冷子兴说贾府“如今外面的架子虽未甚倒，内囊却也尽上来了”。但从五十五回开始，贾府不仅“内囊”已经尽上来了，而且“外面的架子”也有些支撑不住了。</span></p><p>&nbsp;&nbsp;&nbsp; <span style=\";font-family:宋体\">这一大段，是通过以下七个层次顺序展开的。</span></p><p><br/></p>');
INSERT INTO `textcon` VALUES ('8', '132', '<p style=\"margin-bottom:10px;text-align:left;text-indent:32px;line-height:25px;background: white\"><span style=\";font-family: 宋体;color:#474747\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"font-family: 宋体; color: rgb(71, 71, 71); font-size: 20px;\"><strong>10款小众的编程语言</strong></span></span></p><p style=\"margin-bottom:10px;text-align:left;text-indent:32px;line-height:25px;background: white\"><span style=\"font-family: 宋体; color: rgb(71, 71, 71); font-size: 20px;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"font-family: 宋体; color: rgb(71, 71, 71); font-size: 12px;\"></span></strong><span style=\"font-family: 宋体; color: rgb(71, 71, 71); font-size: 12px;\">2015-04-15 14:37:56</span></span></p><p style=\"margin-bottom:10px;text-align:left;text-indent:32px;line-height:25px;background: white\"><span style=\";font-family: 宋体;color:#474747\">估计大家比较熟悉的小众语言都有</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Google</span><span style=\";font-family:宋体;color:#474747\">的</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Dart</span><span style=\";font-family:宋体;color:#474747\">、</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Facebook</span><span style=\";font-family:宋体;color:#474747\">的</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Hack</span><span style=\";font-family:宋体;color:#474747\">和</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">WhatsApp</span><span style=\";font-family:宋体;color:#474747\">的</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Erlang</span><span style=\";font-family:宋体;color:#474747\">等等，但成名之后估计它们已经是大众语言了。除此之外，我想还有一些语言你可能并不了解。下面我们就一一列出这些害羞的语言与你共分享！</span></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><strong><span style=\";font-family: &#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">1.&nbsp;</span></strong><a href=\"http://golang.org/\" target=\"_blank\"><strong><span style=\"font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#3476B5;text-underline:none\">Go</span></strong></a></p><p style=\"margin-bottom:10px;text-align:left;text-indent:32px;line-height:25px;background: white\"><span style=\";font-family: 宋体;color:#474747\">是基于</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Inferno</span><span style=\";font-family:宋体;color:#474747\">操作系统所开发的。</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Go</span><span style=\";font-family:宋体;color:#474747\">语言于</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">2009</span><span style=\";font-family:宋体;color:#474747\">年</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">11</span><span style=\";font-family:宋体;color:#474747\">月正式宣布推出，成为开放源代码项目，并在</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Linux</span><span style=\";font-family:宋体;color:#474747\">及</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Mac OS X</span><span style=\";font-family:宋体;color:#474747\">平台上进行了实现，后追加</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Windows</span><span style=\";font-family:宋体;color:#474747\">系统下的实现。</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Go</span><span style=\";font-family:宋体;color:#474747\">是</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Google</span><span style=\";font-family:宋体;color:#474747\">开发的一种编译型、并发型编程语言，并具有垃圾回收功能。</span></p><p style=\"text-align:center;text-indent:32px;line-height:25px;background:white\"><a href=\"http://www1.phpchina.com/uploads/allimg/140509/105Q31400-0.jpg\" target=\"_blank\"> </a></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><strong><span style=\";font-family: &#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">2.&nbsp;</span></strong><a href=\"http://elixir-lang.org/\" target=\"_blank\"><strong><span style=\"font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#3476B5;text-underline:none\">Elixir</span></strong></a></p><p style=\"margin-bottom:10px;text-align:left;text-indent:32px;line-height:25px;background: white\"><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Elixir </span><span style=\";font-family:宋体;color:#474747\">是一种函数式编程语言，建立在</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Erlang</span><span style=\";font-family:宋体;color:#474747\">虚拟机之上。它是一种动态语言</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">,</span><span style=\";font-family:宋体;color:#474747\">灵活的语法与宏支持</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">,</span><span style=\";font-family:宋体;color:#474747\">利用</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Erlang</span><span style=\";font-family:宋体;color:#474747\">的能力来构建并发、分布式、容错应用程序与热代码升级。</span></p><p style=\"text-align:center;text-indent:32px;line-height:25px;background:white\"><a href=\"http://cms.csdnimg.cn/article/201405/08/536b246280953.jpg\" target=\"_blank\"> </a></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><strong><span style=\";font-family: &#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">3.&nbsp;</span></strong><a href=\"http://www.rust-lang.org/\" target=\"_blank\"><strong><span style=\"font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#3476B5;text-underline:none\">Rust</span></strong></a></p><p style=\"margin-bottom:10px;text-align:left;text-indent:32px;line-height:25px;background: white\"><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Rust</span><span style=\";font-family:宋体;color:#474747\">是一种系统编程语言，运行速度快，几乎不存在死机现象，并消除了数据争用。</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Rust</span><span style=\";font-family:宋体;color:#474747\">由</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Web</span><span style=\";font-family:宋体;color:#474747\">语言的领军人物</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Brendan Eich</span><span style=\";font-family:宋体;color:#474747\">（</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">JavaScript</span><span style=\";font-family:宋体;color:#474747\">之父），</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Dave Herman</span><span style=\";font-family:宋体;color:#474747\">以及</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Mozilla</span><span style=\";font-family:宋体;color:#474747\">公司的</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Graydon Hoare </span><span style=\";font-family:宋体;color:#474747\">合力开发。</span></p><p style=\"text-align:center;text-indent:32px;line-height:25px;background:white\"><a href=\"http://www1.phpchina.com/uploads/allimg/140509/105Q35132-2.jpg\" target=\"_blank\"> </a></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><strong><span style=\";font-family: &#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">4.&nbsp;</span></strong><a href=\"http://www.scala-lang.org/\" target=\"_blank\"><strong><span style=\"font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#3476B5;text-underline:none\">Scala</span></strong></a></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Scala</span><span style=\";font-family:宋体;color:#474747\">编程语言近来抓住了很多开发者的眼球。作为一种纯粹的</span><a href=\"http://baike.baidu.com/view/125370.htm\"><span style=\"font-family:宋体;color:#3476B5;text-underline:none\">面向对象</span></a><span style=\";font-family:宋体;color:#474747\">编程语言，</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Scala</span><span style=\";font-family:宋体;color:#474747\">天衣无缝地结合了命令式和函数式的编程风格。有人说，</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Scala</span><span style=\";font-family:宋体;color:#474747\">可能是下下一代</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Java</span><span style=\";font-family:宋体;color:#474747\">。</span></p><p style=\"text-align:center;text-indent:32px;line-height:25px;background:white\"><a href=\"http://cms.csdnimg.cn/article/201405/08/536b1a691e4bc.jpg\" target=\"_blank\"> </a></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><strong><span style=\";font-family: &#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">5.&nbsp;</span></strong><a href=\"http://www.erlang.org/\" target=\"_blank\"><strong><span style=\"font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#3476B5;text-underline:none\">Erlang</span></strong></a></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><span style=\";font-family:宋体;color:#474747\">我想大家对</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Erlang</span><span style=\";font-family:宋体;color:#474747\">并不陌生，就在前段时间</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Facebook</span><span style=\";font-family:宋体;color:#474747\">收购了移动</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">IM</span><span style=\";font-family:宋体;color:#474747\">（即时通讯）公司</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">WhatsApp</span><span style=\";font-family:宋体;color:#474747\">的早期架构就是使用</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Erlang</span><span style=\";font-family:宋体;color:#474747\">来做优化的。</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Erlang</span><span style=\";font-family:宋体;color:#474747\">是一种通用的面向并发的编程语言，它由</span><a href=\"http://baike.baidu.com/view/14445.htm\"><span style=\"font-family:宋体;color:#3476B5;text-underline:none\">瑞典</span></a><span style=\";font-family:宋体;color:#474747\">电信设备制造商爱立信所辖的</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">CS-Lab</span><span style=\";font-family:宋体;color:#474747\">开发，目的是创造一种可以应对大规模并发活动的编程语言和运行环境。</span></p><p style=\"text-align:center;text-indent:32px;line-height:25px;background:white\"><a href=\"http://cms.csdnimg.cn/article/201405/08/536b1d5a99a47.jpg\" target=\"_blank\"> </a></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><strong><span style=\";font-family: &#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">6.&nbsp;</span></strong><a href=\"http://mth.github.io/yeti/\" target=\"_blank\"><strong><span style=\"font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#3476B5;text-underline:none\">Yeti</span></strong></a></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><span style=\";font-family:宋体;color:#474747\">是一种</span><a href=\"http://en.wikipedia.org/wiki/ML_(programming_language)\"><span style=\"font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#3476B5;text-underline:none\">ML</span></a><span style=\";font-family:宋体;color:#474747\">形式的函数式编程语言，运行在</span><a href=\"http://java.sun.com/docs/books/jvms/second_edition/html/VMSpecTOC.doc.html\"><span style=\"font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#3476B5;text-underline:none\">JVM</span></a><span style=\";font-family:宋体;color:#474747\">上。</span></p><p style=\"text-align:center;text-indent:32px;line-height:25px;background:white\"><a href=\"http://www1.phpchina.com/uploads/allimg/140509/105Q351O-5.jpg\" target=\"_blank\"> </a></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><strong><span style=\";font-family: &#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">7.&nbsp;</span></strong><a href=\"http://www.pyret.org/\" target=\"_blank\"><strong><span style=\"font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#3476B5;text-underline:none\">Pyret</span></strong></a></p><p style=\"margin-bottom:10px;text-align:left;text-indent:32px;line-height:25px;background: white\"><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Pyret</span><span style=\";font-family:宋体;color:#474747\">是一种主要是为编程教育为主要用途的杰出的编程语言，你可以使用</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Pyret</span><span style=\";font-family:宋体;color:#474747\">探索脚本和函数式编程的融合。使用</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Pyret</span><span style=\";font-family:宋体;color:#474747\">进行开发的项目比较活跃，而且供免费使用或修改。</span></p><p style=\"text-align:center;text-indent:32px;line-height:25px;background:white\"><a href=\"http://www1.phpchina.com/uploads/allimg/140509/105Q355D-6.jpg\" target=\"_blank\"> </a></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><strong><span style=\";font-family: &#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">8.&nbsp;</span></strong><a href=\"http://nimrod-code.org/\" target=\"_blank\"><strong><span style=\"font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#3476B5;text-underline:none\">Nimrod</span></strong></a></p><p style=\"margin-bottom:10px;text-align:left;text-indent:32px;line-height:25px;background: white\"><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Nimrod</span><span style=\";font-family:宋体;color:#474747\">是一个新型的静态类型、命令式编程语言，支持过程式、函数式、面向对象和泛型编程风格而保持简单和高效。</span></p><p style=\"text-align:center;text-indent:32px;line-height:25px;background:white\"><a href=\"http://www1.phpchina.com/uploads/allimg/140509/105Q31250-7.jpg\" target=\"_blank\"> </a></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><strong><span style=\";font-family: &#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">9.&nbsp;</span></strong><a href=\"http://chapel.cray.com/\" target=\"_blank\"><strong><span style=\"font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#3476B5;text-underline:none\">Chapel</span></strong></a></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Chapel</span><span style=\";font-family:宋体;color:#474747\">语言的语法有很多源头，除了常见的如</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">C</span><span style=\";font-family:宋体;color:#474747\">，</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">C++</span><span style=\";font-family:宋体;color:#474747\">，</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Java</span><span style=\";font-family:宋体;color:#474747\">外，它还借鉴了一些科学研究性语言（比如</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Fortran</span><span style=\";font-family:宋体;color:#474747\">和</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Matalb</span><span style=\";font-family:宋体;color:#474747\">）里的概念。这种语言专门为超级计算机和集群设计的，它是</span><a href=\"http://en.wikipedia.org/wiki/Cray\"><span style=\"font-family: &#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#3476B5;text-underline:none\">Cray</span></a><span style=\";font-family:宋体;color:#474747\">的</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Cascade</span><span style=\";font-family:宋体;color:#474747\">研究课题的一部分，由美国国防部高级研究计划局</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">(DARPA)</span><span style=\";font-family:宋体;color:#474747\">参与启动，有一个宏大的高性能计算设想。</span></p><p style=\"text-align:center;text-indent:32px;line-height:25px;background:white\"><a href=\"http://www1.phpchina.com/uploads/allimg/140509/105Q33J9-8.jpg\" target=\"_blank\"> </a></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><strong><span style=\";font-family: &#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">10.&nbsp;</span></strong><a href=\"http://whiley.org/\" target=\"_blank\"><strong><span style=\"font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#3476B5;text-underline:none\">Whiley</span></strong></a></p><p style=\"margin-bottom:10px;text-align:left;text-indent:32px;line-height:25px;background: white\"><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Whiley</span><span style=\";font-family:宋体;color:#474747\">是一个轻量级面向对象和函数式编程语言，目标代码在</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\"> Java </span><span style=\";font-family:宋体;color:#474747\">虚拟机上执行。</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Whiley</span><span style=\";font-family:宋体;color:#474747\">在编译时就可以排除很多错误，例如除</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">0</span><span style=\";font-family:宋体;color:#474747\">、数组越界和空引用等。</span></p><p style=\"text-align:center;text-indent:32px;line-height:25px;background:white\"><a href=\"http://cms.csdnimg.cn/article/201405/08/536b2bb4beb81.jpg\" target=\"_blank\"> </a></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><strong><span style=\";font-family: &#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">11.&nbsp;</span></strong><a href=\"http://clojure.org/\" target=\"_blank\"><strong><span style=\"font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#3476B5;text-underline:none\">Clojure</span></strong></a></p><p style=\"margin-bottom:10px;text-align:left;text-indent:32px;line-height:25px;background: white\"><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Clojure</span><span style=\";font-family:宋体;color:#474747\">是一个在</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">JVM</span><span style=\";font-family:宋体;color:#474747\">平台运行的动态函数式编程语言，其语法接近于</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">LISP</span><span style=\";font-family:宋体;color:#474747\">语言，在</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">JVM</span><span style=\";font-family:宋体;color:#474747\">平台运行的时候，会被编译为</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">JVM</span><span style=\";font-family:宋体;color:#474747\">的字节码进行运算。</span></p><p style=\"text-align:center;text-indent:32px;line-height:25px;background:white\"><a href=\"http://www1.phpchina.com/uploads/allimg/140509/105Q3M46-10.jpg\" target=\"_blank\"> </a></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><strong><span style=\";font-family: &#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">12.&nbsp;</span></strong><a href=\"http://jruby.org/\" target=\"_blank\"><strong><span style=\"font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#3476B5;text-underline:none\">JRuby</span></strong></a></p><p style=\"margin-bottom:10px;text-align:left;text-indent:32px;line-height:25px;background: white\"><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">JRuby</span><span style=\";font-family:宋体;color:#474747\">是面向</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Ruby</span><span style=\";font-family:宋体;color:#474747\">、基于</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Java</span><span style=\";font-family:宋体;color:#474747\">虚拟机</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">(JVM)</span><span style=\";font-family:宋体;color:#474747\">的一种解释程序，它结合了</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Ruby</span><span style=\";font-family:宋体;color:#474747\">语言的简易性和功能强大的</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">JVM</span><span style=\";font-family:宋体;color:#474747\">的执行机制，包括与</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Java</span><span style=\";font-family:宋体;color:#474747\">库</span> <span style=\";font-family:宋体;color:#474747\">全面集成。</span></p><p style=\"text-align:center;text-indent:32px;line-height:25px;background:white\"><a href=\"http://cms.csdnimg.cn/article/201405/08/536b2e7d2f392.jpg\" target=\"_blank\"> </a></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><strong><span style=\";font-family: &#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">13.&nbsp;</span></strong><a href=\"http://coffeescript.org/\" target=\"_blank\"><strong><span style=\"font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#3476B5;text-underline:none\">CoffeeScript</span></strong></a></p><p style=\"margin-bottom:10px;text-align:left;text-indent:32px;line-height:25px;background: white\"><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">CoffeeScript</span><span style=\";font-family:宋体;color:#474747\">是</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">JavaScript</span><span style=\";font-family:宋体;color:#474747\">的转译语言，它会将类似</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\"> Ruby </span><span style=\";font-family:宋体;color:#474747\">语法的代码编译成</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\"> JavaScript</span><span style=\";font-family:宋体;color:#474747\">，而且大部分结构都相似，但不同的是</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\"> CoffeeScript </span><span style=\";font-family:宋体;color:#474747\">拥有更严格的语法。</span></p><p style=\"text-align:center;text-indent:32px;line-height:25px;background:white\"><a href=\"http://www1.phpchina.com/uploads/allimg/140509/105Q340T-12.jpg\" target=\"_blank\"> </a></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><strong><span style=\";font-family: &#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">14.&nbsp;</span></strong><a href=\"https://www.dartlang.org/\" target=\"_blank\"><strong><span style=\"font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#3476B5;text-underline:none\">Dart</span></strong></a></p><p style=\"margin-bottom:10px;text-align:left;text-indent:32px;line-height:25px;background: white\"><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Dart</span><span style=\";font-family:宋体;color:#474747\">是一种基于类的可选类型化编程语言，其设计目标是为</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Web</span><span style=\";font-family:宋体;color:#474747\">编程创造结构化但又富有灵活性的语言；编程方法一目了然，符合程序员的自然习惯，易于学习；能在所有浏览器和不同环境中实现高性能。</span></p><p style=\"text-align:center;text-indent:32px;line-height:25px;background:white\"><a href=\"http://www1.phpchina.com/uploads/allimg/140509/105Q3DC-13.jpg\" target=\"_blank\"> </a></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><strong><span style=\";font-family: &#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">15.&nbsp;</span></strong><a href=\"http://www.r-project.org/\" target=\"_blank\"><strong><span style=\"font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#3476B5;text-underline:none\">R</span></strong></a></p><p style=\"margin-bottom:10px;text-align:left;text-indent:32px;line-height:25px;background: white\"><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">R</span><span style=\";font-family:宋体;color:#474747\">是用于统计分析、绘图的语言和操作环境。</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">R</span><span style=\";font-family:宋体;color:#474747\">是属于</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">GNU</span><span style=\";font-family:宋体;color:#474747\">系统的一个自由、免费、源代码开放的软件，它是一个用于统计计算和统计制图的优秀工具。</span></p><p style=\"text-align:center;text-indent:32px;line-height:25px;background:white\"><a href=\"http://www1.phpchina.com/uploads/allimg/140509/105Q36225-14.jpg\" target=\"_blank\"> </a></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><strong><span style=\";font-family: &#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">16.</span></strong><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">&nbsp;</span><a href=\"https://bitbucket.org/ktg/l\" target=\"_blank\"><strong><span style=\"font-family: &#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#3476B5;text-underline:none\">L++</span></strong></a></p><p style=\"margin-bottom:10px;text-align:left;text-indent:32px;line-height:25px;background: white\"><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">L++</span><span style=\";font-family:宋体;color:#474747\">使用的是类</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Lisp</span><span style=\";font-family:宋体;color:#474747\">语法，最终会转编译为</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">C++</span><span style=\";font-family:宋体;color:#474747\">。例如：</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Hello</span><span style=\";font-family:宋体;color:#474747\">，</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">World</span><span style=\";font-family:宋体;color:#474747\">！</span></p><p style=\"margin-bottom:10px;text-align:left;text-indent:32px;line-height:25px;background: white\"><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">&nbsp;</span></p><table cellpadding=\"0\"><tbody><tr class=\"firstRow\"><td style=\"padding:1px 1px 1px 1px\"><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">1</span></p></td><td style=\"padding:12px 16px 12px 1px\"><p style=\"text-align:left;line-height:25px\"><span style=\"font-size:16px;font-family:宋体\">(main</span></p></td><td style=\"padding:12px 16px 12px 1px\"><br/></td></tr><tr><td style=\"padding:1px 1px 1px 1px\"><p style=\"text-align:left\"><span style=\"font-size:16px;font-family:宋体\">2</span></p></td><td colspan=\"2\" style=\"padding:12px 16px 12px 1px\"><p style=\"text-align:left;line-height:25px\"><span style=\"font-size:16px;font-family:宋体\">&nbsp;&nbsp;(prn</span><span style=\"font-size:16px;font-family:宋体\">&nbsp;</span><span style=\"font-size:16px;font-family:宋体\">&quot;Hello, &nbsp; World!&quot;))</span></p></td></tr></tbody></table><p style=\"margin-bottom:10px;text-align:left;text-indent:32px;line-height:25px;background: white\"><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">&nbsp;</span></p><p style=\"text-align:left;text-indent:32px;line-height:25px;background:white\"><strong><span style=\";font-family: &#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">17.&nbsp;</span></strong><a href=\"http://hacklang.org/\" target=\"_blank\"><strong><span style=\"font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#3476B5;text-underline:none\">Hack</span></strong></a></p><p style=\"margin-bottom:10px;text-align:left;text-indent:32px;line-height:25px;background: white\"><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Hack </span><span style=\";font-family:宋体;color:#474747\">是由</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">Facebook</span><span style=\";font-family:宋体;color:#474747\">开发的，同时结合了动态类型语言（如</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">PHP</span><span style=\";font-family:宋体;color:#474747\">语言）和静态类型语言（如</span><span style=\";font-family:&#39;Helvetica&#39;,&#39;sans-serif&#39;;color:#474747\">C</span><span style=\";font-family:宋体;color:#474747\">语言）两种特点的一种编程语言。通常在使用静态类型语言编程</span> <span style=\";font-family:宋体;color:#474747\">时，开发者会在程序被运行前就知道错误发生的位置。</span></p><p style=\"text-align:center;text-indent:32px;line-height:25px;background:white\"><a href=\"http://www1.phpchina.com/uploads/allimg/140509/105Q35927-15.jpg\" target=\"_blank\"> </a></p><p style=\"margin-bottom:10px;text-align:left;text-indent:32px;line-height:25px;background: white\"><span style=\";font-family: 宋体;color:#474747\">除了上面所列举到的，不知道你还有没有其他的比较实用的新的编程语言可以分享给大家。</span></p><p>&nbsp;</p><p><br/></p>');

-- ----------------------------
-- Table structure for usercon
-- ----------------------------
DROP TABLE IF EXISTS `usercon`;
CREATE TABLE `usercon` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT COMMENT '内容id',
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `text` char(255) NOT NULL DEFAULT '' COMMENT '微博内容',
  `isimage` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否含图片 0不含有 1含有',
  `ismusic` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否含音乐 0不含有 1含有',
  `isvideo` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否含视频 0不含有 1含有',
  `islink` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否含链接 0不含有 1含有',
  `istext` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否大文本(大于140) 0不含有 1含有',
  `link` char(100) NOT NULL DEFAULT '' COMMENT '链接',
  `imagenum` char(30) NOT NULL DEFAULT '0' COMMENT '图片id',
  `musicid` bigint(15) NOT NULL DEFAULT '0' COMMENT '音乐id',
  `videoid` bigint(15) NOT NULL DEFAULT '0' COMMENT '视频id',
  `textid` bigint(15) unsigned NOT NULL DEFAULT '0',
  `property` tinyint(2) NOT NULL DEFAULT '0' COMMENT '属性(原创 转发) 0原创 1转发',
  `transconid` bigint(15) NOT NULL DEFAULT '0' COMMENT '转发内容id',
  `createtime` int(10) unsigned NOT NULL COMMENT '操作时间精确到秒',
  `source` char(50) NOT NULL DEFAULT 'www.weibo.com' COMMENT '来源设备(0手机 1电脑 2网站)',
  `allowcomment` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否允许评论 0允许 1不允许',
  `contranscount` int(10) unsigned NOT NULL,
  `concollectcount` int(10) unsigned NOT NULL,
  `concommentcount` int(10) unsigned NOT NULL,
  `conpraisecount` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usercon
-- ----------------------------
INSERT INTO `usercon` VALUES ('54', '2', '', '1', '0', '0', '0', '0', '', '1428773358552959eec98e3', '0', '0', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '1', '0', '0', '0');
INSERT INTO `usercon` VALUES ('55', '2', '', '0', '0', '1', '0', '0', '', '0', '0', '21', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '1', '0', '0', '0');
INSERT INTO `usercon` VALUES ('56', '2', '', '0', '1', '0', '0', '0', '', '0', '7', '0', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('58', '2', '', '1', '0', '0', '0', '0', '', '1428816825552a03b930362', '0', '0', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '1', '0', '0', '0');
INSERT INTO `usercon` VALUES ('59', '2', '', '0', '1', '0', '0', '0', '', '0', '8', '0', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('61', '6', '', '0', '0', '1', '0', '0', '', '0', '0', '23', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '7', '16', '6', '4');
INSERT INTO `usercon` VALUES ('62', '1', '', '0', '0', '1', '0', '0', '', '0', '0', '24', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '2', '9', '7', '4');
INSERT INTO `usercon` VALUES ('63', '1', '', '0', '1', '0', '0', '0', '', '0', '9', '0', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '3', '2', '3', '2');
INSERT INTO `usercon` VALUES ('64', '1', '', '1', '0', '0', '0', '0', '', '1428817523552a067300182', '0', '0', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '0', '2', '4', '1');
INSERT INTO `usercon` VALUES ('67', '2', '打算此程序 [em4][em6]大范甘迪[em7]豆腐干[em9]', '0', '0', '0', '0', '1', '', '0', '0', '0', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '1', '0', '0', '1');
INSERT INTO `usercon` VALUES ('68', '23', '我的第一条微博[em1][em10]', '0', '0', '0', '0', '1', '', '0', '0', '0', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '1', '1', '0', '1');
INSERT INTO `usercon` VALUES ('69', '24', '13211111111的第一条微博[em8]', '0', '0', '0', '0', '1', '', '0', '0', '0', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('70', '26', '13233333333的微博[em8]', '0', '0', '0', '0', '1', '', '0', '0', '0', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '0', '0', '0', '1');
INSERT INTO `usercon` VALUES ('71', '23', '', '0', '1', '0', '0', '0', '', '0', '10', '0', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '0', '0', '0', '1');
INSERT INTO `usercon` VALUES ('72', '26', '', '0', '0', '1', '0', '0', '', '0', '0', '25', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('81', '1', '第一个的微博博[em10][em6]', '0', '0', '0', '0', '1', '', '0', '0', '0', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '2', '0', '1', '0');
INSERT INTO `usercon` VALUES ('82', '1', '第一个的微博 [em1][em12]', '0', '0', '0', '0', '1', '', '0', '0', '0', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '1', '0', '1', '0');
INSERT INTO `usercon` VALUES ('113', '1', '', '1', '0', '0', '0', '0', '', '1428980235552c820b3e556', '0', '0', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '1', '1', '1', '0');
INSERT INTO `usercon` VALUES ('114', '1', '再次发微博[em11]', '0', '0', '0', '0', '1', '', '0', '0', '0', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '0', '0', '1', '1');
INSERT INTO `usercon` VALUES ('115', '1', '', '1', '0', '0', '0', '0', '', '1428980480552c83008ee86', '0', '0', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '1', '0', '2', '0');
INSERT INTO `usercon` VALUES ('116', '1', '', '0', '1', '0', '0', '0', '', '0', '12', '0', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '1', '0', '3', '0');
INSERT INTO `usercon` VALUES ('117', '20', '[em1]二十的微博', '0', '0', '0', '0', '1', '', '0', '0', '0', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '0', '1', '0', '0');
INSERT INTO `usercon` VALUES ('118', '1', '', '0', '0', '0', '0', '2', '', '0', '0', '0', '7', '0', '0', '1429016081', 'www.weibo.com', '0', '1', '0', '4', '0');
INSERT INTO `usercon` VALUES ('119', '1', '', '1', '0', '0', '0', '0', '', '1428990170552ca8daa04cf', '0', '0', '0', '0', '0', '1429016081', 'www.weibo.com', '0', '2', '0', '2', '1');
INSERT INTO `usercon` VALUES ('126', '2', '', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '1', '14', '1429016081', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('127', '2', '再次发微博[em5]', '0', '0', '0', '0', '1', '', '0', '0', '0', '0', '0', '0', '1429017759', 'www.weibo.com', '0', '1', '0', '0', '0');
INSERT INTO `usercon` VALUES ('129', '2', '', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '1', '16', '1429019114', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('130', '23', '[em5]早上好', '0', '0', '0', '0', '1', '', '0', '0', '0', '0', '0', '0', '1429060993', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('131', '7', '[em1]第七人的微博啊[em2]', '0', '0', '0', '0', '1', '', '0', '0', '0', '0', '0', '0', '1429079759', 'www.weibo.com', '0', '0', '0', '2', '0');
INSERT INTO `usercon` VALUES ('132', '7', '', '0', '0', '0', '0', '2', '', '0', '0', '0', '8', '0', '0', '1429079898', 'www.weibo.com', '0', '0', '0', '0', '1');
INSERT INTO `usercon` VALUES ('133', '20', '', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '1', '17', '1429096371', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('134', '20', '', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '1', '18', '1429096464', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('135', '20', '', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '1', '19', '1429096471', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('136', '20', '', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '1', '20', '1429098376', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('137', '20', '', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '1', '21', '1429098450', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('139', '2', '', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '1', '22', '1429115053', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('140', '20', '', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '1', '23', '1429162942', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('141', '20', '', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '1', '24', '1429162950', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('142', '20', '', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '1', '25', '1429163781', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('143', '20', '', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '1', '26', '1429163896', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('144', '20', '', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '1', '27', '1429163968', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('145', '23', '', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '1', '28', '1429166363', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('147', '2', '', '0', '0', '1', '0', '0', '', '0', '0', '28', '0', '0', '0', '1429185255', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('148', '2', '', '1', '0', '0', '0', '0', '', '14292552615530b45dc6d35', '0', '0', '0', '0', '0', '1429255261', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('149', '2', '', '1', '0', '0', '0', '0', '', '14292553715530b4cbc56e8', '0', '0', '0', '0', '0', '1429255371', 'www.weibo.com', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('150', '1', '', '1', '0', '0', '0', '0', '', '14292556495530b5e1e7d55', '0', '0', '0', '0', '0', '1429255649', 'www.weibo.com', '0', '0', '1', '2', '0');
INSERT INTO `usercon` VALUES ('151', '2', '', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '1', '29', '1429350205', '', '0', '0', '0', '0', '0');
INSERT INTO `usercon` VALUES ('152', '25', '[em1]', '0', '0', '0', '0', '1', '', '0', '0', '0', '0', '0', '0', '1429412527', 'www.weibo.com', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for userconpb
-- ----------------------------
DROP TABLE IF EXISTS `userconpb`;
CREATE TABLE `userconpb` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '用户Id',
  `pb1` char(20) NOT NULL COMMENT '屏蔽词',
  `pb2` char(20) NOT NULL COMMENT '屏蔽词2',
  `pb3` char(20) NOT NULL COMMENT '屏蔽词3',
  `createtime1` char(20) NOT NULL COMMENT '建立时间',
  `createtime2` char(20) NOT NULL COMMENT '建立时间2',
  `createtime3` char(20) NOT NULL COMMENT '建立时间3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userconpb
-- ----------------------------

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `truename` char(30) NOT NULL DEFAULT '还未填写' COMMENT '真实姓名',
  `sexton` char(10) NOT NULL DEFAULT '未知' COMMENT '性取向 (0:男 1:女 2:未知)',
  `sex` char(10) NOT NULL DEFAULT '未知' COMMENT '用户性别 (0:男 1:女 2:未知)',
  `province` char(20) NOT NULL DEFAULT '还未填写' COMMENT '省份',
  `city` char(20) NOT NULL DEFAULT '还未填写' COMMENT '城市',
  `location` char(30) NOT NULL DEFAULT '未知' COMMENT '用户坐标',
  `emption` char(20) NOT NULL DEFAULT '未知' COMMENT '感情状况',
  `birthday` char(30) NOT NULL DEFAULT '还未填写' COMMENT '生日',
  `brief` char(30) NOT NULL DEFAULT '还未填写' COMMENT '个人简介',
  `createtime` char(20) NOT NULL COMMENT '账号创建时间',
  `email` char(60) NOT NULL DEFAULT '' COMMENT '邮箱',
  `QQ` bigint(11) NOT NULL DEFAULT '0' COMMENT 'QQ',
  `MSN` bigint(12) NOT NULL DEFAULT '0' COMMENT 'MSN',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', '1', 'jia', '', '男', '北京市', '朝阳', '', '单身', '', '', '', '', '0', '0');
INSERT INTO `userinfo` VALUES ('2', '6', '', '', '', '河北省', '石家庄', '', '', '', '', '', '', '0', '0');
INSERT INTO `userinfo` VALUES ('3', '1', '', '', '', '陕西省', '西安', '', '', '', '', '', '', '0', '0');
INSERT INTO `userinfo` VALUES ('4', '24', '', '', '', '', '', '', '', '', '', '', '', '0', '0');
INSERT INTO `userinfo` VALUES ('5', '25', '', '', '', '', '', '', '', '', '', '', '', '0', '0');
INSERT INTO `userinfo` VALUES ('6', '26', '还未填写', '未知', '未知', '还未填写', '还未填写', '未知', '未知', '还未填写', '还未填写', '', '', '0', '0');
INSERT INTO `userinfo` VALUES ('7', '20', '还未填写', '未知', '未知', '还未填写', '还未填写', '未知', '未知', '还未填写', '还未填写', '', '', '0', '0');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键自增 用户ID',
  `password` char(32) NOT NULL COMMENT '用户密码',
  `name` char(100) NOT NULL COMMENT '用户名(手机号或邮箱)',
  `sex` tinyint(2) NOT NULL DEFAULT '0',
  `nickname` char(50) NOT NULL COMMENT '用户昵称',
  `num` int(10) NOT NULL COMMENT '用户编号',
  `verified` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否实名验证  0未验证  1已验证',
  `idcard` char(20) NOT NULL DEFAULT '' COMMENT '身份证号',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '积分',
  `imagemodule` tinyint(2) NOT NULL DEFAULT '1' COMMENT '个人中心主页背景模块编号',
  `class` tinyint(2) NOT NULL DEFAULT '1' COMMENT '等级(1~6根据积分判断)',
  `description` char(100) NOT NULL DEFAULT '还没有' COMMENT '个人描述',
  `imageurl` char(100) NOT NULL DEFAULT '3.jpg' COMMENT '头像地址',
  `followercount` int(10) NOT NULL DEFAULT '0' COMMENT '粉丝数',
  `friendcount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关注数',
  `statuscount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '微博数',
  `allowtomsg` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否允许给我发私信 0允许 1不允许',
  `geoenabled` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否允许标记地址位置 0允许 1不允许',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '96e79218965eb72c92a549dd5a330112', 'AA', '0', '第一个', '1', '0', '还未验证', '33', '2', '3', '我的饿修改', '/Uploads/4.jpg', '4', '4', '21', '0', '1');
INSERT INTO `users` VALUES ('2', '96e79218965eb72c92a549dd5a330112', 'aaaA', '0', '第二个', '1', '1', '55555555555555555', '33', '5', '3', '33333333333333333333', '/Uploads/photo/2015-04-19/1429411005.jpg', '1', '4', '14', '0', '0');
INSERT INTO `users` VALUES ('6', '96e79218965eb72c92a549dd5a330112', 'aCC', '0', '第六个', '1', '0', '还未验证', '33', '8', '3', '第二条修改', '/Uploads/1.jpg', '3', '5', '6', '0', '0');
INSERT INTO `users` VALUES ('7', '96e79218965eb72c92a549dd5a330112', 'bbbb', '1', '第七个', '1', '1', '55555555555555555', '33', '5', '3', '33333333333333333333', '/Uploads/1.jpg', '4', '4', '7', '1', '1');
INSERT INTO `users` VALUES ('9', '96e79218965eb72c92a549dd5a330112', 'cc', '0', '第九个', '1', '1', '55555555555555555', '33', '2', '3', '33333333333333333333', '/Uploads/3.jpg', '5', '5', '5', '1', '0');
INSERT INTO `users` VALUES ('11', 'aaaaaaaaa', 'aaaaaaaa', '1', '十一个', '1', '1', '55555555555555555', '33', '2', '3', '33333333333333333333', '/Uploads/3.jpg', '3', '4', '5', '1', '1');
INSERT INTO `users` VALUES ('12', '96e79218965eb72c92a549dd5a330112', 'ddd', '0', '十二个', '1', '1', '55555555555555555', '33', '2', '3', '33333333333333333333', '/Uploads/3.jpg', '3', '4', '5', '1', '1');
INSERT INTO `users` VALUES ('19', '96e79218965eb72c92a549dd5a330112', 'sige', '1', 'sige', '0', '0', '', '0', '1', '0', '还没有', '/Uploads/3.jpg', '0', '2', '0', '0', '1');
INSERT INTO `users` VALUES ('20', '96e79218965eb72c92a549dd5a330112', 'jjj', '0', '二十', '0', '0', '', '0', '8', '0', '一句话描述自己', '/Uploads/3.jpg', '1', '2', '8', '0', '0');
INSERT INTO `users` VALUES ('23', 'e3ceb5881a0a1fdaad01296d7554868d', '13122222222', '0', '13122222222', '0', '0', '', '0', '1', '1', '还没有', '/Uploads/3.jpg', '1', '3', '4', '0', '0');
INSERT INTO `users` VALUES ('24', '96e79218965eb72c92a549dd5a330112', '13211111111', '0', '13211111111', '0', '0', '', '0', '1', '1', '还没有', '/Uploads/3.jpg', '1', '0', '1', '0', '0');
INSERT INTO `users` VALUES ('25', 'e3ceb5881a0a1fdaad01296d7554868d', '13222222222', '0', '13222222222', '0', '0', '', '0', '1', '1', '还没有', '/Uploads/photo/2015-04-19/1429413439.png', '1', '1', '1', '0', '0');
INSERT INTO `users` VALUES ('26', '1a100d2c0dab19c4430e7d73762b3423', '13233333333', '0', '13233333333', '0', '0', '', '0', '1', '1', '还没有', '/Uploads/3.jpg', '0', '0', '2', '0', '0');

-- ----------------------------
-- Table structure for userscore
-- ----------------------------
DROP TABLE IF EXISTS `userscore`;
CREATE TABLE `userscore` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `scorechange` tinyint(3) NOT NULL DEFAULT '0' COMMENT '积分变化',
  `changereason` char(20) NOT NULL COMMENT '变化原因(评论 登录 等)',
  `changetime` char(20) NOT NULL COMMENT '变化时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userscore
-- ----------------------------

-- ----------------------------
-- Table structure for videocon
-- ----------------------------
DROP TABLE IF EXISTS `videocon`;
CREATE TABLE `videocon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conid` int(11) NOT NULL,
  `videoname` char(100) NOT NULL,
  `videoadd` char(100) NOT NULL DEFAULT '',
  `videodesc` char(255) NOT NULL,
  `videosize` bigint(13) unsigned NOT NULL,
  `videotype` char(12) NOT NULL DEFAULT 'mp4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of videocon
-- ----------------------------
INSERT INTO `videocon` VALUES ('21', '55', '{2CDB8A4E-601C-45D2-B798-3246C11E7F6F}.mp4', '/Uploads/2015-04-12/', '日本演歌', '0', 'mp4');
INSERT INTO `videocon` VALUES ('23', '61', '{D7B1A11A-0767-49A3-B67A-8DA11BDFAFEF}.mp4', '/Uploads/2015-04-12/', '红蜻蜓', '0', 'mp4');
INSERT INTO `videocon` VALUES ('24', '62', '{18EB5469-CB00-4CB8-AC66-66EB06D6A90D}.mp4', '/Uploads/2015-04-12/', '自由飞翔', '0', 'mp4');
INSERT INTO `videocon` VALUES ('25', '72', '{6BFDA3CB-4B82-4812-BE15-EE82183F62DB}.mp4', '/Uploads/2015-04-13/', '132333的视频', '0', 'mp4');
INSERT INTO `videocon` VALUES ('26', '83', '{5410E032-5296-4B28-9B32-32B94B144482}.mp4', '/Uploads/2015-04-14/', '坂本冬美', '0', 'mp4');
INSERT INTO `videocon` VALUES ('28', '147', '{632EEE2A-1A9A-460A-BCDB-EE558FBB91C9}.mp4', '/Uploads/2015-04-16/', '习惯孤独', '0', 'mp4');

-- ----------------------------
-- Table structure for work
-- ----------------------------
DROP TABLE IF EXISTS `work`;
CREATE TABLE `work` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `starttime` datetime NOT NULL COMMENT '开始时间',
  `endtime` datetime NOT NULL COMMENT '结束时间',
  `company` char(30) NOT NULL DEFAULT '' COMMENT '公司',
  `position` char(30) NOT NULL DEFAULT '' COMMENT '职位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work
-- ----------------------------
