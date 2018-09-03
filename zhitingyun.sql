/*
 Navicat Premium Data Transfer

 Source Server         : 智听云
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost
 Source Database       : zhitingyun

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : utf-8

 Date: 08/31/2018 14:53:50 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `carousel`
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cover_pic` varchar(255) DEFAULT NULL COMMENT '封面图地址',
  `create_time` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `del` bit(1) DEFAULT NULL COMMENT '是否被删除',
  `link` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `weight` int(11) DEFAULT NULL COMMENT '权重',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='轮播图';

-- ----------------------------
--  Table structure for `complaint`
-- ----------------------------
DROP TABLE IF EXISTS `complaint`;
CREATE TABLE `complaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员ID，记录是那一个管理员对其进行了回复',
  `content` varchar(255) DEFAULT NULL COMMENT '投诉的内容',
  `del` bit(1) DEFAULT NULL,
  `professor_id` int(11) DEFAULT NULL COMMENT '被投诉的专家id',
  `reply` varchar(255) DEFAULT NULL COMMENT '管理员回复的投诉的内容',
  `submit_time` bigint(20) DEFAULT NULL COMMENT '用户提交投诉的时间',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id，记录哪一个用户进行了投诉',
  `status` int(11) DEFAULT NULL COMMENT '投诉的状态，记录是否有管理员对其进行了回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='投诉，用户对专家进行的投诉';

-- ----------------------------
--  Table structure for `equipment_param`
-- ----------------------------
DROP TABLE IF EXISTS `equipment_param`;
CREATE TABLE `equipment_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `del` bit(1) DEFAULT NULL,
  `l_p_afslvl` varchar(255) DEFAULT NULL COMMENT '左耳声反馈抑制等级数组list',
  `l_p_bass` varchar(255) DEFAULT NULL COMMENT '左耳低频增益 BASS数组',
  `l_p_cher` varchar(255) DEFAULT NULL COMMENT '左耳通道压缩扩展比',
  `l_p_cheth` varchar(255) DEFAULT NULL COMMENT '左耳通道压缩扩展拐点',
  `l_p_chexp` varchar(255) DEFAULT NULL COMMENT '左耳通道压缩扩展前缀',
  `l_p_chlg` varchar(255) DEFAULT NULL COMMENT '左耳通道压缩大声增益下标数组',
  `l_p_chmpo` varchar(255) DEFAULT NULL COMMENT '左耳通道MPO前缀',
  `l_p_chsg` varchar(255) DEFAULT NULL COMMENT '左耳通道压缩小声增益下标数组',
  `l_p_chsw` varchar(255) DEFAULT NULL COMMENT '左耳通道压缩开启数组',
  `l_p_eq` varchar(255) DEFAULT NULL COMMENT '左耳EQ前缀',
  `l_p_nrlvl` varchar(255) DEFAULT NULL COMMENT '降噪等级 CH_NR_LVL数组',
  `l_p_trb` varchar(255) DEFAULT NULL COMMENT '高频增益数组',
  `l_p_vc` varchar(255) DEFAULT NULL COMMENT '音量 VOL 数组list',
  `p_s_dl` varchar(255) DEFAULT NULL COMMENT '开机延迟时间',
  `r_p_afslvl` varchar(255) DEFAULT NULL,
  `r_p_bass` varchar(255) DEFAULT NULL,
  `r_p_cher` varchar(255) DEFAULT NULL,
  `r_p_cheth` varchar(255) DEFAULT NULL,
  `r_p_chexp` varchar(255) DEFAULT NULL,
  `r_p_chlg` varchar(255) DEFAULT NULL,
  `r_p_chmpo` varchar(255) DEFAULT NULL,
  `r_p_chsg` varchar(255) DEFAULT NULL,
  `r_p_chsw` varchar(255) DEFAULT NULL,
  `r_p_eq` varchar(255) DEFAULT NULL,
  `r_p_nrlvl` varchar(255) DEFAULT NULL,
  `r_p_trb` varchar(255) DEFAULT NULL,
  `r_p_vc` varchar(255) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id，是哪一个用户的设备参数',
  `classify` int(11) DEFAULT NULL COMMENT '设备参数的场景类别',
  `hertz` varchar(255) DEFAULT NULL COMMENT '赫兹数组',
  `l_p_chng` varchar(255) DEFAULT NULL COMMENT '左耳通道压缩中声增益下标数组',
  `l_p_mid` varchar(255) DEFAULT NULL COMMENT '左耳中频增益 MID数组',
  `l_switch_p_chexp` bit(1) DEFAULT NULL COMMENT '左耳通道压缩扩展开启开关',
  `r_p_chng` varchar(255) DEFAULT NULL,
  `r_p_mid` varchar(255) DEFAULT NULL,
  `r_switch_p_chexp` bit(1) DEFAULT NULL,
  `equipment_type` varchar(255) DEFAULT NULL COMMENT '设备类别',
  `l_cr_select` bit(1) DEFAULT NULL COMMENT '左耳使用方式是否是压缩比方式',
  `r_cr_select` bit(1) DEFAULT NULL,
  `l_p_vc_value` int(11) DEFAULT NULL COMMENT '左耳音量值，音量list的下标。',
  `r_p_vc_value` int(11) DEFAULT NULL,
  `l_p_bass_value` int(11) DEFAULT NULL COMMENT '左耳低频增益 BASS下标',
  `l_p_mid_value` int(11) DEFAULT NULL COMMENT '左耳中频增益 BASS下标',
  `l_p_trb_value` int(11) DEFAULT NULL COMMENT '左耳高频增益 BASS下标',
  `chg_data` varchar(255) DEFAULT NULL COMMENT '通道压缩小中大声增益数值List',
  `r_p_bass_value` int(11) DEFAULT NULL,
  `r_p_mid_value` int(11) DEFAULT NULL,
  `r_p_trb_value` int(11) DEFAULT NULL,
  `l_p_afslvl_value` int(11) DEFAULT NULL COMMENT '左耳声反馈抑制下标',
  `l_p_nrlvl_value` int(11) DEFAULT NULL COMMENT '左耳降噪等级下标',
  `l_switch_p_ch` bit(1) DEFAULT NULL COMMENT '左耳压缩开关',
  `r_p_afslvl_value` int(11) DEFAULT NULL,
  `r_p_nrlvl_value` int(11) DEFAULT NULL,
  `r_switch_p_ch` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6896 DEFAULT CHARSET=utf8mb4 COMMENT='设备参数  l：左耳 r：右耳';

-- ----------------------------
--  Table structure for `feed_back`
-- ----------------------------
DROP TABLE IF EXISTS `feed_back`;
CREATE TABLE `feed_back` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员id，记录是哪一个管理员对该反馈进行了回复',
  `classify` int(11) DEFAULT NULL COMMENT '是专家还是普通人员（1 用户，2 专家）',
  `content` varchar(255) DEFAULT NULL COMMENT '用户提交的反馈的内容',
  `del` bit(1) DEFAULT NULL COMMENT '是否被删除',
  `person_id` int(11) DEFAULT NULL COMMENT '提交反馈的用户id',
  `reply` varchar(255) DEFAULT NULL COMMENT '管理员回复的内容',
  `submit_time` bigint(20) DEFAULT NULL COMMENT '反馈提交的时间',
  `status` int(11) DEFAULT NULL COMMENT '反馈的状态（1 已经有管理员对其进行了回复，2 还没有被回复）',
  `admin_acc_num` varchar(255) DEFAULT NULL COMMENT '管理员账号名 ，管理员账号不会变，所以在此加入该字段，减少联表查询的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='反馈';

-- ----------------------------
--  Table structure for `hibernate_sequence`
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `listen_record`
-- ----------------------------
DROP TABLE IF EXISTS `listen_record`;
CREATE TABLE `listen_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `create_time` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `del` bit(1) DEFAULT NULL COMMENT '是否被删除',
  `equipment_holder` int(11) DEFAULT NULL COMMENT '测听记录的拥有者 （1 病人 ， 2 正常人 ，3专家）',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id，属于哪一个用户的测听记录',
  `left_data` varchar(255) DEFAULT NULL COMMENT '左耳测听数据数组',
  `left_hertz` varchar(255) DEFAULT NULL COMMENT '左耳Hertz数组',
  `right_data` varchar(255) DEFAULT NULL COMMENT '左耳测听数据数组',
  `right_hertz` varchar(255) DEFAULT NULL COMMENT '右耳Hertz数组',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COMMENT='测听记录';

-- ----------------------------
--  Table structure for `netease_cloudim`
-- ----------------------------
DROP TABLE IF EXISTS `netease_cloudim`;
CREATE TABLE `netease_cloudim` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `acc_id` varchar(255) DEFAULT NULL COMMENT '网易云信账号 accid',
  `token` varchar(255) DEFAULT NULL COMMENT '网易云信token',
  `person_id` int(11) DEFAULT NULL COMMENT '用户id',
  `person_type` int(11) DEFAULT NULL COMMENT '用户类别（1 用户，2 专家）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_gr9p59nmo1eemngn54265ri3t` (`acc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='网易云信账号管理';

-- ----------------------------
--  Table structure for `phone_verify_code`
-- ----------------------------
DROP TABLE IF EXISTS `phone_verify_code`;
CREATE TABLE `phone_verify_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(255) DEFAULT NULL COMMENT '验证码',
  `exp` bigint(20) DEFAULT NULL COMMENT '有效时间',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COMMENT='验证码';

-- ----------------------------
--  Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cover_pic` varchar(255) DEFAULT NULL COMMENT '封面图',
  `create_time` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `del` bit(1) DEFAULT NULL COMMENT '是否删除',
  `link` varchar(255) DEFAULT NULL COMMENT '链接',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='又听商城的商品';

-- ----------------------------
--  Table structure for `professor`
-- ----------------------------
DROP TABLE IF EXISTS `professor`;
CREATE TABLE `professor` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `able` bit(1) DEFAULT NULL COMMENT '能否正常使用 true，表示正常',
  `age` bigint(20) DEFAULT NULL COMMENT '年龄 时间戳',
  `del` bit(1) DEFAULT NULL COMMENT '是否被删除',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `rate` double DEFAULT NULL COMMENT '好评率',
  `recently_order_time` bigint(20) DEFAULT NULL COMMENT '最新的诊疗时间 ',
  `service_count` int(11) DEFAULT NULL COMMENT '诊疗次数',
  `service_time` int(11) DEFAULT NULL COMMENT '服务时间，天数',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `starts` int(11) DEFAULT NULL COMMENT '获得的星星数',
  `create_time` bigint(20) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COMMENT='专家';

-- ----------------------------
--  Table structure for `quickztyorder`
-- ----------------------------
DROP TABLE IF EXISTS `quickztyorder`;
CREATE TABLE `quickztyorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `cure_time_end` bigint(20) DEFAULT NULL COMMENT '诊疗结束时间',
  `cure_time_start` bigint(20) DEFAULT NULL COMMENT '诊疗开始时间',
  `equ_param_after_id` varchar(100) DEFAULT NULL COMMENT '诊疗完毕后的设备参数id数组',
  `equ_param_before_id` varchar(100) DEFAULT NULL COMMENT '诊疗前的设备参数id数组',
  `evaluation` varchar(255) DEFAULT NULL COMMENT '用户对专家的评价',
  `pro_id` int(11) DEFAULT NULL COMMENT '专家id',
  `problem_desc` varchar(255) DEFAULT NULL COMMENT '问题的描述',
  `professor_report` varchar(255) DEFAULT NULL COMMENT '专家提交的报告',
  `report_time` bigint(20) DEFAULT NULL COMMENT '提交报告的时间',
  `starts` int(11) DEFAULT NULL COMMENT '该报告的星星数',
  `status` int(11) DEFAULT NULL COMMENT '该预约单的状态',
  `tags` varchar(255) DEFAULT NULL COMMENT '评价标签数组',
  `user_age` bigint(20) DEFAULT NULL COMMENT '用户提交给预约时的年龄',
  `user_cure_count` int(11) DEFAULT NULL COMMENT '用户提交该预约时候的诊疗次数',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `user_newest_record_id` int(11) DEFAULT NULL COMMENT '用户提交该预约时候的最新测听记录',
  `wear_time` int(11) DEFAULT NULL COMMENT '佩戴设备的时间类别',
  `pro_adjust_listen_record_id` int(11) DEFAULT NULL COMMENT '专家调整后的测听记录id（目前先加上，预备于以后的功能的添加）',
  `history_order_id` int(11) DEFAULT NULL COMMENT '历史诊疗的id',
  `history_order_type` int(11) DEFAULT NULL COMMENT '历史诊疗的类别',
  `classify` int(11) DEFAULT NULL COMMENT '预约的 类别 （普通还是快速）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=443 DEFAULT CHARSET=utf8mb4 COMMENT='快速诊疗订单';

-- ----------------------------
--  Table structure for `system_news`
-- ----------------------------
DROP TABLE IF EXISTS `system_news`;
CREATE TABLE `system_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `content` varchar(255) DEFAULT NULL COMMENT '消息内容',
  `create_time` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `news_id` int(11) DEFAULT NULL COMMENT '消息ID，系统通知ID',
  `person_id` int(11) DEFAULT NULL COMMENT '用户id',
  `person_type` int(11) DEFAULT NULL COMMENT '用户类别',
  `status` int(11) DEFAULT NULL COMMENT '消息状态',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统消息';

-- ----------------------------
--  Table structure for `system_notification`
-- ----------------------------
DROP TABLE IF EXISTS `system_notification`;
CREATE TABLE `system_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cover_pic` varchar(255) DEFAULT NULL COMMENT '图片',
  `del` bit(1) DEFAULT NULL COMMENT '删除标志',
  `last_push_time` bigint(20) DEFAULT NULL COMMENT '最新一次发布时间',
  `push_professor` bit(1) DEFAULT NULL COMMENT '专家是否接收',
  `push_user` bit(1) DEFAULT NULL COMMENT '用户是否接收',
  `rich_text` text COMMENT '富文本',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `had_publish` bit(1) DEFAULT NULL COMMENT '是否发布',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='平台通知，后台管理员发布的平台通知';

-- ----------------------------
--  Table structure for `system_set`
-- ----------------------------
DROP TABLE IF EXISTS `system_set`;
CREATE TABLE `system_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `service_tel` varchar(255) DEFAULT NULL COMMENT '客服电话',
  `user_agreement` varchar(1000) DEFAULT NULL COMMENT '用户协议',
  `guides` varchar(255) DEFAULT NULL COMMENT '引导页图片地址数组',
  `launcher` varchar(255) DEFAULT NULL COMMENT '启动页',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='系统设置';

-- ----------------------------
--  Table structure for `tag`
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `del` bit(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='评价标签';

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `able` bit(1) DEFAULT NULL COMMENT '该账号能否使用',
  `age` bigint(20) DEFAULT NULL COMMENT '年龄 时间戳',
  `create_time` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `cure_count` int(11) DEFAULT NULL COMMENT '诊疗次数',
  `del` bit(1) DEFAULT NULL COMMENT '删除标志',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `sex` int(11) DEFAULT NULL COMMENT '性别',
  `wear_time_enum` int(11) DEFAULT NULL COMMENT '佩戴时间',
  `deflrid` int(11) DEFAULT NULL COMMENT '默认最新的测听记录id',
  `equipment_address` varchar(255) DEFAULT NULL COMMENT '设备地址，帮前端进行保存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8mb4 COMMENT='用户';

-- ----------------------------
--  Table structure for `user_liveness`
-- ----------------------------
DROP TABLE IF EXISTS `user_liveness`;
CREATE TABLE `user_liveness` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `channel_number` int(11) DEFAULT NULL COMMENT '用户id通道编号，属于哪一个范围内的数组',
  `count` int(11) DEFAULT NULL COMMENT 'id的数量',
  `time` bigint(20) DEFAULT NULL COMMENT '某一天的中午的12点的时间戳',
  `user_ids` varchar(255) DEFAULT NULL COMMENT '记录的用户id数组',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户活跃度的记录，\n活跃度（某一天有没有使用该APP）';

-- ----------------------------
--  Table structure for `user_news`
-- ----------------------------
DROP TABLE IF EXISTS `user_news`;
CREATE TABLE `user_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `content` varchar(255) DEFAULT NULL COMMENT '消息内容',
  `create_time` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `del` bit(1) DEFAULT NULL COMMENT '删除标志',
  `news_id` int(11) DEFAULT NULL COMMENT '消息ID',
  `news_type` int(11) DEFAULT NULL COMMENT '消息类别',
  `person_id` int(11) DEFAULT NULL COMMENT '接收该消息的对象id',
  `person_type` int(11) DEFAULT NULL COMMENT '用户类别',
  `status` int(11) DEFAULT NULL COMMENT '消息状态（已读，未读）',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=532 DEFAULT CHARSET=utf8mb4 COMMENT='用户消息保存';

-- ----------------------------
--  Table structure for `work_schedule`
-- ----------------------------
DROP TABLE IF EXISTS `work_schedule`;
CREATE TABLE `work_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `del` bit(1) DEFAULT NULL COMMENT '删除标志',
  `end_time` bigint(20) DEFAULT NULL COMMENT '排班结束时间',
  `professor_id` int(11) DEFAULT NULL COMMENT '专家id',
  `start_time` bigint(20) DEFAULT NULL COMMENT '排班开始时间',
  `status` int(11) DEFAULT NULL COMMENT '排班的状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=806 DEFAULT CHARSET=utf8mb4 COMMENT='专家排班';

-- ----------------------------
--  Table structure for `zty_admin`
-- ----------------------------
DROP TABLE IF EXISTS `zty_admin`;
CREATE TABLE `zty_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `able` bit(1) DEFAULT NULL COMMENT '禁用标志 （true表示没有被禁用）',
  `acc_num` varchar(255) DEFAULT NULL COMMENT '管理员账号',
  `del` bit(1) DEFAULT NULL COMMENT '删除标志',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `root` bit(1) DEFAULT NULL COMMENT '超级管理员标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COMMENT='管理员';

-- ----------------------------
--  Table structure for `zty_order`
-- ----------------------------
DROP TABLE IF EXISTS `zty_order`;
CREATE TABLE `zty_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `classify` int(11) DEFAULT NULL COMMENT '预约单类别（1，快速，2普通）',
  `create_time` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `cure_time_end` bigint(20) DEFAULT NULL COMMENT '诊疗结束时间',
  `cure_time_start` bigint(20) DEFAULT NULL COMMENT '诊疗开始时间',
  `equ_param_after_id` varchar(100) DEFAULT NULL COMMENT '设备参数调整之后的id数组',
  `equ_param_before_id` varchar(100) DEFAULT NULL COMMENT '设备参数调整之前的id数组',
  `evaluation` varchar(255) DEFAULT NULL COMMENT '用户的评价',
  `order_time_end` bigint(20) DEFAULT NULL COMMENT '订单开始时间',
  `order_time_start` bigint(20) DEFAULT NULL COMMENT '订单结束时间',
  `pro_id` int(11) DEFAULT NULL COMMENT '被预约的专家id',
  `problem_desc` varchar(255) DEFAULT NULL COMMENT '问题描述',
  `professor_report` varchar(255) DEFAULT NULL COMMENT '专家报告',
  `report_time` bigint(20) DEFAULT NULL COMMENT '提交报告的时间',
  `return_visit` bit(1) DEFAULT NULL COMMENT '是否为复诊',
  `starts` int(11) DEFAULT NULL COMMENT '星星数',
  `status` int(11) DEFAULT NULL COMMENT '预约单的状态',
  `tags` varchar(255) DEFAULT NULL COMMENT '评价标签的id数组',
  `user_age` bigint(20) DEFAULT NULL COMMENT '用户提交预约时的年龄',
  `user_cure_count` int(11) DEFAULT NULL COMMENT '用户提交预约时的诊疗次数',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `user_newest_record_id` int(11) DEFAULT NULL COMMENT '当时用户的最新测听记录',
  `wear_time` int(11) DEFAULT NULL COMMENT '用户提交预约时的佩戴设备的时间',
  `work_schedule_id` int(11) DEFAULT NULL COMMENT '排班id',
  `pro_adjust_listen_record_id` int(11) DEFAULT NULL COMMENT '专家调整之后的测听记录的id',
  `history_order_id` int(11) DEFAULT NULL COMMENT '历史诊疗订单id',
  `history_order_type` int(11) DEFAULT NULL COMMENT '历史诊疗订单类别',
  `del` bit(1) DEFAULT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb4 COMMENT='普通预约单';

SET FOREIGN_KEY_CHECKS = 1;
