/*
Navicat MySQL Data Transfer

Source Server         : xiaocai
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : mafengwo

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-10-27 17:48:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for note
-- ----------------------------
DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'id名',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `head` varchar(255) NOT NULL COMMENT '头像',
  `name` varchar(255) NOT NULL COMMENT '用户名',
  `site` varchar(255) NOT NULL COMMENT '地点',
  `view` varchar(255) NOT NULL COMMENT '查阅',
  `reply` varchar(255) NOT NULL COMMENT '评论',
  `pic` varchar(255) NOT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of note
-- ----------------------------
INSERT INTO `note` VALUES ('1', '三日普吉', '../assets/head0.jpg', '小远儿..', '普吉岛', '2577', '46', '../assets/pics0.jpg');
INSERT INTO `note` VALUES ('2', 'Bright布莱特小镇：赏红叶&墨尔本秋天最..', '../assets/head1.jpg', 'Claire..', 'Bright', '4854', '58', '../assets/pics1.jpg');
INSERT INTO `note` VALUES ('3', '10秒，来一次划破次元壁的说走就走——东..', '../assets/head2.jpg', '我就是..', '东京', '11033', '106', '../assets/pics2.jpg');
INSERT INTO `note` VALUES ('4', '荒野日记|从香格里拉到”香格里拉“', '../assets/head3.jpg', '松木巴士', '香格里拉', '3356', '44', '../assets/pics3.jpg');
INSERT INTO `note` VALUES ('5', '薰衣草花季，邂逅浪漫南法', '../assets/head4.jpg', 'Candy_..', '法国', '7108', '76', '../assets/pics4.jpg');
INSERT INTO `note` VALUES ('6', '逃离城市的繁华，感受善良的尼泊尔自由..', '../assets/head5.jpg', '请叫彤哥', '尼泊尔', '7447', '163', '../assets/pics5.jpg');
INSERT INTO `note` VALUES ('7', '【成都-重庆】穿越504公里的路程', '../assets/head6.jpg', '2的22..', '重庆', '1332', '30', '../assets/pics6.jpg');
INSERT INTO `note` VALUES ('8', '重返巴厘岛，7天玩转自在游~', '../assets/head7.jpg', '行走的..', '巴厘岛', '126', '1', '../assets/pics7.jpg');
INSERT INTO `note` VALUES ('9', '【为童话，行走中欧】梦幻秋日自驾游..', '../assets/head8.jpg', '锦儿Amy', '德国', '1729', '31', '../assets/pics8.jpg');
INSERT INTO `note` VALUES ('10', '稻城亚丁6日自由行&我们..', '../assets/head9.jpg', '人生难..', '亚丁', '5979', '13', '../assets/pics9.jpg');
INSERT INTO `note` VALUES ('11', '【初遇北京图鉴】一口京腔一首歌，一面红..', '../assets/head10.jpg', '吴七线', '北京', '2483', '41', '../assets/pics10.jpg');
INSERT INTO `note` VALUES ('12', '世界那么大，你却只想去无锡。', '../assets/head11.jpg', '娜娜959', '无锡', '5718', '166', '../assets/pics11.jpg');
INSERT INTO `note` VALUES ('13', '三日普吉', '../assets/head0.jpg', '小远儿..', '普吉岛', '2577', '46', '../assets/pics0.jpg');
INSERT INTO `note` VALUES ('14', 'Bright布莱特小镇：赏红叶&墨尔本秋天最..', '../assets/head1.jpg', 'Claire..', 'Bright', '4854', '58', '../assets/pics1.jpg');
INSERT INTO `note` VALUES ('15', '10秒，来一次划破次元壁的说走就走——东..', '../assets/head2.jpg', '我就是..', '东京', '11033', '106', '../assets/pics2.jpg');
INSERT INTO `note` VALUES ('16', '重返巴厘岛，7天玩转自在游~', '../assets/head7.jpg', '行走的..', '巴厘岛', '126', '1', '../assets/pics7.jpg');
INSERT INTO `note` VALUES ('17', '稻城亚丁6日自由行&我们..', '../assets/head9.jpg', '人生难..', '亚丁', '5979', '13', '../assets/pics9.jpg');
INSERT INTO `note` VALUES ('18', '薰衣草花季，邂逅浪漫南法', '../assets/head4.jpg', 'Candy_..', '法国', '7108', '76', '../assets/pics4.jpg');
INSERT INTO `note` VALUES ('19', '【成都-重庆】穿越504公里的路程', '../assets/head6.jpg', '2的22..', '重庆', '1332', '30', '../assets/pics6.jpg');
INSERT INTO `note` VALUES ('20', '【为童话，行走中欧】梦幻秋日自驾游..', '../assets/head8.jpg', '锦儿Amy', '德国', '1729', '31', '../assets/pics8.jpg');

-- ----------------------------
-- Table structure for sale
-- ----------------------------
DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `pic` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sale
-- ----------------------------
INSERT INTO `sale` VALUES ('1', 'https://p2-q.mafengwo.net/s10/M00/98/F4/wKgBZ1oyJuGAaVnMABhTh9NW_0Q29.jpeg?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F90', '选岛纠结症患者的终结者·上海往返马尔代夫鲁滨逊岛7天自由行（豪华五星浮潜+一价全包+免费升级房型+岛上活动丰富+真正马尔代夫风格）', '11250');
INSERT INTO `sale` VALUES ('2', 'https://p4-q.mafengwo.net/s12/M00/57/6C/wKgED1uOW86AJN3VACqvmZzb4R0391.gif?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F90', '4晚无边泳池·锦鲤免费升级豪水+马尔代夫波杜希蒂7天自由行（可升级一价全含+儿童吃住免费+中文服务+沙滩A级+私人管家+免费wifi+性价比极高', '10530');
INSERT INTO `sale` VALUES ('3', 'https://n4-q.mafengwo.net/s11/M00/EB/C5/wKgBEFsGSxiAFW3iAAxyoUSLv1w08.jpeg?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F90', '上海直飞毛里求斯8天5晚自由行（一手地接资源+24小时中文管家服务+赠实用出行礼包+全岛酒店自选可混搭酒店+可延长行程+可售单机票）', '6888');
INSERT INTO `sale` VALUES ('4', 'https://b4-q.mafengwo.net/s11/M00/5F/A3/wKgBEFqXrGiAScwwAANQunpAkpQ06.jpeg?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F90', '时尚之都·上海直飞香港3-7天往返含税机票（赠600元礼包+港龙/国泰/东方直飞+超大行李额）', '999');
INSERT INTO `sale` VALUES ('5', 'https://b3-q.mafengwo.net/s11/M00/EC/26/wKgBEFpyh_aAJA7RAANTBdU81MM57.jpeg?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F90', '北京直飞东京5-8天全日空往返含税机票（46kg托运行李+五星航空直飞+送微向导+可代办签证+拒签全退）', '3188');
INSERT INTO `sale` VALUES ('6', 'https://p4-q.mafengwo.net/s11/M00/D5/5F/wKgBEFs2AOaAAm0QAAsSseZ0HKs316.gif?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F90', '珠海长隆海洋度假区  企鹅酒店2天1晚/3天2晚度假套餐（帝企鹅餐厅自助餐/海洋王国2日票/珠海长隆大马戏）', '849');
INSERT INTO `sale` VALUES ('7', 'https://n1-q.mafengwo.net/s11/M00/86/B1/wKgBEFte7viAa2mcAAGuG3EBEh003.jpeg?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F90', '网红水屋·卡帕莱度假村（11月有房+寒假春节开售+下单赠礼包+仙本那玻璃水屋梦幻仙境+马代的美景+东南亚的价格）', '3300');
INSERT INTO `sale` VALUES ('8', 'https://b4-q.mafengwo.net/s11/M00/68/B9/wKgBEFsp1nyAITTVAAyqfu7weYo650.png?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F90', '[上海送签]日本单次旅游签证（开业至今无拒签+上千好评+可免存款税单行程单＋出签赠百元礼包＋1对1咨询顾问）', '248');
INSERT INTO `sale` VALUES ('9', 'https://p1-q.mafengwo.net/s11/M00/76/DC/wKgBEFpXIwqAUFjYAGFE4tgOl0g31.jpeg?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F90', '【个性简化套餐任选】北京送签 日本单次旅游签证（TOP商家无拒签＋拒全退＋免存款税单机酒＋1对1咨询顾问+顺丰包邮＋可加急工作日出签）', '268');
INSERT INTO `sale` VALUES ('10', 'https://n3-q.mafengwo.net/s11/M00/61/E7/wKgBEFs228CAfgcxAAHhNRW-j98601.gif?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F100', '北京出发福冈2-60天往返含税机票（多次往返福利套餐/回程可选/含行李托运）', '1259');
INSERT INTO `sale` VALUES ('11', 'https://p4-q.mafengwo.net/s10/M00/A8/EF/wKgBZ1ij-zGAOfJkAAD1ldebAP009.jpeg?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F100', '选岛纠结症患者的终结者·上海往返马尔代夫鲁滨逊岛7天自由行（豪华五星浮潜+一价全包+免费升级房型+岛上活动丰富+真正马尔代夫风格）', '1839');
INSERT INTO `sale` VALUES ('12', 'https://n2-q.mafengwo.net/s11/M00/0A/9C/wKgBEFtNq5WAZduSAAGu5_KbeJc19.jpeg?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F100', '4晚无边泳池·锦鲤免费升级豪水+马尔代夫波杜希蒂7天自由行（可升级一价全含+儿童吃住免费+中文服务+沙滩A级+私人管家+免费wifi+性价比极高', '8392');
INSERT INTO `sale` VALUES ('13', 'https://p3-q.mafengwo.net/s11/M00/4C/92/wKgBEFq9n7mAVQ5VAAPLjWDaR1U52.jpeg?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F100', '上海直飞毛里求斯8天5晚自由行（一手地接资源+24小时中文管家服务+赠实用出行礼包+全岛酒店自选可混搭酒店+可延长行程+可售单机票）', '74573');
INSERT INTO `sale` VALUES ('14', 'https://n2-q.mafengwo.net/s12/M00/8F/83/wKgED1u7BceAJfnKAAVpTQg3CFo96.jpeg?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F100', '时尚之都·上海直飞香港3-7天往返含税机票（赠600元礼包+港龙/国泰/东方直飞+超大行李额）', '98978');
INSERT INTO `sale` VALUES ('15', 'https://b2-q.mafengwo.net/s11/M00/A4/48/wKgBEFt_hd2AIZlVABsrg_39kcI87.jpeg?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F100', '北京直飞东京5-8天全日空往返含税机票（46kg托运行李+五星航空直飞+送微向导+可代办签证+拒签全退）', '7384');
INSERT INTO `sale` VALUES ('16', 'https://n4-q.mafengwo.net/s10/M00/4E/0E/wKgBZ1oKvnOAaVN9AAbB2Ic01NY61.jpeg?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F100', '珠海长隆海洋度假区  企鹅酒店2天1晚/3天2晚度假套餐（帝企鹅餐厅自助餐/海洋王国2日票/珠海长隆大马戏）', '937');
INSERT INTO `sale` VALUES ('17', 'https://p3-q.mafengwo.net/s11/M00/66/A5/wKgBEFtCxcuAWNwuAAGeR2pQ76s67.jpeg?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F100', '网红水屋·卡帕莱度假村（11月有房+寒假春节开售+下单赠礼包+仙本那玻璃水屋梦幻仙境+马代的美景+东南亚的价格）', '7732');
INSERT INTO `sale` VALUES ('18', 'https://p3-q.mafengwo.net/s12/M00/68/17/wKgED1vG0dWABZEwAAW2AQ9a2cA96.jpeg?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F100', '[上海送签]日本单次旅游签证（开业至今无拒签+上千好评+可免存款税单行程单＋出签赠百元礼包＋1对1咨询顾问）', '875');
INSERT INTO `sale` VALUES ('19', 'https://p2-q.mafengwo.net/s11/M00/ED/B5/wKgBEFrXCTmADlwbAC7Bascj5Fs75.jpeg?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F100', '【个性简化套餐任选】北京送签 日本单次旅游签证（TOP商家无拒签＋拒全退＋免存款税单机酒＋1对1咨询顾问+顺丰包邮＋可加急工作日出签）', '7843');
INSERT INTO `sale` VALUES ('20', 'https://n3-q.mafengwo.net/s10/M00/54/31/wKgBZ1uHlkCAAGhVAMc9owVqDnM86.jpeg?imageMogr2%2Fthumbnail%2F%21240x180r%2Fgravity%2FCenter%2Fcrop%2F%21240x180%2Fquality%2F100', '北京出发福冈2-60天往返含税机票（多次往返福利套餐/回程可选/含行李托运）', '98344');

-- ----------------------------
-- Table structure for together
-- ----------------------------
DROP TABLE IF EXISTS `together`;
CREATE TABLE `together` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `bigImg` varchar(255) NOT NULL,
  `headImg` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `rq` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `local` varchar(255) NOT NULL,
  `txt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of together
-- ----------------------------
INSERT INTO `together` VALUES ('1', 'https://b4-q.mafengwo.net/s9/M00/3C/CE/wKgBs1e2fn2APHx8AAsH-anXLUU29.jpeg?imageMogr2%2Fthumbnail%2F%21200x130r%2Fgravity%2FCenter%2Fcrop%2F%21200x130%2Fquality%2F100', 'https://n3-q.mafengwo.net/s9/M00/84/7B/wKgBs1ePQY6AOSV8ABMMCqYJncE30.jpeg?imageMogr2%2Fthumbnail%2F%21120x120r%2Fgravity%2FCenter%2Fcrop%2F%21120x120%2Fquality%2F90', '新西兰|大溪地', '7-15天', '02月02日 出发', '溏心卤蛋', 'female', 'lv 15', '伦敦', '机票已买。机票如下：2019.2.2从上海浦东飞 当地时');
INSERT INTO `together` VALUES ('2', 'https://b2-q.mafengwo.net/s9/M00/D6/48/wKgBs1fHmDOAFuPuABgy_gdW4GA40.jpeg?imageMogr2%2Fthumbnail%2F%21200x130r%2Fgravity%2FCenter%2Fcrop%2F%21200x130%2Fquality%2F100', 'https://n2-q.mafengwo.net/s5/M00/99/07/wKgB3FEBQTCAE7I1AABbjSYbriM20.jpeg?imageMogr2%2Fthumbnail%2F%21120x120r%2Fgravity%2FCenter%2Fcrop%2F%21120x120%2Fquality%2F90', '新西兰', '7-15天', '12月26日 出发', 'YY', 'female', 'lv 15', '广州', '打算去新西兰南岛跨年，时间暂定12.26-01.06，只能微');
INSERT INTO `together` VALUES ('3', 'https://p4-q.mafengwo.net/s7/M00/97/36/wKgB6lSwAIeANNLoAEUAm1kY3dk79.jpeg?imageMogr2%2Fthumbnail%2F%21200x130r%2Fgravity%2FCenter%2Fcrop%2F%21200x130%2Fquality%2F100', 'https://b1-q.mafengwo.net/s10/M00/1C/BA/wKgBZ1jSA7CAWo01AACWcgwqfcs21.jpeg?imageMogr2%2Fthumbnail%2F%21120x120r%2Fgravity%2FCenter%2Fcrop%2F%21120x120%2Fquality%2F90', '巴黎|葡萄牙|西班牙', '15-30天', '12月14日 出发', 'Eden厦门', 'female', 'lv 15', '厦门', '12.15抵达法国，转飞巴塞罗那 12.16巴塞罗那 12.17');
INSERT INTO `together` VALUES ('4', 'https://p2-q.mafengwo.net/s9/M00/0D/04/wKgBs1fH6YaAVit5ABGHV4JPLmQ92.jpeg?imageMogr2%2Fthumbnail%2F%21200x130r%2Fgravity%2FCenter%2Fcrop%2F%21200x130%2Fquality%2F100', 'https://p2-q.mafengwo.net/s11/M00/2B/2E/wKgBEFpwdWeASXaSACwdWd6jvXo56.jpeg?imageMogr2%2Fthumbnail%2F%21120x120r%2Fgravity%2FCenter%2Fcrop%2F%21120x120%2Fquality%2F90', '马德里|巴黎', '7-15天', '02月05日 出发', '二线朋友', 'male', 'lv 16', '北京', '本人男，90年出生，去过9个国家。春节我想去逛一');
INSERT INTO `together` VALUES ('5', 'https://n4-q.mafengwo.net/s7/M00/33/A7/wKgB6lRgWACAc4V8AAEJ6Cr-MDI27.jpeg?imageMogr2%2Fthumbnail%2F%21200x130r%2Fgravity%2FCenter%2Fcrop%2F%21200x130%2Fquality%2F100', 'https://n2-q.mafengwo.net/s8/M00/0D/8C/wKgBpVXgKwaAOmfuAAOFRKfaSuE09.jpeg?imageMogr2%2Fthumbnail%2F%21120x120r%2Fgravity%2FCenter%2Fcrop%2F%21120x120%2Fquality%2F90', '安纳普尔纳峰|尼泊', '7-15天', '11月03日 出发', '永夜海', 'male', 'lv 16', '重庆', '11月3日飞加德满都，计划走ABC环线（安纳普尔纳峰登山大本营');
INSERT INTO `together` VALUES ('6', 'https://b1-q.mafengwo.net/s7/M00/A6/E4/wKgB6lSXmh2AHszjAAeY4299Bu4731.png?imageMogr2%2Fthumbnail%2F%21200x130r%2Fgravity%2FCenter%2Fcrop%2F%21200x130%2Fquality%2F100', 'https://p4-q.mafengwo.net/s11/M00/CB/9C/wKgBEFrN1G2AYMNVACDHpg4qFFI05.jpeg?imageMogr2%2Fthumbnail%2F%21120x120r%2Fgravity%2FCenter%2Fcrop%2F%21120x120%2Fquality%2F90', '台湾', '7-15天', '02月02日 出发', '嘢孩孖', 'female', 'lv 12', '重庆', '2月2日晚上抵达台北。2月13日早上离开。已出票（重庆-香港-台');
INSERT INTO `together` VALUES ('7', 'https://n2-q.mafengwo.net/s7/M00/47/ED/wKgB6lTHZRKAIfYxAAQsucX52Jw26.jpeg?imageMogr2%2Fthumbnail%2F%21200x130r%2Fgravity%2FCenter%2Fcrop%2F%21200x130%2Fquality%2F100', 'https://b3-q.mafengwo.net/s11/M00/0E/C1/wKgBEFs7-2qAX3FjACPMCYJ3m1402.jpeg?imageMogr2%2Fthumbnail%2F%21120x120r%2Fgravity%2FCenter%2Fcrop%2F%21120x120%2Fquality%2F90', '名古屋', '7-15天', '02月01日', '大树店长', 'female', 'lv 13', '苏州', '本人90女，计划2月1号到金泽，2月11号从名古屋回上海，机票已');
INSERT INTO `together` VALUES ('8', 'https://n1-q.mafengwo.net/s7/M00/08/68/wKgB6lSt-MSAahv3AAYmYojVuOE918.png?imageMogr2%2Fthumbnail%2F%21200x130r%2Fgravity%2FCenter%2Fcrop%2F%21200x130%2Fquality%2F100', 'https://b4-q.mafengwo.net/s7/M00/4D/4C/wKgB6lSLrk6ABLElAAHa86IfwaY95.jpeg?imageMogr2%2Fthumbnail%2F%21120x120r%2Fgravity%2FCenter%2Fcrop%2F%21120x120%2Fquality%2F90', '卡米金省', '3-7天', '02月03日 出发', '筱丸子', 'female', 'lv 16', '中山', '自从早两踏上菲律宾的海岛后就不能自拔，幸好早出发，因为惜');
INSERT INTO `together` VALUES ('9', 'https://b2-q.mafengwo.net/s9/M00/D6/48/wKgBs1fHmDOAFuPuABgy_gdW4GA40.jpeg?imageMogr2%2Fthumbnail%2F%21200x130r%2Fgravity%2FCenter%2Fcrop%2F%21200x130%2Fquality%2F100', 'https://n3-q.mafengwo.net/s10/M00/D9/DA/wKgBZ1kEH36ABT0_AAd85IBVoBQ69.jpeg?imageMogr2%2Fthumbnail%2F%21120x120r%2Fgravity%2FCenter%2Fcrop%2F%21120x120%2Fquality%2F90', '韶关', '1-3天', '11月02日 出发', 'Ann', 'female', 'lv 8', '清远', 'http://www.gdsstl.com/\r\n\r\n11月3日韶关丹霞山有个生态徒步的活');
INSERT INTO `together` VALUES ('10', 'https://n3-q.mafengwo.net/s5/M00/12/AC/wKgB3FIMRvaAdrjoAAGCmIetJvQ75.jpeg?imageMogr2%2Fthumbnail%2F%21200x130r%2Fgravity%2FCenter%2Fcrop%2F%21200x130%2Fquality%2F100', 'https://p1-q.mafengwo.net/s9/M00/0F/31/wKgBs1dY8LyAKC8hAAVdQvet0mk88.jpeg?imageMogr2%2Fthumbnail%2F%21120x120r%2Fgravity%2FCenter%2Fcrop%2F%21120x120%2Fquality%2F90', '马尔代夫', '3-7天', '10月31日出发', '进击的小肉宝', 'female', 'lv 9', '上海', '本人85后妹子，坐标地上海。希望能找一个坐标地同样在上海的');
