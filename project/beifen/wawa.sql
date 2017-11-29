/*
Navicat MySQL Data Transfer

Source Server         : l
Source Server Version : 50165
Source Host           : localhost:3306
Source Database       : wawa

Target Server Type    : MYSQL
Target Server Version : 50165
File Encoding         : 65001

Date: 2017-05-06 21:39:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ay_admin`
-- ----------------------------
DROP TABLE IF EXISTS `ay_admin`;
CREATE TABLE `ay_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) NOT NULL COMMENT '管理帐号',
  `pass` varchar(64) NOT NULL COMMENT '管理密码',
  `diqu` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '地区',
  `epass` varchar(64) NOT NULL COMMENT '超级密码',
  `type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理组权限',
  `yanzhengip` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '强行验证用户ip',
  `off` tinyint(10) unsigned NOT NULL DEFAULT '0' COMMENT '帐号开关',
  `ip` varchar(60) NOT NULL COMMENT '登录ip',
  `atime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ay_admin
-- ----------------------------
INSERT INTO `ay_admin` VALUES ('1', 'admin', 'ec8e187a9d93aa70a05f69f8', '0', 'e0fb31aead3bad8d36760f3e52fee90', '0', '1', '1', '', '0');

-- ----------------------------
-- Table structure for `ay_adminfenzu`
-- ----------------------------
DROP TABLE IF EXISTS `ay_adminfenzu`;
CREATE TABLE `ay_adminfenzu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '管理权限名字',
  `shezhi` text NOT NULL COMMENT '权限组说明设置',
  `miaoshu` varchar(255) NOT NULL COMMENT '权限组描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ay_adminfenzu
-- ----------------------------

-- ----------------------------
-- Table structure for `ay_adminlog`
-- ----------------------------
DROP TABLE IF EXISTS `ay_adminlog`;
CREATE TABLE `ay_adminlog` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理uid',
  `type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '日志类型',
  `data` text NOT NULL COMMENT '详细数据',
  `ip` varchar(36) NOT NULL COMMENT '产生ip',
  `atime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1880 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ay_adminlog
-- ----------------------------
INSERT INTO `ay_adminlog` VALUES ('1859', '1', '0', '', '180.115.254.1', '1493716046');
INSERT INTO `ay_adminlog` VALUES ('1860', '1', '0', '', '116.21.81.139', '1493764971');
INSERT INTO `ay_adminlog` VALUES ('1861', '1', '0', '', '180.115.254.1', '1493780368');
INSERT INTO `ay_adminlog` VALUES ('1862', '1', '2', 's:13:\"180.115.254.1\";', '116.21.83.237', '1493785139');
INSERT INTO `ay_adminlog` VALUES ('1863', '1', '0', '', '116.21.83.237', '1493785171');
INSERT INTO `ay_adminlog` VALUES ('1864', '1', '1', '', '116.21.83.237', '1493785230');
INSERT INTO `ay_adminlog` VALUES ('1865', '1', '0', '', '120.34.99.119', '1493825132');
INSERT INTO `ay_adminlog` VALUES ('1866', '1', '0', '', '110.88.239.241', '1493879394');
INSERT INTO `ay_adminlog` VALUES ('1867', '1', '1', '', '110.88.239.241', '1493892231');
INSERT INTO `ay_adminlog` VALUES ('1868', '1', '0', '', '116.21.80.84', '1493953947');
INSERT INTO `ay_adminlog` VALUES ('1869', '1', '0', '', '110.88.123.36', '1493956156');
INSERT INTO `ay_adminlog` VALUES ('1870', '1', '0', '', '110.88.239.241', '1493974088');
INSERT INTO `ay_adminlog` VALUES ('1871', '1', '5', 'a:4:{s:2:\"ac\";s:3:\"pay\";s:2:\"mo\";s:3:\"add\";s:2:\"id\";s:1:\"7\";s:4:\"data\";a:10:{s:4:\"name\";s:3:\"zxc\";s:8:\"suoluetu\";s:63:\"/attachment/image/201705/05_a628a099dd5279a5c21c9ebb17e230c.png\";s:7:\"payfile\";s:6:\"weixin\";s:8:\"zhanghao\";s:0:\"\";s:5:\"payid\";s:0:\"\";s:6:\"paykey\";s:0:\"\";s:5:\"paixu\";s:0:\"\";s:6:\"beizhu\";s:0:\"\";s:5:\"isapp\";s:1:\"0\";s:7:\"adminid\";s:1:\"1\";}}', '110.88.239.241', '1493974204');
INSERT INTO `ay_adminlog` VALUES ('1872', '1', '4', 'a:4:{s:2:\"ac\";s:3:\"pay\";s:2:\"mo\";s:3:\"del\";s:2:\"id\";i:7;s:4:\"yuan\";a:13:{s:2:\"id\";s:1:\"7\";s:4:\"name\";s:3:\"zxc\";s:8:\"suoluetu\";s:63:\"/attachment/image/201705/05_a628a099dd5279a5c21c9ebb17e230c.png\";s:5:\"payid\";s:0:\"\";s:6:\"paykey\";s:0:\"\";s:8:\"zhanghao\";s:0:\"\";s:3:\"off\";s:1:\"0\";s:7:\"xianshi\";s:1:\"0\";s:6:\"beizhu\";s:0:\"\";s:5:\"paixu\";s:1:\"0\";s:7:\"adminid\";s:1:\"1\";s:7:\"payfile\";s:6:\"weixin\";s:5:\"isapp\";s:1:\"0\";}}', '110.88.239.241', '1493974246');
INSERT INTO `ay_adminlog` VALUES ('1873', '1', '0', '', '110.88.239.241', '1493975709');
INSERT INTO `ay_adminlog` VALUES ('1874', '1', '2', 's:14:\"110.88.239.241\";', '116.21.80.84', '1493975873');
INSERT INTO `ay_adminlog` VALUES ('1875', '1', '0', '', '116.21.80.84', '1493975901');
INSERT INTO `ay_adminlog` VALUES ('1876', '1', '2', 's:12:\"116.21.80.84\";', '110.88.239.241', '1493976072');
INSERT INTO `ay_adminlog` VALUES ('1877', '1', '0', '', '110.88.239.241', '1493976114');
INSERT INTO `ay_adminlog` VALUES ('1878', '1', '0', '', '114.226.182.32', '1493998486');
INSERT INTO `ay_adminlog` VALUES ('1879', '1', '0', '', '116.21.80.84', '1494077571');

-- ----------------------------
-- Table structure for `ay_center`
-- ----------------------------
DROP TABLE IF EXISTS `ay_center`;
CREATE TABLE `ay_center` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '内容名字',
  `guanjian` varchar(255) NOT NULL COMMENT '关键词',
  `miaoshu` varchar(255) NOT NULL COMMENT '描述',
  `zcid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '第二子分类id',
  `cid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `url` varchar(255) NOT NULL COMMENT '内容url',
  `http` varchar(255) NOT NULL COMMENT '外联url',
  `neromb` varchar(10) NOT NULL COMMENT '指定内容模版',
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid',
  `shid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商家id',
  `adminid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '管理员uid',
  `tuijian` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推荐',
  `paixu` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `renqi` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '人气',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `tupianji` text NOT NULL COMMENT '图片集',
  `neirong` longtext NOT NULL COMMENT '分类内容',
  `kuozan` text NOT NULL COMMENT '扩展数据',
  `atime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `xtime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `off` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态0 关闭 1 审核 2 正常',
  `explx1` bigint(20) NOT NULL DEFAULT '0' COMMENT '扩展类型1',
  `explx2` bigint(20) NOT NULL DEFAULT '0' COMMENT '扩展类型2',
  `explx3` bigint(20) NOT NULL DEFAULT '0' COMMENT '扩展类型3',
  `explx4` bigint(20) NOT NULL DEFAULT '0' COMMENT '扩展类型4',
  `explx5` bigint(20) NOT NULL DEFAULT '0' COMMENT '扩展类型5',
  `explx6` bigint(20) NOT NULL DEFAULT '0' COMMENT '扩展类型6',
  `yuanjia` double(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '产品原价',
  `jiage` double(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '现在单价',
  `yunid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '运费id',
  `xiaoliang` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `canshu` text NOT NULL COMMENT '产品选购参数+价格',
  `miaosufen` double(20,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '描述总分',
  `fuwufen` double(20,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '服务总分',
  `wuliufen` double(20,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '物流总分',
  `fenren` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评分人数',
  `jinzhong` double(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '净重',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '处理方式',
  `kahao` varchar(255) NOT NULL COMMENT '授权或者网盘地址文件地址',
  `kamima` varchar(255) NOT NULL COMMENT '网盘密码或者压缩吧密码',
  `xiangou` double unsigned NOT NULL DEFAULT '0' COMMENT '限购数量',
  `xgtype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '限购分类',
  `xgdata` varchar(255) NOT NULL COMMENT '限购时间端',
  `huobi` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '购买方式货币',
  `beizhu` varchar(255) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `url` (`url`),
  KEY `off` (`off`),
  KEY `cid_2` (`cid`,`off`),
  KEY `explx1` (`explx1`),
  KEY `explx2` (`explx2`),
  KEY `explx3` (`explx3`),
  KEY `explx4` (`explx4`),
  KEY `explx5` (`explx5`),
  KEY `explx6` (`explx6`)
) ENGINE=InnoDB AUTO_INCREMENT=466 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ay_center
-- ----------------------------
INSERT INTO `ay_center` VALUES ('453', '0.0', '', '', '0', '67', '00', '', '', '0', '0', '1', '0', '0', '0', '', '', '', '', '1491469086', '1491471135', '2', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', 'a:0:{}', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '');
INSERT INTO `ay_center` VALUES ('454', '0.0', '', '', '0', '67', '2888', '', '', '0', '0', '1', '0', '0', '0', '', '', '', '', '1491469106', '1491471124', '2', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', 'a:0:{}', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '');
INSERT INTO `ay_center` VALUES ('455', '0.0', '', '', '0', '67', '1888', '', '', '0', '0', '1', '0', '0', '0', '', '', '', '', '1491469123', '1491471105', '2', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', 'a:0:{}', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '');
INSERT INTO `ay_center` VALUES ('456', '0.0', '', '', '0', '67', '888', '', '', '0', '0', '1', '0', '0', '0', '', '', '', '', '1491469139', '1491471085', '2', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', 'a:0:{}', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '');
INSERT INTO `ay_center` VALUES ('457', '0.0', '', '', '0', '67', '588', '', '', '0', '0', '1', '0', '0', '0', '', '', '', '', '1491469155', '1491471074', '2', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', 'a:0:{}', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '');
INSERT INTO `ay_center` VALUES ('458', '0.0', '', '', '0', '68', '00y', '', '', '0', '0', '1', '0', '0', '0', '', '', '', '', '1491469252', '1491471225', '2', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', 'a:0:{}', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '');
INSERT INTO `ay_center` VALUES ('459', '0.0', '', '', '0', '68', '6888', '', '', '0', '0', '1', '0', '0', '0', '', '', '', '', '1491469287', '1491471209', '2', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', 'a:0:{}', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '');
INSERT INTO `ay_center` VALUES ('460', '0.0', '', '', '0', '68', '4888', '', '', '0', '0', '1', '0', '0', '0', '', '', '', '', '1491469301', '1491471191', '2', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', 'a:0:{}', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '');
INSERT INTO `ay_center` VALUES ('461', '0.0', '', '', '0', '68', '2888n', '', '', '0', '0', '1', '0', '0', '0', '', '', '', '', '1491469314', '1491471176', '2', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', 'a:0:{}', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '');
INSERT INTO `ay_center` VALUES ('462', '0.0', '', '', '0', '68', '1888c', '', '', '0', '0', '1', '0', '0', '0', '', '', '', '', '1491469333', '1491471157', '2', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', 'a:0:{}', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '');
INSERT INTO `ay_center` VALUES ('463', '0.0', '', '', '0', '69', '1b', '', '', '0', '0', '1', '0', '0', '0', '', '', '', '', '1491735832', '1491735848', '2', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', 'a:0:{}', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '');
INSERT INTO `ay_center` VALUES ('464', '0.0', '', '', '0', '69', '288', '', '', '0', '0', '1', '0', '0', '0', '', '', '', '', '1491735875', '1491735875', '2', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', 'a:0:{}', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '');
INSERT INTO `ay_center` VALUES ('465', '0.0', '', '', '0', '0', '388', '', '', '0', '0', '1', '0', '0', '0', '', '', '', '', '1491735904', '1491735904', '2', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', 'a:0:{}', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '');

-- ----------------------------
-- Table structure for `ay_chanpingg`
-- ----------------------------
DROP TABLE IF EXISTS `ay_chanpingg`;
CREATE TABLE `ay_chanpingg` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '产品模型名字',
  `canshu` text NOT NULL COMMENT '产品模型参数',
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid',
  `adminid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '管理id',
  `shid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商户id',
  `atime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `ip` varchar(36) NOT NULL COMMENT 'ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ay_chanpingg
-- ----------------------------
INSERT INTO `ay_chanpingg` VALUES ('6', '牛肉参数', 'a:2:{s:5:\"shuju\";a:1:{i:0;a:2:{s:4:\"name\";s:12:\"产品规格\";i:0;a:3:{s:6:\"canshu\";s:4:\"500G\";s:6:\"miaosu\";s:0:\"\";s:6:\"tupian\";s:0:\"\";}}}s:5:\"jiage\";a:1:{s:5:\"500G_\";d:0;}}', '0', '1', '0', '1476756460', '127.0.0.1');

-- ----------------------------
-- Table structure for `ay_dingdan`
-- ----------------------------
DROP TABLE IF EXISTS `ay_dingdan`;
CREATE TABLE `ay_dingdan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` varchar(64) NOT NULL COMMENT '系统订单',
  `tongyiid` varchar(64) NOT NULL COMMENT '统一下单id  充值id',
  `xiorderid` varchar(64) NOT NULL COMMENT '商户返回id',
  `hongbaoid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '红包id',
  `hongjine` double(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '红包优惠金额',
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '所属用户',
  `shid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商家id',
  `adminid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '管理id',
  `kuaixq` varchar(255) NOT NULL COMMENT '快递模版详情',
  `kuaiid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '快递id',
  `yunfei` double(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '运费价格',
  `jine` double(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '产品系统金额',
  `jifen` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `huobi` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '货币',
  `payjine` double(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '应当支付金额',
  `rejine` double(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '返回金额',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单分类 0 产品 1 充值订单',
  `jjine` double(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '结算金额',
  `jieoff` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '结算状态',
  `off` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态',
  `atime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `xtime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '充值成功时间',
  `jtime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '结算时间',
  `mhash` varchar(64) NOT NULL COMMENT '唯一标识验证',
  `faoff` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '发货状态',
  `xingming` varchar(255) NOT NULL COMMENT '收货人姓名',
  `shouji` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '收货人手机',
  `diqu` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '城市id',
  `shouhuo` varchar(255) NOT NULL COMMENT '收获地区详细',
  `ip` varchar(36) NOT NULL,
  `shoubeizhu` varchar(255) NOT NULL COMMENT '收货备注',
  `fakuaidi` varchar(255) NOT NULL COMMENT '发货快递',
  `fakuaima` varchar(255) NOT NULL COMMENT '发货快递号码',
  `fabeizhu` varchar(255) NOT NULL COMMENT '发货备注',
  `shouhoufs` varchar(255) NOT NULL COMMENT '售后联系方式',
  `tikuaidi` varchar(255) NOT NULL COMMENT '退货快递',
  `tikuaima` varchar(255) NOT NULL COMMENT '退货快递号码',
  `tibeizhu` varchar(255) NOT NULL COMMENT '退货备注',
  `tijine` double(20,0) unsigned NOT NULL DEFAULT '0' COMMENT '声请退款金额',
  `tihuanhuo` text NOT NULL COMMENT '系统操作记录 退换货记录',
  `paytype` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '支付方式',
  `tehui` double(3,2) unsigned NOT NULL DEFAULT '1.00' COMMENT '特惠支付比例',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `lailu` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '来路',
  `shouhou` varchar(100) NOT NULL COMMENT '售后',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mhash` (`mhash`),
  KEY `orderid` (`orderid`),
  KEY `tongyiid` (`tongyiid`),
  KEY `xiorderid` (`xiorderid`),
  KEY `hongbaoid` (`hongbaoid`),
  KEY `uid` (`uid`),
  KEY `shid` (`shid`),
  KEY `adminid` (`adminid`),
  KEY `off` (`off`),
  KEY `jieoff` (`jieoff`),
  KEY `faoff` (`faoff`),
  KEY `tongyiid_2` (`tongyiid`,`type`,`off`),
  KEY `uid_2` (`uid`,`type`,`off`,`faoff`),
  KEY `atime` (`atime`),
  KEY `off_2` (`off`,`atime`),
  KEY `uid_3` (`uid`,`off`,`atime`)
) ENGINE=InnoDB AUTO_INCREMENT=456 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ay_dingdan
-- ----------------------------
INSERT INTO `ay_dingdan` VALUES ('451', '20170502171346320787', '', '', '0', '0.00', '148', '0', '0', '', '0', '0.00', '0.00', '0', '0', '5.00', '0.00', '1', '0.00', '0', '1', '1493716426', '0', '0', 'ce532b545e8286c9294e33fb223df24827afc04c6fabbe09ac39a26dcc8fa7b7', '0', '', '0', '0', '', '116.21.81.139', '', '', '', '', '', '', '', '', '0', '', '6', '1.00', '0', '4', '');
INSERT INTO `ay_dingdan` VALUES ('452', '20170505083259122890', '', '', '0', '0.00', '148', '0', '0', '', '0', '0.00', '0.00', '0', '0', '5.00', '0.00', '1', '0.00', '0', '1', '1493944379', '0', '0', '9a2d356d401973cb9da35fdf585f3be84c568db3c799bf7f2e5de156a1c12387', '0', '', '0', '0', '', '116.21.83.237', '', '', '', '', '', '', '', '', '0', '', '6', '1.00', '0', '0', '');
INSERT INTO `ay_dingdan` VALUES ('453', '20170505085252876396', '', '', '0', '0.00', '149', '0', '0', '', '0', '0.00', '0.00', '0', '0', '5.00', '0.00', '1', '0.00', '0', '1', '1493945572', '0', '0', 'b52fc56eeb232877790b228ce6c8b866b08c1211ab315d8f8fd8d73c48751d5c', '0', '', '0', '0', '', '116.21.83.237', '', '', '', '', '', '', '', '', '0', '', '6', '1.00', '0', '1', '');
INSERT INTO `ay_dingdan` VALUES ('454', '20170505111635394564', '', '', '0', '0.00', '150', '0', '0', '', '0', '0.00', '0.00', '0', '0', '5.00', '0.00', '1', '0.00', '0', '1', '1493954195', '0', '0', '473768df1b32c3b2eae056a2c8b422ee3a7fa54688d392d20ee940d1ab310128', '0', '', '0', '0', '', '116.21.80.84', '', '', '', '', '', '', '', '', '0', '', '6', '1.00', '0', '1', '');
INSERT INTO `ay_dingdan` VALUES ('455', '20170505171833157164', '', '', '0', '0.00', '148', '0', '0', '', '0', '0.00', '0.00', '0', '0', '5.00', '0.00', '1', '0.00', '0', '1', '1493975913', '0', '0', '7901121de14ceff893dabefd71d2bbb07d8800fe15a2335be53f726e225050bf', '0', '', '0', '0', '', '110.88.239.241', '', '', '', '', '', '', '', '', '0', '', '6', '1.00', '0', '0', '');

-- ----------------------------
-- Table structure for `ay_dingdanx`
-- ----------------------------
DROP TABLE IF EXISTS `ay_dingdanx`;
CREATE TABLE `ay_dingdanx` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) NOT NULL COMMENT '订单id',
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid',
  `shid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商家id',
  `cpid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '产品id',
  `name` varchar(255) NOT NULL COMMENT '产品名字',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `jine` double(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '产品单价',
  `num` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '产品购买数量',
  `canshu` varchar(255) NOT NULL,
  `type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '购买方式',
  `off` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '扩展状态',
  `kahao` varchar(255) NOT NULL COMMENT '扩展处理状态',
  `kamima` text NOT NULL COMMENT '核心密码',
  `beizhu` varchar(255) NOT NULL,
  `biaoshi` varchar(255) NOT NULL COMMENT '网址硬件id授权唯一标识',
  `ctime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '处理时间',
  `atime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `ip` varchar(36) NOT NULL COMMENT '订单ip',
  `mhash` varchar(64) NOT NULL COMMENT '唯一标识验证',
  `huobi` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '货币购买方式',
  `tehui` double(3,2) unsigned NOT NULL DEFAULT '1.00' COMMENT '特惠支付比例',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `kuaiid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '快递id',
  `kuaitype` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '快递类型',
  `kuaijil` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '快递计量',
  `miaosufen` double(20,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '描述评分',
  `fuwufen` double(20,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '服务评分',
  `wuliufen` double(20,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '物流评分',
  `pinguser` varchar(255) NOT NULL COMMENT '评论人昵称',
  `pingoff` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '评论开关  0禁用   1 等待审核 2 审核成功',
  `pingtime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `pingname` varchar(255) NOT NULL COMMENT '评论标题',
  `miaoshu` text NOT NULL COMMENT '评论描述',
  `ptupian` varchar(255) NOT NULL COMMENT '评论缩略图',
  `ptupianji` text NOT NULL COMMENT '评论图片集',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mhash` (`mhash`),
  KEY `orderid` (`orderid`),
  KEY `uid` (`uid`),
  KEY `orderid_2` (`orderid`,`uid`),
  KEY `cpid` (`cpid`),
  KEY `shid` (`shid`),
  KEY `orderid_3` (`orderid`,`huobi`),
  KEY `atime` (`atime`),
  KEY `cpid_2` (`cpid`,`pingoff`),
  KEY `cpid_3` (`cpid`,`miaosufen`,`pingoff`),
  KEY `miaosufen` (`miaosufen`),
  KEY `id` (`id`),
  KEY `pingoff` (`pingoff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ay_dingdanx
-- ----------------------------

-- ----------------------------
-- Table structure for `ay_fujian`
-- ----------------------------
DROP TABLE IF EXISTS `ay_fujian`;
CREATE TABLE `ay_fujian` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '附件名字',
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '所属用户',
  `sid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '所属商户',
  `guanid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '关联id',
  `type` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '附件分类',
  `houzui` varchar(20) NOT NULL COMMENT '附件后缀',
  `cdn` varchar(255) NOT NULL COMMENT '附件cdn',
  `pic` varchar(255) NOT NULL COMMENT '附件原图路',
  `beizhu` varchar(255) NOT NULL COMMENT '附件备注',
  `adminid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '管理id',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '尺寸大小',
  `atime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
  `token` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `uid` (`uid`),
  KEY `uid_2` (`uid`,`guanid`,`type`),
  KEY `guanid` (`guanid`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ay_fujian
-- ----------------------------
INSERT INTO `ay_fujian` VALUES ('3', 'psbjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/11_f72ae417afac0074d09f039628fcb16.jpg', '', '0', '155471', '1476184128', '24458080299420277b382b04fc5e1ad7');
INSERT INTO `ay_fujian` VALUES ('4', 'psbpng', '0', '0', '1', '0', 'png', '', '/attachment/all/201610/12_5b45652ccb9902ade556795fc5244da.png', '', '0', '34709', '1476258819', 'eac3ba228133fbaee14ae67fd199c344');
INSERT INTO `ay_fujian` VALUES ('5', '0jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_dd9ead1124a6f4d89a3c6894f8a0526.jpg', '', '0', '27339', '1476754484', '58bb5a17e7860d21901f4bd05b0fd500');
INSERT INTO `ay_fujian` VALUES ('6', '1jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_6ed961bb8e880e07173f1c2be999d2a.jpg', '', '0', '96511', '1476754596', '45e07229e8313c15f05d48e4ac18993e');
INSERT INTO `ay_fujian` VALUES ('7', '2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_494abe571a41a4f6afd8f7f6db117d0.jpg', '', '0', '75864', '1476754596', '85adc6f3421816378744438a493a5b5e');
INSERT INTO `ay_fujian` VALUES ('8', '3jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_1bb07013afbedfa0015030e6a5aa834.jpg', '', '0', '103610', '1476754596', 'c90b24e7409b8e14b3b3281c5e014c07');
INSERT INTO `ay_fujian` VALUES ('9', '4jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_02d37580db764781374536af5892584.jpg', '', '0', '72332', '1476754596', 'f48166f6a491b100bbdb32b53d2b3949');
INSERT INTO `ay_fujian` VALUES ('10', '0jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_ad4f55d5149e9250575115b5ae42622.jpg', '', '0', '106593', '1476754678', '52f32b5f5176953a99cd92618d4e1f4e');
INSERT INTO `ay_fujian` VALUES ('11', '1jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_84d174392275624ac89e8d09c540174.jpg', '', '0', '89477', '1476754690', '5bc29f418a14fb5e173862fbaf90a2b9');
INSERT INTO `ay_fujian` VALUES ('12', '2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_9ac60653c6e480f4045b5bea8975f1d.jpg', '', '0', '64779', '1476754690', '2c08b2b403907ddf9e929bdf6e0ad8b7');
INSERT INTO `ay_fujian` VALUES ('13', '3jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_e5ee1fef550bdc7f8c4e9df58ebdb2a.jpg', '', '0', '74895', '1476754690', '52c2c6304194e35065364fa9efe70228');
INSERT INTO `ay_fujian` VALUES ('14', '0jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_7f6c76024a989897d5b3ff72eff15c5.jpg', '', '0', '92584', '1476755188', '058fbb8eb4941dc1985b3b0b07c58c34');
INSERT INTO `ay_fujian` VALUES ('15', '1jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_be3ad8bd0cc72409ca03b02ac12ee65.jpg', '', '0', '106150', '1476755194', '84be8d6e9daed7a0641ef8bbd7f030f8');
INSERT INTO `ay_fujian` VALUES ('16', '2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_637bc3a3140ec850423968670593e00.jpg', '', '0', '96539', '1476755194', 'f907043e6535ad141014c160163ff34e');
INSERT INTO `ay_fujian` VALUES ('17', '3jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_6b6f4ec86870491e1ae96494630950a.jpg', '', '0', '90716', '1476755194', 'f59b0ded82a3220feafa6eff6c4a0246');
INSERT INTO `ay_fujian` VALUES ('18', '0jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_1c2b00bf165794c9bb22f78da1bad8a.jpg', '', '0', '98205', '1476755248', 'ea7e453f96211c0941ed393bf9508420');
INSERT INTO `ay_fujian` VALUES ('19', '1jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_e4f4bbc604fa8b6233cb8c75ae762ef.jpg', '', '0', '105104', '1476755253', '7dbb71e9d13dca355162a3efd12e6b6e');
INSERT INTO `ay_fujian` VALUES ('20', '2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_2f56261d8076511eadafc4b78203140.jpg', '', '0', '119157', '1476755253', '67899591b079695ec35a639f808cad77');
INSERT INTO `ay_fujian` VALUES ('21', '3jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_9bd0d1c2ec1bfd40735795bb491826b.jpg', '', '0', '77199', '1476755253', 'e889f6cb1c24f3c98c9d586abfe0a990');
INSERT INTO `ay_fujian` VALUES ('22', '0jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_a92e38cad3169582716353a0bbfcf13.jpg', '', '0', '106005', '1476755322', '657a26d9591cdf6b75d2ed529529ee31');
INSERT INTO `ay_fujian` VALUES ('23', '1jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_9e87e909169d0aee006fe46af10cf22.jpg', '', '0', '81304', '1476755328', '233f3fec31e357bca51b2012eee7d406');
INSERT INTO `ay_fujian` VALUES ('24', '2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_07c87c8a3211810fa5a77952a2fb4de.jpg', '', '0', '96210', '1476755328', '45247bb506e48337dc7ce7981e50322d');
INSERT INTO `ay_fujian` VALUES ('25', '3jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201610/18_7047d34dfa4d22bcb547808dfdf4d0b.jpg', '', '0', '82378', '1476755328', 'f17706d89659abf5f41cdedfeb2fb828');
INSERT INTO `ay_fujian` VALUES ('26', '未命名1png', '0', '0', '1', '0', 'png', '', '/attachment/all/201610/24_b2d5e3afa55523a2afbb1b9c93007d8.png', '', '0', '50460', '1477275363', '06d87a67e405a50c9e8511b2738f13f6');
INSERT INTO `ay_fujian` VALUES ('33', 'lkpayphpzip', '0', '0', '1', '1', 'zip', '', '/attachment/all/201610/24_703a4c579c024ed96cfc6a488a22334.zip', '', '0', '128815', '1477296114', '9014953ff66e15435c96ba1d1bc6a012');
INSERT INTO `ay_fujian` VALUES ('35', '未命名1rar', '0', '0', '1', '1', 'rar', '', '/attachment/all/201610/24_1b40e00d5cf689f957f757b350bbef8.rar', '', '0', '36397', '1477299818', '5eb60b945c051093b84f39559430be0d');
INSERT INTO `ay_fujian` VALUES ('36', '3a7330d134d34defdfbb6c26f53cef71jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_6bd87edf1ff23afab6d7b6f88fcafe6.jpg', '', '0', '13018', '1480398386', '49d8c5b5790b8522db8792b7679b7348');
INSERT INTO `ay_fujian` VALUES ('37', '1180x18014332656pss8hjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_45be11fda611978770356d338d0f7d1.jpg', '', '0', '24342', '1480398466', 'bd8f38c8db0a4ed3401c7a5ffe686a54');
INSERT INTO `ay_fujian` VALUES ('38', '1370x37014332656pss8hjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_cedc99c93ec79fc5af931819f3bbee5.jpg', '', '0', '77686', '1480398751', '1586cd81c45be02943aea3b8f27abe61');
INSERT INTO `ay_fujian` VALUES ('39', '2370x37014332da9a8313jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_fa8730a1556c6ef4b29680f069aca3e.jpg', '', '0', '57428', '1480398751', '311dc7d7b833b6cd8e049ad05dcfabbe');
INSERT INTO `ay_fujian` VALUES ('40', '3370x37014332da9a8313jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_153a659fa7be2713ee26b860efbe0eb.jpg', '', '0', '62513', '1480398752', '00b7c24c9f34a13bca0bda2a9568844f');
INSERT INTO `ay_fujian` VALUES ('41', '4370x37014332xpysthhtjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_05f6caee4b6209ce2352b80ad4e9a8a.jpg', '', '0', '70124', '1480398752', '536e4c33391f2e7874fc07b27c5c93bf');
INSERT INTO `ay_fujian` VALUES ('42', '1180x18014653u7k14cs1jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_bcee60972caa9ba06cce6ed76bc244a.jpg', '', '0', '22194', '1480401429', '1d53a121ecd66d4db339ef864f822d3a');
INSERT INTO `ay_fujian` VALUES ('43', '1370x37014653u7k14cs1jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_012f0bdf7761612b0c76aa400772f3f.jpg', '', '0', '70164', '1480401473', 'c75f47738ed76530ccda0a8ce6dd5fec');
INSERT INTO `ay_fujian` VALUES ('44', '2370x37014653sf34pysdjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_d043b109ff3d59b0e480603755c0576.jpg', '', '0', '124367', '1480401473', '885c822b94b3c481913b9a9fa0fa17fe');
INSERT INTO `ay_fujian` VALUES ('45', '3370x37014653sf34pysdjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_ef4b900b1895414960ce03e000efe02.jpg', '', '0', '107768', '1480401474', 'bcdc0eef49dd0642758daffe17e07a36');
INSERT INTO `ay_fujian` VALUES ('46', '1180x1801460788ffu1p2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_84c3af14b4f036ffd586c76a9fc7c0c.jpg', '', '0', '26495', '1480402084', 'c9397880ee8a0039712e84f2ee1d3abc');
INSERT INTO `ay_fujian` VALUES ('47', '1370x3701460788ffu1p2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_8e1edda131839e8d71eeede63ef3512.jpg', '', '0', '87644', '1480402151', 'ad046b6c711ecf68e34b3724c4595ba2');
INSERT INTO `ay_fujian` VALUES ('48', '2370x37014607pus1stp5jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_adc09549490dcb63f0246771e36ac44.jpg', '', '0', '125905', '1480402152', 'bf9597d438642342ceed5b14159fbf02');
INSERT INTO `ay_fujian` VALUES ('49', '3370x37014607pus1stp5jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_ae14a8b5c26a5377734a8300e8504f3.jpg', '', '0', '98759', '1480402152', '08494c82e28d6fbb711856d2b81cbabf');
INSERT INTO `ay_fujian` VALUES ('50', '4370x37014607pus1stp5jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_ca8327a22c140742c2846e676d16bba.jpg', '', '0', '91861', '1480402152', 'b7f4b5245191ecd4c41445d2a232b31d');
INSERT INTO `ay_fujian` VALUES ('51', '970fa6943a5a667b1752c985541fcc16jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_3b5ba20619293a1bac024ca092660ed.jpg', '', '0', '11582', '1480402562', '4910bd7bad1b841a3a1201f3f8c1eb26');
INSERT INTO `ay_fujian` VALUES ('52', '1370x3707154pdxrs21bjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_e20854559e9e8267cf1afcdb417d2b9.jpg', '', '0', '80471', '1480402718', '8bb94489a791d8aedc2164876a67ff78');
INSERT INTO `ay_fujian` VALUES ('53', '2370x3707154r9kfxw37jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_74f537a790f0ac34108bbc8e7251941.jpg', '', '0', '95184', '1480402724', 'fae71f18cefcf19a31acdf97c7056c72');
INSERT INTO `ay_fujian` VALUES ('54', '3370x3707154r9kfxw37jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_f2db5f29d70a4cfc7a2e9b3be4c4136.jpg', '', '0', '122398', '1480402724', '790736fc50e40923c91e2b5c3c3fd418');
INSERT INTO `ay_fujian` VALUES ('55', '4370x3707154sarfy74pjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_8293d485d3a96b09608b00d1130c81d.jpg', '', '0', '83161', '1480402725', '6b32f38acdca9e126ec932b691ec50a3');
INSERT INTO `ay_fujian` VALUES ('56', '1180x18013522r3t2463pjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201611/29_2152781d5751d2f95bbe2739331e454.jpg', '', '0', '28521', '1480402825', '11a36d07f9c822133a5a85bd0b7ebcb0');
INSERT INTO `ay_fujian` VALUES ('144', 'headerfooterpng', '10', '0', '774', '2', 'png', '', '/attachment/image/201612/06_a3dd8ee582d5b5664e1465f9cb878e7.png', '', '0', '17815', '1481003058', '77ef529727356d855cb58c71c87ab1f4');
INSERT INTO `ay_fujian` VALUES ('146', 'dolistpng', '10', '0', '773', '2', 'png', '', '/attachment/image/201612/06_e322510f9fff30e293fd7ae7b6d4149.png', '', '0', '9405', '1481005603', '47b23956981d37e20a8d4223403d70c7');
INSERT INTO `ay_fujian` VALUES ('150', 'f582b2b28c16b5068d1a1c3ea521385bjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_51e53d19853f1d0b84282fe8974be88.jpg', '', '0', '13826', '1482995117', '6b8f0f2d4b72e6df9935a82b7be78f9f');
INSERT INTO `ay_fujian` VALUES ('151', '7af2dd704644e363fcd7535a83f6a9a6jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_a5b6b3f26b07a4726b64b1895c8c706.jpg', '', '0', '14881', '1482995160', '7311d75ae4a5ed3d70c0da14bea6124c');
INSERT INTO `ay_fujian` VALUES ('152', 'f2b5c6209decb351fe462986aae563f7jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_a5fb5eeb479a82a6bde104183245661.jpg', '', '0', '12770', '1482995190', 'b12a568811c194d4866b15be4fbd2716');
INSERT INTO `ay_fujian` VALUES ('153', '1b6f4ea6c728e07c3d30a636808a4e74jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_c82f5ed91d527e3a588da4c9995fc3b.jpg', '', '0', '10882', '1482995247', 'd90ee3b3ceed809334f93af4622c146c');
INSERT INTO `ay_fujian` VALUES ('154', '9beabc8a367afc3c3d6f3c8612201bbejpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_00c35c2e3bc9b530926ad8d9b9242eb.jpg', '', '0', '16086', '1482995323', '8e3ff5db2fe7e9c65638854d85d7166c');
INSERT INTO `ay_fujian` VALUES ('155', '934c2187d359440f8463b8efa2d710f0jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_02f91d48073f3e6b22e8942b9bd3e67.jpg', '', '0', '9193', '1482995546', 'fac2558f99762d207a9351fd51fcda82');
INSERT INTO `ay_fujian` VALUES ('156', '08b19acc33f379dc4411a4efbb531484jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_033c4c8686febe44a36f4ec50a80963.jpg', '', '0', '9811', '1482995581', '9b9e308771e562318edfd64c269ea1cc');
INSERT INTO `ay_fujian` VALUES ('157', '4f432c28676d8144df97fd0d4104fe5ajpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_a1c2134802c46bf73590bc7d321f039.jpg', '', '0', '9276', '1482995620', 'c61f03dc26799d9a629501a89c819893');
INSERT INTO `ay_fujian` VALUES ('158', 'f623b7c7bc01a4f8fcee0698a96621cajpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_033a9e81a8a073d6a6fd17d93c6919a.jpg', '', '0', '5027', '1482995719', '8d478b1ff6b045cbbc980362d0a280b4');
INSERT INTO `ay_fujian` VALUES ('159', 'b04050b59277228bd5b6191b6cee4addjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_caf39ed0b99941ca9d7c9765dccbfe8.jpg', '', '0', '15514', '1482995745', '66d86c40bfb5023bf1a843033e2cb5c8');
INSERT INTO `ay_fujian` VALUES ('160', 'ef45ccb8f10dcd9b92dd8fb1ef0ebd31jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_1413b0116bebabcc2d362daf0888e0a.jpg', '', '0', '7380', '1482995771', '2401c6ef1c13ad5ddfcecf56b5de3eb7');
INSERT INTO `ay_fujian` VALUES ('161', 'ff10f837d510727aadb3bdbc6cf7956ajpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_b3ffff1544371e69cdeb5371c11a45c.jpg', '', '0', '7969', '1482995803', 'f85659e55b2092ca148c56444d638c1e');
INSERT INTO `ay_fujian` VALUES ('162', '0342dde0da6b8148b82be9b62d150b70jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_0ca1a12407c12388ee1679ebc0ed226.jpg', '', '0', '16332', '1482995840', '7902df0d4a72f4dbdbe6cbea47cf4e7d');
INSERT INTO `ay_fujian` VALUES ('163', 'a895393705451501b6eb264fc14f9434jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_fd55e29cf420304aa44a9e0451c18f9.jpg', '', '0', '3741', '1482995971', '04a1a24996f34fb1f0709bd0a07c458b');
INSERT INTO `ay_fujian` VALUES ('164', '7cabe6702366038b8e039a13310790ffjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_19d513c83fddb70a010a76f5e3590c1.jpg', '', '0', '6013', '1482996004', '3468b919751b52b3daf6380ad3e6267c');
INSERT INTO `ay_fujian` VALUES ('165', 'a7951792780f8a012dd1832d96a2c038jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_bdc27f1f4876337c3628d41aa1c7f63.jpg', '', '0', '6195', '1482996080', 'c9d7181567f0e482b2819dbc108e7a7f');
INSERT INTO `ay_fujian` VALUES ('166', 'a87aa7045f08fd0c5095e82970a2cb0ejpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_c53ccd4af6b857a07e4a0e2a31c076a.jpg', '', '0', '6006', '1482996113', 'd9f2cc88e3e79a83d2801b717ca4b1fe');
INSERT INTO `ay_fujian` VALUES ('167', '810c1048c9d24091f0532b18fdb8b760jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_24a30e7e8d7335e2aac2437605cb97c.jpg', '', '0', '19548', '1482996143', '82042b8ebd6188e44d39185299f0bd3a');
INSERT INTO `ay_fujian` VALUES ('168', 'bd95ebf9c50341be07e588015b6f5b18jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_0371cddd6094659c3d8e5d2abd01b62.jpg', '', '0', '7970', '1482996175', 'ee8aab1c70bccdf2f5e16599b18d28ae');
INSERT INTO `ay_fujian` VALUES ('169', '51e4c1cbcbc3f552dd94fe80151beff5jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_8bfb1ea693b673db2630cbcc25ad9a6.jpg', '', '0', '3687', '1482996246', 'bcf9f20851ba65c5c5c944e22eb9bb8f');
INSERT INTO `ay_fujian` VALUES ('170', '07a75034a0006cfe6ed316078cfbc0a6jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_2999499da5184f9b56068b90ae6bc29.jpg', '', '0', '6076', '1482996283', '768535564d1230368ebea275607fbc56');
INSERT INTO `ay_fujian` VALUES ('171', '4e547d71cf71e05adc2c031aa934cd8ejpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_4a0594b379740b0104c319d818c08b0.jpg', '', '0', '14549', '1482996317', '3079f0067ae4d8fd3846881bd65726b7');
INSERT INTO `ay_fujian` VALUES ('172', '1180x180146279a5ct1b8jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_59c10a2a320dee08bd105dceb919e76.jpg', '', '0', '23600', '1482996461', '363d2cf711d26998b201ed64b5760c44');
INSERT INTO `ay_fujian` VALUES ('173', '1370x370146279a5ct1b8jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_c1b06f2239bac79aa03353aa35f8f8f.jpg', '', '0', '76544', '1482996501', '8a2214585b86c640edd0e93373f17c93');
INSERT INTO `ay_fujian` VALUES ('174', '4370x3701462751usbwatjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_a0fc8d36a1578c7d31f952fc3ebdfc2.jpg', '', '0', '100213', '1482996502', 'c3aa35ba30e06c336156a15cdae431b4');
INSERT INTO `ay_fujian` VALUES ('175', '14800711388455jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_c4ca4a02de893b512cf0f4fc79fe897.jpg', '', '0', '303792', '1482996593', '810bd03e6c4cffbfd60f8b17ac08a80e');
INSERT INTO `ay_fujian` VALUES ('176', '1180x18012909w8tyh4y2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_8fca2210055ed83faed9c299a4d64c7.jpg', '', '0', '26180', '1483012067', 'fccf37b8d91b45259daaf13fae0b902c');
INSERT INTO `ay_fujian` VALUES ('177', '2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_262b6cdafca85c6c723270146e3e4ec.jpg', '', '0', '87862', '1483012075', '2cda9d87248c4b016c5a1876ea2a99d5');
INSERT INTO `ay_fujian` VALUES ('178', '3jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_a73a25458f4636be2f6297780230b40.jpg', '', '0', '80634', '1483012075', '0adff7d061f141c601e63dd7850f5e06');
INSERT INTO `ay_fujian` VALUES ('179', '1370x37010240ss1kst4fjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_6a4a7817c66b2126cd0b192a2f4ad28.jpg', '', '0', '79822', '1483012126', 'b758311efc035a3811525f2cd1388f51');
INSERT INTO `ay_fujian` VALUES ('180', '2370x37010240pwr23s7xjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_c1bcdbba3fd6b994ca0c65596433ebf.jpg', '', '0', '93119', '1483012126', '01e133f6cf138029a0f0a0cd70fc9db0');
INSERT INTO `ay_fujian` VALUES ('181', '1111jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_f42ce9185b4d7e7e7a17326fada38fa.jpg', '', '0', '21636', '1483012194', 'd4d611e836a0782eb95aac48f9d5d541');
INSERT INTO `ay_fujian` VALUES ('182', '1111jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_47d1a7c7269f3986a2adee7a81517e0.jpg', '', '0', '323423', '1483012445', 'e69512e11481c18a1081dbb2fcc8c1d4');
INSERT INTO `ay_fujian` VALUES ('183', '1111jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_9240dc179491b3db6c08eefaaa94986.jpg', '', '0', '27828', '1483012972', '31593b300d7850965a0a695d4163a942');
INSERT INTO `ay_fujian` VALUES ('184', '2222jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_5fd06489ee28f98acbb5e5450d483bb.jpg', '', '0', '126599', '1483012993', 'be4785fcb38d92b6149f3dc6c00ddd3c');
INSERT INTO `ay_fujian` VALUES ('185', '3333jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_10b1cc925470c17ff8d00d957df1f95.jpg', '', '0', '104773', '1483012993', '4b31565676ef5cb90bb56c354bcd6ced');
INSERT INTO `ay_fujian` VALUES ('186', '14780552354194jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_8b6bbfac426260c5de0b690dbdace67.jpg', '', '0', '313529', '1483013536', '7a303ac68cd21bab4ace190addee1adb');
INSERT INTO `ay_fujian` VALUES ('187', '14780552362131jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_1c51c7712dd6a81e79d02ddf9fc01bd.jpg', '', '0', '326522', '1483013562', 'eff3c4bdbeb5270dec5ce11989699682');
INSERT INTO `ay_fujian` VALUES ('188', '1111jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_b70087fdeb43816827559c8b89e37ac.jpg', '', '0', '28165', '1483013623', 'b7120a5c95844ea65de4df1f32145562');
INSERT INTO `ay_fujian` VALUES ('189', '2222jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_4e42a965656f7e4a34242401371b57b.jpg', '', '0', '219998', '1483013680', '75e77095af602c7f5d0993df204f5b55');
INSERT INTO `ay_fujian` VALUES ('190', '3333jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_03cccf5cdbaf8d9dccc658325ea746a.jpg', '', '0', '158214', '1483013681', 'ca239362632706d85725e05cd582c1ec');
INSERT INTO `ay_fujian` VALUES ('191', '1370x37014043c27y88p7jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_384fca959825d55d78ad63021abee5c.jpg', '', '0', '94979', '1483013836', 'f991179107769c7d89985012f3fefda8');
INSERT INTO `ay_fujian` VALUES ('192', '3370x37014043wdpcf4rxjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_07e0d8245bccbabeaf6601b018d86d4.jpg', '', '0', '78922', '1483013837', 'ff8bad8d0d0ff16bf8a27d3e97a6bb3b');
INSERT INTO `ay_fujian` VALUES ('193', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_2242fd6e34e0c880052aaf5f54cadac.jpg', '', '0', '93348', '1483014037', 'f17f1703ee6751f743b41cca5064f6c3');
INSERT INTO `ay_fujian` VALUES ('194', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_b5823a7e50db83c615473892705ed8b.jpg', '', '0', '71188', '1483014043', '03356086c5d46f53a84b9be7c1436224');
INSERT INTO `ay_fujian` VALUES ('195', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_e71fb0a0dbeb9fe1a69f9b4723b55e7.jpg', '', '0', '76229', '1483014180', '4e28f0b071c85c5a6c4dc6f2a44f4be8');
INSERT INTO `ay_fujian` VALUES ('196', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_23820eef026033c9e25c9d068265166.jpg', '', '0', '72293', '1483014185', 'b8ef3f6b3b048b283bf7658bda1e3253');
INSERT INTO `ay_fujian` VALUES ('197', '111jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_e637d8b2466dee38ff522f337deee57.jpg', '', '0', '24361', '1483014216', 'bf78c9dc868104ddadf0b5a347a6f7fb');
INSERT INTO `ay_fujian` VALUES ('198', '2222jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_eb82a35904934f486df0410978887d0.jpg', '', '0', '160520', '1483014281', 'e9f5adf4f83ec31c829340d00456ef12');
INSERT INTO `ay_fujian` VALUES ('199', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_c0667f1b5999fe07fe1c371184369c9.jpg', '', '0', '89237', '1483014324', 'f4f4a13ae10fa541925128b9dba80961');
INSERT INTO `ay_fujian` VALUES ('200', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_4b0968fc2bafdb0405cc69a151332e1.jpg', '', '0', '76524', '1483014328', '5bdef2ed43d95dfcf3031815bd8e2336');
INSERT INTO `ay_fujian` VALUES ('201', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_f1beee1d135ecdd62e509398ae2d3d9.jpg', '', '0', '83998', '1483014501', 'e504d431f29089f087f7ba235e8be316');
INSERT INTO `ay_fujian` VALUES ('202', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_2ea4a1e96b04381a8eb52b5ebe6b33e.jpg', '', '0', '72797', '1483014506', '4bc607ff84b9f2da6b28977d01634bba');
INSERT INTO `ay_fujian` VALUES ('203', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_ce2cde4361dc516bc5363cc1d6f50ec.jpg', '', '0', '97855', '1483014638', 'b99b3dac3b55ec58dee0c992172ac674');
INSERT INTO `ay_fujian` VALUES ('204', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_f686580ce6e11d21e1c061ef61b1461.jpg', '', '0', '80379', '1483014644', 'a397adad78201df617d49a0253199dae');
INSERT INTO `ay_fujian` VALUES ('205', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_bdc5753452e997959a100b93b10d1fc.jpg', '', '0', '81681', '1483014804', '99ab036b9bb76f8a3107356f44c52e84');
INSERT INTO `ay_fujian` VALUES ('206', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_386c76570e6375d6704eabffd12e083.jpg', '', '0', '66487', '1483014809', '8ab40d9bd46d9bc31dd9567893c374e9');
INSERT INTO `ay_fujian` VALUES ('207', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_60c919be10bf49369ccee6bdd2a1c48.jpg', '', '0', '75843', '1483014890', 'f8567eb5c225390a356709ad4eccff89');
INSERT INTO `ay_fujian` VALUES ('208', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_5a75cd9b9c5100e9ac6c6416a92ff70.jpg', '', '0', '85101', '1483014898', '07ecf66703bc57eb43457a021b1b499c');
INSERT INTO `ay_fujian` VALUES ('209', '1111jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_82a76bf45d195de7511c2bc9cb359bd.jpg', '', '0', '84860', '1483014921', '3c257b8b623a1bc000b24ee8468b7054');
INSERT INTO `ay_fujian` VALUES ('210', '2222jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_031e6df2df4f07c3b487513d8167209.jpg', '', '0', '258724', '1483014949', '514a0f2220774380228620aae708db11');
INSERT INTO `ay_fujian` VALUES ('211', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_67a60ee6fee50e7e33cca0f07b22cb1.jpg', '', '0', '80530', '1483015016', '6a96860a0f2dad853131d930af064bec');
INSERT INTO `ay_fujian` VALUES ('212', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_df0c548fb2030d7479911dbae3122c0.jpg', '', '0', '59252', '1483015021', '47e9e9e1ec98327481708b980a596a5d');
INSERT INTO `ay_fujian` VALUES ('213', '1111jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_d3134c3ac304217251b3f33d99fca4a.jpg', '', '0', '22309', '1483015095', 'bbc0ccab9eb77570ac7bb6b7046dd451');
INSERT INTO `ay_fujian` VALUES ('214', '2222jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_8975b565a284d7f2eb15b5c4644dc30.jpg', '', '0', '200521', '1483015108', 'd30d13fa71953a52848e74ecb616ed09');
INSERT INTO `ay_fujian` VALUES ('215', '3333jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_cb37b0adc04564b05730bfe3de9fa45.jpg', '', '0', '123285', '1483015109', '17da8cf48d1a04b938a53f50ebbe46ce');
INSERT INTO `ay_fujian` VALUES ('216', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_afcc4d03d3808c1b14fbbd5dbfc7a77.jpg', '', '0', '83369', '1483015121', '3f82b27ce78d0fa7a356bc8c22c742b8');
INSERT INTO `ay_fujian` VALUES ('217', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_9284f4264b528580be8af55a6400317.jpg', '', '0', '92695', '1483015125', 'ea9490ab83ff7948fb199250a77e3bb4');
INSERT INTO `ay_fujian` VALUES ('218', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_af5495231045d1366af4b6a7330cbf5.jpg', '', '0', '81374', '1483015247', '4aec790fa67e83c7f296725198f70e9f');
INSERT INTO `ay_fujian` VALUES ('219', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_26977a844cd9bcd2c886b5103cbec2c.jpg', '', '0', '49964', '1483015253', '3402b2684e363e5832a576b9dd7bcfa2');
INSERT INTO `ay_fujian` VALUES ('220', '2222jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_249cc60fe044e0fe38139f47d2fea2a.jpg', '', '0', '252467', '1483015283', 'b9eb6a10c2f794fc19505b010b1a1d5b');
INSERT INTO `ay_fujian` VALUES ('221', '3333jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_32f27f316bd75f06e85ecdb4e464ebc.jpg', '', '0', '133734', '1483015283', 'f2fd1947aff488e6f6d42624f7bec5cf');
INSERT INTO `ay_fujian` VALUES ('222', '1111jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_216fb94048406b5feaff2e9045906d5.jpg', '', '0', '23849', '1483015507', 'c6d9880bfc823353c7c257b80e771a00');
INSERT INTO `ay_fujian` VALUES ('223', '2222jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_bff61baad12c3961d21535c9761b69c.jpg', '', '0', '245829', '1483015522', 'b7a85aebfea0e9e9e57573b648fdbc92');
INSERT INTO `ay_fujian` VALUES ('224', '3333jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_27b4fdf38f508c18c36452af07896a7.jpg', '', '0', '206414', '1483015522', 'cee15b1a7c909ba7954027ba21c77931');
INSERT INTO `ay_fujian` VALUES ('225', '1111jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_f9750798a312e143c96c0be5a5a91e9.jpg', '', '0', '24302', '1483015613', 'b24de6c4e5eccdd053622cfb108ac208');
INSERT INTO `ay_fujian` VALUES ('226', '2222jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_b5b54ff53501bf10443d2f853119c82.jpg', '', '0', '258407', '1483015629', '68eba58e2bc7e0a70f380f3dbc8a52c4');
INSERT INTO `ay_fujian` VALUES ('227', '3333jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_6547255530910ba4405844ec5aa1b2b.jpg', '', '0', '347366', '1483015629', '6b3f559c8685a48805f75e9643e77731');
INSERT INTO `ay_fujian` VALUES ('228', '1111jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_ca685dfbb00081ff971dca426fcdbe0.jpg', '', '0', '31197', '1483015742', 'ab6d53f3bc8f348a6e1eeeff492c0f55');
INSERT INTO `ay_fujian` VALUES ('229', '2222jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_e0730fddf88e29951032979e59d3abf.jpg', '', '0', '154756', '1483015756', '4216b12e722bdd1d71acffe312940c53');
INSERT INTO `ay_fujian` VALUES ('230', '3333jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_e7397f8313108c79b83214d5d479135.jpg', '', '0', '287160', '1483015757', '2c9ae70e4e81109625425e032c7dd9c8');
INSERT INTO `ay_fujian` VALUES ('231', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_b2afdce023cb1c6b25a4ee40b6d3667.jpg', '', '0', '6894', '1483015804', 'c092c35f57fa29dd229878e7320c8a55');
INSERT INTO `ay_fujian` VALUES ('232', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_6037c492e29c522314f47dfc015e8d9.jpg', '', '0', '94008', '1483016072', '07c091f1dc4226cf01102932b9a55924');
INSERT INTO `ay_fujian` VALUES ('233', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_f7d8cb00872f6934128c596d0602582.jpg', '', '0', '83127', '1483016077', '42e13c03bfef31d21f9008f9f387b565');
INSERT INTO `ay_fujian` VALUES ('234', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_5ff371ba2d30cbe0faf255c27287467.jpg', '', '0', '66551', '1483016157', '8221b099e0a496d2ae95b27808a0e354');
INSERT INTO `ay_fujian` VALUES ('235', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_c2c47c30daf74f0fdcd6e502bc83772.jpg', '', '0', '72941', '1483016164', '18fe6eaba18cb2f12f5e9a3324116056');
INSERT INTO `ay_fujian` VALUES ('236', '1111jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_ad56a87a2098057a45c9eb7bb988ac0.jpg', '', '0', '34083', '1483016242', 'e3c2dc34444c4b1e84763c1dc27c4d13');
INSERT INTO `ay_fujian` VALUES ('237', '2222jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_ffa71b3080c8ca42d29c24fbb01f03f.jpg', '', '0', '294237', '1483016257', 'c66d67a2b25ec4ccf2d0bf0194c15990');
INSERT INTO `ay_fujian` VALUES ('238', '3333jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_4c019178396a36d26ae1860e51e1dd1.jpg', '', '0', '268948', '1483016258', '4290a6e4f92724f7c01268c5637d698d');
INSERT INTO `ay_fujian` VALUES ('239', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_259a76095f66fbac9bb8b8b10fac671.jpg', '', '0', '23350', '1483016261', '735d9edacdb7febc909b667224de38e5');
INSERT INTO `ay_fujian` VALUES ('240', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_04b204c83064916ccba58ca4b84e8d0.jpg', '', '0', '85620', '1483016334', '1b73c065278d1b3b21df2bb0121f0f3a');
INSERT INTO `ay_fujian` VALUES ('241', '1111jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_7a4be512a0edef09886a64f080f7959.jpg', '', '0', '118831', '1483016378', 'f5b6e830a1c011883d8b8115eea93409');
INSERT INTO `ay_fujian` VALUES ('242', '2222jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_3a96d77b89de9fe69a947ea7d4c2f2b.jpg', '', '0', '259748', '1483016391', 'eb83f74d695fdd85d3d2ac0849eeb4ca');
INSERT INTO `ay_fujian` VALUES ('243', '3333jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_2c465475bdc7688af1b0c45598d950d.jpg', '', '0', '89448', '1483016392', 'eab8e36133f0f76f339cf34599e6d406');
INSERT INTO `ay_fujian` VALUES ('244', '1111jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_c0d9c111a48c3bd8da169d9b4937f77.jpg', '', '0', '23843', '1483016511', '62a4249fc2664e1306bb18ca17dc8f7a');
INSERT INTO `ay_fujian` VALUES ('245', '2222jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_bd3abbe4d5bf70d429421f31a0e11f8.jpg', '', '0', '281387', '1483016524', '6f85d6c0437b8d3d3daac9cfec642f3b');
INSERT INTO `ay_fujian` VALUES ('246', '3333jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_e524b0d6038c1a0e65f7b03050a4bc4.jpg', '', '0', '378526', '1483016525', '760536d2c8b727f5744047c7c01b99d5');
INSERT INTO `ay_fujian` VALUES ('247', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_6e75d5142d82751bd6bccf8428e8a8a.jpg', '', '0', '83655', '1483016552', '6b655e431aefed3eb2ae7b676189b637');
INSERT INTO `ay_fujian` VALUES ('248', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_f1faceeb284f862c35508c75b1de177.jpg', '', '0', '81782', '1483016557', '8309541d5748e9c61d5453a97210c028');
INSERT INTO `ay_fujian` VALUES ('249', '1111jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_bf3ca6ee618889655b30f18f04cd2da.jpg', '', '0', '31989', '1483016645', '153b3fbcdbc560ed726c0642ecd7572b');
INSERT INTO `ay_fujian` VALUES ('250', '3333jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_2631f573663a545eba6c0b35ffcb509.jpg', '', '0', '151463', '1483016662', 'ff30d4be63571f79bd181a06d603b9aa');
INSERT INTO `ay_fujian` VALUES ('251', '2222jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_fabd01bafd29991f2f38ed702b91907.jpg', '', '0', '168717', '1483016662', '77a37f1c7195c9843327ff86dc4909f9');
INSERT INTO `ay_fujian` VALUES ('252', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_c1084dd002a64c65a64ce4ec177d16a.jpg', '', '0', '84123', '1483016679', '8bef3faec33b6a515298563001c233e2');
INSERT INTO `ay_fujian` VALUES ('253', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_a16193622980832896222a00b9ca768.jpg', '', '0', '76291', '1483016687', 'a0a216dfdad14222ee09d1d34745cda5');
INSERT INTO `ay_fujian` VALUES ('254', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_64ea625d9935a0695e9ebf688eec4fb.jpg', '', '0', '97250', '1483016770', 'e8ad72a000cea1325c716d2d53f54b96');
INSERT INTO `ay_fujian` VALUES ('255', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_d26f40fd1c036bcd3b6a02602a0ec67.jpg', '', '0', '94903', '1483016774', 'bd45079e85675739f34bfb91bc701ce9');
INSERT INTO `ay_fujian` VALUES ('256', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_e3bffc1180056d41adf2d4566ea340e.jpg', '', '0', '79544', '1483016886', '29ff1a613dd512d954fd8914e83bd972');
INSERT INTO `ay_fujian` VALUES ('257', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_e23d4ecea70fb6ca58ca256a6402e88.jpg', '', '0', '58983', '1483016970', '7ee8e237b45af0e0d6cf6f75b0135d28');
INSERT INTO `ay_fujian` VALUES ('258', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_2877732a66b43b989a76974853649d4.jpg', '', '0', '87647', '1483017059', '1f4bf258c0c331a767e47620312c07fa');
INSERT INTO `ay_fujian` VALUES ('259', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_20f506760ee395b23b08a9195c26b88.jpg', '', '0', '66756', '1483017063', 'd6050eabccc433dcd35fea0415403a99');
INSERT INTO `ay_fujian` VALUES ('260', '1111jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_d52ff30e904952fc4381e9e4e85250c.jpg', '', '0', '25362', '1483017490', '37e778184e50f015b7945961ef7b8cc2');
INSERT INTO `ay_fujian` VALUES ('261', '2222jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_22ab65aa998e3de756542cfdf1541ea.jpg', '', '0', '217278', '1483017503', 'da59fedfe6b4069cc5d56fd2cf80b988');
INSERT INTO `ay_fujian` VALUES ('262', '3333jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_853eea78724bef0faa413881713afa6.jpg', '', '0', '232296', '1483017504', 'd3ab0ca6a1c849ea410316d312c38137');
INSERT INTO `ay_fujian` VALUES ('263', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_368819bcb1580c044e089973dc7caa3.jpg', '', '0', '107483', '1483017604', 'cc6692e7c5da5db6fa1ef6d1550b7b0a');
INSERT INTO `ay_fujian` VALUES ('264', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_9f6ed99e467aa6a430bd95df97e4af1.jpg', '', '0', '104898', '1483017609', '63bb8e8b665e0a56e47c92fd182e3078');
INSERT INTO `ay_fujian` VALUES ('265', '1111jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_fe260b750828a2c94fc6d0309835608.jpg', '', '0', '29115', '1483017613', 'ebedfa92714ed0a7fd2162f682022c1c');
INSERT INTO `ay_fujian` VALUES ('266', '2222jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_2c677d4fd6ac10a1ff63aed7218cb76.jpg', '', '0', '421632', '1483017627', '7d33682c2023cbc8e01954144f689d65');
INSERT INTO `ay_fujian` VALUES ('267', '3333jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_1d5ce948a0d0d5906a0da550a04c6a2.jpg', '', '0', '445818', '1483017628', '6faa8f5b4ff84396968e160ae2083f99');
INSERT INTO `ay_fujian` VALUES ('268', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_bdc9ba6ebb00935e5e91622ba48d36c.jpg', '', '0', '97901', '1483017745', '08809ceec2128308607f1c8425bd1272');
INSERT INTO `ay_fujian` VALUES ('269', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_fa93969cf2680cecd556111df28ee40.jpg', '', '0', '81095', '1483017749', 'aa68a81d3c325186c949034bcadb4f7d');
INSERT INTO `ay_fujian` VALUES ('270', '1111jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_8aab9ad838c3a63df98ebc73a84a9a5.jpg', '', '0', '25050', '1483017785', '2c3f7426af951107f3684ee7a78fa40f');
INSERT INTO `ay_fujian` VALUES ('271', '2222jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_c11cd152ddbc89d586f9a32cf08217e.jpg', '', '0', '170617', '1483017799', '3a7da480c469d0d6e940d62a33db7691');
INSERT INTO `ay_fujian` VALUES ('272', '3333jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_980a4b4909bbab86d21505b4a0cc96b.jpg', '', '0', '281530', '1483017800', 'd443d7a76affa55934586032c49b8338');
INSERT INTO `ay_fujian` VALUES ('273', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_b18e3db48ca2570130bf98b6d3412b9.jpg', '', '0', '92907', '1483017856', 'c62125a736e3e54001e956604172ddeb');
INSERT INTO `ay_fujian` VALUES ('274', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_2be579401f4967ae7d0fc35ae2d3bc4.jpg', '', '0', '65295', '1483017862', '3e41e4f24655a56415b25b11bf1ba9d1');
INSERT INTO `ay_fujian` VALUES ('275', '2222jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_46204aa6d4ed5981b8b23a8bf9fee60.jpg', '', '0', '207430', '1483017916', '8a8b6c70e6a50519581ffde4a57c5d37');
INSERT INTO `ay_fujian` VALUES ('276', '3333jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_cdd502e68650d52a2d2683123b283ce.jpg', '', '0', '140406', '1483017916', 'd2a087b1b4559aba839816d9b87872be');
INSERT INTO `ay_fujian` VALUES ('277', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_1f61f7d7824dd13acc81a4ccd43005d.jpg', '', '0', '91637', '1483017929', '98496393be241904dd90baa8ff8a8c95');
INSERT INTO `ay_fujian` VALUES ('278', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_6c32bc06d470f60792d36038495215f.jpg', '', '0', '87866', '1483017934', '9e1d0468776706e456bb9cdb0927476c');
INSERT INTO `ay_fujian` VALUES ('279', '1111jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_f16a0fec621c2cfd2570a0dbc99f24d.jpg', '', '0', '73011', '1483018023', 'be33a4cbcf2225df6a8f6c4e6db2395f');
INSERT INTO `ay_fujian` VALUES ('280', '2222jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_3a02d70a46ed06ec38c94c3ac5ae69c.jpg', '', '0', '461800', '1483018039', 'a8eb2098e60e46a0fa88b63cc29ebcdb');
INSERT INTO `ay_fujian` VALUES ('281', '3333jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_8ab299668d28a0ad5661c547fb88334.jpg', '', '0', '327377', '1483018040', '44d123c09cea326ce2f0c99608bad250');
INSERT INTO `ay_fujian` VALUES ('282', '1370x3705517p3u3ksw2jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_e0b15dfa464c259d67070191b85ef68.jpg', '', '0', '112760', '1483018097', '1352202f213a146d54acbed7f325f72d');
INSERT INTO `ay_fujian` VALUES ('283', '3370x3705517uxrka6wujpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201612/29_2d59b1ce7e310308fd7df37c562104c.jpg', '', '0', '81372', '1483018102', '6af67695ffc4c8dfc7c80de3f3ffb709');
INSERT INTO `ay_fujian` VALUES ('284', '2016081502433545png', '0', '0', '1', '0', 'png', '', '/attachment/all/201703/07_6845e6e23597bbfee8a58b859a1bf49.png', '', '0', '270948', '1488874762', 'a68c084f905ed04a756ca24e3212e02b');
INSERT INTO `ay_fujian` VALUES ('285', '2017010905502514png', '0', '0', '1', '0', 'png', '', '/attachment/all/201703/07_2c1a40d09d2525e143653a12d132fa6.png', '', '0', '75142', '1488874774', '7d912d74cb7e17766f1473f58cfe5217');
INSERT INTO `ay_fujian` VALUES ('286', '2016050609513907png', '0', '0', '1', '0', 'png', '', '/attachment/all/201703/07_e7a140948898a3b5e52267dfb9fe5eb.png', '', '0', '19583', '1488875366', 'a2dd7ab98f3de687ac5f9ebd1336328f');
INSERT INTO `ay_fujian` VALUES ('287', '2png', '0', '0', '1', '0', 'png', '', '/attachment/all/201703/07_c550578c82391563455dc2f9feb649b.png', '', '0', '21603', '1488875480', 'd6a000d671111b924d3acdfeacbd5584');
INSERT INTO `ay_fujian` VALUES ('288', '3png', '0', '0', '1', '0', 'png', '', '/attachment/all/201703/07_29a58b5deb0cc1fb2182d5a98f8167c.png', '', '0', '17355', '1488875491', '6e85aa03a43c02073fdcde4b9bd0f135');
INSERT INTO `ay_fujian` VALUES ('289', '4png', '0', '0', '1', '0', 'png', '', '/attachment/all/201703/07_1ff87a10560bcec8bbd82454cbd2d68.png', '', '0', '22892', '1488875503', 'e781c6c5ac9ef8ba939662ad9cb911ad');
INSERT INTO `ay_fujian` VALUES ('290', 'tit2014122501001png', '0', '0', '1', '0', 'png', '', '/attachment/all/201703/08_20b6d017b009a3389cdd94eda10a71f.png', '', '0', '22680', '1488937679', '63861e404c455be1f5d4615a7ba10ad3');
INSERT INTO `ay_fujian` VALUES ('291', 'u=1062989499,1682648318&fm=58jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201703/14_fece3529e346c32e87c0eee8d9702a7.jpg', '', '0', '5956', '1489469500', '3ed8e83d8dd378c8e52f2553736a89a4');
INSERT INTO `ay_fujian` VALUES ('292', '20150521163918437jpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201703/14_0ef30f72920df414dbff972f70d4c33.jpg', '', '0', '51811', '1489469514', '7ce15ecea4dd9fbbd294b5403b7e0b56');
INSERT INTO `ay_fujian` VALUES ('293', '23110147kn6jjpg', '0', '0', '0', '0', 'jpg', '', '/attachment/image/201703/17_c2e50434ba87391e8b71dd8a432ef66.jpg', '', '0', '261220', '1489720486', 'e5e9ff0f31e4e1feb0ea2dd83630e544');
INSERT INTO `ay_fujian` VALUES ('294', 'bgpng', '0', '0', '0', '0', 'png', '', '/attachment/image/201703/17_3b3297664066ad514f88f0e5aff84ad.png', '', '0', '606205', '1489720571', '88ca89a688630047dcf7db9b1a195a16');
INSERT INTO `ay_fujian` VALUES ('295', 'qq截图20170217105924png', '0', '0', '0', '0', 'png', '', '/attachment/image/201703/17_1fb98e448cb9f18cc5919f77eabce46.png', '', '0', '17603', '1489720907', 'e8c229d04912f69c5d883c74dafa201f');
INSERT INTO `ay_fujian` VALUES ('296', 'logosrdbpng', '0', '0', '0', '0', 'png', '', '/attachment/image/201703/17_43fbb956b243b40958f491e5e285ffa.png', '', '0', '9981', '1489721023', '6b658635adb6c99b2bd40a6f7994ff8e');
INSERT INTO `ay_fujian` VALUES ('297', 'bgpng', '0', '0', '1', '0', 'png', '', '/attachment/all/201703/17_ae1d65bd12673e6e0d9e73454f129dd.png', '', '0', '606205', '1489751531', '7673b6e905b69301ffb4cbf5da5d2983');
INSERT INTO `ay_fujian` VALUES ('298', '201603178bee4f12221e3888479a9d25c7f664dejpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201703/17_d5695d5a19d993666934dc8cbeb02bc.jpg', '', '0', '272988', '1489751935', '4968471fc27f967945a36709407f4ccd');
INSERT INTO `ay_fujian` VALUES ('299', '201603173b6849acd666a8c29f914c262e9a3b95gif', '0', '0', '1', '0', 'gif', '', '/attachment/all/201703/17_c9a0e1729dc7c7698335c7b76036f46.gif', '', '0', '69412', '1489752032', '43dd9874f00d4c08fb0d41864a6f1dc2');
INSERT INTO `ay_fujian` VALUES ('300', '20160318ff9aa97cbb62da9daf722146e53f5fb9png', '0', '0', '1', '0', 'png', '', '/attachment/all/201703/17_07393b277b417ed3cbb057e6080fb9a.png', '', '0', '154118', '1489752068', 'ee27527cb4fa4c8879fa27d7a36be579');
INSERT INTO `ay_fujian` VALUES ('301', '350png', '0', '0', '1', '0', 'png', '', '/attachment/all/201703/24_7f18fa92caa12638f79efde11399d79.png', '', '0', '29263', '1490360300', '754ef63b0cd3cc2f3385cb3c6ecbf520');
INSERT INTO `ay_fujian` VALUES ('302', '161370952268205a7811bf6082e64c1d7242jpgmidjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201703/27_5a77c63f8717d4b6edf668fc8eba5b6.jpg', '', '0', '20716', '1490589659', '9d21fd609b190c81ac59f37f723e2039');
INSERT INTO `ay_fujian` VALUES ('303', '1613f11584e51c9d9502f744252b102da9d8jpgmidjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201703/27_618b5e1dbcb6f7063e610d0a2cf7c7a.jpg', '', '0', '33535', '1490592262', '5f850887b3d9250e5a8559c9cb800a18');
INSERT INTO `ay_fujian` VALUES ('304', 'timgjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201703/27_95281ece413d18d769e1d4dc6c35007.jpg', '', '0', '23046', '1490593760', 'f13a5aa09626806a15f118cd22972cd0');
INSERT INTO `ay_fujian` VALUES ('305', 'timgjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201703/27_c0a648fd81e56c2549e67d6e9d245e3.jpg', '', '0', '7841', '1490593907', '3b3aa0e8ba5afa16bf73f47441f7f688');
INSERT INTO `ay_fujian` VALUES ('306', 'timgjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201703/27_af7e9c9f0054accd8f0a92b7de93b2c.jpg', '', '0', '64475', '1490594014', 'c39ec2eed335a3c736fe65a09f712abb');
INSERT INTO `ay_fujian` VALUES ('307', 'timgjpg', '0', '0', '1', '0', 'jpg', '', '/attachment/all/201703/27_a06d72906aef22a1526402842a99fc8.jpg', '', '0', '106285', '1490594071', 'b60794c2921f3ba5e500e31178613e38');
INSERT INTO `ay_fujian` VALUES ('308', 'chip20png', '0', '0', '1', '0', 'png', '', '/attachment/all/201704/15_dd1b1a25c2786c44336c88b88186094.png', '', '0', '18912', '1492190981', '6d56564eb2c420c19fcc1cc33a95d329');
INSERT INTO `ay_fujian` VALUES ('309', 'rankfirstpng', '0', '0', '1', '0', 'png', '', '/attachment/all/201704/15_60ebf995fce946960a97d064c682843.png', '', '0', '37712', '1492191066', '99419581d541be1ae5d3c332ea0cab2a');
INSERT INTO `ay_fujian` VALUES ('312', '掌上云logo512png', '0', '0', '1', '0', 'png', '', '/attachment/image/201704/15_29dabf7d2dc3e7fa6377e98f5b01b32.png', '', '0', '76062', '1492230691', '8c559ef53f5ca08d23caa0c8247aad70');
INSERT INTO `ay_fujian` VALUES ('313', '108png', '0', '0', '1', '0', 'png', '', '/attachment/image/201704/15_3b6d5cfa6f5fd26139b263b710da713.png', '', '0', '6543', '1492230700', 'ad2377954505429d499987ddc4172d7b');
INSERT INTO `ay_fujian` VALUES ('315', 'aspmahtml', '0', '0', '1', '0', 'html', '', '/attachment/all/201704/19_1201e851a26465a6bfe0d77f36f62b1.html', '', '0', '95895', '1492537566', '5f2b5d9e60466269e3d55830f81cb6c0');
INSERT INTO `ay_fujian` VALUES ('316', 'dollqrcode02png', '0', '0', '1', '0', 'png', '', '/attachment/all/201704/25_b3527b4d25092e0440e677d612560f4.png', '', '0', '50855', '1493126623', 'a926851958267cfb30bbf6f7748c0dc0');
INSERT INTO `ay_fujian` VALUES ('317', 'shareiconpng', '0', '0', '1', '0', 'png', '', '/attachment/all/201704/29_898226db12c3a4d64da6e695b1aae30.png', '', '0', '3308', '1493434794', 'f24d7ab52edd99dcf0fbdc446e8945e6');
INSERT INTO `ay_fujian` VALUES ('318', '9999v2png', '0', '0', '1', '0', 'png', '', '/attachment/image/201705/05_a628a099dd5279a5c21c9ebb17e230c.png', '', '0', '2417', '1493974170', '454f955ccfb13b0fb85ce4a10d527e19');
INSERT INTO `ay_fujian` VALUES ('319', 'qq截图20170505171904png', '0', '0', '1', '0', 'png', '', '/attachment/all/201705/05_8e615ea11199dbd06a541c15a69a2b8.png', '', '0', '26766', '1493975871', '5e0a5dd07be12b6138f7f7c9b9045a0d');
INSERT INTO `ay_fujian` VALUES ('320', '下载1png', '0', '0', '1', '0', 'png', '', '/attachment/all/201705/05_e02fbfae450e6d8b6e2fb6aaa2a2149.png', '', '0', '145685', '1493976121', '0107141887d6d7eeba0769faa427165f');

-- ----------------------------
-- Table structure for `ay_hongbao`
-- ----------------------------
DROP TABLE IF EXISTS `ay_hongbao`;
CREATE TABLE `ay_hongbao` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fuid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发红包的用户uid',
  `sid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商家uid',
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '收到的用户的uid',
  `haobaojine` double(16,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '红包金额',
  `dayukeyong` double(16,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '红包大于多少消耗可用',
  `atime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '红包生成时间',
  `gtime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '过期时间备用',
  `stime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '红包使用时间',
  `off` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '红包状态',
  `adminid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '管理id',
  `shengyujine` double(16,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '红包剩余金额',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '红包类型',
  `beizhu` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `off` (`off`),
  KEY `uid_2` (`uid`,`off`),
  KEY `gtime` (`gtime`),
  KEY `atime` (`atime`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8
/*!50100 PARTITION BY LINEAR KEY (id)
PARTITIONS 60 */;

