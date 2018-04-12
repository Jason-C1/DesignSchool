/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : school

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-04-13 01:53:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sc_course`
-- ----------------------------
DROP TABLE IF EXISTS `sc_course`;
CREATE TABLE `sc_course` (
  `cId` int(50) NOT NULL AUTO_INCREMENT,
  `cName` varchar(50) DEFAULT NULL,
  `tId` int(20) DEFAULT NULL,
  `cNum` int(20) DEFAULT NULL,
  PRIMARY KEY (`cId`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc_course
-- ----------------------------
INSERT INTO `sc_course` VALUES ('1', 'java', '1', '56');
INSERT INTO `sc_course` VALUES ('2', 'js', '1', '50');
INSERT INTO `sc_course` VALUES ('3', 'c++', '2', '40');
INSERT INTO `sc_course` VALUES ('4', '测试', '3', '30');
INSERT INTO `sc_course` VALUES ('5', '软件工程', '4', '20');
INSERT INTO `sc_course` VALUES ('6', 'java入门基础一', '1', '30');
INSERT INTO `sc_course` VALUES ('7', 'java入门基础二', '2', '24');
INSERT INTO `sc_course` VALUES ('8', 'java入门基础三', '3', '25');
INSERT INTO `sc_course` VALUES ('9', 'java进阶一', '8', '26');
INSERT INTO `sc_course` VALUES ('10', 'java进阶二', '10', '45');
INSERT INTO `sc_course` VALUES ('11', 'java高级一', '10', '25');
INSERT INTO `sc_course` VALUES ('12', 'java高级二', '12', '21');
INSERT INTO `sc_course` VALUES ('13', 'jsp初级一', '13', '21');
INSERT INTO `sc_course` VALUES ('14', 'jsp初级二', '13', '20');
INSERT INTO `sc_course` VALUES ('15', 'jsp高级一', '15', '20');
INSERT INTO `sc_course` VALUES ('16', 'jsp高级二', '15', '22');
INSERT INTO `sc_course` VALUES ('17', 'Andorid初级', '18', '50');
INSERT INTO `sc_course` VALUES ('18', 'Andorid进阶', '18', '54');
INSERT INTO `sc_course` VALUES ('19', 'Andorid高级', '18', '33');
INSERT INTO `sc_course` VALUES ('20', 'IOS进阶', '19', '20');
INSERT INTO `sc_course` VALUES ('21', 'IOS初级', '19', '50');
INSERT INTO `sc_course` VALUES ('22', '大数据', '20', '21');
INSERT INTO `sc_course` VALUES ('23', '云计算基础', '20', '50');
INSERT INTO `sc_course` VALUES ('24', '云计算高级', '20', '32');
INSERT INTO `sc_course` VALUES ('25', 'node.js', '21', '50');
INSERT INTO `sc_course` VALUES ('26', 'css', '21', '25');
INSERT INTO `sc_course` VALUES ('27', 'html', '1', '30');
INSERT INTO `sc_course` VALUES ('28', 'html5', '1', '35');
INSERT INTO `sc_course` VALUES ('29', 'jQuery进阶', '2', '45');
INSERT INTO `sc_course` VALUES ('30', 'javaScript进阶', '2', '40');
INSERT INTO `sc_course` VALUES ('31', 'css3', '5', '26');
INSERT INTO `sc_course` VALUES ('32', 'jQuery', '2', '28');
INSERT INTO `sc_course` VALUES ('33', 'Bootstrap', '3', '27');
INSERT INTO `sc_course` VALUES ('34', 'PHP进阶二', '25', '26');
INSERT INTO `sc_course` VALUES ('35', 'SpringBoot', '26', '50');
INSERT INTO `sc_course` VALUES ('36', 'SpringBoot进阶', '26', '51');
INSERT INTO `sc_course` VALUES ('37', 'C#高级', '6', '24');
INSERT INTO `sc_course` VALUES ('38', 'Python', '7', '25');
INSERT INTO `sc_course` VALUES ('39', 'Go', '8', '29');
INSERT INTO `sc_course` VALUES ('40', 'Unity3D', '9', '26');
INSERT INTO `sc_course` VALUES ('41', 'Unity3D进阶', '9', '28');
INSERT INTO `sc_course` VALUES ('42', 'Mysql', '27', '26');
INSERT INTO `sc_course` VALUES ('43', 'Mysql进阶', '27', '26');
INSERT INTO `sc_course` VALUES ('44', 'Orcle', '27', '29');
INSERT INTO `sc_course` VALUES ('45', 'Oracle进阶', '27', '28');
INSERT INTO `sc_course` VALUES ('46', 'SQL Server', '27', '30');
INSERT INTO `sc_course` VALUES ('47', '机器学习', '28', '16');
INSERT INTO `sc_course` VALUES ('48', '深度学习', '28', '27');
INSERT INTO `sc_course` VALUES ('49', 'Linux', '29', '50');
INSERT INTO `sc_course` VALUES ('50', 'Linux进阶', '29', '51');
INSERT INTO `sc_course` VALUES ('51', '动效动画', '30', '51');

-- ----------------------------
-- Table structure for `sc_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `sc_teacher`;
CREATE TABLE `sc_teacher` (
  `tId` int(20) NOT NULL AUTO_INCREMENT,
  `tName` varchar(20) DEFAULT NULL,
  `tPwd` varchar(20) DEFAULT NULL,
  `tPic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc_teacher
-- ----------------------------
INSERT INTO `sc_teacher` VALUES ('1', '王华', '123456', 'img/teacher/t01.png');
INSERT INTO `sc_teacher` VALUES ('2', '林峰', '123456', 'img/teacher/t11.png');
INSERT INTO `sc_teacher` VALUES ('3', '丽丽', '123456', 'img/teacher/t04.png');
INSERT INTO `sc_teacher` VALUES ('4', '张儿', '123456', 'img/teacher/t05.png');
INSERT INTO `sc_teacher` VALUES ('5', '胡哲', '123456', 'img/teacher/t06.png');
INSERT INTO `sc_teacher` VALUES ('6', '陈可', '123456', 'img/teacher/t07.png');
INSERT INTO `sc_teacher` VALUES ('7', '张临', '123456', 'img/teacher/t08.png');
INSERT INTO `sc_teacher` VALUES ('8', '刘怡', '123456', 'img/teacher/t09.png');
INSERT INTO `sc_teacher` VALUES ('9', '张成', '123456', 'img/teacher/t10.png');
INSERT INTO `sc_teacher` VALUES ('10', '王一娜', '123456', 'img/teacher/t20.png');
INSERT INTO `sc_teacher` VALUES ('11', '苏川', '123456', 'img/teacher/t29.png');
INSERT INTO `sc_teacher` VALUES ('12', '苏依', '123456', 'img/teacher/t30.png');
INSERT INTO `sc_teacher` VALUES ('13', '吴过', '123456', 'img/teacher/t14.png');
INSERT INTO `sc_teacher` VALUES ('14', '周伯', '123456', 'img/teacher/t16.png');
INSERT INTO `sc_teacher` VALUES ('15', '李英', '123456', 'img/teacher/t02.png');
INSERT INTO `sc_teacher` VALUES ('16', '池晓宁', '123456', 'img/teacher/t17.png');
INSERT INTO `sc_teacher` VALUES ('17', '张晨', '123456', 'img/teacher/t13.png');
INSERT INTO `sc_teacher` VALUES ('18', '陈可', '123456', 'img/teacher/t15.png');
INSERT INTO `sc_teacher` VALUES ('19', '张兴国', '123456', 'img/teacher/t18.png');
INSERT INTO `sc_teacher` VALUES ('20', '章金', '123456', 'img/teacher/t21.png');
INSERT INTO `sc_teacher` VALUES ('21', '苏珍', '123456', 'img/teacher/t28.png');
INSERT INTO `sc_teacher` VALUES ('22', '孙宛如', '123456', 'img/teacher/t22.png');
INSERT INTO `sc_teacher` VALUES ('23', '陈可', '123456', 'img/teacher/t19.png');
INSERT INTO `sc_teacher` VALUES ('24', '王凯', '123456', 'img/teacher/t12.png');
INSERT INTO `sc_teacher` VALUES ('25', '吴鲁', '123456', 'img/teacher/t26.png');
INSERT INTO `sc_teacher` VALUES ('26', '王木', '123456', 'img/teacher/t24.png');
INSERT INTO `sc_teacher` VALUES ('27', '孙明', '123456', 'img/teacher/t23.png');
INSERT INTO `sc_teacher` VALUES ('28', '张桥', '123456', 'img/teacher/t25.png');
INSERT INTO `sc_teacher` VALUES ('29', '陈小权', '123456', 'img/teacher/t27.png');
INSERT INTO `sc_teacher` VALUES ('30', '孙明', '123456', 'img/teacher/t03.png');

-- ----------------------------
-- Table structure for `sc_user`
-- ----------------------------
DROP TABLE IF EXISTS `sc_user`;
CREATE TABLE `sc_user` (
  `uId` int(20) NOT NULL AUTO_INCREMENT,
  `uName` varchar(50) DEFAULT NULL,
  `uPwd` varchar(20) DEFAULT NULL,
  `uPic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uId`)
) ENGINE=InnoDB AUTO_INCREMENT=1035 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc_user
-- ----------------------------
INSERT INTO `sc_user` VALUES ('1', '张三', '123456', 'img/student/st1.png');
INSERT INTO `sc_user` VALUES ('2', '李四', '123456', 'img/student/st2.png');
INSERT INTO `sc_user` VALUES ('3', '王五', '123456', 'img/student/st3.png');
INSERT INTO `sc_user` VALUES ('4', '赵六', '123456', 'img/student/st4.png');
INSERT INTO `sc_user` VALUES ('5', '郭靖', '123456', 'img/student/st5.png');
INSERT INTO `sc_user` VALUES ('6', '杨过', '123456', 'img/student/st6.png');
INSERT INTO `sc_user` VALUES ('7', '黄蓉', '123456', 'img/student/st7.png');
INSERT INTO `sc_user` VALUES ('8', '张无忌', '123456', 'img/student/st8.png');
INSERT INTO `sc_user` VALUES ('9', '小龙女', '123456', 'img/student/st9.png');
INSERT INTO `sc_user` VALUES ('10', '萧峰', '123456', 'img/student/st10.png');
INSERT INTO `sc_user` VALUES ('11', '段誉', '123456', 'img/student/st11.png');
INSERT INTO `sc_user` VALUES ('12', '虚竹', '123456', 'img/student/st12.png');
INSERT INTO `sc_user` VALUES ('13', '赵敏', '123456', 'img/student/st13.png');
INSERT INTO `sc_user` VALUES ('14', '黄药师', '123456', 'img/student/st14.png');
INSERT INTO `sc_user` VALUES ('15', '洪七公', '123456', 'img/student/st15.png');
INSERT INTO `sc_user` VALUES ('16', '欧阳锋', '123456', 'img/student/st16.png');
INSERT INTO `sc_user` VALUES ('17', '一灯大师', '123456', 'img/student/st17.png');
INSERT INTO `sc_user` VALUES ('18', '王重阳', '123456', 'img/student/st18.png');
INSERT INTO `sc_user` VALUES ('19', '周伯通', '123456', 'img/student/st19.png');
INSERT INTO `sc_user` VALUES ('20', '谢逊', '123456', 'img/student/st20.png');
INSERT INTO `sc_user` VALUES ('21', '令狐冲', '123456', 'img/student/st21.png');
INSERT INTO `sc_user` VALUES ('22', '任我行', '123456', 'img/student/st22.png');
INSERT INTO `sc_user` VALUES ('23', '东方不败', '123456', 'img/student/st23.png');
INSERT INTO `sc_user` VALUES ('24', '石破天', '123456', 'img/student/st24.png');
INSERT INTO `sc_user` VALUES ('25', '丁不三', '123456', 'img/student/st25.png');
INSERT INTO `sc_user` VALUES ('26', '丁不四', '123456', 'img/student/st26.png');
INSERT INTO `sc_user` VALUES ('27', '胡斐', '123456', 'img/student/st27.png');
INSERT INTO `sc_user` VALUES ('28', '苗人凤', '123456', 'img/student/st28.png');
INSERT INTO `sc_user` VALUES ('29', '狄云', '123456', 'img/student/st29.png');
INSERT INTO `sc_user` VALUES ('30', '张三丰', '123456', 'img/student/st30.png');
INSERT INTO `sc_user` VALUES ('31', '宋元桥', '123456', 'img/student/st31.png');
INSERT INTO `sc_user` VALUES ('32', '张翠山', '123456', 'img/student/st32.png');
INSERT INTO `sc_user` VALUES ('33', '丘处机', '123456', 'img/student/st33.png');
INSERT INTO `sc_user` VALUES ('34', '王处一', '123456', 'img/student/st34.png');
INSERT INTO `sc_user` VALUES ('35', '马玉', '123456', 'img/student/st35.png');
INSERT INTO `sc_user` VALUES ('36', '郝大通', '123456', 'img/student/st36.png');
INSERT INTO `sc_user` VALUES ('37', '孙不二', '123456', 'img/student/st37.png');
INSERT INTO `sc_user` VALUES ('38', '谭处端', '123456', 'img/student/st38.png');
INSERT INTO `sc_user` VALUES ('39', '梅超风', '123456', 'img/student/st39.png');
INSERT INTO `sc_user` VALUES ('40', '陈玄风', '123456', 'img/student/st40.png');
INSERT INTO `sc_user` VALUES ('41', '陆陈凤', '123456', 'img/student/st41.png');
INSERT INTO `sc_user` VALUES ('42', '冯默峰', '123456', 'img/student/st42.png');
INSERT INTO `sc_user` VALUES ('43', '曲凌风', '123456', 'img/student/st43.png');
INSERT INTO `sc_user` VALUES ('44', '金轮国师', '123456', 'img/student/st44.png');
INSERT INTO `sc_user` VALUES ('45', '潇湘子', '123456', 'img/student/st45.png');
INSERT INTO `sc_user` VALUES ('46', '霍都', '123456', 'img/student/st46.png');
INSERT INTO `sc_user` VALUES ('47', '耶律齐', '123456', 'img/student/st47.png');
INSERT INTO `sc_user` VALUES ('48', '鲁有脚', '123456', 'img/student/st48.png');
INSERT INTO `sc_user` VALUES ('49', '上官云', '123456', 'img/student/st49.png');
INSERT INTO `sc_user` VALUES ('50', '曲洋', '123456', 'img/student/st50.png');
INSERT INTO `sc_user` VALUES ('51', '刘正峰', '123456', 'img/student/st51.png');
INSERT INTO `sc_user` VALUES ('52', '莫大', '123456', 'img/student/st52.png');
INSERT INTO `sc_user` VALUES ('53', '费斌', '123456', 'img/student/st53.png');
INSERT INTO `sc_user` VALUES ('54', '左冷禅', '123456', 'img/student/st54.png');
INSERT INTO `sc_user` VALUES ('55', '岳不群', '123456', 'img/student/st55.png');
INSERT INTO `sc_user` VALUES ('56', '定逸', '123456', 'img/student/st56.png');
INSERT INTO `sc_user` VALUES ('57', '定闲', '123456', 'img/student/st57.png');
INSERT INTO `sc_user` VALUES ('58', '定静', '123456', 'img/student/st58.png');
INSERT INTO `sc_user` VALUES ('59', '伊琳', '123456', 'img/student/st59.png');
INSERT INTO `sc_user` VALUES ('60', '岳林珊', '123456', 'img/student/st60.png');
INSERT INTO `sc_user` VALUES ('61', '陆大有', '123456', 'img/student/st61.png');
INSERT INTO `sc_user` VALUES ('62', '林平之', '123456', 'img/student/st62.png');
INSERT INTO `sc_user` VALUES ('63', '玄慈', '123456', 'img/student/st63.png');
INSERT INTO `sc_user` VALUES ('64', '组千秋', '123456', 'img/student/st64.png');
INSERT INTO `sc_user` VALUES ('65', '完颜洪烈', '123456', 'img/student/st65.png');
INSERT INTO `sc_user` VALUES ('66', '杨康', '123456', 'img/student/st66.png');
INSERT INTO `sc_user` VALUES ('67', '南溪人', '123456', 'img/student/st67.png');
INSERT INTO `sc_user` VALUES ('68', '成吉思汗', '123456', 'img/student/st68.png');
INSERT INTO `sc_user` VALUES ('69', '托雷', '123456', 'img/student/st69.png');
INSERT INTO `sc_user` VALUES ('70', '武三通', '123456', 'img/student/st70.png');
INSERT INTO `sc_user` VALUES ('71', '大武', '123456', 'img/student/st71.png');
INSERT INTO `sc_user` VALUES ('72', '小武', '123456', 'img/student/st72.png');
INSERT INTO `sc_user` VALUES ('73', '郭芙', '123456', 'img/student/st73.png');
INSERT INTO `sc_user` VALUES ('74', '郭晓天', '123456', 'img/student/st74.png');
INSERT INTO `sc_user` VALUES ('75', '杨铁心', '123456', 'img/student/st75.png');
INSERT INTO `sc_user` VALUES ('76', '段天德', '123456', 'img/student/st76.png');
INSERT INTO `sc_user` VALUES ('77', '陆冠英', '123456', 'img/student/st77.png');
INSERT INTO `sc_user` VALUES ('78', '陈瑶加', '123456', 'img/student/st78.png');
INSERT INTO `sc_user` VALUES ('79', '任盈盈', '123456', 'img/student/st79.png');
INSERT INTO `sc_user` VALUES ('80', '紫杉龙王', '123456', 'img/student/st80.png');
INSERT INTO `sc_user` VALUES ('81', '白眉鹰王', '123456', 'img/student/st81.png');
INSERT INTO `sc_user` VALUES ('82', '金毛狮王', '123456', 'img/student/st82.png');
INSERT INTO `sc_user` VALUES ('83', '青衣幅王', '123456', 'img/student/st83.png');
INSERT INTO `sc_user` VALUES ('84', '杨逍', '123456', 'img/student/st84.png');
INSERT INTO `sc_user` VALUES ('85', '杨不悔', '123456', 'img/student/st85.png');
INSERT INTO `sc_user` VALUES ('86', '纪晓符', '123456', 'img/student/st86.png');
INSERT INTO `sc_user` VALUES ('87', '慕容复', '123456', 'img/student/st87.png');
INSERT INTO `sc_user` VALUES ('88', '包不同', '123456', 'img/student/st88.png');
INSERT INTO `sc_user` VALUES ('89', '风波恶', '123456', 'img/student/st89.png');
INSERT INTO `sc_user` VALUES ('90', '沈伟伟', '123456', 'img/student/st90.png');
INSERT INTO `sc_user` VALUES ('91', '沈世琪', '123456', 'img/student/st91.png');
INSERT INTO `sc_user` VALUES ('92', '沈晓兰', '123456', 'img/student/st92.png');
INSERT INTO `sc_user` VALUES ('93', '沈静', '123456', 'img/student/st93.png');
INSERT INTO `sc_user` VALUES ('94', '沈敏', '123456', 'img/student/st94.png');
INSERT INTO `sc_user` VALUES ('95', '赵烈荣', '123456', 'img/student/st95.png');
INSERT INTO `sc_user` VALUES ('96', '赵伟杰', '123456', 'img/student/st96.png');
INSERT INTO `sc_user` VALUES ('97', '赵琳', '123456', 'img/student/st97.png');
INSERT INTO `sc_user` VALUES ('98', '赵宇', '123456', 'img/student/st98.png');
INSERT INTO `sc_user` VALUES ('99', '赵玉', '123456', 'img/student/st99.png');
INSERT INTO `sc_user` VALUES ('100', '赵静茹', '123456', 'img/student/st100.pn');

-- ----------------------------
-- Table structure for `sc_user_course`
-- ----------------------------
DROP TABLE IF EXISTS `sc_user_course`;
CREATE TABLE `sc_user_course` (
  `uId` int(11) DEFAULT NULL,
  `cId` int(11) DEFAULT NULL,
  `cCount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc_user_course
-- ----------------------------
INSERT INTO `sc_user_course` VALUES ('1', '1', '2');
INSERT INTO `sc_user_course` VALUES ('2', '2', '5');
INSERT INTO `sc_user_course` VALUES ('3', '3', '6');
INSERT INTO `sc_user_course` VALUES ('4', '4', '8');
INSERT INTO `sc_user_course` VALUES ('5', '5', '10');
INSERT INTO `sc_user_course` VALUES ('6', '6', '11');
INSERT INTO `sc_user_course` VALUES ('7', '7', '11');
INSERT INTO `sc_user_course` VALUES ('8', '8', '14');
INSERT INTO `sc_user_course` VALUES ('9', '9', '15');
INSERT INTO `sc_user_course` VALUES ('10', '10', '17');
INSERT INTO `sc_user_course` VALUES ('11', '11', '18');
INSERT INTO `sc_user_course` VALUES ('12', '12', '19');
INSERT INTO `sc_user_course` VALUES ('13', '13', '21');
INSERT INTO `sc_user_course` VALUES ('14', '14', '22');
INSERT INTO `sc_user_course` VALUES ('15', '15', '23');
INSERT INTO `sc_user_course` VALUES ('16', '1', '25');
INSERT INTO `sc_user_course` VALUES ('17', '2', '26');
INSERT INTO `sc_user_course` VALUES ('18', '3', '30');
INSERT INTO `sc_user_course` VALUES ('19', '4', '31');
INSERT INTO `sc_user_course` VALUES ('20', '5', '35');
INSERT INTO `sc_user_course` VALUES ('21', '6', '36');
INSERT INTO `sc_user_course` VALUES ('22', '7', '40');
INSERT INTO `sc_user_course` VALUES ('23', '8', '41');
INSERT INTO `sc_user_course` VALUES ('24', '9', '42');
INSERT INTO `sc_user_course` VALUES ('25', '10', '44');
INSERT INTO `sc_user_course` VALUES ('26', '11', '45');
INSERT INTO `sc_user_course` VALUES ('27', '12', '46');
INSERT INTO `sc_user_course` VALUES ('28', '13', '48');
INSERT INTO `sc_user_course` VALUES ('29', '15', '50');
INSERT INTO `sc_user_course` VALUES ('30', '5', '12');
INSERT INTO `sc_user_course` VALUES ('31', '4', '0');
INSERT INTO `sc_user_course` VALUES ('32', '1', '10');
INSERT INTO `sc_user_course` VALUES ('33', '2', '15');
INSERT INTO `sc_user_course` VALUES ('34', '3', '12');
INSERT INTO `sc_user_course` VALUES ('35', '4', '11');
INSERT INTO `sc_user_course` VALUES ('36', '5', '20');
INSERT INTO `sc_user_course` VALUES ('37', '6', '16');
INSERT INTO `sc_user_course` VALUES ('38', '7', '15');
INSERT INTO `sc_user_course` VALUES ('39', '8', '11');
INSERT INTO `sc_user_course` VALUES ('40', '9', '32');
INSERT INTO `sc_user_course` VALUES ('41', '10', '40');
INSERT INTO `sc_user_course` VALUES ('42', '11', '50');
INSERT INTO `sc_user_course` VALUES ('43', '12', '1');
INSERT INTO `sc_user_course` VALUES ('44', '13', '9');
INSERT INTO `sc_user_course` VALUES ('45', '45', '6');
INSERT INTO `sc_user_course` VALUES ('46', '14', '24');
INSERT INTO `sc_user_course` VALUES ('47', '15', '1');
INSERT INTO `sc_user_course` VALUES ('48', '16', '26');
INSERT INTO `sc_user_course` VALUES ('49', '17', '28');
INSERT INTO `sc_user_course` VALUES ('50', '18', '21');
INSERT INTO `sc_user_course` VALUES ('51', '19', '23');
INSERT INTO `sc_user_course` VALUES ('52', '20', '36');
INSERT INTO `sc_user_course` VALUES ('53', '21', '21');
INSERT INTO `sc_user_course` VALUES ('54', '18', '1');
INSERT INTO `sc_user_course` VALUES ('55', '23', '7');
INSERT INTO `sc_user_course` VALUES ('56', '24', '9');
INSERT INTO `sc_user_course` VALUES ('57', '25', '5');
INSERT INTO `sc_user_course` VALUES ('58', '26', '19');
INSERT INTO `sc_user_course` VALUES ('59', '27', '29');
INSERT INTO `sc_user_course` VALUES ('60', '28', '39');
INSERT INTO `sc_user_course` VALUES ('61', '29', '49');
INSERT INTO `sc_user_course` VALUES ('62', '30', '13');
INSERT INTO `sc_user_course` VALUES ('63', '31', '23');
INSERT INTO `sc_user_course` VALUES ('64', '32', '43');
INSERT INTO `sc_user_course` VALUES ('65', '33', '36');
INSERT INTO `sc_user_course` VALUES ('66', '34', '37');
INSERT INTO `sc_user_course` VALUES ('67', '35', '14');
INSERT INTO `sc_user_course` VALUES ('68', '36', '2');
INSERT INTO `sc_user_course` VALUES ('69', '37', '26');
INSERT INTO `sc_user_course` VALUES ('70', '38', '0');
INSERT INTO `sc_user_course` VALUES ('71', '39', '2');
INSERT INTO `sc_user_course` VALUES ('72', '40', '1');
INSERT INTO `sc_user_course` VALUES ('73', '4', '8');
INSERT INTO `sc_user_course` VALUES ('74', '1', '12');
INSERT INTO `sc_user_course` VALUES ('75', '41', '8');
INSERT INTO `sc_user_course` VALUES ('76', '42', '41');
INSERT INTO `sc_user_course` VALUES ('77', '43', '44');
INSERT INTO `sc_user_course` VALUES ('78', '45', '45');
INSERT INTO `sc_user_course` VALUES ('79', '44', '3');
INSERT INTO `sc_user_course` VALUES ('80', '6', '30');
INSERT INTO `sc_user_course` VALUES ('81', '46', '40');
INSERT INTO `sc_user_course` VALUES ('82', '47', '20');
INSERT INTO `sc_user_course` VALUES ('83', '48', '10');
INSERT INTO `sc_user_course` VALUES ('84', '49', '15');
INSERT INTO `sc_user_course` VALUES ('85', '50', '16');
INSERT INTO `sc_user_course` VALUES ('86', '51', '17');
INSERT INTO `sc_user_course` VALUES ('87', '28', '18');
INSERT INTO `sc_user_course` VALUES ('88', '21', '19');
INSERT INTO `sc_user_course` VALUES ('89', '17', '22');
INSERT INTO `sc_user_course` VALUES ('90', '6', '32');
INSERT INTO `sc_user_course` VALUES ('91', '9', '1');
INSERT INTO `sc_user_course` VALUES ('92', '18', '0');
INSERT INTO `sc_user_course` VALUES ('93', '33', '2');
INSERT INTO `sc_user_course` VALUES ('94', '38', '5');
INSERT INTO `sc_user_course` VALUES ('95', '36', '0');
INSERT INTO `sc_user_course` VALUES ('96', '42', '8');
INSERT INTO `sc_user_course` VALUES ('97', '44', '40');
INSERT INTO `sc_user_course` VALUES ('98', '45', '15');
INSERT INTO `sc_user_course` VALUES ('99', '11', '16');
INSERT INTO `sc_user_course` VALUES ('100', '21', '13');
INSERT INTO `sc_user_course` VALUES ('11', '6', '1');
INSERT INTO `sc_user_course` VALUES ('1', '23', '12');
INSERT INTO `sc_user_course` VALUES ('36', '4', '20');
INSERT INTO `sc_user_course` VALUES ('25', '2', '7');
INSERT INTO `sc_user_course` VALUES ('85', '36', '32');
INSERT INTO `sc_user_course` VALUES ('4', '9', '2');
INSERT INTO `sc_user_course` VALUES ('85', '36', '13');
INSERT INTO `sc_user_course` VALUES ('1', '2', '10');
INSERT INTO `sc_user_course` VALUES ('58', '6', '30');
INSERT INTO `sc_user_course` VALUES ('93', '40', '26');
INSERT INTO `sc_user_course` VALUES ('96', '10', '21');
INSERT INTO `sc_user_course` VALUES ('78', '11', '10');
INSERT INTO `sc_user_course` VALUES ('100', '18', '37');
INSERT INTO `sc_user_course` VALUES ('2', '5', '10');
INSERT INTO `sc_user_course` VALUES ('54', '20', '38');
INSERT INTO `sc_user_course` VALUES ('3', '32', '11');
INSERT INTO `sc_user_course` VALUES ('5', '8', '0');
INSERT INTO `sc_user_course` VALUES ('9', '4', '2');
INSERT INTO `sc_user_course` VALUES ('8', '30', '50');
INSERT INTO `sc_user_course` VALUES ('7', '23', '12');
INSERT INTO `sc_user_course` VALUES ('69', '4', '11');
INSERT INTO `sc_user_course` VALUES ('87', '23', '28');
INSERT INTO `sc_user_course` VALUES ('41', '35', '15');
INSERT INTO `sc_user_course` VALUES ('32', '12', '39');
INSERT INTO `sc_user_course` VALUES ('58', '6', '30');
INSERT INTO `sc_user_course` VALUES ('65', '34', '29');
INSERT INTO `sc_user_course` VALUES ('56', '13', '19');
INSERT INTO `sc_user_course` VALUES ('54', '16', '6');
INSERT INTO `sc_user_course` VALUES ('54', '16', '6');
INSERT INTO `sc_user_course` VALUES ('52', '13', '34');
INSERT INTO `sc_user_course` VALUES ('68', '2', '32');
INSERT INTO `sc_user_course` VALUES ('99', '12', null);
INSERT INTO `sc_user_course` VALUES ('56', '13', '19');
INSERT INTO `sc_user_course` VALUES ('45', '21', '1');
INSERT INTO `sc_user_course` VALUES ('46', '15', '23');
INSERT INTO `sc_user_course` VALUES ('89', '3', '53');
INSERT INTO `sc_user_course` VALUES ('96', '16', '21');
INSERT INTO `sc_user_course` VALUES ('9', '2', '23');
INSERT INTO `sc_user_course` VALUES ('86', '4', '31');
INSERT INTO `sc_user_course` VALUES ('74', '28', '26');
INSERT INTO `sc_user_course` VALUES ('71', '23', '34');
INSERT INTO `sc_user_course` VALUES ('30', '12', '12');
INSERT INTO `sc_user_course` VALUES ('60', '23', '1');
INSERT INTO `sc_user_course` VALUES ('54', '16', '6');
INSERT INTO `sc_user_course` VALUES ('22', '21', '32');
INSERT INTO `sc_user_course` VALUES ('65', '39', '12');
INSERT INTO `sc_user_course` VALUES (null, null, null);
INSERT INTO `sc_user_course` VALUES ('52', '25', '17');
INSERT INTO `sc_user_course` VALUES ('85', '18', '14');
INSERT INTO `sc_user_course` VALUES ('13', '19', '1');
INSERT INTO `sc_user_course` VALUES ('59', '1', '0');
INSERT INTO `sc_user_course` VALUES ('98', '0', '6');
INSERT INTO `sc_user_course` VALUES ('3', '29', '10');
INSERT INTO `sc_user_course` VALUES ('42', '11', '0');
INSERT INTO `sc_user_course` VALUES ('8', '6', '19');
INSERT INTO `sc_user_course` VALUES ('59', '23', '7');
INSERT INTO `sc_user_course` VALUES ('46', '21', '17');
INSERT INTO `sc_user_course` VALUES ('72', '5', '3');
INSERT INTO `sc_user_course` VALUES ('99', '29', '1');
INSERT INTO `sc_user_course` VALUES ('51', '27', '8');
INSERT INTO `sc_user_course` VALUES ('92', '27', '14');
INSERT INTO `sc_user_course` VALUES ('1', '18', '14');
INSERT INTO `sc_user_course` VALUES ('36', '23', '3');
INSERT INTO `sc_user_course` VALUES ('81', '24', '8');
INSERT INTO `sc_user_course` VALUES ('79', '26', '1');
INSERT INTO `sc_user_course` VALUES ('87', '11', '5');
INSERT INTO `sc_user_course` VALUES ('30', '26', '17');
INSERT INTO `sc_user_course` VALUES ('70', '27', '18');
INSERT INTO `sc_user_course` VALUES ('59', '29', '17');
INSERT INTO `sc_user_course` VALUES ('9', '29', '16');
INSERT INTO `sc_user_course` VALUES ('8', '24', '5');
INSERT INTO `sc_user_course` VALUES ('13', '6', '16');
INSERT INTO `sc_user_course` VALUES ('35', '21', '16');
INSERT INTO `sc_user_course` VALUES ('50', '19', '3');
INSERT INTO `sc_user_course` VALUES ('90', '26', '5');
INSERT INTO `sc_user_course` VALUES ('99', '28', '15');
INSERT INTO `sc_user_course` VALUES ('32', '26', '7');
INSERT INTO `sc_user_course` VALUES ('70', '7', '7');
INSERT INTO `sc_user_course` VALUES ('78', '24', '14');
INSERT INTO `sc_user_course` VALUES ('92', '0', '18');
INSERT INTO `sc_user_course` VALUES ('91', '29', '2');
INSERT INTO `sc_user_course` VALUES ('85', '18', '14');
INSERT INTO `sc_user_course` VALUES ('53', '9', '4');
INSERT INTO `sc_user_course` VALUES ('34', '21', '7');
INSERT INTO `sc_user_course` VALUES ('41', '2', '4');
INSERT INTO `sc_user_course` VALUES ('23', '4', '18');
INSERT INTO `sc_user_course` VALUES ('67', '25', '6');
INSERT INTO `sc_user_course` VALUES ('83', '5', '12');
INSERT INTO `sc_user_course` VALUES ('4', '15', '1');
INSERT INTO `sc_user_course` VALUES ('28', '23', '5');
INSERT INTO `sc_user_course` VALUES ('5', '5', '8');
INSERT INTO `sc_user_course` VALUES ('90', '17', '8');
INSERT INTO `sc_user_course` VALUES ('11', '1', '15');
INSERT INTO `sc_user_course` VALUES ('77', '10', '2');
INSERT INTO `sc_user_course` VALUES ('71', '0', '12');
INSERT INTO `sc_user_course` VALUES ('27', '7', '17');
INSERT INTO `sc_user_course` VALUES ('40', '15', '4');
INSERT INTO `sc_user_course` VALUES ('13', '19', '7');
INSERT INTO `sc_user_course` VALUES ('57', '16', '2');
INSERT INTO `sc_user_course` VALUES ('83', '22', '19');
INSERT INTO `sc_user_course` VALUES ('81', '5', '19');
INSERT INTO `sc_user_course` VALUES ('9', '16', '18');
INSERT INTO `sc_user_course` VALUES ('54', '19', '8');
INSERT INTO `sc_user_course` VALUES ('21', '15', '9');
INSERT INTO `sc_user_course` VALUES ('23', '14', '16');
INSERT INTO `sc_user_course` VALUES ('60', '4', '19');
INSERT INTO `sc_user_course` VALUES ('29', '23', '16');
INSERT INTO `sc_user_course` VALUES ('77', '14', '4');
INSERT INTO `sc_user_course` VALUES ('85', '14', '8');
INSERT INTO `sc_user_course` VALUES ('16', '3', '11');
INSERT INTO `sc_user_course` VALUES ('17', '30', '20');
INSERT INTO `sc_user_course` VALUES ('99', '20', '10');
INSERT INTO `sc_user_course` VALUES ('41', '7', '20');
INSERT INTO `sc_user_course` VALUES ('63', '28', '11');
INSERT INTO `sc_user_course` VALUES ('15', '21', '3');
INSERT INTO `sc_user_course` VALUES ('38', '14', '16');
INSERT INTO `sc_user_course` VALUES ('6', '8', '6');
INSERT INTO `sc_user_course` VALUES ('94', '24', '12');
INSERT INTO `sc_user_course` VALUES ('52', '3', '19');
INSERT INTO `sc_user_course` VALUES ('100', '18', '8');
INSERT INTO `sc_user_course` VALUES ('58', '24', '8');
INSERT INTO `sc_user_course` VALUES ('93', '2', '2');
INSERT INTO `sc_user_course` VALUES ('37', '28', '13');
INSERT INTO `sc_user_course` VALUES ('27', '23', '9');
INSERT INTO `sc_user_course` VALUES ('82', '27', '13');
INSERT INTO `sc_user_course` VALUES ('22', '14', '10');
INSERT INTO `sc_user_course` VALUES ('73', '25', '14');
INSERT INTO `sc_user_course` VALUES ('36', '10', '11');
INSERT INTO `sc_user_course` VALUES ('33', '17', '19');
INSERT INTO `sc_user_course` VALUES ('75', '6', '20');
INSERT INTO `sc_user_course` VALUES ('12', '1', '1');
INSERT INTO `sc_user_course` VALUES ('73', '2', '6');
INSERT INTO `sc_user_course` VALUES ('38', '2', '2');
INSERT INTO `sc_user_course` VALUES ('80', '18', '1');
INSERT INTO `sc_user_course` VALUES ('93', '15', '12');
INSERT INTO `sc_user_course` VALUES ('44', '14', '18');
INSERT INTO `sc_user_course` VALUES ('25', '6', '3');
INSERT INTO `sc_user_course` VALUES ('3', '23', '19');
INSERT INTO `sc_user_course` VALUES ('39', '23', '17');
INSERT INTO `sc_user_course` VALUES ('12', '16', '2');
INSERT INTO `sc_user_course` VALUES ('56', '1', '16');
INSERT INTO `sc_user_course` VALUES ('54', '29', '19');
INSERT INTO `sc_user_course` VALUES ('35', '13', '4');
INSERT INTO `sc_user_course` VALUES ('55', '28', '14');
INSERT INTO `sc_user_course` VALUES ('15', '12', '12');
INSERT INTO `sc_user_course` VALUES ('94', '16', '15');
INSERT INTO `sc_user_course` VALUES ('10', '1', '14');
INSERT INTO `sc_user_course` VALUES ('57', '23', '3');
INSERT INTO `sc_user_course` VALUES ('11', '19', '8');
INSERT INTO `sc_user_course` VALUES ('76', '13', '18');
INSERT INTO `sc_user_course` VALUES ('66', '30', '19');
INSERT INTO `sc_user_course` VALUES ('32', '21', '3');
INSERT INTO `sc_user_course` VALUES ('28', '13', '6');
INSERT INTO `sc_user_course` VALUES ('26', '7', '12');
INSERT INTO `sc_user_course` VALUES ('53', '7', '6');
INSERT INTO `sc_user_course` VALUES ('28', '4', '14');
INSERT INTO `sc_user_course` VALUES ('45', '24', '13');
INSERT INTO `sc_user_course` VALUES ('56', '14', '5');
INSERT INTO `sc_user_course` VALUES ('95', '23', '13');
INSERT INTO `sc_user_course` VALUES ('55', '11', '10');
INSERT INTO `sc_user_course` VALUES ('35', '1', '19');
INSERT INTO `sc_user_course` VALUES ('47', '10', '19');
INSERT INTO `sc_user_course` VALUES ('77', '8', '15');
INSERT INTO `sc_user_course` VALUES ('46', '8', '16');
INSERT INTO `sc_user_course` VALUES ('80', '13', '15');
INSERT INTO `sc_user_course` VALUES ('17', '8', '7');
INSERT INTO `sc_user_course` VALUES ('95', '23', '17');
INSERT INTO `sc_user_course` VALUES ('27', '11', '17');
INSERT INTO `sc_user_course` VALUES ('51', '13', '16');
INSERT INTO `sc_user_course` VALUES ('57', '13', '8');
INSERT INTO `sc_user_course` VALUES ('54', '26', '16');
INSERT INTO `sc_user_course` VALUES ('7', '25', '5');
INSERT INTO `sc_user_course` VALUES ('92', '8', '13');
INSERT INTO `sc_user_course` VALUES ('31', '17', '18');
INSERT INTO `sc_user_course` VALUES ('10', '9', '2');
INSERT INTO `sc_user_course` VALUES ('62', '10', '14');
INSERT INTO `sc_user_course` VALUES ('76', '21', '9');
INSERT INTO `sc_user_course` VALUES ('88', '29', '8');
INSERT INTO `sc_user_course` VALUES ('68', '13', '12');
INSERT INTO `sc_user_course` VALUES ('50', '7', '6');
INSERT INTO `sc_user_course` VALUES ('3', '12', '3');
INSERT INTO `sc_user_course` VALUES ('10', '15', '16');
INSERT INTO `sc_user_course` VALUES ('86', '8', '12');
INSERT INTO `sc_user_course` VALUES ('62', '16', '15');
INSERT INTO `sc_user_course` VALUES ('38', '22', '20');
INSERT INTO `sc_user_course` VALUES ('45', '15', '6');
INSERT INTO `sc_user_course` VALUES ('26', '27', '12');
INSERT INTO `sc_user_course` VALUES ('1', '1', '7');
INSERT INTO `sc_user_course` VALUES ('68', '13', '8');
INSERT INTO `sc_user_course` VALUES ('12', '19', '10');
INSERT INTO `sc_user_course` VALUES ('28', '29', '4');
INSERT INTO `sc_user_course` VALUES ('88', '23', '13');
INSERT INTO `sc_user_course` VALUES ('18', '11', '16');
INSERT INTO `sc_user_course` VALUES ('76', '16', '8');
INSERT INTO `sc_user_course` VALUES ('86', '3', '13');
INSERT INTO `sc_user_course` VALUES ('65', '27', '20');
INSERT INTO `sc_user_course` VALUES ('50', '18', '2');
INSERT INTO `sc_user_course` VALUES ('58', '2', '18');
INSERT INTO `sc_user_course` VALUES ('69', '26', '1');
INSERT INTO `sc_user_course` VALUES ('10', '1', '9');
INSERT INTO `sc_user_course` VALUES ('83', '27', '10');
INSERT INTO `sc_user_course` VALUES ('89', '20', '17');
INSERT INTO `sc_user_course` VALUES ('72', '23', '16');
INSERT INTO `sc_user_course` VALUES ('84', '6', '11');
INSERT INTO `sc_user_course` VALUES ('20', '3', '13');
INSERT INTO `sc_user_course` VALUES ('73', '25', '7');
INSERT INTO `sc_user_course` VALUES ('6', '12', '13');
INSERT INTO `sc_user_course` VALUES ('54', '15', '9');
INSERT INTO `sc_user_course` VALUES ('65', '8', '12');
INSERT INTO `sc_user_course` VALUES ('29', '14', '15');
INSERT INTO `sc_user_course` VALUES ('70', '7', '9');
INSERT INTO `sc_user_course` VALUES ('94', '18', '6');
INSERT INTO `sc_user_course` VALUES ('22', '26', '1');
INSERT INTO `sc_user_course` VALUES ('99', '3', '17');
INSERT INTO `sc_user_course` VALUES ('28', '7', '10');
INSERT INTO `sc_user_course` VALUES ('4', '7', '8');
INSERT INTO `sc_user_course` VALUES ('34', '14', '1');
INSERT INTO `sc_user_course` VALUES ('90', '20', '3');
INSERT INTO `sc_user_course` VALUES ('19', '5', '12');
INSERT INTO `sc_user_course` VALUES ('39', '28', '18');
INSERT INTO `sc_user_course` VALUES ('91', '27', '19');
INSERT INTO `sc_user_course` VALUES ('34', '16', '20');
INSERT INTO `sc_user_course` VALUES ('68', '13', '6');
INSERT INTO `sc_user_course` VALUES ('29', '8', '9');
INSERT INTO `sc_user_course` VALUES ('82', '15', '18');
INSERT INTO `sc_user_course` VALUES ('16', '6', '17');
INSERT INTO `sc_user_course` VALUES ('58', '8', '8');
INSERT INTO `sc_user_course` VALUES ('29', '22', '16');
INSERT INTO `sc_user_course` VALUES ('12', '13', '4');
INSERT INTO `sc_user_course` VALUES ('11', '28', '17');
INSERT INTO `sc_user_course` VALUES ('26', '6', '13');
INSERT INTO `sc_user_course` VALUES ('28', '28', '1');
INSERT INTO `sc_user_course` VALUES ('96', '26', '5');
INSERT INTO `sc_user_course` VALUES ('19', '9', '13');
INSERT INTO `sc_user_course` VALUES ('79', '12', '11');
INSERT INTO `sc_user_course` VALUES ('60', '22', '5');
INSERT INTO `sc_user_course` VALUES ('62', '15', '10');
INSERT INTO `sc_user_course` VALUES ('6', '7', '9');
INSERT INTO `sc_user_course` VALUES ('54', '26', '3');
INSERT INTO `sc_user_course` VALUES ('27', '28', '2');
INSERT INTO `sc_user_course` VALUES ('93', '21', '15');
INSERT INTO `sc_user_course` VALUES ('28', '24', '16');
INSERT INTO `sc_user_course` VALUES ('91', '1', '19');
INSERT INTO `sc_user_course` VALUES ('18', '20', '13');
INSERT INTO `sc_user_course` VALUES ('66', '9', '9');
INSERT INTO `sc_user_course` VALUES ('44', '7', '1');
INSERT INTO `sc_user_course` VALUES ('11', '4', '12');
INSERT INTO `sc_user_course` VALUES ('60', '3', '17');
INSERT INTO `sc_user_course` VALUES ('58', '25', '7');
INSERT INTO `sc_user_course` VALUES ('30', '9', '20');
INSERT INTO `sc_user_course` VALUES ('20', '13', '9');
INSERT INTO `sc_user_course` VALUES ('39', '25', '18');
INSERT INTO `sc_user_course` VALUES ('67', '25', '19');
INSERT INTO `sc_user_course` VALUES ('42', '14', '2');
INSERT INTO `sc_user_course` VALUES ('12', '23', '20');
INSERT INTO `sc_user_course` VALUES ('23', '3', '9');
INSERT INTO `sc_user_course` VALUES ('82', '18', '11');
INSERT INTO `sc_user_course` VALUES ('81', '19', '17');
INSERT INTO `sc_user_course` VALUES ('78', '9', '8');
INSERT INTO `sc_user_course` VALUES ('1', '1', '13');
INSERT INTO `sc_user_course` VALUES ('87', '14', '17');
INSERT INTO `sc_user_course` VALUES ('13', '23', '5');
INSERT INTO `sc_user_course` VALUES ('35', '1', '17');
INSERT INTO `sc_user_course` VALUES ('92', '22', '6');
INSERT INTO `sc_user_course` VALUES ('14', '25', '7');
INSERT INTO `sc_user_course` VALUES ('89', '6', '10');
INSERT INTO `sc_user_course` VALUES ('81', '29', '5');
INSERT INTO `sc_user_course` VALUES ('72', '24', '4');
INSERT INTO `sc_user_course` VALUES ('27', '17', '6');
INSERT INTO `sc_user_course` VALUES ('17', '23', '12');
INSERT INTO `sc_user_course` VALUES ('75', '29', '10');
INSERT INTO `sc_user_course` VALUES ('25', '26', '13');
INSERT INTO `sc_user_course` VALUES ('64', '20', '10');
INSERT INTO `sc_user_course` VALUES ('1', '22', '14');
INSERT INTO `sc_user_course` VALUES ('3', '28', '8');
INSERT INTO `sc_user_course` VALUES ('32', '28', '17');
INSERT INTO `sc_user_course` VALUES ('40', '6', '20');
INSERT INTO `sc_user_course` VALUES ('19', '11', '17');
INSERT INTO `sc_user_course` VALUES ('31', '2', '18');
INSERT INTO `sc_user_course` VALUES ('100', '26', '5');
INSERT INTO `sc_user_course` VALUES ('16', '1', '5');
INSERT INTO `sc_user_course` VALUES ('50', '21', '9');
INSERT INTO `sc_user_course` VALUES ('96', '13', '11');
INSERT INTO `sc_user_course` VALUES ('45', '8', '5');
INSERT INTO `sc_user_course` VALUES ('63', '20', '18');
INSERT INTO `sc_user_course` VALUES ('15', '20', '2');
INSERT INTO `sc_user_course` VALUES ('87', '19', '14');
INSERT INTO `sc_user_course` VALUES ('65', '29', '11');
INSERT INTO `sc_user_course` VALUES ('57', '24', '13');
INSERT INTO `sc_user_course` VALUES ('36', '17', '6');
INSERT INTO `sc_user_course` VALUES ('5', '24', '20');
INSERT INTO `sc_user_course` VALUES ('58', '12', '8');
INSERT INTO `sc_user_course` VALUES ('6', '3', '1');
INSERT INTO `sc_user_course` VALUES ('25', '4', '7');
INSERT INTO `sc_user_course` VALUES ('17', '22', '10');
INSERT INTO `sc_user_course` VALUES ('89', '14', '1');
INSERT INTO `sc_user_course` VALUES ('6', '6', '5');
