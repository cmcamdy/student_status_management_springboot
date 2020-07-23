/*
Navicat MySQL Data Transfer

Source Server         : Aliyouth
Source Server Version : 80018
Source Host           : xxxxxx
Source Database       : data_student_manager

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-06-22 16:26:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `classid` int(18) NOT NULL AUTO_INCREMENT,
  `cid` int(18) NOT NULL,
  `sid` int(18) NOT NULL,
  `grade` float(10,1) DEFAULT NULL,
  `makeup_grade` float(10,1) DEFAULT '-1.0',
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '16' COMMENT '上课时间',
  `rebuild` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`classid`),
  KEY `sid` (`sid`),
  KEY `cid` (`cid`),
  CONSTRAINT `class_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`),
  CONSTRAINT `class_ibfk_3` FOREIGN KEY (`cid`) REFERENCES `course` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', '1', '1001', '100.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('2', '2', '1001', '79.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('3', '1', '1002', '87.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('4', '2', '1002', '88.0', '-1.0', '16', '1');
INSERT INTO `class` VALUES ('5', '1', '1003', '90.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('6', '1', '1004', '45.0', '-1.0', '16', '1');
INSERT INTO `class` VALUES ('7', '1', '1005', '45.0', '60.0', '16', '0');
INSERT INTO `class` VALUES ('8', '1', '1016', '66.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('9', '1', '1017', '77.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('10', '2', '1003', '23.0', '60.0', '16', '0');
INSERT INTO `class` VALUES ('11', '2', '1004', '77.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('12', '2', '1005', '66.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('13', '2', '1016', '77.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('14', '2', '1017', '67.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('15', '3', '1003', '64.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('16', '3', '1004', '87.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('17', '3', '1005', '97.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('18', '3', '1016', '79.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('19', '3', '1017', '99.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('20', '8', '1001', '78.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('21', '8', '1002', '95.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('22', '8', '1003', null, '-1.0', '16', '1');
INSERT INTO `class` VALUES ('23', '8', '1004', '76.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('24', '8', '1005', null, '-1.0', '16', '1');
INSERT INTO `class` VALUES ('25', '8', '1016', '65.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('26', '8', '1017', '77.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('27', '9', '1001', '66.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('28', '9', '1002', '88.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('29', '9', '1003', '76.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('30', '9', '1004', null, '-1.0', '16', '1');
INSERT INTO `class` VALUES ('31', '9', '1005', '66.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('32', '9', '1016', '45.0', '60.0', '16', '0');
INSERT INTO `class` VALUES ('33', '9', '1017', '77.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('34', '5', '1001', '88.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('35', '5', '1002', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('36', '5', '1003', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('37', '5', '1004', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('38', '7', '1001', '99.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('39', '7', '1002', '59.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('40', '7', '1003', '98.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('41', '7', '1004', '77.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('51', '1', '1023', '99.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('52', '1', '1029', '99.0', '-1.0', '16', '1');
INSERT INTO `class` VALUES ('53', '2', '1029', '77.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('63', '1', '1033', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('64', '2', '1033', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('65', '3', '1033', '54.0', '-1.0', '16', '0');
INSERT INTO `class` VALUES ('66', '5', '1033', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('67', '6', '1033', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('68', '7', '1033', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('69', '8', '1033', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('70', '9', '1033', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('71', '1', '1034', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('72', '2', '1034', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('73', '3', '1034', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('74', '5', '1034', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('75', '6', '1034', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('76', '7', '1034', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('77', '8', '1034', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('78', '9', '1034', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('79', '1', '1035', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('80', '2', '1035', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('81', '3', '1035', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('82', '5', '1035', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('83', '6', '1035', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('84', '7', '1035', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('85', '8', '1035', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('86', '9', '1035', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('87', '1', '1036', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('88', '2', '1036', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('89', '3', '1036', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('90', '5', '1036', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('91', '6', '1036', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('92', '7', '1036', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('93', '8', '1036', null, '-1.0', '16', '0');
INSERT INTO `class` VALUES ('94', '9', '1036', null, '-1.0', '16', '0');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cid` int(18) NOT NULL AUTO_INCREMENT,
  `tid` int(18) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `credit` int(1) NOT NULL DEFAULT '2',
  `type` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cid`),
  KEY `tid` (`tid`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '1', 'Python(A)', '2', '2');
INSERT INTO `course` VALUES ('2', '1', '数据库系统', '2', '1');
INSERT INTO `course` VALUES ('3', '2', 'Java程序设计', '2', '2');
INSERT INTO `course` VALUES ('5', '3', 'C#程序设计', '2', '2');
INSERT INTO `course` VALUES ('6', '2', 'C语言程序设计(A)', '5', '2');
INSERT INTO `course` VALUES ('7', '1', 'C++面向对象(A)', '5', '2');
INSERT INTO `course` VALUES ('8', '2', '高等数学A1', '5', '1');
INSERT INTO `course` VALUES ('9', '2', '高等数学A2', '5', '1');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `log_id` int(18) NOT NULL AUTO_INCREMENT,
  `log_date` datetime DEFAULT NULL,
  `log_type` varchar(255) NOT NULL,
  `course_id` int(18) NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1', '2020-06-12 12:25:38', 'U', '1');
INSERT INTO `log` VALUES ('2', '2020-06-12 12:41:45', 'I', '4');
INSERT INTO `log` VALUES ('7', '2020-06-12 13:09:05', 'D', '4');
INSERT INTO `log` VALUES ('8', '2020-06-16 04:47:03', 'I', '5');
INSERT INTO `log` VALUES ('9', '2020-06-16 04:47:43', 'I', '6');
INSERT INTO `log` VALUES ('10', '2020-06-16 04:47:46', 'U', '6');
INSERT INTO `log` VALUES ('11', '2020-06-16 04:48:09', 'I', '7');
INSERT INTO `log` VALUES ('12', '2020-06-16 04:48:24', 'I', '8');
INSERT INTO `log` VALUES ('13', '2020-06-16 04:48:36', 'I', '9');
INSERT INTO `log` VALUES ('14', '2020-06-16 04:48:39', 'U', '9');
INSERT INTO `log` VALUES ('15', '2020-06-16 05:17:32', 'U', '5');
INSERT INTO `log` VALUES ('16', '2020-06-16 05:17:38', 'U', '6');
INSERT INTO `log` VALUES ('17', '2020-06-16 05:17:42', 'U', '3');
INSERT INTO `log` VALUES ('18', '2020-06-16 05:17:43', 'U', '1');
INSERT INTO `log` VALUES ('19', '2020-06-16 05:17:50', 'U', '7');
INSERT INTO `log` VALUES ('20', '2020-06-17 10:37:58', 'U', '8');
INSERT INTO `log` VALUES ('21', '2020-06-17 10:38:00', 'U', '9');
INSERT INTO `log` VALUES ('22', '2020-06-17 10:38:04', 'U', '8');
INSERT INTO `log` VALUES ('25', '2020-06-17 10:38:17', 'U', '8');
INSERT INTO `log` VALUES ('26', '2020-06-17 10:38:24', 'U', '9');
INSERT INTO `log` VALUES ('27', '2020-06-17 10:42:24', 'U', '6');
INSERT INTO `log` VALUES ('28', '2020-06-18 03:58:39', 'update grade', '52');
INSERT INTO `log` VALUES ('29', '2020-06-18 04:03:25', 'update student info', '1001');
INSERT INTO `log` VALUES ('30', '2020-06-18 04:03:49', 'Add New Student', '1034');
INSERT INTO `log` VALUES ('31', '2020-06-18 04:04:03', 'update grade', '53');
INSERT INTO `log` VALUES ('32', '2020-06-18 04:04:22', 'update grade', '10');
INSERT INTO `log` VALUES ('33', '2020-06-18 04:04:38', 'update grade', '22');
INSERT INTO `log` VALUES ('34', '2020-06-21 02:18:35', 'Add New Student', '1035');
INSERT INTO `log` VALUES ('36', '2020-06-22 01:08:01', 'update grade', '10');
INSERT INTO `log` VALUES ('37', '2020-06-22 01:08:15', 'update grade', '11');
INSERT INTO `log` VALUES ('38', '2020-06-22 01:10:06', 'update grade', '7');
INSERT INTO `log` VALUES ('39', '2020-06-22 01:11:13', 'update grade', '6');
INSERT INTO `log` VALUES ('43', '2020-06-22 01:13:08', 'update grade', '9');
INSERT INTO `log` VALUES ('44', '2020-06-22 01:13:17', 'update grade', '9');
INSERT INTO `log` VALUES ('54', '2020-06-22 01:16:22', 'update grade', '22');
INSERT INTO `log` VALUES ('55', '2020-06-22 01:24:21', 'update grade', '6');
INSERT INTO `log` VALUES ('56', '2020-06-22 01:25:46', 'update grade', '6');
INSERT INTO `log` VALUES ('57', '2020-06-22 01:26:44', 'update grade', '22');
INSERT INTO `log` VALUES ('58', '2020-06-22 01:26:49', 'update grade', '7');
INSERT INTO `log` VALUES ('59', '2020-06-22 01:26:53', 'update grade', '10');
INSERT INTO `log` VALUES ('60', '2020-06-22 01:26:58', 'update grade', '11');
INSERT INTO `log` VALUES ('61', '2020-06-22 01:28:39', 'update grade', '52');
INSERT INTO `log` VALUES ('62', '2020-06-22 01:31:46', 'update grade', '24');
INSERT INTO `log` VALUES ('63', '2020-06-22 01:32:09', 'update grade', '6');
INSERT INTO `log` VALUES ('64', '2020-06-22 01:32:50', 'update grade', '30');
INSERT INTO `log` VALUES ('65', '2020-06-22 01:33:21', 'update grade', '22');
INSERT INTO `log` VALUES ('66', '2020-06-22 01:33:50', 'update grade', '52');
INSERT INTO `log` VALUES ('67', '2020-06-22 01:33:59', 'update grade', '32');
INSERT INTO `log` VALUES ('68', '2020-06-22 06:32:30', 'update grade', '6');
INSERT INTO `log` VALUES ('69', '2020-06-22 06:34:17', 'update student status', '1023');
INSERT INTO `log` VALUES ('70', '2020-06-22 06:34:21', 'update student status', '1023');
INSERT INTO `log` VALUES ('71', '2020-06-22 06:34:40', 'update student status', '1023');
INSERT INTO `log` VALUES ('72', '2020-06-22 06:35:59', 'update student status', '1023');
INSERT INTO `log` VALUES ('73', '2020-06-22 06:36:58', 'update student status', '1023');
INSERT INTO `log` VALUES ('74', '2020-06-22 06:37:48', 'update student status', '1023');
INSERT INTO `log` VALUES ('75', '2020-06-22 06:37:52', 'update student status', '1023');
INSERT INTO `log` VALUES ('76', '2020-06-22 06:38:02', 'update student status', '1017');
INSERT INTO `log` VALUES ('77', '2020-06-22 06:39:09', 'update student status', '1017');
INSERT INTO `log` VALUES ('78', '2020-06-22 06:39:32', 'update student status', '1035');
INSERT INTO `log` VALUES ('79', '2020-06-22 06:41:16', 'Add New Student', '1036');
INSERT INTO `log` VALUES ('80', '2020-06-22 06:47:33', 'update grade', '52');
INSERT INTO `log` VALUES ('81', '2020-06-22 06:47:43', 'update grade', '40');
INSERT INTO `log` VALUES ('82', '2020-06-22 07:49:36', 'update grade', '39');
INSERT INTO `log` VALUES ('83', '2020-06-22 07:51:06', 'update student status', '1021');
INSERT INTO `log` VALUES ('84', '2020-06-22 07:51:13', 'update student status', '1023');
INSERT INTO `log` VALUES ('85', '2020-06-22 07:51:53', 'update student status', '1023');

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `electives` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES ('1', '计算机科学与技术', '发量决定力量', '8');
INSERT INTO `major` VALUES ('2', '数字媒体', '一个前端的自述', '10');
INSERT INTO `major` VALUES ('3', '电子信息', '硬件大佬', '10');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` int(18) NOT NULL AUTO_INCREMENT,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '123456',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=1037 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1001', 'JoJo', '123456');
INSERT INTO `student` VALUES ('1002', 'JieJie', '123456');
INSERT INTO `student` VALUES ('1003', 'JinJin', '123456');
INSERT INTO `student` VALUES ('1004', 'JueJue', '123456');
INSERT INTO `student` VALUES ('1005', 'Hongen', '123456');
INSERT INTO `student` VALUES ('1006', 'YuKang', '123456');
INSERT INTO `student` VALUES ('1016', 'Filefox', '123456');
INSERT INTO `student` VALUES ('1017', 'CMcandy', '123456');
INSERT INTO `student` VALUES ('1021', '克列阿辣舞7', '123456');
INSERT INTO `student` VALUES ('1023', 'HuiHui', '123456');
INSERT INTO `student` VALUES ('1024', 'EnTing', '123456');
INSERT INTO `student` VALUES ('1029', '123123', '123456');
INSERT INTO `student` VALUES ('1030', 'TT', '123456');
INSERT INTO `student` VALUES ('1033', 'cece', '123456');
INSERT INTO `student` VALUES ('1034', 'qqq', '123456');
INSERT INTO `student` VALUES ('1035', 'chch', '123456');
INSERT INTO `student` VALUES ('1036', 'newStu1', '123456');

-- ----------------------------
-- Table structure for student_info
-- ----------------------------
DROP TABLE IF EXISTS `student_info`;
CREATE TABLE `student_info` (
  `sid` int(18) NOT NULL COMMENT '学号',
  `class` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2',
  `idnum` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '身份证号',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `other` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '其他信息。。。',
  PRIMARY KEY (`sid`),
  KEY `major` (`major`),
  CONSTRAINT `student_info_ibfk_1` FOREIGN KEY (`major`) REFERENCES `major` (`id`),
  CONSTRAINT `student_info_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_info
-- ----------------------------
INSERT INTO `student_info` VALUES ('1001', '2', '331081199911111112', 'JoJo的旅程十分地神奇2', '1', '这里描述一些其他信息');
INSERT INTO `student_info` VALUES ('1002', '2', '331081199912211223', '浙江xxx市', '1', '这里描述一些其他信息');
INSERT INTO `student_info` VALUES ('1003', '2', '331081199912211224', '浙江xxx市', '1', '这里描述一些其他信息');
INSERT INTO `student_info` VALUES ('1004', '1', '331081199912211225', '浙江xxx市', '2', '这里描述一些其他信息');
INSERT INTO `student_info` VALUES ('1005', '2', '\r\n332926200001191421', '浙江省xxx市', '1', '大家好我是来自浙江省的练习生洪飞鸿');
INSERT INTO `student_info` VALUES ('1006', '2', '\r\n332926200001191421', '浙江省xxx市', '1', '大家好我是来自浙江省的练习生YK');
INSERT INTO `student_info` VALUES ('1016', '2', '332926199907071223', '浙江省嘉兴市', '2', '这里是其他信息');
INSERT INTO `student_info` VALUES ('1017', '2', '332926200001191421', '浙江省xxx市', '1', '大家好我是来自浙江省的练习生');
INSERT INTO `student_info` VALUES ('1021', '1', '332926200012011031', '浙江省温州市', '1', '7777777777');
INSERT INTO `student_info` VALUES ('1023', '2', '332963199912121211', '浙江省XX市', '1', 'other infomathons');
INSERT INTO `student_info` VALUES ('1024', '1', '332926199911111112', '浙江省XX市', '1', 'other Infomations');
INSERT INTO `student_info` VALUES ('1029', '1', '332926199911111112', '123123', '1', '12314aweqwe');
INSERT INTO `student_info` VALUES ('1030', '1', '332926199911111112', ' 12请问权威', '1', '请问阿斯顿2312321');
INSERT INTO `student_info` VALUES ('1033', '3', '123123123123123123', '123123', '2', '123123123123123123');
INSERT INTO `student_info` VALUES ('1034', '3', 'qqq', 'qqq', '2', 'qqq');
INSERT INTO `student_info` VALUES ('1035', '2', '2314123124122324', 'seceasdfas', '1', '123123124123141');
INSERT INTO `student_info` VALUES ('1036', '2', 'New Ident...', 'new Address', '2', 'this is an new describe');

-- ----------------------------
-- Table structure for student_status
-- ----------------------------
DROP TABLE IF EXISTS `student_status`;
CREATE TABLE `student_status` (
  `sid` int(18) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0=未入学，1=入学 2=毕业 3=休学',
  PRIMARY KEY (`sid`),
  CONSTRAINT `student_status_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_status
-- ----------------------------
INSERT INTO `student_status` VALUES ('1001', '2');
INSERT INTO `student_status` VALUES ('1002', '4');
INSERT INTO `student_status` VALUES ('1003', '1');
INSERT INTO `student_status` VALUES ('1004', '1');
INSERT INTO `student_status` VALUES ('1005', '1');
INSERT INTO `student_status` VALUES ('1006', '1');
INSERT INTO `student_status` VALUES ('1016', '1');
INSERT INTO `student_status` VALUES ('1017', '1');
INSERT INTO `student_status` VALUES ('1021', '3');
INSERT INTO `student_status` VALUES ('1023', '1');
INSERT INTO `student_status` VALUES ('1024', '1');
INSERT INTO `student_status` VALUES ('1029', '1');
INSERT INTO `student_status` VALUES ('1030', '1');
INSERT INTO `student_status` VALUES ('1033', '1');
INSERT INTO `student_status` VALUES ('1034', '1');
INSERT INTO `student_status` VALUES ('1035', '4');
INSERT INTO `student_status` VALUES ('1036', '1');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tid` int(18) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '123456',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '123456', '沈Y');
INSERT INTO `teacher` VALUES ('2', '123456', '孙Q');
INSERT INTO `teacher` VALUES ('3', '123456', '郭YY');

-- ----------------------------
-- Table structure for teacher_info
-- ----------------------------
DROP TABLE IF EXISTS `teacher_info`;
CREATE TABLE `teacher_info` (
  `tid` int(18) NOT NULL,
  `qual` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评级',
  `collage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学院',
  `idnum` varchar(25) NOT NULL,
  `desc` varchar(255) DEFAULT NULL COMMENT '代表其他信息',
  PRIMARY KEY (`tid`),
  CONSTRAINT `teacher_info_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_info
-- ----------------------------
INSERT INTO `teacher_info` VALUES ('1', '教授', '信息学院', '331020100919911999', '富有经验的老师');
INSERT INTO `teacher_info` VALUES ('2', '副教授', '信息学院', '331020100919911991', '态度和蔼的老师');
INSERT INTO `teacher_info` VALUES ('3', '副教授', '信息学院', '331020100919911992', '负责人的老师');

-- ----------------------------
-- View structure for class_grade
-- ----------------------------
DROP VIEW IF EXISTS `class_grade`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `class_grade` AS select `student`.`sid` AS `sid`,`student`.`name` AS `studentName`,`class`.`grade` AS `grade`,`class`.`makeup_grade` AS `makeupGrade`,`course`.`cname` AS `cname`,`teacher`.`name` AS `teacherName`,`course`.`credit` AS `credit`,`class`.`rebuild` AS `rebuild` from (((`class` left join `course` on((`course`.`cid` = `class`.`cid`))) left join `student` on((`class`.`sid` = `student`.`sid`))) left join `teacher` on((`teacher`.`tid` = `course`.`tid`))) ;

-- ----------------------------
-- View structure for info_with_nopath
-- ----------------------------
DROP VIEW IF EXISTS `info_with_nopath`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `info_with_nopath` AS select `stu`.`sid` AS `sid`,`stu`.`name` AS `name` from `student` `stu` ;

-- ----------------------------
-- View structure for major_credit_num
-- ----------------------------
DROP VIEW IF EXISTS `major_credit_num`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `major_credit_num` AS select `major`.`id` AS `id`,`major`.`name` AS `name`,`major`.`electives` AS `electives`,(select sum(`course`.`credit`) from `course` where (`course`.`type` = 1)) AS `required`,(select sum(`course`.`credit`) from `course` where (`course`.`type` = 2)) AS `elective_total` from `major` ;

-- ----------------------------
-- View structure for stu_base_info
-- ----------------------------
DROP VIEW IF EXISTS `stu_base_info`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `stu_base_info` AS select `stu`.`sid` AS `sid`,`stu`.`name` AS `name`,`info`.`address` AS `address`,concat(`major`.`name`,'(',`info`.`class`,')') AS `class`,`info`.`other` AS `other` from ((`student` `stu` left join `student_info` `info` on((`stu`.`sid` = `info`.`sid`))) left join `major` on((`major`.`id` = `info`.`major`))) where (`info`.`sid` is not null) ;

-- ----------------------------
-- View structure for student_credit
-- ----------------------------
DROP VIEW IF EXISTS `student_credit`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `student_credit` AS select `cla`.`studentName` AS `studentName`,`cour`.`type` AS `type`,sum(`cour`.`credit`) AS `credit` from (`class_grade` `cla` left join `course` `cour` on((`cla`.`cname` = `cour`.`cname`))) where ((`cla`.`grade` >= 60) or (`cla`.`makeupGrade` > 60)) group by `cla`.`studentName`,`cour`.`type` ;

-- ----------------------------
-- View structure for student_credit_merge
-- ----------------------------
DROP VIEW IF EXISTS `student_credit_merge`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `student_credit_merge` AS select `c1`.`studentName` AS `studentName`,`c1`.`credit` AS `required`,`c2`.`credit` AS `elective` from (`student_credit` `c1` join `student_credit` `c2`) where ((`c1`.`studentName` = `c2`.`studentName`) and (`c1`.`type` = 1) and (`c2`.`type` = 2)) ;

-- ----------------------------
-- View structure for student_info_with_credit
-- ----------------------------
DROP VIEW IF EXISTS `student_info_with_credit`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `student_info_with_credit` AS select `base`.`sid` AS `sid`,`base`.`name` AS `name`,`base`.`class` AS `class`,`cre`.`required` AS `required`,`cre`.`elective` AS `elective`,`sta`.`status` AS `status` from ((`stu_base_info` `base` left join `student_credit_merge` `cre` on((`base`.`name` = `cre`.`studentName`))) left join `student_status` `sta` on((`base`.`sid` = `sta`.`sid`))) ;

-- ----------------------------
-- Procedure structure for get_stu_base_info
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_stu_base_info`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `get_stu_base_info`()
BEGIN
	DECLARE sname VARCHAR(255);
	DECLARE sclass VARCHAR(255);
	DECLARE done BOOLEAN DEFAULT 0;
	DECLARE base_info CURSOR
	FOR
		SELECT name,class FROM stu_base_info;


	OPEN base_info;
	REPEAT
		FETCH base_info INTO sname,sclass;
		SELECT concat(sname,'是一个',sclass,'班的又一位头秃青年') AS res;
	UNTIL done END REPEAT;
	CLOSE base_info;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for insert_grade
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert_grade`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `insert_grade`()
BEGIN	
		UPDATE class SET makeup_grade = -1 where grade>=60;
		UPDATE class SET grade = NULL,makeup_grade=NULL,`rebuild`=1 where grade<60 ;
	END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for myf3
-- ----------------------------
DROP FUNCTION IF EXISTS `myf3`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `myf3`(gra INT(20)) RETURNS int(11)
BEGIN
	DECLARE sal INT ;
	SELECT count(*) into sal from class where class.grade >gra; 
	RETURN sal;
END
;;
DELIMITER ;

DROP TRIGGER IF EXISTS `update_grade`;
DELIMITER ;;
CREATE TRIGGER `update_grade` AFTER UPDATE ON `class` FOR EACH ROW BEGIN
INSERT INTO log(log_date, log_type,course_id) VALUES(Now(),'update grade', old.classid);
END
;;
DELIMITER ;

DROP TRIGGER IF EXISTS `course_update`;
DELIMITER ;;
CREATE TRIGGER `course_update` BEFORE UPDATE ON `course` FOR EACH ROW BEGIN
   INSERT INTO log(log_date, log_type,course_id)
   VALUES(Now(),'course U', OLD.cid);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `course_insert`;
DELIMITER ;;
CREATE TRIGGER `course_insert` AFTER INSERT ON `course` FOR EACH ROW BEGIN
   INSERT INTO log(log_date, log_type,course_id)
   VALUES(Now(),'course I', new.cid);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `course_delete`;
DELIMITER ;;
CREATE TRIGGER `course_delete` BEFORE DELETE ON `course` FOR EACH ROW BEGIN
   INSERT INTO log(log_date, log_type,course_id)
   VALUES(Now(),'course D', OLD.cid);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `init_student_status`;
DELIMITER ;;
CREATE TRIGGER `init_student_status` AFTER INSERT ON `student` FOR EACH ROW BEGIN
		INSERT INTO student_status(sid,status) value(new.sid,1);
		INSERT INTO class(cid,sid) values(1,new.sid),(2,new.sid),(3,new.sid),(5,new.sid),(6,new.sid),(7,new.sid),(8,new.sid),(9,new.sid);

                      INSERT INTO log(log_date, log_type,course_id)
                      VALUES(Now(),'Add New Student', new.sid);

END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `update_student`;
DELIMITER ;;
CREATE TRIGGER `update_student` AFTER UPDATE ON `student` FOR EACH ROW BEGIN
	INSERT INTO log(log_date, log_type,course_id) VALUES(Now(),'update student', old.sid);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `update_student_info`;
DELIMITER ;;
CREATE TRIGGER `update_student_info` AFTER UPDATE ON `student_info` FOR EACH ROW BEGIN
	INSERT INTO log(log_date, log_type,course_id) VALUES(Now(),'update student info', old.sid);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `update_student_status`;
DELIMITER ;;
CREATE TRIGGER `update_student_status` AFTER UPDATE ON `student_status` FOR EACH ROW BEGIN
	INSERT INTO log(log_date, log_type,course_id) VALUES(Now(),'update student status', old.sid);
END
;;
DELIMITER ;