-- ----------------------------
-- Records of ay_hongbao
-- ----------------------------
INSERT INTO `ay_hongbao` VALUES ('244', '0', '0', '10', '1.00', '20.00', '1480575429', '1480661829', '0', '2', '0', '1.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('261', '0', '0', '10', '1.00', '0.00', '1480575477', '1481439477', '0', '2', '0', '1.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('245', '0', '0', '10', '1.00', '20.00', '1480575430', '1480661830', '0', '2', '0', '1.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('256', '0', '0', '10', '3.00', '0.00', '1480575474', '1481439474', '0', '2', '0', '3.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('260', '0', '0', '10', '4.00', '0.00', '1480575477', '1481439477', '1480575948', '2', '0', '0.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('263', '0', '0', '10', '2.00', '0.00', '1480575477', '1481439477', '1480575743', '2', '0', '0.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('246', '0', '0', '10', '1.00', '0.00', '1480575470', '1481439470', '0', '2', '0', '1.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('257', '0', '0', '10', '3.00', '0.00', '1480575475', '1481439475', '0', '2', '0', '3.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('247', '0', '0', '10', '5.00', '0.00', '1480575470', '1481439470', '1480575923', '1', '0', '0.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('248', '0', '0', '10', '2.00', '0.00', '1480575471', '1481439471', '0', '2', '0', '2.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('258', '0', '0', '10', '1.00', '0.00', '1480575476', '1481439476', '0', '2', '0', '1.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('259', '0', '0', '10', '5.00', '0.00', '1480575476', '1481439476', '1480575520', '2', '0', '0.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('249', '0', '0', '10', '2.00', '0.00', '1480575471', '1481439471', '0', '2', '0', '2.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('243', '0', '0', '10', '1.00', '20.00', '1480575427', '1480661827', '0', '2', '0', '1.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('250', '0', '0', '10', '1.00', '0.00', '1480575472', '1481439472', '0', '2', '0', '1.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('251', '0', '0', '10', '1.00', '0.00', '1480575472', '1481439472', '0', '2', '0', '1.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('239', '0', '0', '10', '20.00', '10.00', '1480494564', '1481358564', '1480574423', '1', '0', '0.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('252', '0', '0', '10', '4.00', '0.00', '1480575472', '1481439472', '0', '2', '0', '4.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('253', '0', '0', '10', '2.00', '0.00', '1480575472', '1481439472', '0', '2', '0', '2.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('240', '0', '0', '10', '20.00', '10.00', '1480494565', '1481358565', '1480574557', '1', '0', '0.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('241', '0', '0', '10', '20.00', '0.00', '1480494576', '1481358576', '1480496088', '1', '0', '0.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('254', '0', '0', '10', '1.00', '0.00', '1480575473', '1481439473', '0', '2', '0', '1.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('262', '0', '0', '10', '1.00', '0.00', '1480575477', '1481439477', '0', '2', '0', '1.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('255', '0', '0', '10', '3.00', '0.00', '1480575473', '1481439473', '0', '2', '0', '3.00', '0', '');
INSERT INTO `ay_hongbao` VALUES ('242', '0', '0', '10', '20.00', '0.00', '1480494578', '1481358578', '1480574367', '1', '0', '0.00', '0', '');

-- ----------------------------
-- Table structure for `ay_huobilog`
-- ----------------------------
DROP TABLE IF EXISTS `ay_huobilog`;
CREATE TABLE `ay_huobilog` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '日志分类',
  `jine` varchar(100) NOT NULL DEFAULT ' ' COMMENT '扩展币日志',
  `data` varchar(255) NOT NULL COMMENT '数据',
  `ip` varchar(36) NOT NULL COMMENT 'ip',
  `atime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `atime` (`atime`),
  KEY `type` (`type`),
  KEY `type_2` (`type`,`atime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ay_huobilog
-- ----------------------------

-- ----------------------------
-- Table structure for `ay_jifenlog`
-- ----------------------------
DROP TABLE IF EXISTS `ay_jifenlog`;
CREATE TABLE `ay_jifenlog` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid',
  `type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '日志分类',
  `jine` bigint(20) NOT NULL DEFAULT '0' COMMENT '积分日志',
  `data` varchar(255) NOT NULL COMMENT '数据',
  `ip` varchar(36) NOT NULL COMMENT 'ip',
  `atime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `type_2` (`type`,`atime`),
  KEY `uid` (`uid`),
  KEY `atime` (`atime`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ay_jifenlog
-- ----------------------------
INSERT INTO `ay_jifenlog` VALUES ('1', '1', '0', '0', '', '', '0');
INSERT INTO `ay_jifenlog` VALUES ('2', '2', '0', '0', '', '', '0');

-- ----------------------------
-- Table structure for `ay_jinelog`
-- ----------------------------
DROP TABLE IF EXISTS `ay_jinelog`;
CREATE TABLE `ay_jinelog` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid',
  `type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '日志分类',
  `jine` double(16,2) NOT NULL DEFAULT '0.00' COMMENT '金额日志',
  `data` varchar(255) NOT NULL COMMENT '数据',
  `ip` varchar(36) NOT NULL COMMENT 'ip',
  `atime` int(12) unsigned DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `atime` (`atime`),
  KEY `uid` (`uid`),
  KEY `type_2` (`type`,`atime`)
) ENGINE=InnoDB AUTO_INCREMENT=5469 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ay_jinelog
-- ----------------------------
INSERT INTO `ay_jinelog` VALUES ('5417', '148', '1', '100.00', '管理员更改金额', '120.34.99.119', '1493825368');
INSERT INTO `ay_jinelog` VALUES ('5418', '148', '3', '-20.00', '', '110.88.239.241', '1493879625');
INSERT INTO `ay_jinelog` VALUES ('5419', '148', '3', '-20.00', '', '110.88.239.241', '1493879791');
INSERT INTO `ay_jinelog` VALUES ('5420', '148', '3', '-20.00', '', '110.88.239.241', '1493879805');
INSERT INTO `ay_jinelog` VALUES ('5421', '148', '4', '3.20', '', '110.88.239.241', '1493879805');
INSERT INTO `ay_jinelog` VALUES ('5422', '147', '6', '-10.00', '提现金额', '114.227.127.157', '1493945558');
INSERT INTO `ay_jinelog` VALUES ('5423', '148', '3', '-5.00', '', '112.96.109.236', '1493953632');
INSERT INTO `ay_jinelog` VALUES ('5424', '148', '4', '1.00', '', '112.96.109.236', '1493953633');
INSERT INTO `ay_jinelog` VALUES ('5425', '148', '3', '-5.00', '', '112.96.109.240', '1493964412');
INSERT INTO `ay_jinelog` VALUES ('5426', '148', '4', '0.60', '', '112.96.109.240', '1493964412');
INSERT INTO `ay_jinelog` VALUES ('5427', '148', '3', '-5.00', '', '112.96.109.240', '1493964421');
INSERT INTO `ay_jinelog` VALUES ('5428', '148', '4', '0.40', '', '112.96.109.240', '1493964421');
INSERT INTO `ay_jinelog` VALUES ('5429', '148', '3', '-5.00', '', '112.96.109.240', '1493964422');
INSERT INTO `ay_jinelog` VALUES ('5430', '148', '4', '1.00', '', '112.96.109.240', '1493964422');
INSERT INTO `ay_jinelog` VALUES ('5431', '148', '3', '-5.00', '', '112.96.109.240', '1493964422');
INSERT INTO `ay_jinelog` VALUES ('5432', '148', '4', '0.08', '', '112.96.109.240', '1493964422');
INSERT INTO `ay_jinelog` VALUES ('5433', '148', '3', '-5.00', '', '112.96.109.240', '1493964422');
INSERT INTO `ay_jinelog` VALUES ('5434', '148', '4', '10.00', '', '112.96.109.240', '1493964422');
INSERT INTO `ay_jinelog` VALUES ('5435', '148', '3', '-5.00', '', '112.96.109.240', '1493964422');
INSERT INTO `ay_jinelog` VALUES ('5436', '148', '4', '20.00', '', '112.96.109.240', '1493964422');
INSERT INTO `ay_jinelog` VALUES ('5437', '148', '3', '-5.00', '', '112.96.109.240', '1493964422');
INSERT INTO `ay_jinelog` VALUES ('5438', '148', '4', '2.00', '', '112.96.109.240', '1493964422');
INSERT INTO `ay_jinelog` VALUES ('5439', '148', '3', '-5.00', '', '112.96.109.240', '1493964422');
INSERT INTO `ay_jinelog` VALUES ('5440', '148', '4', '1.11', '', '112.96.109.240', '1493964422');
INSERT INTO `ay_jinelog` VALUES ('5441', '148', '3', '-5.00', '', '112.96.109.240', '1493964423');
INSERT INTO `ay_jinelog` VALUES ('5442', '148', '4', '0.40', '', '112.96.109.240', '1493964423');
INSERT INTO `ay_jinelog` VALUES ('5443', '148', '3', '-5.00', '', '112.96.109.240', '1493964423');
INSERT INTO `ay_jinelog` VALUES ('5444', '148', '4', '15.00', '', '112.96.109.240', '1493964423');
INSERT INTO `ay_jinelog` VALUES ('5445', '148', '3', '-5.00', '', '112.96.109.240', '1493964423');
INSERT INTO `ay_jinelog` VALUES ('5446', '148', '4', '1.11', '', '112.96.109.240', '1493964423');
INSERT INTO `ay_jinelog` VALUES ('5447', '148', '3', '-5.00', '', '112.96.109.240', '1493964423');
INSERT INTO `ay_jinelog` VALUES ('5448', '148', '4', '0.08', '', '112.96.109.240', '1493964423');
INSERT INTO `ay_jinelog` VALUES ('5449', '148', '3', '-5.00', '', '112.96.109.240', '1493964423');
INSERT INTO `ay_jinelog` VALUES ('5450', '148', '4', '2.00', '', '112.96.109.240', '1493964423');
INSERT INTO `ay_jinelog` VALUES ('5451', '148', '3', '-5.00', '', '112.96.109.240', '1493964423');
INSERT INTO `ay_jinelog` VALUES ('5452', '148', '4', '0.09', '', '112.96.109.240', '1493964423');
INSERT INTO `ay_jinelog` VALUES ('5453', '148', '3', '-5.00', '', '112.96.109.240', '1493964424');
INSERT INTO `ay_jinelog` VALUES ('5454', '148', '4', '0.33', '', '112.96.109.240', '1493964424');
INSERT INTO `ay_jinelog` VALUES ('5455', '148', '3', '-5.00', '', '112.96.109.240', '1493964424');
INSERT INTO `ay_jinelog` VALUES ('5456', '148', '4', '15.00', '', '112.96.109.240', '1493964424');
INSERT INTO `ay_jinelog` VALUES ('5457', '148', '3', '-5.00', '', '112.96.109.240', '1493964424');
INSERT INTO `ay_jinelog` VALUES ('5458', '148', '4', '0.40', '', '112.96.109.240', '1493964424');
INSERT INTO `ay_jinelog` VALUES ('5459', '148', '3', '-5.00', '', '112.96.109.240', '1493964433');
INSERT INTO `ay_jinelog` VALUES ('5460', '148', '3', '-5.00', '', '112.96.109.240', '1493964522');
INSERT INTO `ay_jinelog` VALUES ('5461', '148', '4', '25.00', '', '112.96.109.240', '1493964522');
INSERT INTO `ay_jinelog` VALUES ('5462', '148', '3', '-5.00', '', '116.21.80.84', '1493970977');
INSERT INTO `ay_jinelog` VALUES ('5463', '148', '4', '1.11', '', '116.21.80.84', '1493970977');
INSERT INTO `ay_jinelog` VALUES ('5464', '148', '3', '-5.00', '', '116.21.80.84', '1493971132');
INSERT INTO `ay_jinelog` VALUES ('5465', '148', '4', '0.07', '', '116.21.80.84', '1493971132');
INSERT INTO `ay_jinelog` VALUES ('5466', '148', '3', '-10.00', '', '116.21.80.84', '1493971144');
INSERT INTO `ay_jinelog` VALUES ('5467', '148', '3', '-5.00', '', '116.21.80.84', '1494077485');
INSERT INTO `ay_jinelog` VALUES ('5468', '148', '4', '0.40', '', '116.21.80.84', '1494077486');

-- ----------------------------
-- Table structure for `ay_logac`
-- ----------------------------
DROP TABLE IF EXISTS `ay_logac`;
CREATE TABLE `ay_logac` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL DEFAULT '' COMMENT '日子分类英文名字',
  `name` varchar(255) NOT NULL COMMENT '日只菜单名字',
  `data` text NOT NULL COMMENT '参数分割显示',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统菜单';

-- ----------------------------
-- Records of ay_logac
-- ----------------------------
INSERT INTO `ay_logac` VALUES ('4', 'adminlog', '管理员日志', '登录,退出,挤掉,修改数据,删除数据,添加数据');
INSERT INTO `ay_logac` VALUES ('5', 'xingbie', '性别', '女,男');
INSERT INTO `ay_logac` VALUES ('6', 'level', '用户等级', '普通会员');
INSERT INTO `ay_logac` VALUES ('7', 'upsui', '图片水印位置', '默认左上可定义,中上,右上,右中,右下,中下,左下,左中,中中');
INSERT INTO `ay_logac` VALUES ('8', 'jinelog', '金额日志', '消耗,充值,退货增加,抓娃娃消耗,抓娃娃获得,获取佣金,提现');
INSERT INTO `ay_logac` VALUES ('9', 'jifenlog', '积分日志', '消耗,增加');
INSERT INTO `ay_logac` VALUES ('10', 'huobilog', '扩展货币', '消耗,增加,获取佣金');
INSERT INTO `ay_logac` VALUES ('11', 'dengtuilog', '登录推出日志', '登录,退出,挤出');
INSERT INTO `ay_logac` VALUES ('12', 'fujian', '附件上传分类', '用户头像,附件上传');
INSERT INTO `ay_logac` VALUES ('13', 'off', '开关状态', '关闭,审核,开启');
INSERT INTO `ay_logac` VALUES ('14', 'yesno', '是否判断', '否,是');
INSERT INTO `ay_logac` VALUES ('15', 'off2', '二种开关', '关闭,开启');
INSERT INTO `ay_logac` VALUES ('16', 'chengshi', '成功失败', '失败,成功');
INSERT INTO `ay_logac` VALUES ('17', 'deloff', '删除状态', '未删除,已删除');
INSERT INTO `ay_logac` VALUES ('18', 'userlog', '用户操作日志', '登录,退出,邮箱发送,短信发送,新增收获地址,修改收获地址');
INSERT INTO `ay_logac` VALUES ('19', 'yunfs', '运送方式', '快递,EMS,平邮');
INSERT INTO `ay_logac` VALUES ('20', 'yunoff', '是否包邮', '自定义邮费,包邮');
INSERT INTO `ay_logac` VALUES ('21', 'yuntype', '计价方式', '(件),(kg),(m³ )');
INSERT INTO `ay_logac` VALUES ('22', 'yuntime', '发货时间', '1分钟内,4小时内,8小时内,12小时内,16小时内,20小时内,1天内,2天内,3天内,5天内,7天内,8天内,10天内,12天内,15天内,17天内,20天内,25天内,30天内,35天内,45天内');
INSERT INTO `ay_logac` VALUES ('23', 'shouhuo', '收获状态', '可用,默认收货');
INSERT INTO `ay_logac` VALUES ('24', 'shouhuotype', '收获方式', '默认方式');
INSERT INTO `ay_logac` VALUES ('25', 'hongbaooff', '红包状态', '可使用,使用完,到期,禁用');
INSERT INTO `ay_logac` VALUES ('26', 'dingtype', '订单分类', '直接购买');
INSERT INTO `ay_logac` VALUES ('27', 'dingxoff', '订单详细状态', '未支付,支付关闭,支付成功,处理成功');
INSERT INTO `ay_logac` VALUES ('28', 'dingpaytype', '订单类型', '产品订单,充值订单,支付订单');
INSERT INTO `ay_logac` VALUES ('29', 'payoff', '支付状态', '订单录入,提交订单,支付成功,交易关闭');
INSERT INTO `ay_logac` VALUES ('30', 'faoff', '发货状态', '确认订单,等待发货 ,发货运输中,收货确认成功,退换货声请,退换货运输中,退换货完成,退换货纠纷仲裁中,订单完成');
INSERT INTO `ay_logac` VALUES ('31', 'daohang', '导航显示', '显示关闭,显示开启');
INSERT INTO `ay_logac` VALUES ('32', 'pingluntype', '评论分类', '分类,分类2,分类3,分类4');
INSERT INTO `ay_logac` VALUES ('33', 'xgtype', '限购分类', '不用限购,每天限购,永久限购,每日时间限购,每日分钟限购,每月天数限购');
INSERT INTO `ay_logac` VALUES ('34', 'lanmuno', '不用栏目', 'dddd');

-- ----------------------------
-- Table structure for `ay_memcached`
-- ----------------------------
DROP TABLE IF EXISTS `ay_memcached`;
CREATE TABLE `ay_memcached` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT 'KV名字',
  `keval` varchar(20000) NOT NULL COMMENT 'KV值',
  `atime` int(12) NOT NULL DEFAULT '0' COMMENT 'KV时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ay_memcached
-- ----------------------------

-- ----------------------------
-- Table structure for `ay_pay`
-- ----------------------------
DROP TABLE IF EXISTS `ay_pay`;
CREATE TABLE `ay_pay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '支付名字',
  `suoluetu` varchar(255) NOT NULL,
  `payid` varchar(255) NOT NULL COMMENT '支付id',
  `paykey` varchar(255) NOT NULL COMMENT '支付密码',
  `zhanghao` varchar(255) NOT NULL COMMENT '支付帐号',
  `off` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '支付方式关闭',
  `xianshi` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '支付方式前台可显示',
  `beizhu` varchar(255) NOT NULL COMMENT '备注',
  `paixu` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `adminid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '管理id',
  `payfile` varchar(255) NOT NULL COMMENT '支付文件',
  `isapp` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是不是app支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ay_pay
-- ----------------------------
INSERT INTO `ay_pay` VALUES ('3', 'ZS支付', 'http://mimg.127.net/p/yy/lib/img/bank/9999.v2.png', '1', '1a21d9a092ef3131f827d78583a0487a74924a32f7a824daf96537403864b2f1', '1', '1', '1', '2', '0', '1', 'zszhifu', '0');
INSERT INTO `ay_pay` VALUES ('5', '掌上威信', 'http://mimg.127.net/p/yy/lib/img/bank/9999.v2.png', '1', '1a21d9a092ef3131f827d78583a0487a74924a32f7a824daf96537403864b2f1', '1', '1', '1', '1', '0', '1', 'zszhifu', '0');
INSERT INTO `ay_pay` VALUES ('6', '微信支付官方', 'http://mimg.127.net/p/yy/lib/img/bank/9999.v2.png', '1454829502', 'asdjflkasdjlkfajsdlkfjaslkdjflka', 'wx750bda0d5b50d2ec', '1', '1', 'asdjflkasdjlkfajsdlkfjaslkdjflka', '0', '1', 'weixin', '0');

-- ----------------------------
-- Table structure for `ay_pinglun`
-- ----------------------------
DROP TABLE IF EXISTS `ay_pinglun`;
CREATE TABLE `ay_pinglun` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '评论名字',
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `shid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商家id',
  `adminid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '管理id',
  `cpid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '产品id',
  `zcid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '上级评论id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '评论分类1，评论，2,反馈',
  `off` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '关闭 审核 开启',
  `orderid` varchar(255) NOT NULL COMMENT '所属订单id',
  `tuijian` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '推荐',
  `paixu` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `guanjian` varchar(255) NOT NULL COMMENT '关键词',
  `miaoshu` varchar(255) NOT NULL COMMENT '描述',
  `atime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `xtime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `neirong` longtext NOT NULL COMMENT '评论内容',
  `kuozan` longtext NOT NULL COMMENT '扩展内容',
  `renqi` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '人气',
  `pingfen` double(5,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '评分',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `shid` (`shid`),
  KEY `adminid` (`adminid`),
  KEY `cpid` (`cpid`),
  KEY `orderid` (`orderid`),
  KEY `off` (`off`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ay_pinglun
-- ----------------------------
INSERT INTO `ay_pinglun` VALUES ('1', '45345', '0', '0', '0', '0', '0', '0', '2', '', '0', '0', '', '', '0', '0', '', '', '0', '0.00');
INSERT INTO `ay_pinglun` VALUES ('3', '3466', '0', '0', '0', '0', '0', '0', '2', '', '0', '0', '', '', '0', '0', '', '', '0', '0.00');
INSERT INTO `ay_pinglun` VALUES ('4', '346436546', '456', '45645', '456', '54654', '456', '0', '2', '45645', '456', '546', '56456', '456456', '0', '1476588325', '45645', 'a:2:{s:6:\"shouji\";s:3:\"厵\";s:7:\"neirong\";s:6:\"一样\";}', '45645', '0.00');
INSERT INTO `ay_pinglun` VALUES ('5', 'Sdfafad', '3', '0', '0', '0', '0', '0', '0', '', '0', '0', '', '', '1488868544', '0', 'fasdfasdf', '', '0', '0.00');
INSERT INTO `ay_pinglun` VALUES ('6', '你好', '3', '0', '0', '0', '0', '2', '0', '', '0', '0', '', '', '1488869736', '0', '我很好', '', '0', '0.00');

-- ----------------------------
-- Table structure for `ay_shouhuo`
-- ----------------------------
DROP TABLE IF EXISTS `ay_shouhuo`;
CREATE TABLE `ay_shouhuo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL COMMENT '用户uid',
  `xingming` varchar(30) NOT NULL COMMENT '收货人姓名',
  `shouji` bigint(13) unsigned NOT NULL COMMENT '收货人电话',
  `zuoji` varchar(255) NOT NULL COMMENT '直充帐号',
  `diqu` int(12) unsigned NOT NULL COMMENT '收货人地区',
  `beizhu` varchar(255) NOT NULL COMMENT '用户备注',
  `dizhi` varchar(255) NOT NULL COMMENT '收货详细地址',
  `off` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '收货地址状态',
  `atime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `ip` varchar(36) NOT NULL COMMENT '录入的ip',
  `token` varchar(32) NOT NULL COMMENT '验证重复是否',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '类型分类',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `off` (`off`),
  KEY `uid_2` (`uid`,`off`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8
/*!50100 PARTITION BY LINEAR KEY (id)
PARTITIONS 30 */;

-- ----------------------------
-- Records of ay_shouhuo
-- ----------------------------
INSERT INTO `ay_shouhuo` VALUES ('22', '9', '8797869611799', '13567424448', '', '360105', '江西省 南昌市 湾里区 ui0870780780780780780', 'ui0870780780780780780', '0', '1478588143', '127.0.0.1', 'ff920671548dfc62c4d7e1c3d719402e', '0');
INSERT INTO `ay_shouhuo` VALUES ('23', '9', '飞飞飞', '13320908987', '', '330624', '浙江省 绍兴市 新昌县 傻大个岁的德三国按时到岗撒旦个', '傻大个岁的德三国按时到岗撒旦个', '1', '1478684832', '127.0.0.1', 'fad43e4c9a178c8c583c1a50d7eb4721', '0');
INSERT INTO `ay_shouhuo` VALUES ('24', '3', '大帅哥', '15679500112', '', '150422', '内蒙古自治区 赤峰市 巴林左旗 啊但是gas的搞的撒阿萨德噶圣诞', '啊但是gas的搞的撒阿萨德噶圣诞', '1', '1479277206', '127.0.0.1', '62ac452f6a3de0ec2644d52230dd6ccb', '0');
INSERT INTO `ay_shouhuo` VALUES ('25', '10', '56756756', '13320908987', '567567', '210101', '辽宁省 沈阳市 市辖区 567567567', '567567567', '1', '1480670246', '127.0.0.1', '3ef984146580ad4229ed045e6286439c', '0');

-- ----------------------------
-- Table structure for `ay_tixian`
-- ----------------------------
DROP TABLE IF EXISTS `ay_tixian`;
CREATE TABLE `ay_tixian` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid',
  `type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '1,现金提现，2，佣金提现',
  `jine` double(16,2) NOT NULL DEFAULT '0.00' COMMENT '金额日志',
  `data` varchar(255) NOT NULL COMMENT '数据',
  `ip` varchar(36) NOT NULL COMMENT 'ip',
  `atime` int(12) unsigned DEFAULT '0' COMMENT '时间',
  `name` varchar(100) NOT NULL,
  `zhanghao` varchar(255) NOT NULL,
  `fs` varchar(100) NOT NULL,
  `off` int(11) NOT NULL DEFAULT '0' COMMENT '0待审核，1已经审核，-1未审核',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `atime` (`atime`),
  KEY `uid` (`uid`),
  KEY `type_2` (`type`,`atime`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ay_tixian
-- ----------------------------
INSERT INTO `ay_tixian` VALUES ('1', '147', '1', '20.00', '', '114.227.127.157', '1493944562', 'wu we', '12456', '支付宝', '0');
INSERT INTO `ay_tixian` VALUES ('2', '147', '1', '10.00', '', '114.227.127.157', '1493945438', '吴为', '12465', '支付宝', '0');
INSERT INTO `ay_tixian` VALUES ('3', '147', '1', '10.00', '', '114.227.127.157', '1493945444', '吴为', '12465', '支付宝', '0');
INSERT INTO `ay_tixian` VALUES ('4', '147', '1', '10.00', '', '114.227.127.157', '1493945558', '吴伟', '123489', '支付宝', '1');

-- ----------------------------
-- Table structure for `ay_type`
-- ----------------------------
DROP TABLE IF EXISTS `ay_type`;
CREATE TABLE `ay_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '分类名字',
  `guanjian` varchar(255) NOT NULL COMMENT '关键词',
  `miaoshu` varchar(255) NOT NULL COMMENT '描述',
  `cid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '子分类',
  `url` varchar(255) NOT NULL COMMENT '内容url',
  `http` varchar(255) NOT NULL COMMENT '外联url',
  `listmb` varchar(10) NOT NULL COMMENT '列表模版',
  `neromb` varchar(10) NOT NULL COMMENT '内容模版',
  `leixin` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '类型 0 单页 1 列表',
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid',
  `shid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商家uid',
  `adminid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '管理员id',
  `tuijian` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推荐参数',
  `paixu` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `renqi` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '人气',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `tupianji` text NOT NULL COMMENT '图片集',
  `neirong` longtext NOT NULL COMMENT '分类内容',
  `kuozan` text NOT NULL COMMENT '扩展数据',
  `kuozanform` text NOT NULL COMMENT '扩展表单数据',
  `atime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `xtime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `xianoff` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '显示开关',
  `off` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态0 关闭 1 审核 2 正常',
  `explx1` varchar(500) NOT NULL COMMENT '分类扩展1',
  `explx2` varchar(500) NOT NULL COMMENT '扩展2 的参数',
  `explx3` varchar(500) NOT NULL COMMENT '扩展3的参数',
  `explx4` varchar(500) NOT NULL COMMENT '扩展4的参数',
  `explx5` varchar(500) NOT NULL COMMENT '扩展5 参数',
  `explx6` varchar(500) NOT NULL COMMENT '扩展6的参数',
  `beizhu` varchar(500) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `url` (`url`),
  KEY `cid` (`cid`),
  KEY `off` (`off`),
  KEY `xianoff` (`xianoff`),
  KEY `cid_2` (`cid`,`off`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ay_type
-- ----------------------------
INSERT INTO `ay_type` VALUES ('66', '奖池', '', '', '0', 'jiangchi', '', '', '', '1', '0', '0', '1', '0', '0', '0', '', '', '', '', '', '1491468793', '1491468793', '0', '0', '', '', '', '', '', '', '');
INSERT INTO `ay_type` VALUES ('67', 'dolls5', '', '', '66', 'dolls5', '', '', '', '1', '0', '0', '1', '0', '0', '0', '', '', '', '', '', '1491469050', '1491469050', '0', '0', '', '', '', '', '', '', '');
INSERT INTO `ay_type` VALUES ('68', 'dolls10', '', '', '66', 'dolls10', '', '', '', '1', '0', '0', '1', '0', '0', '0', '', '', '', '', '', '1491469206', '1491469206', '0', '0', '', '', '', '', '', '', '');
INSERT INTO `ay_type` VALUES ('69', 'dolls20', '', '', '66', 'dolls20', '', '', '', '1', '0', '0', '1', '0', '0', '0', '', '', '', '', '', '1491469375', '1491469387', '0', '0', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `ay_type1`
-- ----------------------------
DROP TABLE IF EXISTS `ay_type1`;
CREATE TABLE `ay_type1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '分类名字',
  `guanjian` varchar(255) NOT NULL COMMENT '关键词',
  `miaoshu` varchar(255) NOT NULL COMMENT '描述',
  `cid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '子分类',
  `url` varchar(255) NOT NULL COMMENT '内容url',
  `http` varchar(255) NOT NULL COMMENT '外联url',
  `listmb` varchar(10) NOT NULL COMMENT '列表模版',
  `neromb` varchar(10) NOT NULL COMMENT '内容模版',
  `leixin` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '类型 0 单页 1 列表',
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid',
  `shid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商家uid',
  `adminid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '管理员id',
  `tuijian` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推荐参数',
  `paixu` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `renqi` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '人气',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `tupianji` text NOT NULL COMMENT '图片集',
  `neirong` longtext NOT NULL COMMENT '分类内容',
  `kuozan` text NOT NULL COMMENT '扩展数据',
  `kuozanform` text NOT NULL COMMENT '扩展表单数据',
  `atime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `xtime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `xianoff` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '显示开关',
  `off` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态0 关闭 1 审核 2 正常',
  `explx1` varchar(500) NOT NULL COMMENT '分类扩展1',
  `explx2` varchar(500) NOT NULL COMMENT '扩展2 的参数',
  `explx3` varchar(500) NOT NULL COMMENT '扩展3的参数',
  `explx4` varchar(500) NOT NULL COMMENT '扩展4的参数',
  `explx5` varchar(500) NOT NULL COMMENT '扩展5 参数',
  `explx6` varchar(500) NOT NULL COMMENT '扩展6的参数',
  `beizhu` varchar(500) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `url` (`url`),
  KEY `cid` (`cid`),
  KEY `off` (`off`),
  KEY `xianoff` (`xianoff`),
  KEY `cid_2` (`cid`,`off`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ay_type1
-- ----------------------------
INSERT INTO `ay_type1` VALUES ('1', '幻灯片', '', '', '0', 'huandengpian', '', '', '', '0', '0', '0', '1', '0', '0', '0', '', '', '这里是幻灯片', '', '', '1488874041', '1488874041', '0', '0', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `ay_user`
-- ----------------------------
DROP TABLE IF EXISTS `ay_user`;
CREATE TABLE `ay_user` (
  `uid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户uid',
  `name` varchar(100) NOT NULL COMMENT '用户昵称',
  `zhanghao` varchar(200) NOT NULL COMMENT '登录帐号',
  `mima` varchar(64) NOT NULL COMMENT '密码',
  `ermima` varchar(64) NOT NULL COMMENT '二级密码',
  `email` varchar(100) NOT NULL COMMENT '用户邮箱',
  `shouji` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '手机号码',
  `weixin` varchar(128) NOT NULL COMMENT '微信openid',
  `weixinui` varchar(128) NOT NULL COMMENT '微信开放平台uopenid',
  `weibo` varchar(128) NOT NULL COMMENT '微薄openid',
  `qqopen` varchar(128) NOT NULL COMMENT 'qqopenid',
  `zhifubaoopen` varchar(128) NOT NULL COMMENT '支付宝openid',
  `openid` varchar(128) NOT NULL COMMENT 'openid备用',
  `openidd` varchar(128) NOT NULL COMMENT '备用openid1',
  `jine` double(16,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '用户金额',
  `jifen` double(16,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '用户积分',
  `huobi` double(16,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '扩展货币交易',
  `off` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '用户状态',
  `yanzhengip` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `touxiang` varchar(255) NOT NULL COMMENT '头像',
  `atime` int(12) unsigned NOT NULL COMMENT '注册时间',
  `ip` varchar(32) NOT NULL COMMENT '注册ip',
  `zhiye` varchar(100) NOT NULL COMMENT '用户职业',
  `xingbie` tinyint(3) NOT NULL DEFAULT '-1' COMMENT '用户性别',
  `nianling` int(6) unsigned NOT NULL DEFAULT '0' COMMENT '年龄',
  `qqhaoma` varchar(100) NOT NULL COMMENT 'qq号码',
  `weixinhaoma` varchar(100) NOT NULL COMMENT '微信号码',
  `tuid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '推广uid',
  `tuid1` bigint(20) unsigned NOT NULL DEFAULT '0',
  `tuid2` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '二级推广',
  `adminid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '管理员id用户',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户等级备用',
  `appid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'appid',
  `mhash` varchar(32) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `shouji` (`shouji`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `zhanghao` (`zhanghao`) USING BTREE,
  KEY `email` (`email`) USING BTREE,
  KEY `weixin` (`weixin`) USING BTREE,
  KEY `weixinui` (`weixinui`) USING BTREE,
  KEY `weibo` (`weibo`) USING BTREE,
  KEY `qqopen` (`qqopen`) USING BTREE,
  KEY `zhifubaoopen` (`zhifubaoopen`) USING BTREE,
  KEY `openid` (`openid`) USING BTREE,
  KEY `openidd` (`openidd`) USING BTREE,
  KEY `uidoff` (`uid`,`off`) USING BTREE,
  KEY `tuid` (`tuid`,`tuid1`,`tuid2`),
  KEY `tuid_2` (`tuid`),
  KEY `tuid1` (`tuid1`),
  KEY `tuid2` (`tuid2`),
  KEY `level` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8 COMMENT='用户表'
/*!50100 PARTITION BY LINEAR KEY (uid)
PARTITIONS 10 */;

-- ----------------------------
-- Records of ay_user
-- ----------------------------
INSERT INTO `ay_user` VALUES ('151', '', '123123', 'ff949ed384409f6d1bf61f4b', '', '', '0', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '1', '0', '', '1493998562', '', '', '-1', '0', '', '', '149', '148', '0', '0', '0', '0', '');
INSERT INTO `ay_user` VALUES ('146', '高超', '', 'fa6118fb37e2c4e658f54b34fc77b68', '', '', '0', '', '', '', '', '', 'oR4TQwUmJnqRaUEsN9kV18IKbLqw', '', '3000.00', '0.00', '0.00', '1', '0', 'http://wx.qlogo.cn/mmopen/kAia899ayib2WwZTP3csLPc6ZuHXRI2R8J6R9yFricW5tt4AZH7OncmialvXqau5tibo8pxWZqvAe0hglTceiaZDgiaMZHDTibqQoGfL/0', '1493128022', '114.226.13.123', '', '-1', '0', '', '', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `ay_user` VALUES ('145', '常州PHP 大伟', '', 'f37b4c7c9b0b4c456d669151b640a72', '', '', '0', '', '', '', '', '', 'oR4TQwTe7EA3wZY-aF3IXCx9ilgk', '', '0.00', '0.00', '1.78', '1', '0', 'http://wx.qlogo.cn/mmopen/ibcRmHmvckyOluVZqs3ROvdsakCx1ecicOIsVGGo3Y3Wf0L3ItG7ic69b9Ak8d7Y6A2JNPjdbu77mZMqNbJD1NwibrORHa1LSE5w/0', '1493127756', '114.226.176.217', '', '-1', '0', '', '', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `ay_user` VALUES ('148', 'yman19', 'yman19', '2cb2514b6b60d74c85e24', '', '', '0', '', '', '', '', '', '', '', '14.38', '0.00', '0.00', '1', '0', '', '1493716129', '', '', '-1', '0', '', '', '0', '0', '0', '0', '0', '0', '');
INSERT INTO `ay_user` VALUES ('147', 'jimmy905', 'jimmy905', 'ff949ed384409f6d1bf61f4b', '', '', '0', '', '', '', '', '', '', '', '183.72', '0.00', '20.00', '0', '0', '', '1493364842', '', '', '-1', '0', '', '', '145', '0', '0', '0', '0', '0', '');
INSERT INTO `ay_user` VALUES ('150', '', 'yuuu', '2cb2514b6b60d74c85e24', '', '', '0', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '1', '0', '', '1493953818', '', '', '-1', '0', '', '', '148', '0', '0', '0', '0', '0', '');
INSERT INTO `ay_user` VALUES ('149', '', 'go', '2cb2514b6b60d74c85e24', '', '', '0', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '1', '0', '', '1493945556', '', '', '-1', '0', '', '', '148', '0', '0', '0', '0', '0', '');

-- ----------------------------
-- Table structure for `ay_userlog`
-- ----------------------------
DROP TABLE IF EXISTS `ay_userlog`;
CREATE TABLE `ay_userlog` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理uid',
  `type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '日志类型',
  `data` text NOT NULL COMMENT '详细数据',
  `ip` varchar(36) NOT NULL COMMENT '产生ip',
  `atime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
  `appid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '操作appid',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ay_userlog
-- ----------------------------

-- ----------------------------
-- Table structure for `ay_wawa`
-- ----------------------------
DROP TABLE IF EXISTS `ay_wawa`;
CREATE TABLE `ay_wawa` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '内容名字',
  `guanjian` varchar(255) NOT NULL COMMENT '关键词',
  `miaoshu` varchar(255) NOT NULL COMMENT '描述',
  `zcid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '第二子分类id',
  `cid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `url` varchar(255) NOT NULL COMMENT '内容url',
  `http` varchar(255) NOT NULL COMMENT '外联url',
  `neromb` varchar(10) NOT NULL COMMENT '指定内容模版',
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid',
  `shid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商家id',
  `adminid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '管理员uid',
  `tuijian` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推荐',
  `paixu` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `renqi` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '人气',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `tupianji` text NOT NULL COMMENT '图片集',
  `neirong` longtext NOT NULL COMMENT '分类内容',
  `kuozan` text NOT NULL COMMENT '扩展数据',
  `atime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  `xtime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `off` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态0 关闭 1 审核 2 正常',
  `explx1` bigint(20) NOT NULL DEFAULT '0' COMMENT '扩展类型1',
  `explx2` bigint(20) NOT NULL DEFAULT '0' COMMENT '扩展类型2',
  `explx3` bigint(20) NOT NULL DEFAULT '0' COMMENT '扩展类型3',
  `explx4` bigint(20) NOT NULL DEFAULT '0' COMMENT '扩展类型4',
  `explx5` bigint(20) NOT NULL DEFAULT '0' COMMENT '扩展类型5',
  `explx6` bigint(20) NOT NULL DEFAULT '0' COMMENT '扩展类型6',
  `yuanjia` double(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '产品原价',
  `jiage` double(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '现在单价',
  `yunid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '运费id',
  `xiaoliang` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `canshu` text NOT NULL COMMENT '产品选购参数+价格',
  `miaosufen` double(20,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '描述总分',
  `fuwufen` double(20,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '服务总分',
  `wuliufen` double(20,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '物流总分',
  `fenren` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评分人数',
  `jinzhong` double(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '净重',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '处理方式',
  `kahao` varchar(255) NOT NULL COMMENT '授权或者网盘地址文件地址',
  `kamima` varchar(255) NOT NULL COMMENT '网盘密码或者压缩吧密码',
  `xiangou` double unsigned NOT NULL DEFAULT '0' COMMENT '限购数量',
  `xgtype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '限购分类',
  `xgdata` varchar(255) NOT NULL COMMENT '限购时间端',
  `huobi` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '购买方式货币',
  `beizhu` varchar(255) NOT NULL COMMENT '备注',
  `lx` varchar(255) NOT NULL COMMENT '类型',
  `dedao` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `url` (`url`),
  KEY `off` (`off`),
  KEY `cid_2` (`cid`,`off`),
  KEY `explx1` (`explx1`),
  KEY `explx2` (`explx2`),
  KEY `explx3` (`explx3`),
  KEY `explx4` (`explx4`),
  KEY `explx5` (`explx5`),
  KEY `explx6` (`explx6`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ay_wawa
-- ----------------------------
INSERT INTO `ay_wawa` VALUES ('10', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493879805', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '20', '3.20');
INSERT INTO `ay_wawa` VALUES ('11', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493953633', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '1.00');
INSERT INTO `ay_wawa` VALUES ('12', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493964412', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '0.60');
INSERT INTO `ay_wawa` VALUES ('13', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493964421', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '0.40');
INSERT INTO `ay_wawa` VALUES ('14', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493964422', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '1.00');
INSERT INTO `ay_wawa` VALUES ('15', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493964422', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '0.08');
INSERT INTO `ay_wawa` VALUES ('16', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493964422', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '10.00');
INSERT INTO `ay_wawa` VALUES ('17', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493964422', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '20.00');
INSERT INTO `ay_wawa` VALUES ('18', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493964422', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '2.00');
INSERT INTO `ay_wawa` VALUES ('19', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493964422', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '1.11');
INSERT INTO `ay_wawa` VALUES ('20', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493964423', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '0.40');
INSERT INTO `ay_wawa` VALUES ('21', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493964423', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '15.00');
INSERT INTO `ay_wawa` VALUES ('22', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493964423', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '1.11');
INSERT INTO `ay_wawa` VALUES ('23', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493964423', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '0.08');
INSERT INTO `ay_wawa` VALUES ('24', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493964423', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '2.00');
INSERT INTO `ay_wawa` VALUES ('25', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493964423', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '0.09');
INSERT INTO `ay_wawa` VALUES ('26', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493964424', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '0.33');
INSERT INTO `ay_wawa` VALUES ('27', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493964424', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '15.00');
INSERT INTO `ay_wawa` VALUES ('28', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493964424', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '0.40');
INSERT INTO `ay_wawa` VALUES ('29', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493964523', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '25.00');
INSERT INTO `ay_wawa` VALUES ('30', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493970977', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '1.11');
INSERT INTO `ay_wawa` VALUES ('31', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1493971132', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '0.07');
INSERT INTO `ay_wawa` VALUES ('32', '', '', '', '0', '0', '', '', '', '148', '0', '0', '0', '0', '0', '', '', '', '', '1494077486', '0', '1', '0', '0', '0', '0', '0', '0', '0.00', '0.00', '0', '0', '', '0.0', '0.0', '0.0', '0', '0.00', '0', '', '', '0', '0', '', '0', '', '5', '0.40');

-- ----------------------------
-- Table structure for `ay_youqing`
-- ----------------------------
DROP TABLE IF EXISTS `ay_youqing`;
CREATE TABLE `ay_youqing` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT '友情连接名称',
  `miaoshu` varchar(255) NOT NULL COMMENT '描述',
  `url` varchar(255) NOT NULL COMMENT '网站url',
  `tupian` varchar(255) NOT NULL COMMENT '缩略图',
  `leixing` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  `off` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '友情连接状态0 关闭 1 审核 2 正常',
  `paixu` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `atime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid',
  `adminuid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户uid',
  `dtime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '到期时间',
  `jine` double(20,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `tuijian` int(10) unsigned DEFAULT '0' COMMENT '推荐',
  `beizhu` varchar(255) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ay_youqing
-- ----------------------------
INSERT INTO `ay_youqing` VALUES ('1', '安优企业建站', '安优企业建站', 'http://www.anyou.org', '', '0', '2', '0', '1475573673', '0', '0', '0', '0.00', '0', '');
INSERT INTO `ay_youqing` VALUES ('2', 'D软件', 'Dsoft', 'http://www.dsoft.org', '', '0', '2', '0', '1475573694', '0', '0', '0', '0.00', '0', '');

-- ----------------------------
-- Table structure for `ay_yunfei`
-- ----------------------------
DROP TABLE IF EXISTS `ay_yunfei`;
CREATE TABLE `ay_yunfei` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '模版名字',
  `diquid` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '发货地区',
  `fatime` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '发货时间',
  `off` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否包邮',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '计价方式',
  `data` text NOT NULL COMMENT '运送方式',
  `baodata` text NOT NULL COMMENT '特定条件',
  `atime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `ip` varchar(36) NOT NULL COMMENT '添加的ip',
  `xtime` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '所属用户',
  `shid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商户id',
  `adminid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '管理id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ay_yunfei
-- ----------------------------
INSERT INTO `ay_yunfei` VALUES ('9', '测试运费3', '0', '0', '0', '0', 'a:1:{i:2;a:2:{s:4:\"ding\";i:2;i:0;a:5:{s:4:\"diqu\";s:1:\"0\";s:4:\"jian\";d:1;s:3:\"fei\";d:15;s:3:\"jia\";d:5;s:4:\"zeng\";d:2;}}}', 'a:0:{}', '1475755195', '', '1479180935', '0', '0', '0');
INSERT INTO `ay_yunfei` VALUES ('10', '测试运费2', '0', '0', '0', '0', 'a:1:{i:0;a:2:{s:4:\"ding\";i:0;i:0;a:5:{s:4:\"diqu\";s:1:\"0\";s:4:\"jian\";d:1;s:3:\"fei\";d:2;s:3:\"jia\";d:1;s:4:\"zeng\";d:1;}}}', 'a:2:{s:4:\"ding\";s:2:\"ok\";i:0;a:4:{s:4:\"diqu\";s:1:\"0\";s:4:\"type\";d:0;s:4:\"jian\";d:1;s:4:\"mian\";d:0;}}', '1475755195', '', '1479107997', '0', '0', '0');
INSERT INTO `ay_yunfei` VALUES ('11', '测试运费', '0', '8', '0', '2', 'a:2:{i:1;a:2:{s:4:\"ding\";i:1;i:0;a:5:{s:4:\"diqu\";s:1:\"0\";s:4:\"jian\";d:1;s:3:\"fei\";d:20;s:3:\"jia\";d:1;s:4:\"zeng\";d:2;}}i:2;a:2:{s:4:\"ding\";i:2;i:0;a:5:{s:4:\"diqu\";s:1:\"0\";s:4:\"jian\";d:1;s:3:\"fei\";d:15;s:3:\"jia\";d:1;s:4:\"zeng\";d:1;}}}', 'a:3:{s:4:\"ding\";s:2:\"ok\";i:0;a:4:{s:4:\"diqu\";s:1:\"0\";s:4:\"type\";d:1;s:4:\"jian\";d:1;s:4:\"mian\";d:0;}i:1;a:4:{s:4:\"diqu\";s:1:\"0\";s:4:\"type\";d:2;s:4:\"jian\";d:2;s:4:\"mian\";d:500;}}', '1475755196', '', '1480573377', '0', '0', '0');
