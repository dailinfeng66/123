/*
Navicat MySQL Data Transfer

Source Server         : 戴林峰
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : ams

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2019-05-28 20:52:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `courseid` varchar(255) DEFAULT NULL,
  `coursename` varchar(255) DEFAULT NULL,
  `teacherid` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '语文', '1', '六(1)班', '2');
INSERT INTO `course` VALUES ('1', '语文', '1', '六(2)班', '3');
INSERT INTO `course` VALUES ('2', '数学', '2', '六(1)班', '4');
INSERT INTO `course` VALUES ('3', '英语', '3', '六(2)班', '5');
INSERT INTO `course` VALUES ('2', '数学', '2', '六(2)班', '6');
INSERT INTO `course` VALUES ('3', '英语', '3', '六(1)班', '7');
INSERT INTO `course` VALUES ('4', '音乐', '4', '六(1)班', '8');
INSERT INTO `course` VALUES ('4', '音乐', '4', '六(2)班', '9');

-- ----------------------------
-- Table structure for `coursescore`
-- ----------------------------
DROP TABLE IF EXISTS `coursescore`;
CREATE TABLE `coursescore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentid` varchar(255) DEFAULT NULL,
  `courseid` varchar(255) DEFAULT NULL,
  `coursescore` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coursescore
-- ----------------------------
INSERT INTO `coursescore` VALUES ('1', '3', '4', '99');
INSERT INTO `coursescore` VALUES ('2', '3', '2', '96');
INSERT INTO `coursescore` VALUES ('3', '3', '3', '97');
INSERT INTO `coursescore` VALUES ('4', '3', '1', '95');
INSERT INTO `coursescore` VALUES ('5', '4', '1', '75');
INSERT INTO `coursescore` VALUES ('6', '4', '2', '85');
INSERT INTO `coursescore` VALUES ('7', '4', '3', '95');
INSERT INTO `coursescore` VALUES ('8', '4', '4', '96');
INSERT INTO `coursescore` VALUES ('9', '1', '1', '100');
INSERT INTO `coursescore` VALUES ('10', '1', '2', '100');
INSERT INTO `coursescore` VALUES ('11', '1', '3', '100');
INSERT INTO `coursescore` VALUES ('12', '1', '4', '100');
INSERT INTO `coursescore` VALUES ('13', '7', '1', '100');
INSERT INTO `coursescore` VALUES ('14', '7', '2', '99');
INSERT INTO `coursescore` VALUES ('15', '7', '3', '99');
INSERT INTO `coursescore` VALUES ('16', '7', '4', '69');
INSERT INTO `coursescore` VALUES ('17', '2', '1', '60');
INSERT INTO `coursescore` VALUES ('18', '2', '2', '60');
INSERT INTO `coursescore` VALUES ('19', '2', '3', '60');
INSERT INTO `coursescore` VALUES ('20', '2', '4', '60');
INSERT INTO `coursescore` VALUES ('21', '5', '1', '40');
INSERT INTO `coursescore` VALUES ('22', '5', '2', '40');
INSERT INTO `coursescore` VALUES ('23', '5', '3', '40');
INSERT INTO `coursescore` VALUES ('24', '5', '4', '40');
INSERT INTO `coursescore` VALUES ('25', '11', '1', '40');
INSERT INTO `coursescore` VALUES ('26', '11', '2', '0');
INSERT INTO `coursescore` VALUES ('27', '11', '3', '30');
INSERT INTO `coursescore` VALUES ('28', '11', '4', '0');
INSERT INTO `coursescore` VALUES ('29', '10', '1', '80');
INSERT INTO `coursescore` VALUES ('30', '10', '2', '80');
INSERT INTO `coursescore` VALUES ('31', '10', '3', '80');
INSERT INTO `coursescore` VALUES ('32', '10', '4', '80');
INSERT INTO `coursescore` VALUES ('33', '6', '1', '22');
INSERT INTO `coursescore` VALUES ('34', '6', '2', '80');
INSERT INTO `coursescore` VALUES ('35', '6', '3', '22');
INSERT INTO `coursescore` VALUES ('36', '6', '4', '22');
INSERT INTO `coursescore` VALUES ('37', '8', '1', '88');
INSERT INTO `coursescore` VALUES ('38', '8', '2', '88');
INSERT INTO `coursescore` VALUES ('39', '8', '3', '88');
INSERT INTO `coursescore` VALUES ('40', '8', '4', '88');

-- ----------------------------
-- Table structure for `homework`
-- ----------------------------
DROP TABLE IF EXISTS `homework`;
CREATE TABLE `homework` (
  `content` varchar(255) NOT NULL,
  `courseid` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `homeworkid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`homeworkid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of homework
-- ----------------------------
INSERT INTO `homework` VALUES ('大刘小康', '1', '2019-05-09 :08:54:51', '1');

-- ----------------------------
-- Table structure for `lmessage`
-- ----------------------------
DROP TABLE IF EXISTS `lmessage`;
CREATE TABLE `lmessage` (
  `messageid` varchar(255) NOT NULL,
  `studentid` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `teacherid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lmessage
-- ----------------------------
INSERT INTO `lmessage` VALUES ('1', '1', '我的成绩是不是算错了', '1');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `num` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `totalscore` float DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '张三', '1', '六(1)班', null);
INSERT INTO `student` VALUES ('10', '杨幂', '10', '六(1)班', null);
INSERT INTO `student` VALUES ('11', '刘恺威', '11', '六(1)班', null);
INSERT INTO `student` VALUES ('2', '李四', '2', '六(1)班', null);
INSERT INTO `student` VALUES ('3', '王五', '3', '六(1)班', null);
INSERT INTO `student` VALUES ('4', '赵六', '4', '六(1)班', null);
INSERT INTO `student` VALUES ('5', '李宇春', '5', '六(2)班', null);
INSERT INTO `student` VALUES ('6', '周笔畅', '6', '六(2)班', null);
INSERT INTO `student` VALUES ('7', '张靓颖', '7', '六(2)班', null);
INSERT INTO `student` VALUES ('8', '吴京', '8', '六(1)班', null);
INSERT INTO `student` VALUES ('9', '韩红', '9', '六(1)班', null);

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `num` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '易中天', '1');
INSERT INTO `teacher` VALUES ('2', '庞中华', '2');
INSERT INTO `teacher` VALUES ('3', null, '3');
INSERT INTO `teacher` VALUES ('4', null, '4');
INSERT INTO `teacher` VALUES ('5', null, '5');
