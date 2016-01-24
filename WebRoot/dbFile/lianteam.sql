/*
Navicat MySQL Data Transfer

Source Server         : LianTeamWest
Source Server Version : 50622
Source Host           : hhwei.gotoftp11.com:3306
Source Database       : hhwei

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2016-01-24 18:58:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_archive
-- ----------------------------
DROP TABLE IF EXISTS `t_archive`;
CREATE TABLE `t_archive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `author` varchar(64) DEFAULT NULL,
  `creattime` datetime DEFAULT NULL,
  `content` text,
  `image` varchar(128) DEFAULT NULL,
  `sortrank` int(11) DEFAULT '50',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=506 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_archive
-- ----------------------------
INSERT INTO `t_archive` VALUES ('1', '45', '研途有我，鼎新未来——2016届春季研究生毕业典礼暨学位授予仪式举行', '管理员', '2016-01-19 00:00:00', '2016年1月15日上午，以“研途有我，鼎新未来”为主题的2016届北京科技大学春季研究生毕业典礼暨学位授予仪式在体育馆隆重举行。全体在校校领导、校学位委员会委员、相关部处和各学院及研究生单位培养负责人出席了典礼，2000余名博士毕业生和硕士毕业生以及他们的亲友参与了整个活动。活动由副校长王戈主持。', null, '50');
INSERT INTO `t_archive` VALUES ('2', '18', '学校召开实验室安全工作会议暨实验室安全年总结大会', '管理员', '2016-01-19 00:00:00', '学校召开实验室安全工作会议暨实验室安全年总结大会', null, '50');
INSERT INTO `t_archive` VALUES ('3', '18', '研途有我，鼎新未来——2016届春季研究生毕业典礼暨学位授予仪式举行', '管理员', '2016-01-19 00:00:00', '2016年1月15日上午，以“研途有我，鼎新未来”为主题的2016届北京科技大学春季研究生毕业典礼暨学位授予仪式在体育馆隆重举行。全体在校校领导、校学位委员会委员、相关部处和各学院及研究生单位培养负责人出席了典礼，2000余名博士毕业生和硕士毕业生以及他们的亲友参与了整个活动。活动由副校长王戈主持。', null, '50');
INSERT INTO `t_archive` VALUES ('4', '23', '学校召开实验室安全工作会议暨实验室安全年总结大会', '管理员', '2016-01-19 00:00:00', '学校召开实验室安全工作会议暨实验室安全年总结大会', null, '50');
INSERT INTO `t_archive` VALUES ('6', '17', '研途有我，鼎新未来——2016届春季研究生毕业典礼暨学位授予仪式举行', '管理员', '2016-01-19 00:00:00', '2016年1月15日上午，以“研途有我，鼎新未来”为主题的2016届北京科技大学春季研究生毕业典礼暨学位授予仪式在体育馆隆重举行。全体在校校领导、校学位委员会委员、相关部处和各学院及研究生单位培养负责人出席了典礼，2000余名博士毕业生和硕士毕业生以及他们的亲友参与了整个活动。活动由副校长王戈主持。', null, '50');
INSERT INTO `t_archive` VALUES ('7', '18', '学校召开实验室安全工作会议暨实验室安全年总结大会', '管理员', '2016-01-19 00:00:00', '学校召开实验室安全工作会议暨实验室安全年总结大会', null, '50');
INSERT INTO `t_archive` VALUES ('8', '23', '研途有我，鼎新未来——2016届春季研究生毕业典礼暨学位授予仪式举行', '管理员', '2016-01-19 00:00:00', '2016年1月15日上午，以“研途有我，鼎新未来”为主题的2016届北京科技大学春季研究生毕业典礼暨学位授予仪式在体育馆隆重举行。全体在校校领导、校学位委员会委员、相关部处和各学院及研究生单位培养负责人出席了典礼，2000余名博士毕业生和硕士毕业生以及他们的亲友参与了整个活动。活动由副校长王戈主持。', null, '50');
INSERT INTO `t_archive` VALUES ('9', '23', '学校召开实验室安全工作会议暨实验室安全年总结大会', '管理员', '2016-01-19 00:00:00', '学校召开实验室安全工作会议暨实验室安全年总结大会', null, '50');
INSERT INTO `t_archive` VALUES ('13', '23', '研途有我，鼎新未来——2016届春季研究生毕业典礼暨学位授予仪式举行', '管理员', '2016-01-19 00:00:00', '2016年1月15日上午，以“研途有我，鼎新未来”为主题的2016届北京科技大学春季研究生毕业典礼暨学位授予仪式在体育馆隆重举行。全体在校校领导、校学位委员会委员、相关部处和各学院及研究生单位培养负责人出席了典礼，2000余名博士毕业生和硕士毕业生以及他们的亲友参与了整个活动。活动由副校长王戈主持。', null, '50');
INSERT INTO `t_archive` VALUES ('14', '18', '学校召开实验室安全工作会议暨实验室安全年总结大会', '管理员', '2016-01-19 00:00:00', '学校召开实验室安全工作会议暨实验室安全年总结大会', null, '50');
INSERT INTO `t_archive` VALUES ('15', '18', '研途有我，鼎新未来——2016届春季研究生毕业典礼暨学位授予仪式举行', '管理员', '2016-01-19 00:00:00', '2016年1月15日上午，以“研途有我，鼎新未来”为主题的2016届北京科技大学春季研究生毕业典礼暨学位授予仪式在体育馆隆重举行。全体在校校领导、校学位委员会委员、相关部处和各学院及研究生单位培养负责人出席了典礼，2000余名博士毕业生和硕士毕业生以及他们的亲友参与了整个活动。活动由副校长王戈主持。', null, '50');
INSERT INTO `t_archive` VALUES ('16', '18', '学校召开实验室安全工作会议暨实验室安全年总结大会', '管理员', '2016-01-19 00:00:00', '学校召开实验室安全工作会议暨实验室安全年总结大会', null, '50');
INSERT INTO `t_archive` VALUES ('17', '23', '研途有我，鼎新未来——2016届春季研究生毕业典礼暨学位授予仪式举行', '管理员', '2016-01-19 00:00:00', '2016年1月15日上午，以“研途有我，鼎新未来”为主题的2016届北京科技大学春季研究生毕业典礼暨学位授予仪式在体育馆隆重举行。全体在校校领导、校学位委员会委员、相关部处和各学院及研究生单位培养负责人出席了典礼，2000余名博士毕业生和硕士毕业生以及他们的亲友参与了整个活动。活动由副校长王戈主持。', null, '50');
INSERT INTO `t_archive` VALUES ('18', '23', '学校召开实验室安全工作会议暨实验室安全年总结大会', '管理员', '2016-01-19 00:00:00', '学校召开实验室安全工作会议暨实验室安全年总结大会', null, '50');
INSERT INTO `t_archive` VALUES ('19', '23', '研途有我，鼎新未来——2016届春季研究生毕业典礼暨学位授予仪式举行', '管理员', '2016-01-19 00:00:00', '2016年1月15日上午，以“研途有我，鼎新未来”为主题的2016届北京科技大学春季研究生毕业典礼暨学位授予仪式在体育馆隆重举行。全体在校校领导、校学位委员会委员、相关部处和各学院及研究生单位培养负责人出席了典礼，2000余名博士毕业生和硕士毕业生以及他们的亲友参与了整个活动。活动由副校长王戈主持。', null, '50');
INSERT INTO `t_archive` VALUES ('20', '18', '学校召开实验室安全工作会议暨实验室安全年总结大会', '管理员', '2016-01-19 00:00:00', '学校召开实验室安全工作会议暨实验室安全年总结大会', null, '50');
INSERT INTO `t_archive` VALUES ('504', '17', '2015年度国家自然科学基金工作总结会暨2016年度申报动员会召开', '管理员', '2016-01-20 00:00:00', '1月14日，2015年度国家自然科学基金工作总结会暨2016年度申报动员会在教工活动中心召开。国家自然科学基金委工程与材料科学部副主任车成卫应邀做专题报告。副校长孙冬柏、科研部部长刘杰民出席会议。300余名科研人员参加会议。', null, '50');
INSERT INTO `t_archive` VALUES ('505', '18', '我校2016年新年晚会华美上演 ', '管理员', '2016-01-20 09:00:00', '我校2016年新年晚会于2015年12月31日晚华美上演，晚会由“春华秋实·筑梦满井”文艺晚会和“忆留贝壳·舞与伦比”跨年舞会组成。(', null, '50');

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `is_title` tinyint(4) DEFAULT '0',
  `sortrank` int(11) DEFAULT '50',
  `url` varchar(128) DEFAULT '#',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES ('1', '关于我们', '0', '0', '50', '#');
INSERT INTO `t_category` VALUES ('2', '团队简介', '1', '0', '50', '#');
INSERT INTO `t_category` VALUES ('3', '团队成员', '1', '0', '50', '#');
INSERT INTO `t_category` VALUES ('4', '专家学者', '1', '0', '50', '#');
INSERT INTO `t_category` VALUES ('5', '研究方向', '0', '0', '50', '#');
INSERT INTO `t_category` VALUES ('6', '正极材料', '5', '0', '50', '#');
INSERT INTO `t_category` VALUES ('7', '电解质', '5', '0', '50', '#');
INSERT INTO `t_category` VALUES ('8', '资源开发', '5', '0', '50', '#');
INSERT INTO `t_category` VALUES ('9', '低碳建材', '5', '0', '50', '#');
INSERT INTO `t_category` VALUES ('10', '科研实力', '0', '0', '50', '#');
INSERT INTO `t_category` VALUES ('11', '科研课题', '10', '0', '50', '#');
INSERT INTO `t_category` VALUES ('12', '实验仪器', '10', '0', '50', '#');
INSERT INTO `t_category` VALUES ('13', '论文专利', '10', '0', '50', '#');
INSERT INTO `t_category` VALUES ('14', '成果转化', '10', '0', '50', '#');
INSERT INTO `t_category` VALUES ('15', '新闻动态', '0', '0', '50', '#');
INSERT INTO `t_category` VALUES ('16', '团队动态', '15', '0', '50', '#');
INSERT INTO `t_category` VALUES ('17', '通知公告', '15', '0', '50', '#');
INSERT INTO `t_category` VALUES ('18', '行业新闻', '15', '0', '50', '#');
INSERT INTO `t_category` VALUES ('19', '生活常识', '15', '0', '50', '#');
INSERT INTO `t_category` VALUES ('20', '合作交流', '0', '0', '50', '#');
INSERT INTO `t_category` VALUES ('21', '学术交流', '20', '0', '50', '#');
INSERT INTO `t_category` VALUES ('22', '国际合作', '20', '0', '50', '#');
INSERT INTO `t_category` VALUES ('23', '团队生活', '0', '0', '50', '#');
INSERT INTO `t_category` VALUES ('24', '团队风采', '23', '0', '50', '#');
INSERT INTO `t_category` VALUES ('25', '课外活动', '23', '0', '50', '#');
INSERT INTO `t_category` VALUES ('26', '加入我们', '0', '0', '50', '#');
INSERT INTO `t_category` VALUES ('27', '研究生招生', '26', '0', '50', '#');
INSERT INTO `t_category` VALUES ('28', '博士生招生', '26', '0', '50', '#');
INSERT INTO `t_category` VALUES ('29', '社会招聘', '26', '0', '50', '#');
INSERT INTO `t_category` VALUES ('30', '联系我们', '26', '0', '50', '#');

-- ----------------------------
-- Table structure for t_focusimage
-- ----------------------------
DROP TABLE IF EXISTS `t_focusimage`;
CREATE TABLE `t_focusimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT '-1',
  `image` varchar(64) DEFAULT NULL,
  `alt` varchar(64) DEFAULT NULL,
  `url` varchar(128) DEFAULT '#',
  `sortrank` varchar(45) DEFAULT '50',
  `content` text,
  `title` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_focusimage
-- ----------------------------
INSERT INTO `t_focusimage` VALUES ('1', '-1', '1.jpg', '连芳实验室', '#', '50', null, null);
INSERT INTO `t_focusimage` VALUES ('2', '-1', '2.jpg', '连芳实验室', '#', '50', null, null);
INSERT INTO `t_focusimage` VALUES ('3', '-1', '3.png', '北京科技大学', '#', '50', null, null);
INSERT INTO `t_focusimage` VALUES ('4', '-1', '4.png', '北京科技大学', '#', '50', null, null);
INSERT INTO `t_focusimage` VALUES ('5', '-1', '5.png', '北京科技大学', '#', '50', null, null);
INSERT INTO `t_focusimage` VALUES ('6', '-2', null, '太阳能电池', '#', '50', '采用有机半导体与二氧化钛复合技术、表面等离子共振（SPR）技术、垂直自组装等二氧化钛改性技术，提高二氧化钛的光催化性能。', '太阳能电池');
INSERT INTO `t_focusimage` VALUES ('7', '-2', null, '固体废弃物循环利', '#', '50', '《非金属矿渣共掺制取低碳胶凝材料关键技术及示范》是由北京科技大学、西安建筑科技大学、首钢环保事业部、陕西龙门钢铁公司环保产业分公司、中科院科技政策管理所五家单位共同承担，国家十二五支撑计划支持的项目。我们针对钢渣成分波动大、胶凝活性低、易磨性差、体积安定性不良的缺点，提出了利用钢渣余热，排渣温度1300-1600℃，通过掺入合适的改性物质，使发生二次物相反应，控制钢渣的化学组成和矿物组成，探寻高温重构过程中矿相演变规律，实现钢渣的高温改性，制备高性能胶凝材料，并对高温改性钢渣的性能进行评价。', '资源利用');
INSERT INTO `t_focusimage` VALUES ('8', '-2', null, '锂离子电池电解质', '#', '50', '包括：LiPF6基、LiBOB基液态电解质，凝胶聚合物电解质等。我们专注于硼基锂盐LiBOB的合成与表征、与正负极材料的相容性、以及LiBOB盐在离子液体和聚合物电解质中的应用研究，在固相合成法的基础上创造性地提出流变相合成的理念，并对其作为添加剂在锂离子电池电解液和离子液体中的应用进行了优化。该研究已申请国家专利5项，授权1项。', '电解质');
INSERT INTO `t_focusimage` VALUES ('9', '-2', null, '锂离子电池正极材料', '#', '50', '包括：高容量富锂锰基正极材料、Li[NiMnCo]O2三元系富镍材料、NCA系材料、尖晶石锰酸锂材料，以及高安全性LiMPO4材料。针对锂离子电池正极材料在目前的研究和应用中存在首次可逆效率低下、比容量低、热稳定性较差和循环性能不稳定等问题，本课题组通过掺杂，包覆等表面改性的方法进行了结构和性能的优化。该研究已申请国家专利2项，授权1项。', '正极材料');
