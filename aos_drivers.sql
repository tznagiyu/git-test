/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : aos_drivers

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2019-01-11 12:34:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_car
-- ----------------------------
DROP TABLE IF EXISTS `t_car`;
CREATE TABLE `t_car` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `drivers_school_id` bigint(20) DEFAULT NULL COMMENT '驾校ID',
  `drivers_school_dep_code` varchar(255) DEFAULT NULL COMMENT '驾校depCode',
  `status` int(1) DEFAULT '0' COMMENT '车辆状态（0：正常 1:待车检 2:待车险）',
  `car_numbers` varchar(50) DEFAULT NULL COMMENT '车牌号',
  `colour` varchar(50) DEFAULT NULL COMMENT '颜色',
  `engine_number` varchar(50) DEFAULT NULL COMMENT '发动机号',
  `car_model` varchar(50) DEFAULT NULL COMMENT '车辆型号',
  `car_profile` int(2) DEFAULT NULL COMMENT '车辆档型 (1：自动  2：手动)',
  `car_type` int(2) DEFAULT NULL COMMENT '车辆类型 (1:小型轿车  2：客车   3：挂车)',
  `insurer_time` datetime DEFAULT NULL COMMENT '保险截止日期',
  `annual_time` datetime DEFAULT NULL COMMENT '年审截止日期',
  `buy_time` datetime DEFAULT NULL COMMENT '购买时间',
  `test_time` datetime DEFAULT NULL COMMENT '综合检测截止日期',
  `maintain_time` datetime DEFAULT NULL COMMENT '二级维护截止日期',
  `register_time` datetime DEFAULT NULL COMMENT '登记时间',
  `fuel_type` int(2) DEFAULT NULL COMMENT '燃油类型(1: 汽油   2：柴油)',
  `mileage` varchar(50) DEFAULT NULL COMMENT '里程',
  `insurer` varchar(50) DEFAULT NULL COMMENT '保险公司',
  `updated` datetime DEFAULT NULL COMMENT '更新时间',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `is_del` int(2) DEFAULT '0' COMMENT '是否删除  （0：否    1：是）',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `驾校id` (`drivers_school_id`) USING BTREE,
  CONSTRAINT `驾校id` FOREIGN KEY (`drivers_school_id`) REFERENCES `t_drivers_school` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='驾校车辆信息';

-- ----------------------------
-- Table structure for t_car_picture
-- ----------------------------
DROP TABLE IF EXISTS `t_car_picture`;
CREATE TABLE `t_car_picture` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `car_id` bigint(20) DEFAULT NULL COMMENT '车辆ID',
  `file_id` bigint(20) DEFAULT NULL COMMENT '文件ID',
  `type` int(2) DEFAULT NULL COMMENT '类型  （1：车辆行驶证  2：车辆图片）',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除  （0：是    1：否）',
  `updated` datetime DEFAULT NULL COMMENT '更新时间',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `车辆图片` (`car_id`) USING BTREE,
  CONSTRAINT `车辆图片` FOREIGN KEY (`car_id`) REFERENCES `t_car` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for t_check_result_import_record
-- ----------------------------
DROP TABLE IF EXISTS `t_check_result_import_record`;
CREATE TABLE `t_check_result_import_record` (
  `id` bigint(20) NOT NULL COMMENT '记录ID',
  `serial_number` varchar(20) DEFAULT NULL COMMENT '流水号： 年月日时分秒+3位数字序号',
  `data_count` int(11) DEFAULT NULL COMMENT '导入数量',
  `opt_province_code` varchar(20) DEFAULT NULL COMMENT '操作省Code',
  `opt_city_code` varchar(20) DEFAULT NULL COMMENT '操作市Code',
  `opt_city_name` varchar(50) DEFAULT NULL COMMENT '操作市（省-市）',
  `opt_time` datetime DEFAULT NULL COMMENT '操作时间',
  `opt_user` varchar(20) DEFAULT NULL COMMENT '操作人',
  `is_del` smallint(6) DEFAULT NULL COMMENT '是否删除：　-1为删除；0为默认',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='内网审核结果导入记录';

-- ----------------------------
-- Table structure for t_check_result_import_record_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_check_result_import_record_detail`;
CREATE TABLE `t_check_result_import_record_detail` (
  `id` bigint(20) NOT NULL COMMENT '明细记录ID',
  `record_id` bigint(20) DEFAULT NULL COMMENT '记录ID',
  `serial_number` varchar(20) DEFAULT NULL COMMENT '流水号： 年月日时分秒+3位数字序号',
  `student_name` varchar(20) DEFAULT NULL COMMENT '学员姓名',
  `id_no` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `id_number` varchar(20) DEFAULT NULL,
  `biz_type` varchar(20) DEFAULT NULL COMMENT '业务类型',
  `car_type` varchar(20) DEFAULT NULL COMMENT '驾照类型',
  `has_paperless` varchar(10) DEFAULT '无' COMMENT '是否无纸化：　无；有',
  `has_fingerprint` varchar(10) DEFAULT '无' COMMENT '是否有指纹：　无；有',
  `has_certificate_photos` varchar(10) DEFAULT '无' COMMENT '是否有证件照：　无；有',
  `has_certificate_photos_big` varchar(10) DEFAULT '无' COMMENT '是否有证件照大图：　无；有',
  `has_old_driving_license` varchar(10) DEFAULT '无' COMMENT '是否有原驾驶证：　无；有',
  `ds_name` varchar(100) DEFAULT NULL COMMENT '驾校名称',
  `processing_results` varchar(512) DEFAULT NULL COMMENT '处理结果',
  `feedback_result` varchar(512) DEFAULT NULL COMMENT '反馈结果',
  `apply_time` datetime DEFAULT NULL COMMENT '申请时间',
  `processing_time` datetime DEFAULT NULL COMMENT '受理时间',
  `manager_department` varchar(50) DEFAULT NULL COMMENT '管理部门',
  PRIMARY KEY (`id`),
  KEY `FK_reference_18` (`record_id`),
  CONSTRAINT `FK_reference_18` FOREIGN KEY (`record_id`) REFERENCES `t_check_result_import_record` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='导入明细（内网审核结果明细）';

-- ----------------------------
-- Table structure for t_coach
-- ----------------------------
DROP TABLE IF EXISTS `t_coach`;
CREATE TABLE `t_coach` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `drivers_school_id` bigint(20) DEFAULT NULL COMMENT '驾校ID',
  `drivers_school_dep_code` varchar(255) DEFAULT NULL COMMENT '驾校depCode',
  `coach_number` varchar(50) DEFAULT NULL COMMENT '教练编号',
  `sex` int(2) DEFAULT NULL COMMENT '性别   男:1;女:2;  未知：3',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `idnum` varchar(50) DEFAULT NULL COMMENT '证件号码',
  `phone` varchar(50) DEFAULT NULL COMMENT '手机号码',
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '培训科目(1：科目一  ，2：科目二，3：科目三  ，4：科目四）  多选用,隔开   例：2,3',
  `wechat` varchar(50) DEFAULT NULL COMMENT '微信号',
  `train_cartype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '培训车型  多选  ,隔开 例：C1,C2',
  `teachingage` varchar(20) DEFAULT NULL COMMENT '教龄',
  `drivers_cartype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '教练驾驶证车型',
  `coach_describe` varchar(255) DEFAULT NULL COMMENT '描述',
  `label` varchar(255) DEFAULT NULL COMMENT '标签 [{"label":"技术一流"},{"label":"诚实可靠"}]',
  `is_authentication` int(2) DEFAULT NULL COMMENT '是否认证  （0：否  1：是）',
  `is_del` int(2) DEFAULT NULL COMMENT '是否删除  （0：否    1：是）',
  `updated` datetime DEFAULT NULL COMMENT '修改时间',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `驾校的Id` (`drivers_school_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=532566557948117323 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='教练';

-- ----------------------------
-- Table structure for t_coach_car
-- ----------------------------
DROP TABLE IF EXISTS `t_coach_car`;
CREATE TABLE `t_coach_car` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `coach_id` bigint(20) DEFAULT NULL COMMENT '教练ID',
  `car_id` bigint(20) DEFAULT NULL COMMENT '车辆ID',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除（0：否    1：是）',
  `updated` datetime DEFAULT NULL COMMENT '修改时间',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `coach_id` (`coach_id`) USING BTREE,
  KEY `car_id` (`car_id`) USING BTREE,
  CONSTRAINT `教练-外键1` FOREIGN KEY (`coach_id`) REFERENCES `t_coach` (`id`),
  CONSTRAINT `车辆-外键1` FOREIGN KEY (`car_id`) REFERENCES `t_car` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17819 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='教练关联车辆信息';

-- ----------------------------
-- Table structure for t_coach_lable
-- ----------------------------
DROP TABLE IF EXISTS `t_coach_lable`;
CREATE TABLE `t_coach_lable` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `drivers_school_id` bigint(20) DEFAULT NULL COMMENT '驾校id',
  `drivers_school_dep_code` varchar(255) DEFAULT NULL COMMENT '驾校depCode',
  `coach_id` bigint(255) DEFAULT NULL COMMENT '教练id',
  `simple_lable` varchar(20) DEFAULT NULL COMMENT '标签简称',
  `lable` varchar(20) DEFAULT NULL COMMENT '标签',
  `is_del` int(1) DEFAULT '0' COMMENT '删除（0:正常   -1:删除）',
  `updated` datetime DEFAULT NULL COMMENT '修改时间',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=532566550155100491 DEFAULT CHARSET=utf8 COMMENT='教练标签';

-- ----------------------------
-- Table structure for t_coach_picture
-- ----------------------------
DROP TABLE IF EXISTS `t_coach_picture`;
CREATE TABLE `t_coach_picture` (
  `id` bigint(20) NOT NULL,
  `coach_id` bigint(20) DEFAULT NULL COMMENT '教练id',
  `file_id` bigint(20) DEFAULT NULL COMMENT '文件id',
  `type` int(1) DEFAULT NULL COMMENT '类别 （1：教练驾驶证  2：教练证  3：教练头像）',
  `is_del` int(1) DEFAULT '0' COMMENT '是否删除（0：否    1：是）',
  `updated` datetime DEFAULT NULL COMMENT '修改时间',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `coach_id` (`coach_id`) USING BTREE,
  CONSTRAINT `coach_id` FOREIGN KEY (`coach_id`) REFERENCES `t_coach` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='教练图片';

-- ----------------------------
-- Table structure for t_coach_student
-- ----------------------------
DROP TABLE IF EXISTS `t_coach_student`;
CREATE TABLE `t_coach_student` (
  `id` bigint(20) NOT NULL,
  `dep_code` varchar(255) DEFAULT NULL,
  `drivers_id` bigint(20) DEFAULT NULL COMMENT '驾校ID',
  `coach_id` bigint(20) DEFAULT NULL COMMENT '教练ID',
  `student_id` bigint(20) DEFAULT NULL COMMENT '学员ID',
  `subject` int(20) DEFAULT NULL COMMENT '培训科目（1：科目一,2：科目二,3：科目三,4：科目四）',
  `operator_id` int(20) DEFAULT NULL COMMENT '创建人',
  `status` int(2) DEFAULT NULL COMMENT '0：结束（在科目三考试合格后变为结束状态）\r\n2：科目二在培中\r\n   21：科目二预约考试中\r\n3：科目三在培中\r\n  31：科目三预约考试中',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除（0：否    1：是）',
  `updated` datetime DEFAULT NULL COMMENT '修改时间',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `drivers_id` (`drivers_id`) USING BTREE,
  KEY `student_id` (`student_id`) USING BTREE,
  KEY `coach_id` (`coach_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='培训科目教练分配学员表';

-- ----------------------------
-- Table structure for t_common_area
-- ----------------------------
DROP TABLE IF EXISTS `t_common_area`;
CREATE TABLE `t_common_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_code` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL COMMENT '城市编码',
  `name` varchar(255) DEFAULT NULL COMMENT '城市名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11159 DEFAULT CHARSET=utf8 COMMENT='辖区区域表';

-- ----------------------------
-- Table structure for t_common_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_common_dict`;
CREATE TABLE `t_common_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父级ID',
  `code` varchar(20) DEFAULT NULL COMMENT '唯一',
  `name` varchar(30) NOT NULL COMMENT '名称',
  `type` int(11) NOT NULL COMMENT '类别',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL COMMENT '变更时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8 COMMENT='数据字典';

-- ----------------------------
-- Table structure for t_common_file
-- ----------------------------
DROP TABLE IF EXISTS `t_common_file`;
CREATE TABLE `t_common_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group` varchar(50) DEFAULT NULL COMMENT '分组',
  `path` varchar(100) DEFAULT NULL COMMENT '文件路径',
  `md5` varchar(50) DEFAULT NULL COMMENT '文件MD5值',
  `name` varchar(50) DEFAULT NULL COMMENT '文件名称',
  `suffix` varchar(50) DEFAULT NULL COMMENT '文件后缀',
  PRIMARY KEY (`id`),
  KEY `idx_t_permission_file_md5` (`md5`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='文件表';

-- ----------------------------
-- Table structure for t_common_region
-- ----------------------------
DROP TABLE IF EXISTS `t_common_region`;
CREATE TABLE `t_common_region` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键、自增',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父ID',
  `code` varchar(50) DEFAULT NULL COMMENT '区域编码',
  `name` varchar(255) DEFAULT NULL COMMENT '区域名称',
  `shortname` varchar(100) DEFAULT NULL COMMENT '区域简称',
  `leveltype` int(2) DEFAULT NULL COMMENT '0.国家 1.省 2.市 3.区/县',
  `citycode` varchar(20) DEFAULT NULL COMMENT '城市简码',
  `zipcode` varchar(20) DEFAULT NULL COMMENT '邮编',
  `pinyin` varchar(255) DEFAULT NULL COMMENT '拼音',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_t_region_parent_id` (`parent_id`) USING BTREE,
  KEY `idx_t_region_code` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3752 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='区域字典表';

-- ----------------------------
-- Table structure for t_contract
-- ----------------------------
DROP TABLE IF EXISTS `t_contract`;
CREATE TABLE `t_contract` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `contract_number` varchar(50) DEFAULT NULL COMMENT '合同编号（合同编号按照规则自动生成）',
  `contract_name` varchar(50) DEFAULT NULL COMMENT '合同名称',
  `signed_person` varchar(20) DEFAULT NULL COMMENT '签订人',
  `signed_time` datetime DEFAULT NULL COMMENT '签订时间',
  `start_time` datetime DEFAULT NULL COMMENT '合同开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '合同结束时间',
  `customer_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `customer_phone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `is_del` int(2) DEFAULT '0' COMMENT '是否删除  （0：否    1：是）',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `updated` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='合同信息表';

-- ----------------------------
-- Table structure for t_contract_picture
-- ----------------------------
DROP TABLE IF EXISTS `t_contract_picture`;
CREATE TABLE `t_contract_picture` (
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除（0：否    1：是）',
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_id` bigint(20) DEFAULT NULL COMMENT '文件ID',
  `contract_id` bigint(20) DEFAULT NULL COMMENT '合同id',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `updated` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `contract_id` (`contract_id`) USING BTREE,
  CONSTRAINT `contract_id` FOREIGN KEY (`contract_id`) REFERENCES `t_contract` (`id`),
  CONSTRAINT `t_contract_picture_ibfk_1` FOREIGN KEY (`contract_id`) REFERENCES `t_contract` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='合同图片表';

-- ----------------------------
-- Table structure for t_division
-- ----------------------------
DROP TABLE IF EXISTS `t_division`;
CREATE TABLE `t_division` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `province_id` bigint(20) DEFAULT NULL COMMENT '省ID',
  `city_id` bigint(20) DEFAULT NULL COMMENT '市id',
  `code` varchar(50) DEFAULT NULL COMMENT '分所代码',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `dep_code` varchar(255) DEFAULT NULL COMMENT '组织部门code',
  `create_user` bigint(255) DEFAULT NULL COMMENT '创建人id',
  `updated` datetime DEFAULT NULL COMMENT '修改时间',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `is_del` int(2) DEFAULT '0' COMMENT '是否删除  （0：否    1：是）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='省市对应分所';

-- ----------------------------
-- Table structure for t_drivers_school
-- ----------------------------
DROP TABLE IF EXISTS `t_drivers_school`;
CREATE TABLE `t_drivers_school` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type` int(2) DEFAULT NULL COMMENT '类别  （1：直营总校  2：非直营总校  3:分校 4：报名点）',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父级驾校ID',
  `division_id` bigint(20) DEFAULT NULL COMMENT '分所ID',
  `name` varchar(50) DEFAULT NULL COMMENT '企业名称',
  `code` varchar(50) DEFAULT NULL COMMENT '驾校代码',
  `province_id` bigint(20) DEFAULT NULL COMMENT '省ID',
  `city_id` bigint(20) DEFAULT NULL COMMENT '市ID',
  `area_id` bigint(20) DEFAULT NULL COMMENT '区县ID',
  `address` varchar(100) DEFAULT NULL COMMENT '详细地址',
  `contacts` varchar(20) DEFAULT NULL COMMENT '联系人',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `password` varchar(50) DEFAULT NULL COMMENT '注册密码',
  `dep_code` varchar(100) DEFAULT NULL COMMENT '部门组织code',
  `status` int(2) DEFAULT NULL COMMENT '审核状态（0:系统添加  1：审核中；2：审核成功；3：审核失败）',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注、审核结果反馈',
  `create_user` bigint(255) DEFAULT NULL COMMENT '创建人',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `updated` datetime DEFAULT NULL COMMENT '修改时间',
  `auditdate` datetime DEFAULT NULL COMMENT '审核时间',
  `is_del` int(2) DEFAULT '1' COMMENT '是否删除  （0：是    1：否）',
  `abbreviation` varchar(50) DEFAULT NULL COMMENT '驾校简称',
  `licensenumber` varchar(50) DEFAULT NULL COMMENT '营业执照注册号',
  `longitude` varchar(50) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(50) DEFAULT NULL COMMENT '纬度',
  `is_fictitious` int(2) DEFAULT NULL COMMENT '是否是虚拟的驾校（每个省市级都有唯一 一个）【0：否  1：是 】',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `division_id` (`division_id`) USING BTREE,
  FULLTEXT KEY `idx_dep_code` (`dep_code`)
) ENGINE=InnoDB AUTO_INCREMENT=919 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='驾校信息表';

-- ----------------------------
-- Table structure for t_drivers_school_class
-- ----------------------------
DROP TABLE IF EXISTS `t_drivers_school_class`;
CREATE TABLE `t_drivers_school_class` (
  `id` bigint(20) NOT NULL,
  `drivers_id` bigint(20) DEFAULT NULL COMMENT '驾校ID',
  `drivers_school_dep_code` varchar(255) DEFAULT NULL COMMENT '驾校depCode',
  `class_number` varchar(20) DEFAULT NULL COMMENT '班型编码',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `tuition` double(6,2) DEFAULT '0.00' COMMENT '学费',
  `type` varchar(20) DEFAULT NULL COMMENT '类别(( 来自字典表)1：一车一人  2：一车多人  ）',
  `people_number` int(11) DEFAULT NULL COMMENT '每车人数',
  `car_id` varchar(11) DEFAULT NULL COMMENT '车型ID(来自字典表)',
  `learn_id` varchar(20) DEFAULT NULL COMMENT '学车时间(来自字典表)',
  `reason` varchar(255) DEFAULT NULL COMMENT '备注',
  `is_del` int(2) DEFAULT '0' COMMENT '是否删除  （0：否    1：是）',
  `updated` datetime DEFAULT NULL COMMENT '修改时间',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `drivers_id` (`drivers_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='驾校班级';

-- ----------------------------
-- Table structure for t_drivers_school_depth
-- ----------------------------
DROP TABLE IF EXISTS `t_drivers_school_depth`;
CREATE TABLE `t_drivers_school_depth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(2) DEFAULT NULL COMMENT '类别  （1：直营总校  2：非直营总校  3:分校 4：报名点）',
  `drivers_parent_id` bigint(20) DEFAULT NULL COMMENT '驾校机构父级ID',
  `drivers_school_id` bigint(20) DEFAULT NULL COMMENT '驾校ID',
  `sequence` int(11) DEFAULT '0' COMMENT '和父级的级数',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除（0：否    1：是）',
  `updated` datetime DEFAULT NULL COMMENT '修改时间',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `drivers_school_id` (`drivers_school_id`) USING BTREE,
  CONSTRAINT `drivers_school_id` FOREIGN KEY (`drivers_school_id`) REFERENCES `t_drivers_school` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='驾校关联深度表';

-- ----------------------------
-- Table structure for t_drivers_school_device
-- ----------------------------
DROP TABLE IF EXISTS `t_drivers_school_device`;
CREATE TABLE `t_drivers_school_device` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `drivers_school_id` bigint(20) DEFAULT NULL COMMENT '驾校机构ID',
  `drivers_school_dep_code` varchar(255) DEFAULT NULL COMMENT '驾校depCode',
  `usb_key` varchar(100) DEFAULT NULL COMMENT 'usb_key',
  `devicecode` varchar(100) DEFAULT NULL COMMENT 'u盘编码(设备号)',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除（0：否    1：是）',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `updated` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `drivers_id` (`drivers_school_id`) USING BTREE,
  CONSTRAINT `t_drivers_school_device_ibfk_1` FOREIGN KEY (`drivers_school_id`) REFERENCES `t_drivers_school` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=335 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='驾校设备信息表';

-- ----------------------------
-- Table structure for t_drivers_school_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_drivers_school_notice`;
CREATE TABLE `t_drivers_school_notice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公告';

-- ----------------------------
-- Table structure for t_drivers_school_notice_receive
-- ----------------------------
DROP TABLE IF EXISTS `t_drivers_school_notice_receive`;
CREATE TABLE `t_drivers_school_notice_receive` (
  `id` bigint(20) NOT NULL,
  `notice_id` bigint(20) DEFAULT NULL COMMENT '公告ID',
  `drivers_id` bigint(20) DEFAULT NULL COMMENT '驾校ID',
  `start_time` datetime DEFAULT NULL COMMENT '弹窗开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '弹窗结束时间',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `notice_id` (`notice_id`) USING BTREE,
  KEY `drivers_id` (`drivers_id`) USING BTREE,
  CONSTRAINT `t_drivers_school_notice_receive_ibfk_1` FOREIGN KEY (`notice_id`) REFERENCES `t_drivers_school_notice` (`id`),
  CONSTRAINT `t_drivers_school_notice_receive_ibfk_2` FOREIGN KEY (`drivers_id`) REFERENCES `t_drivers_school` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公告驾校关联表';

-- ----------------------------
-- Table structure for t_drivers_school_picture
-- ----------------------------
DROP TABLE IF EXISTS `t_drivers_school_picture`;
CREATE TABLE `t_drivers_school_picture` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `drivers_school_id` bigint(20) DEFAULT NULL COMMENT '驾校ID',
  `file_id` bigint(20) DEFAULT NULL COMMENT '文件ID',
  `type` int(2) DEFAULT NULL COMMENT '类别  （1：营业执照图片   2：驾校图片）',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `updated` datetime DEFAULT NULL COMMENT '修改时间',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除  （0：是    1：否）',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `drivers_school_id` (`drivers_school_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='驾校图片';

-- ----------------------------
-- Table structure for t_dsc_file
-- ----------------------------
DROP TABLE IF EXISTS `t_dsc_file`;
CREATE TABLE `t_dsc_file` (
  `id` bigint(20) NOT NULL COMMENT '合同文件记录ID',
  `dsc_id` bigint(20) DEFAULT NULL COMMENT '合同ID',
  `dsc_file_id` bigint(20) DEFAULT NULL COMMENT '合同文件ID',
  `dsc_file_type` smallint(6) DEFAULT NULL COMMENT '合同文件类型： 1为图片；2为word；3为pdf；4为压缩文件。。。',
  PRIMARY KEY (`id`),
  KEY `FK_reference_15` (`dsc_id`),
  CONSTRAINT `FK_reference_15` FOREIGN KEY (`dsc_id`) REFERENCES `t_ds_contract` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合同文件';

-- ----------------------------
-- Table structure for t_ds_contract
-- ----------------------------
DROP TABLE IF EXISTS `t_ds_contract`;
CREATE TABLE `t_ds_contract` (
  `id` bigint(20) NOT NULL COMMENT '驾校合同ID',
  `dsc_code` varchar(50) DEFAULT NULL COMMENT '合同编号: HT+年月日时分秒+3位数字序号',
  `dsc_name` varchar(100) DEFAULT NULL COMMENT '合同名称：100字符内',
  `dsc_ds_id` bigint(20) DEFAULT NULL COMMENT '合同驾校ID',
  `dsc_ds_code` varchar(50) DEFAULT '' COMMENT '驾校编号',
  `dsc_ds_name` varchar(100) DEFAULT NULL COMMENT '驾校名称',
  `dsc_ds_dep_code` varchar(255) DEFAULT '' COMMENT '驾校组织编码',
  `city_code` varchar(50) DEFAULT NULL,
  `dsc_customer_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `dsc_contacts_name` varchar(50) DEFAULT NULL COMMENT '联系人',
  `dsc_contacts_phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `dsc_sign_name` varchar(50) DEFAULT NULL COMMENT '签订人',
  `dsc_sign_time` datetime DEFAULT NULL COMMENT '签订时间',
  `dsc_begin_time` datetime DEFAULT NULL COMMENT '合同开始时间',
  `dsc_end_time` datetime DEFAULT NULL COMMENT '合同截止时间',
  `is_del` smallint(6) DEFAULT NULL COMMENT '是否删除： -1为删除；0为默认',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='驾校合同';

-- ----------------------------
-- Table structure for t_export_field
-- ----------------------------
DROP TABLE IF EXISTS `t_export_field`;
CREATE TABLE `t_export_field` (
  `id` bigint(20) NOT NULL COMMENT '字段ID',
  `field_name` varchar(20) DEFAULT NULL COMMENT '字段名称',
  `field_desc` varchar(50) DEFAULT NULL COMMENT '字段描述',
  `city_code` varchar(20) DEFAULT NULL COMMENT '操作市Code',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人工导出字段';

-- ----------------------------
-- Table structure for t_export_file
-- ----------------------------
DROP TABLE IF EXISTS `t_export_file`;
CREATE TABLE `t_export_file` (
  `id` bigint(20) NOT NULL COMMENT '字段ID',
  `file_type` smallint(6) DEFAULT NULL,
  `file_desc` varchar(50) DEFAULT NULL COMMENT '文件描述',
  `city_code` varchar(20) DEFAULT NULL COMMENT '操作市Code',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人工导出字段';

-- ----------------------------
-- Table structure for t_export_record
-- ----------------------------
DROP TABLE IF EXISTS `t_export_record`;
CREATE TABLE `t_export_record` (
  `id` bigint(20) NOT NULL COMMENT '记录ID',
  `serial_number` varchar(20) DEFAULT NULL COMMENT '流水号： 年月日时分秒+3位数字序号',
  `data_count` int(11) DEFAULT NULL COMMENT '操作数据数量',
  `opt_province_code` varchar(20) DEFAULT NULL COMMENT '操作省code',
  `opt_city_code` varchar(20) DEFAULT NULL COMMENT '操作市code',
  `opt_city_name` varchar(50) DEFAULT NULL COMMENT '操作市（省-市）',
  `is_del` smallint(6) DEFAULT NULL COMMENT '是否删除： -1为删除；0为默认',
  `opt_user` varchar(50) DEFAULT NULL COMMENT '操作人',
  `export_time` datetime DEFAULT NULL COMMENT '导出时间',
  `import_time` datetime DEFAULT NULL COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人工导出记录';

-- ----------------------------
-- Table structure for t_export_record_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_export_record_detail`;
CREATE TABLE `t_export_record_detail` (
  `id` bigint(20) NOT NULL COMMENT '明细记录ID',
  `record_id` bigint(20) NOT NULL COMMENT '导出记录ID',
  `serial_number` varchar(20) DEFAULT NULL COMMENT '流水号： 年月日时分秒+3位数字序号',
  `student_name` varchar(20) DEFAULT NULL COMMENT '学员姓名',
  `id_no` varchar(20) DEFAULT NULL COMMENT '证件号码',
  `id_number` varchar(20) DEFAULT NULL,
  `id_type` varchar(20) DEFAULT NULL COMMENT '证件类型',
  `id_photo_type` varchar(20) DEFAULT NULL COMMENT '证件照类型：大图；小图',
  `driving_license_type` varchar(10) DEFAULT NULL COMMENT '驾照类型',
  `opt_type` smallint(6) DEFAULT '1' COMMENT '操作类型： 1为导出；2为导入',
  `file_type` smallint(6) DEFAULT NULL COMMENT '文件类型: 1为指纹；2为证件照；3为无纸化列表',
  `export_time` datetime DEFAULT NULL COMMENT '导出时间',
  `import_time` datetime DEFAULT NULL COMMENT '导入时间',
  PRIMARY KEY (`id`),
  KEY `FK_reference_12` (`record_id`),
  CONSTRAINT `FK_reference_12` FOREIGN KEY (`record_id`) REFERENCES `t_export_record` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='导出明细（导出进行审核）';

-- ----------------------------
-- Table structure for t_export_record_statistics
-- ----------------------------
DROP TABLE IF EXISTS `t_export_record_statistics`;
CREATE TABLE `t_export_record_statistics` (
  `id` bigint(20) NOT NULL COMMENT '统计记录ID',
  `record_id` bigint(20) NOT NULL COMMENT '操作记录ID',
  `student_count` int(11) DEFAULT NULL COMMENT '学员数量',
  `paperless_list_count` int(11) DEFAULT NULL COMMENT '无纸化列表数量',
  `fingerprint_count` int(11) DEFAULT NULL COMMENT '指纹数量',
  `old_driving_licence_count` int(11) DEFAULT NULL COMMENT '原驾驶证数量',
  `certificate_photos_count` int(11) DEFAULT NULL COMMENT '制证照数量',
  `sign_data_count` int(11) DEFAULT NULL COMMENT '签字数据数量',
  `opt_type` smallint(6) DEFAULT NULL COMMENT '操作类型： 1为导出；2为导入',
  `data_type` smallint(6) DEFAULT NULL COMMENT '数据类型： 1为成功数据；2为失败数据',
  PRIMARY KEY (`id`),
  KEY `FK_reference_11` (`record_id`),
  CONSTRAINT `FK_reference_11` FOREIGN KEY (`record_id`) REFERENCES `t_export_record` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='导出记录统计';

-- ----------------------------
-- Table structure for t_gov_common_task
-- ----------------------------
DROP TABLE IF EXISTS `t_gov_common_task`;
CREATE TABLE `t_gov_common_task` (
  `id` bigint(20) NOT NULL,
  `type_code` int(11) DEFAULT NULL,
  `province_code` varchar(255) DEFAULT NULL,
  `city_code` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `last_execute_time` datetime DEFAULT NULL,
  `last_execute_num` int(11) DEFAULT NULL,
  `last_error_message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_gov_common_task_history
-- ----------------------------
DROP TABLE IF EXISTS `t_gov_common_task_history`;
CREATE TABLE `t_gov_common_task_history` (
  `id` bigint(11) NOT NULL,
  `type_code` int(11) DEFAULT NULL,
  `province_code` varchar(255) DEFAULT NULL,
  `city_code` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `data` longtext,
  `num` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_gov_ex_config
-- ----------------------------
DROP TABLE IF EXISTS `t_gov_ex_config`;
CREATE TABLE `t_gov_ex_config` (
  `id` bigint(20) NOT NULL,
  `province_code` varchar(20) DEFAULT NULL,
  `province_name` varchar(20) DEFAULT NULL,
  `city_code` varchar(20) DEFAULT NULL,
  `city_name` varchar(20) DEFAULT NULL,
  `config_type` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_gov_ex_config_item
-- ----------------------------
DROP TABLE IF EXISTS `t_gov_ex_config_item`;
CREATE TABLE `t_gov_ex_config_item` (
  `id` bigint(20) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_type` int(11) DEFAULT NULL,
  `item_type` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_value` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_gov_ex_register_cn_execute
-- ----------------------------
DROP TABLE IF EXISTS `t_gov_ex_register_cn_execute`;
CREATE TABLE `t_gov_ex_register_cn_execute` (
  `id` bigint(20) NOT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `student_idnum` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '类型，上报',
  `times` int(11) DEFAULT NULL,
  `last_execute_time` bigint(20) DEFAULT NULL,
  `last_error` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_gov_ex_register_task
-- ----------------------------
DROP TABLE IF EXISTS `t_gov_ex_register_task`;
CREATE TABLE `t_gov_ex_register_task` (
  `id` bigint(20) NOT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `student_idnum` varchar(255) DEFAULT NULL,
  `student_id_number` varchar(255) DEFAULT NULL,
  `school_id` bigint(11) DEFAULT NULL,
  `school_code` varchar(255) DEFAULT NULL,
  `province_code` varchar(255) DEFAULT NULL,
  `city_code` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '处理类型',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `inner_status` int(11) unsigned zerofill DEFAULT '00000000000',
  `interview_status` int(11) unsigned zerofill DEFAULT '00000000000',
  `create_time` datetime DEFAULT NULL,
  `submit_time` datetime DEFAULT NULL COMMENT '提交时间',
  `submitted_time` datetime DEFAULT NULL,
  `last_message` varchar(255) DEFAULT NULL,
  `back_time` datetime DEFAULT NULL COMMENT '获取结果时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_gov_ex_sync_task
-- ----------------------------
DROP TABLE IF EXISTS `t_gov_ex_sync_task`;
CREATE TABLE `t_gov_ex_sync_task` (
  `id` bigint(20) NOT NULL,
  `ticket_id` bigint(20) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `task_type` int(255) DEFAULT NULL COMMENT '10 约考 20 成绩',
  `time_line` datetime DEFAULT NULL COMMENT '查询的时间点',
  `status` int(11) DEFAULT NULL,
  `last_start_time` datetime DEFAULT NULL COMMENT '上次开始执行时间',
  `last_end_time` datetime DEFAULT NULL COMMENT '上次结束执行时间',
  `last_cost_time` int(11) DEFAULT NULL COMMENT '上次花费时间',
  `last_num` int(11) DEFAULT NULL COMMENT '上次处理数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_gov_school_ticket
-- ----------------------------
DROP TABLE IF EXISTS `t_gov_school_ticket`;
CREATE TABLE `t_gov_school_ticket` (
  `id` bigint(20) NOT NULL,
  `school_id` bigint(20) DEFAULT NULL,
  `school_code` varchar(255) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `cookies` text,
  `web_code` varchar(255) DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `refresh_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_gov_web_code
-- ----------------------------
DROP TABLE IF EXISTS `t_gov_web_code`;
CREATE TABLE `t_gov_web_code` (
  `id` bigint(20) NOT NULL,
  `xz_code` varchar(255) DEFAULT NULL,
  `web_code` varchar(255) DEFAULT NULL,
  `xz_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_message_config
-- ----------------------------
DROP TABLE IF EXISTS `t_message_config`;
CREATE TABLE `t_message_config` (
  `id` bigint(20) NOT NULL COMMENT '配置项ID',
  `mc_key` varchar(20) DEFAULT NULL COMMENT '配置项',
  `mc_value` varchar(50) DEFAULT NULL COMMENT '配置值',
  `is_del` smallint(6) DEFAULT NULL COMMENT '是否删除： -1为删除；0为默认',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息服务配置';

-- ----------------------------
-- Table structure for t_message_record
-- ----------------------------
DROP TABLE IF EXISTS `t_message_record`;
CREATE TABLE `t_message_record` (
  `id` bigint(20) NOT NULL COMMENT '消息记录ID',
  `mt_id` bigint(20) DEFAULT NULL COMMENT '使用的模板ID',
  `mt_code` varchar(50) DEFAULT NULL COMMENT '模板编号',
  `mr_title` varchar(100) DEFAULT NULL COMMENT '模板标题：100字符内',
  `push_type` smallint(6) DEFAULT NULL COMMENT '发送方式：\r\n            1为APP推送\r\n            2为微信公众号推送\r\n            3为微信小程序推送\r\n            4为短信推送',
  `push_status` smallint(6) DEFAULT NULL COMMENT '发送状态：\r\n            0为未发送\r\n            1为已发送\r\n            2为暂停发送',
  `mr_push_count` smallint(6) DEFAULT NULL COMMENT '发送次数',
  `mr_recipient_phone` varchar(20) DEFAULT NULL COMMENT '接收人电话',
  `mr_recipient_id_no` varchar(20) DEFAULT NULL COMMENT '接收人身份证号',
  `mr_recipient` varchar(100) DEFAULT NULL COMMENT '接收人（学员姓名）',
  `mr_ds_id` bigint(20) DEFAULT NULL COMMENT '发送驾校ID',
  `mr_ds_code` varchar(50) DEFAULT NULL COMMENT '发送驾校编号',
  `mr_ds_name` varchar(100) DEFAULT NULL COMMENT '发送驾校名称',
  `mr_ds_dep_code` varchar(255) DEFAULT '' COMMENT '组织的depcode',
  `mr_sender_name` varchar(100) DEFAULT NULL COMMENT '操作人',
  `mr_msg_params` varchar(512) DEFAULT NULL COMMENT '消息参数： JSON格式的字符串',
  `mr_content` varchar(1000) DEFAULT NULL COMMENT '消息内容，1000字符内',
  `is_del` smallint(6) DEFAULT NULL COMMENT '是否删除：-1为删除；0为默认',
  `submit_time` datetime DEFAULT NULL COMMENT '提交时间',
  `push_time` datetime DEFAULT NULL COMMENT '发送时间',
  `push_result` varchar(256) DEFAULT NULL COMMENT '推送结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息记录';

-- ----------------------------
-- Table structure for t_message_template
-- ----------------------------
DROP TABLE IF EXISTS `t_message_template`;
CREATE TABLE `t_message_template` (
  `id` bigint(20) NOT NULL COMMENT '消息模板ID',
  `mt_code` varchar(50) DEFAULT NULL COMMENT '模板编号： 字母+数字，50字符内',
  `mt_title` varchar(100) DEFAULT NULL COMMENT '模板标题：100字符内',
  `is_del` smallint(6) DEFAULT NULL COMMENT '是否删除： -1为删除；0为默认',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息模板';

-- ----------------------------
-- Table structure for t_mr_content_app
-- ----------------------------
DROP TABLE IF EXISTS `t_mr_content_app`;
CREATE TABLE `t_mr_content_app` (
  `id` bigint(20) NOT NULL COMMENT '消息内容ID',
  `mr_id` bigint(20) DEFAULT NULL COMMENT '消息id',
  `mr_biz_data` varchar(512) DEFAULT NULL COMMENT '业务参数： 根据APP业务需要，推送消息时提供给APP使用的数据；数据为JSON格式的字符串',
  PRIMARY KEY (`id`),
  KEY `FK_reference_7` (`mr_id`),
  CONSTRAINT `FK_reference_7` FOREIGN KEY (`mr_id`) REFERENCES `t_message_record` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息内容——app内容';

-- ----------------------------
-- Table structure for t_mr_content_sms
-- ----------------------------
DROP TABLE IF EXISTS `t_mr_content_sms`;
CREATE TABLE `t_mr_content_sms` (
  `id` bigint(20) NOT NULL COMMENT '消息内容ID',
  `mr_id` bigint(20) DEFAULT NULL COMMENT '消息ID',
  `mr_sms_template_id` varchar(50) DEFAULT NULL COMMENT '短信模板ID',
  PRIMARY KEY (`id`),
  KEY `FK_reference_10` (`mr_id`),
  CONSTRAINT `FK_reference_10` FOREIGN KEY (`mr_id`) REFERENCES `t_message_record` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息内容——短信内容';

-- ----------------------------
-- Table structure for t_mr_content_wx_applet
-- ----------------------------
DROP TABLE IF EXISTS `t_mr_content_wx_applet`;
CREATE TABLE `t_mr_content_wx_applet` (
  `id` bigint(20) NOT NULL COMMENT '消息内容ID',
  `mr_id` bigint(20) DEFAULT NULL COMMENT '消息id',
  `mr_wx_template_id` varchar(100) DEFAULT NULL COMMENT '微信模板id',
  `mr_url` varchar(256) DEFAULT NULL COMMENT '跳转链接',
  `mr_form_id` varchar(50) DEFAULT NULL COMMENT '表单ID： 表单提交场景下，为 submit 事件带上的 formId；支付场景下，为本次支付的 prepay_id',
  PRIMARY KEY (`id`),
  KEY `FK_reference_9` (`mr_id`),
  CONSTRAINT `FK_reference_9` FOREIGN KEY (`mr_id`) REFERENCES `t_message_record` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息内容——微信小程序内容';

-- ----------------------------
-- Table structure for t_mr_content_wx_public
-- ----------------------------
DROP TABLE IF EXISTS `t_mr_content_wx_public`;
CREATE TABLE `t_mr_content_wx_public` (
  `id` bigint(20) NOT NULL COMMENT '消息内容ID',
  `mr_id` bigint(20) DEFAULT NULL COMMENT '消息ID',
  `mr_wx_template_id` varchar(100) DEFAULT NULL COMMENT '微信模板ID',
  `mr_url` varchar(256) DEFAULT NULL COMMENT '跳转链接',
  PRIMARY KEY (`id`),
  KEY `FK_reference_8` (`mr_id`),
  CONSTRAINT `FK_reference_8` FOREIGN KEY (`mr_id`) REFERENCES `t_message_record` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息内容——微信公众号内容';

-- ----------------------------
-- Table structure for t_mr_wait_push
-- ----------------------------
DROP TABLE IF EXISTS `t_mr_wait_push`;
CREATE TABLE `t_mr_wait_push` (
  `id` bigint(20) NOT NULL COMMENT '同消息记录的ID',
  `mr_ds_id` bigint(20) DEFAULT NULL COMMENT '发送驾校ID',
  `mr_ds_code` varchar(50) DEFAULT NULL COMMENT '发送驾校编号',
  `mr_ds_name` varchar(100) DEFAULT NULL COMMENT '发送驾校名称',
  `mr_ds_dep_code` varchar(255) DEFAULT '' COMMENT '组织的depcode',
  `mr_sender_name` varchar(100) DEFAULT NULL COMMENT '操作人',
  `mr_recipient_phone` varchar(20) DEFAULT NULL COMMENT '接收人电话',
  `mr_recipient_id_no` varchar(20) DEFAULT NULL COMMENT '接收人身份证号',
  `mr_recipient` varchar(100) DEFAULT NULL COMMENT '接收人（学员姓名）',
  `mr_msg_params` varchar(512) DEFAULT NULL COMMENT '消息参数： JSON格式的字符串',
  `mr_content` varchar(1000) DEFAULT NULL COMMENT '消息内容，1000字符内',
  `mr_push_count` smallint(6) DEFAULT NULL COMMENT '发送次数',
  `push_type` smallint(6) DEFAULT NULL COMMENT '发送方式：\r\n            1为APP推送\r\n            2为微信公众号推送\r\n            3为微信小程序推送\r\n            4为短信推送',
  `push_status` smallint(6) DEFAULT NULL COMMENT '发送状态：\r\n            0为未发送\r\n            1为已发送\r\n            2为暂停发送',
  `submit_time` datetime DEFAULT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_reference_6` FOREIGN KEY (`id`) REFERENCES `t_message_record` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='待发消息池';

-- ----------------------------
-- Table structure for t_mt_content_app
-- ----------------------------
DROP TABLE IF EXISTS `t_mt_content_app`;
CREATE TABLE `t_mt_content_app` (
  `id` bigint(20) NOT NULL COMMENT '模板内容ID',
  `mt_id` bigint(20) DEFAULT NULL COMMENT '模板ID',
  `mt_content` varchar(1000) DEFAULT NULL COMMENT '模板内容',
  PRIMARY KEY (`id`),
  KEY `FK_reference_2` (`mt_id`),
  CONSTRAINT `FK_reference_2` FOREIGN KEY (`mt_id`) REFERENCES `t_message_template` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息模板——app模板内容';

-- ----------------------------
-- Table structure for t_mt_content_sms
-- ----------------------------
DROP TABLE IF EXISTS `t_mt_content_sms`;
CREATE TABLE `t_mt_content_sms` (
  `id` bigint(20) NOT NULL COMMENT '模板内容ID',
  `mt_id` bigint(20) DEFAULT NULL COMMENT '模板ID',
  `mt_sms_template_id` varchar(50) DEFAULT NULL COMMENT '短信模板ID',
  `mt_content` varchar(512) DEFAULT NULL COMMENT '模板内容',
  PRIMARY KEY (`id`),
  KEY `FK_reference_5` (`mt_id`),
  CONSTRAINT `FK_reference_5` FOREIGN KEY (`mt_id`) REFERENCES `t_message_template` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息模板——短信模板内容';

-- ----------------------------
-- Table structure for t_mt_content_wx_applet
-- ----------------------------
DROP TABLE IF EXISTS `t_mt_content_wx_applet`;
CREATE TABLE `t_mt_content_wx_applet` (
  `id` bigint(20) NOT NULL COMMENT '模板内容ID',
  `mt_id` bigint(20) DEFAULT NULL COMMENT '模板ID',
  `mt_wx_template_id` varchar(100) DEFAULT NULL COMMENT '微信模板ID',
  `mt_url` varchar(256) DEFAULT NULL COMMENT '跳转链接',
  `mt_content` varchar(1000) DEFAULT NULL COMMENT '模板内容，供页面预览消息用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息模板——微信小程序模板内容';

-- ----------------------------
-- Table structure for t_mt_content_wx_public
-- ----------------------------
DROP TABLE IF EXISTS `t_mt_content_wx_public`;
CREATE TABLE `t_mt_content_wx_public` (
  `id` bigint(20) NOT NULL COMMENT '模板内容ID',
  `mt_id` bigint(20) DEFAULT NULL COMMENT '模板ID',
  `mt_wx_template_id` varchar(100) DEFAULT NULL COMMENT '微信模板ID',
  `mt_url` varchar(256) DEFAULT NULL COMMENT '跳转链接',
  `mt_content` varchar(1000) DEFAULT NULL COMMENT '模板内容，供页面预览消息用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息模板——微信公众号模板内容';

-- ----------------------------
-- Table structure for t_mt_driver_school
-- ----------------------------
DROP TABLE IF EXISTS `t_mt_driver_school`;
CREATE TABLE `t_mt_driver_school` (
  `id` bigint(20) NOT NULL COMMENT '目标适用驾校ID',
  `mt_id` bigint(20) DEFAULT NULL COMMENT '模板ID',
  `ds_id` bigint(20) DEFAULT NULL COMMENT '驾校ID',
  `ds_code` varchar(50) DEFAULT NULL COMMENT '驾校编号',
  `ds_name` varchar(100) DEFAULT NULL COMMENT '驾校名称',
  `ds_dep_code` varchar(255) DEFAULT '' COMMENT '组织的depcode',
  `city_code` varchar(50) DEFAULT '' COMMENT '城市编码',
  PRIMARY KEY (`id`),
  KEY `FK_reference_1` (`mt_id`),
  CONSTRAINT `FK_reference_1` FOREIGN KEY (`mt_id`) REFERENCES `t_message_template` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息模板适用驾校';

-- ----------------------------
-- Table structure for t_mt_param
-- ----------------------------
DROP TABLE IF EXISTS `t_mt_param`;
CREATE TABLE `t_mt_param` (
  `id` bigint(20) NOT NULL COMMENT '参数项ID',
  `mtp_item` varchar(50) DEFAULT NULL COMMENT '参数项',
  `mtp_desc` varchar(50) DEFAULT NULL COMMENT '参数项描述',
  `is_del` smallint(6) DEFAULT NULL COMMENT '是否删除： -1为删除；0为默认',
  `sort_no` smallint(11) DEFAULT '0' COMMENT '序号',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息模板参数项';

-- ----------------------------
-- Table structure for t_mt_pt_param
-- ----------------------------
DROP TABLE IF EXISTS `t_mt_pt_param`;
CREATE TABLE `t_mt_pt_param` (
  `id` bigint(20) NOT NULL COMMENT '推送参数ID',
  `mt_id` bigint(20) DEFAULT NULL COMMENT '模板ID',
  `pt_id` bigint(20) DEFAULT NULL COMMENT '推送方式ID',
  `mtp_id` bigint(20) NOT NULL COMMENT '参数项ID',
  `mtp_item` varchar(50) DEFAULT NULL COMMENT '参数项',
  `mtp_desc` varchar(50) DEFAULT NULL COMMENT '参数项描述',
  PRIMARY KEY (`id`),
  KEY `FK_reference_17` (`pt_id`),
  CONSTRAINT `FK_reference_17` FOREIGN KEY (`pt_id`) REFERENCES `t_mt_push_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息模板推送方式需要的参数';

-- ----------------------------
-- Table structure for t_mt_push_type
-- ----------------------------
DROP TABLE IF EXISTS `t_mt_push_type`;
CREATE TABLE `t_mt_push_type` (
  `id` bigint(20) NOT NULL COMMENT '目标适用驾校ID',
  `mt_id` bigint(20) DEFAULT NULL COMMENT '模板ID',
  `push_type` smallint(6) DEFAULT NULL COMMENT '推送方式：\r\n            1为APP推送\r\n            2为微信公众号推送\r\n            3为微信小程序推送\r\n            4为短信推送',
  PRIMARY KEY (`id`),
  KEY `FK_reference_16` (`mt_id`),
  CONSTRAINT `FK_reference_16` FOREIGN KEY (`mt_id`) REFERENCES `t_message_template` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息模板推送方式';

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `id` bigint(20) NOT NULL,
  `notice_type` smallint(6) DEFAULT NULL COMMENT '公告类型：1为通知公告；2为消息',
  `n_title` varchar(100) DEFAULT NULL COMMENT '公告标题, 100字符内',
  `n_content` varchar(5000) DEFAULT NULL COMMENT '公告内容：5000字符内',
  `tips_start_time` datetime DEFAULT NULL,
  `tips_end_time` datetime DEFAULT NULL,
  `is_del` smallint(6) DEFAULT NULL COMMENT '-1为删除；0为默认',
  `create_user` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_notice_dispense_org
-- ----------------------------
DROP TABLE IF EXISTS `t_notice_dispense_org`;
CREATE TABLE `t_notice_dispense_org` (
  `id` bigint(20) NOT NULL,
  `notice_id` bigint(20) DEFAULT NULL,
  `org_type` smallint(6) DEFAULT NULL COMMENT '分发机构类型：1为驾校；2为车管所',
  `read_status` smallint(6) DEFAULT NULL COMMENT '阅读状态：0为未读；1为已读',
  `org_id` bigint(20) DEFAULT NULL,
  `org_code` varchar(50) DEFAULT NULL,
  `org_name` varchar(100) DEFAULT NULL,
  `org_dep_code` varchar(255) DEFAULT '' COMMENT '组织的depcode',
  `city_code` varchar(50) DEFAULT '' COMMENT '城市编码',
  PRIMARY KEY (`id`),
  KEY `FK_reference_13` (`notice_id`),
  CONSTRAINT `FK_reference_13` FOREIGN KEY (`notice_id`) REFERENCES `t_notice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_region
-- ----------------------------
DROP TABLE IF EXISTS `t_region`;
CREATE TABLE `t_region` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `code` varchar(50) DEFAULT NULL COMMENT '区域编码',
  `province_id` int(20) DEFAULT NULL COMMENT '省id',
  `city_id` int(20) DEFAULT NULL COMMENT '市id',
  `name` varchar(50) DEFAULT NULL COMMENT '区域名称',
  `is_del` int(11) DEFAULT '0' COMMENT '是否删除  （0：否    1：是）',
  `created` datetime DEFAULT NULL COMMENT '开通时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='区域开通平台表';

-- ----------------------------
-- Table structure for t_region_exam
-- ----------------------------
DROP TABLE IF EXISTS `t_region_exam`;
CREATE TABLE `t_region_exam` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `province_id` int(20) DEFAULT NULL COMMENT '省id',
  `city_id` int(20) DEFAULT NULL COMMENT '城市id',
  `subject` int(2) DEFAULT NULL COMMENT '科目（1：科目一,2：科目二,3：科目三,4：科目四）',
  `address` varchar(255) DEFAULT NULL COMMENT '考试地点',
  `updated` datetime DEFAULT NULL COMMENT '更新时间',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `is_del` int(1) DEFAULT NULL COMMENT '删除（0：不删除 ，1删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='考试地点表';

-- ----------------------------
-- Table structure for t_service_exam_student
-- ----------------------------
DROP TABLE IF EXISTS `t_service_exam_student`;
CREATE TABLE `t_service_exam_student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `student_id` bigint(20) DEFAULT NULL COMMENT '学员id',
  `service_exam_id` bigint(20) DEFAULT NULL COMMENT '学员考试预约ID(来自t_service_exam  id)',
  `status` int(2) DEFAULT '1' COMMENT '业务状态  （1：待提交122  2：取消预约  3：已提交122）',
  `operator_id` bigint(20) DEFAULT NULL COMMENT '操作员用户表id',
  `send_status` int(2) DEFAULT NULL COMMENT '消息推送状态 （1：未发送   2：已发送）',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `submit_status` int(2) DEFAULT NULL COMMENT '提交122状态 ( 1:已成功预约   2：预约失败)',
  `submit_time` datetime DEFAULT NULL COMMENT '提交122时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='学员预约考试关联表';

-- ----------------------------
-- Table structure for t_service_transmission
-- ----------------------------
DROP TABLE IF EXISTS `t_service_transmission`;
CREATE TABLE `t_service_transmission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `student_id` bigint(20) DEFAULT NULL,
  `car` varchar(10) DEFAULT NULL,
  `idnum` varchar(30) DEFAULT NULL,
  `sn` varchar(50) DEFAULT NULL,
  `trandate` datetime DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1    无纸化\r\n2     指纹\r\n4     培训记录\r\n5     老驾照\r\n6     制证照\r\n7     驾驶申请表\r\n3001    签字数据包  （注册申请表  驾照申请表（初次+增驾））\r\n8     学时证明\r\n9     面签表\r\n10   身份证头像\r\n11   体检表\r\n12   身份证正反面\r\n   13		现场照\r\n   14		暂住证',
  `failedcode` varchar(255) DEFAULT NULL,
  `failedcontent` varchar(255) DEFAULT NULL,
  `file_id` bigint(20) DEFAULT NULL COMMENT '文件ID',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_transmission_IDNUM` (`idnum`,`car`) USING BTREE,
  KEY `IDX_transmission_created` (`created`) USING BTREE,
  KEY `IDX_transmission_sn` (`sn`) USING BTREE,
  KEY `IDX_transmission_studentid` (`student_id`) USING BTREE,
  KEY `IDX_transmission_trandate` (`trandate`) USING BTREE,
  KEY `IDX_transmission_failedcode` (`failedcode`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `sf_type` int(2) DEFAULT NULL COMMENT '证件类型',
  `birthday` varchar(255) DEFAULT NULL COMMENT '出生日期',
  `certificates_number` varchar(255) DEFAULT NULL COMMENT '证件号码',
  `country` varchar(255) DEFAULT NULL COMMENT '国籍',
  `effected_Date` varchar(255) DEFAULT NULL COMMENT '身份证有效期开始时间',
  `expired_Date` varchar(255) DEFAULT NULL COMMENT '身份证有效期过期时间',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别  ',
  `study_type` int(2) DEFAULT NULL COMMENT '学习类别（初次申领：0，增驾：1）',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `car_id` bigint(20) DEFAULT NULL COMMENT '准驾车型(申请车型ID)(来自字典表)',
  `stay_addree_number` varchar(255) DEFAULT NULL COMMENT '暂住证编号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `address_detailed` varchar(255) DEFAULT NULL COMMENT '住所详细地址',
  `registered_source` varchar(255) DEFAULT NULL COMMENT '报名来源',
  `registered_residence` varchar(255) DEFAULT NULL COMMENT '登记住所详细地址',
  `student_source` int(2) DEFAULT NULL COMMENT '学员来源(1：本地   2：外地）',
  `registered_tuition` decimal(10,2) DEFAULT NULL COMMENT '学费',
  `student_number` varchar(255) DEFAULT NULL COMMENT '学员编号UUID',
  `registered_time` datetime DEFAULT NULL COMMENT '报名日期',
  `dep_code` varchar(255) DEFAULT NULL COMMENT '组织的depcode',
  `drivers_id` bigint(20) DEFAULT NULL COMMENT '驾校ID',
  `referral_code` varchar(100) DEFAULT NULL COMMENT '推荐码',
  `reason` varchar(255) DEFAULT NULL COMMENT '备注',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `updated` datetime DEFAULT NULL COMMENT '最后修改时间',
  `operator_id` bigint(20) DEFAULT NULL COMMENT '学员录入操作人ID',
  `transfer_status` int(2) DEFAULT NULL COMMENT '传输状态',
  `interview_status` int(2) DEFAULT NULL COMMENT '面签状态（0：审核不用过；1：审核通过）',
  `status` int(2) DEFAULT NULL COMMENT '学员状态\r\n0：新报名（已报名并未有科目一考试记录的）\r\n1：科目一在培中\r\n   11:科目一预约考试中\r\n2：科目二在培中\r\n   21：科目二预约考试中\r\n3：科目三在培中\r\n  31：科目三预约考试中\r\n4：科目四在培中\r\n   41：科目四约考试中\r\n  注：（科目一、二、三、四过程中都通称  在培）\r\n5：已结业（科目四考试通过的学员）',
  `net_status` int(2) DEFAULT NULL COMMENT '互联网状态 \r\n0:未提交（驾校录入学员资料未提交至车管所）；\r\n1006:待提交（分校提交学员资料至总校，但未提交至车管所）；\r\n112:已保存、总校已上传（总校已向车管所提交学员资料）；\r\n2:上传成功（总校提交资料成功上传至车管所）；\r\n3:上传失败（总校提交资料上传至车管所失败）',
  `inner_status` int(2) DEFAULT NULL COMMENT '内网业务状态\r\n4:办结（车管所审核学员资料成功，办结）；\r\n5:退办（车管所审核学员中资料失败，并退回）；\r\n6约考审核成功；\r\n7约考审核失败；\r\n8复核成功；\r\n9复核失败；\r\n10制证成功；\r\n11制证失败；\r\n12归档成功；\r\n13归档失败',
  `is_binding_wechat` int(2) DEFAULT NULL COMMENT '是否绑定微信号  （0：是  1：否）',
  `wechat_openid` varchar(50) DEFAULT NULL COMMENT '微信openid',
  `is_del` int(2) DEFAULT '0' COMMENT '是否删除  （-1：否    0：是）',
  `my_state` int(2) DEFAULT NULL COMMENT '提交给状态（0 总部  1 未提交）',
  `submit_time` datetime DEFAULT NULL COMMENT '提交时间',
  `registeredAreaId` varchar(100) DEFAULT NULL COMMENT '所属辖区Id',
  `registerresidenceId` varchar(255) DEFAULT NULL COMMENT '登记所辖区id',
  `residencedivisionId` varchar(255) DEFAULT NULL COMMENT '住所行政区划',
  `areaname` varchar(255) DEFAULT NULL COMMENT '驾校所属区名字',
  `djslistname` varchar(255) DEFAULT NULL COMMENT '登记所所在区域名字',
  `divisionname` varchar(255) DEFAULT NULL COMMENT '住所所在区域名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=520561677746307074 DEFAULT CHARSET=utf8 COMMENT='学员信息表';

-- ----------------------------
-- Table structure for t_student_accept
-- ----------------------------
DROP TABLE IF EXISTS `t_student_accept`;
CREATE TABLE `t_student_accept` (
  `id` bigint(20) NOT NULL,
  `student_id` bigint(20) DEFAULT NULL COMMENT '学员id',
  `division_id` bigint(20) DEFAULT NULL COMMENT '受理分所ID',
  `inner_status` int(2) DEFAULT NULL COMMENT '内网业务状态\r\n4:办结（车管所审核学员资料成功，办结）；\r\n5:退办（车管所审核学员中资料失败，并退回）；\r\n6约考审核成功；\r\n7约考审核失败；\r\n8复核成功；\r\n9复核失败；\r\n10制证成功；\r\n11制证失败；\r\n12归档成功；\r\n13归档失败',
  `reason` varchar(255) DEFAULT NULL COMMENT '原因',
  `lsh` varchar(50) DEFAULT NULL COMMENT '内网流水号',
  `operator_id` bigint(20) DEFAULT NULL COMMENT '操作员用户表id',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `updated` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `student_id` (`student_id`) USING BTREE,
  KEY `division_id` (`division_id`) USING BTREE,
  CONSTRAINT `t_student_accept_ibfk_2` FOREIGN KEY (`division_id`) REFERENCES `t_division` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='学员受理信息表';

-- ----------------------------
-- Table structure for t_student_entered_record
-- ----------------------------
DROP TABLE IF EXISTS `t_student_entered_record`;
CREATE TABLE `t_student_entered_record` (
  `id` int(11) NOT NULL,
  `operator_id` int(11) DEFAULT NULL COMMENT '提交122操作人ID',
  `student_id` int(11) DEFAULT NULL COMMENT '学员ID',
  `submit_count` int(11) DEFAULT NULL COMMENT '提交122次数',
  `submit_status` int(11) DEFAULT NULL COMMENT '提交122状态（0 为正常  1为失败）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `is_del` int(11) DEFAULT NULL COMMENT '是否删除  （0：否    1：是）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_student_exam
-- ----------------------------
DROP TABLE IF EXISTS `t_student_exam`;
CREATE TABLE `t_student_exam` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '学员名字',
  `exam_subject` int(20) DEFAULT NULL COMMENT '考试科目',
  `exam_car_model` varchar(20) DEFAULT NULL COMMENT '考试车型',
  `exam_time` datetime DEFAULT NULL COMMENT '考试日期',
  `exam_address` varchar(255) DEFAULT NULL COMMENT '考试地点code',
  `exam_address_code` varchar(255) DEFAULT NULL COMMENT '考试地点 code',
  `exam_ready_time` datetime DEFAULT NULL COMMENT '约考时间',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `student_id` bigint(20) DEFAULT NULL COMMENT '学员id',
  `dep_code` varchar(255) DEFAULT NULL,
  `driver_id` bigint(20) DEFAULT NULL COMMENT '驾校id',
  `type` int(11) DEFAULT NULL COMMENT '(0 表示 122提交的    1 表示  本身平台约考记录 )',
  `updated` datetime DEFAULT NULL COMMENT '修改时间',
  `create_user` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_user` bigint(20) DEFAULT NULL COMMENT '修改人',
  `degree` bigint(11) DEFAULT '0' COMMENT '约考次数',
  `vanish` int(11) DEFAULT '0' COMMENT '不能编辑和取消预约的状态(0就是可以修改  -1就是不能修改)',
  `message_status` int(11) DEFAULT '1' COMMENT '消息状态-1失败  0成功  1 未发送',
  `state` int(11) DEFAULT NULL COMMENT '约考状态 (-1约考取消  0约考成功)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='学员预约考试';

-- ----------------------------
-- Table structure for t_student_exam_history
-- ----------------------------
DROP TABLE IF EXISTS `t_student_exam_history`;
CREATE TABLE `t_student_exam_history` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '学员名字',
  `exam_subject` int(20) DEFAULT NULL COMMENT '考试科目',
  `exam_car_model` varchar(20) DEFAULT NULL COMMENT '考试车型',
  `exam_time` datetime DEFAULT NULL COMMENT '考试日期',
  `exam_address` varchar(255) DEFAULT NULL COMMENT '考试地点',
  `exam_address_code` varchar(255) DEFAULT NULL COMMENT '考试地点 code',
  `exam_ready_time` datetime DEFAULT NULL COMMENT '约考时间',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `student_id` bigint(20) DEFAULT NULL COMMENT '学员id',
  `dep_code` varchar(255) DEFAULT NULL,
  `driver_id` bigint(20) DEFAULT NULL COMMENT '驾校id',
  `type` int(20) DEFAULT '0' COMMENT '(0 表示 122提交的    1 表示  本身平台约考记录 )',
  `updated` datetime DEFAULT NULL COMMENT '修改时间',
  `create_user` bigint(11) DEFAULT NULL COMMENT '创建人ID',
  `update_user` bigint(20) DEFAULT NULL COMMENT '修改人',
  `degree` int(11) DEFAULT NULL COMMENT '约考次数',
  `message_status` int(11) DEFAULT NULL COMMENT '消息状态-1失败  0成功  1 未发送',
  `state` int(11) DEFAULT NULL COMMENT '约考状态 (-1约考取消  0约考成功  )',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='学员预约考试历史表';

-- ----------------------------
-- Table structure for t_student_export
-- ----------------------------
DROP TABLE IF EXISTS `t_student_export`;
CREATE TABLE `t_student_export` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `sn` varchar(50) DEFAULT NULL COMMENT '流水号',
  `total` int(11) DEFAULT NULL COMMENT '数量',
  `created` datetime DEFAULT NULL COMMENT '导出时间',
  `updated` datetime DEFAULT NULL COMMENT '导入时间',
  `execdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='导出导入记录表';

-- ----------------------------
-- Table structure for t_student_export_log
-- ----------------------------
DROP TABLE IF EXISTS `t_student_export_log`;
CREATE TABLE `t_student_export_log` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `export_id` bigint(20) DEFAULT NULL COMMENT '导出导入记录ID',
  `sn` varchar(50) DEFAULT NULL COMMENT '流水号',
  `cartype` varchar(10) DEFAULT NULL COMMENT '车型',
  `idnum` varchar(50) DEFAULT NULL COMMENT '身份证',
  `type` int(11) DEFAULT NULL COMMENT '文件类别\r\n1：身份证头像\r\n3：面签表\r\n6：初学驾驶申请表\r\n602：增驾驾驶申请表\r\n8：指纹图\r\n802：指纹特征\r\n9：老驾照\r\n15：制证照\r\n11：培训记录\r\n19：学时证明\r\n5：暂住证\r\n403：身份证正反面\r\n701：体检表',
  `file_id` bigint(20) DEFAULT NULL COMMENT '文件ID',
  `status` int(11) DEFAULT NULL COMMENT '状态 （1：导出  2：导入）',
  `created` datetime DEFAULT NULL COMMENT '导出时间',
  `updated` datetime DEFAULT NULL COMMENT '导入时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_exportlog_sn` (`sn`) USING BTREE,
  KEY `IDX_exportlog_idnum` (`idnum`) USING BTREE,
  KEY `IDX_exportlog_created` (`created`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='导出导入内网详细表';

-- ----------------------------
-- Table structure for t_student_field
-- ----------------------------
DROP TABLE IF EXISTS `t_student_field`;
CREATE TABLE `t_student_field` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '学员名字',
  `exam_subject` int(20) DEFAULT NULL COMMENT '考试科目',
  `exam_car_model` varchar(20) DEFAULT NULL COMMENT '考试车型',
  `exam_time` datetime DEFAULT NULL COMMENT '考试日期',
  `exam_address` varchar(255) DEFAULT NULL COMMENT '考试地点',
  `exam_field` varchar(100) DEFAULT NULL COMMENT '成绩',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `student_id` bigint(20) DEFAULT NULL COMMENT '学员id',
  `dep_code` varchar(255) DEFAULT NULL,
  `driver_id` bigint(20) DEFAULT NULL COMMENT '驾校id',
  `degree` bigint(20) DEFAULT NULL COMMENT '次数',
  `last_time_exam` datetime DEFAULT NULL COMMENT '上一次考试时间',
  `field_status` int(20) DEFAULT NULL COMMENT '考试成绩 (0)合格  (-1)不合格 (1)缺考',
  `message_status` int(11) DEFAULT NULL COMMENT '消息状态-1失败  0成功  1 未发送',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='学员考试成绩';

-- ----------------------------
-- Table structure for t_student_field_history
-- ----------------------------
DROP TABLE IF EXISTS `t_student_field_history`;
CREATE TABLE `t_student_field_history` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '学员名字',
  `exam_subject` int(20) DEFAULT NULL COMMENT '考试科目',
  `exam_car_model` varchar(20) DEFAULT NULL COMMENT '考试车型',
  `exam_time` datetime DEFAULT NULL COMMENT '考试日期',
  `exam_address` varchar(255) DEFAULT NULL COMMENT '考试地点',
  `exam_field` varchar(255) DEFAULT NULL COMMENT '考试成绩',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `student_id` bigint(20) DEFAULT NULL COMMENT '学员id',
  `dep_code` varchar(255) DEFAULT NULL,
  `driver_id` bigint(20) DEFAULT NULL COMMENT '驾校id',
  `degree` int(11) DEFAULT NULL COMMENT '次数',
  `field_status` int(20) DEFAULT NULL COMMENT '考试成绩 (0)合格  (-1)不合格 (1)缺考',
  `message_status` int(11) DEFAULT NULL COMMENT '消息状态-1失败  0成功  1 未发送',
  `last_time_exam` datetime DEFAULT NULL COMMENT '上次考试时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='学员考试成绩历史表';

-- ----------------------------
-- Table structure for t_student_info
-- ----------------------------
DROP TABLE IF EXISTS `t_student_info`;
CREATE TABLE `t_student_info` (
  `id` bigint(20) NOT NULL COMMENT '学员id',
  `name` varchar(50) DEFAULT NULL COMMENT '学员姓名',
  `student_number` varchar(255) DEFAULT NULL COMMENT '学员编号',
  `sf_type` varchar(11) DEFAULT NULL COMMENT '证件类型',
  `id_number` varchar(255) DEFAULT NULL COMMENT '证件号码',
  `id_expired_date` varchar(50) DEFAULT NULL COMMENT '身份证有效期过期时间',
  `birthday` varchar(255) DEFAULT NULL COMMENT '出生日期',
  `sex` varchar(50) DEFAULT NULL COMMENT '性别',
  `phone` varchar(50) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(255) DEFAULT NULL COMMENT '电子邮箱',
  `zip_code` varchar(255) DEFAULT NULL COMMENT '邮编',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  `study_type` int(11) DEFAULT NULL COMMENT '学习类别（初次申领：0，增驾：1）',
  `car_code` varchar(255) DEFAULT NULL COMMENT '准驾车型(申请车型code)',
  `student_source` varchar(50) DEFAULT NULL COMMENT '学员来源(A：本地   B：外地）',
  `stay_addree_number` varchar(255) DEFAULT NULL COMMENT '暂住证编号',
  `country_code` varchar(255) DEFAULT NULL COMMENT '国籍code',
  `country_name` varchar(255) DEFAULT NULL COMMENT '国籍name',
  `sign_source` varchar(255) DEFAULT NULL COMMENT '报名来源',
  `referral_code` varchar(255) DEFAULT NULL COMMENT '推荐码',
  `class_id` bigint(20) DEFAULT NULL COMMENT '班型id',
  `student_money` decimal(10,2) DEFAULT '0.00' COMMENT '学费',
  `sign_time` datetime DEFAULT NULL COMMENT '报名日期',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `school_id` bigint(20) DEFAULT NULL COMMENT '驾校Id',
  `school_code` varchar(255) DEFAULT NULL COMMENT '驾校code',
  `reason` varchar(255) DEFAULT NULL COMMENT '备注',
  `operator_id` bigint(20) DEFAULT NULL COMMENT '录入人ID',
  `operator_name` varchar(20) DEFAULT NULL COMMENT '录入人姓名',
  `transfer_status` int(11) DEFAULT NULL COMMENT '传输状态',
  `face_status` int(11) DEFAULT NULL COMMENT '面签状态',
  `status` int(11) DEFAULT NULL COMMENT '学员状态',
  `net_status` int(11) DEFAULT NULL COMMENT '互联网状态',
  `gov_status` int(11) DEFAULT NULL COMMENT '122  内网业务状态',
  `submit_status` int(255) DEFAULT NULL COMMENT '(录入页面 时 点击什么 按钮操作 记录)',
  `submit_time` datetime DEFAULT NULL COMMENT '提交时间',
  `wechat_bind` int(11) DEFAULT NULL COMMENT '是否绑定微信号  （0：否  1：是）',
  `wechat_openid` varchar(255) DEFAULT NULL COMMENT '微信openid',
  `is_del` int(11) DEFAULT NULL COMMENT '（-1：删除    0：正常）',
  `id_number_address` varchar(255) DEFAULT NULL COMMENT '登记所详细地址（身份证地址）',
  `id_number_regin_code` varchar(255) DEFAULT NULL COMMENT '登记住所code',
  `id_number_regin_name` varchar(255) DEFAULT NULL COMMENT '登记住所 name',
  `residence_address` varchar(255) DEFAULT NULL COMMENT '现在住所地址',
  `residence_regin_code` varchar(255) DEFAULT NULL COMMENT '现住所行政区划code',
  `residence_regin_name` varchar(255) DEFAULT NULL COMMENT '现住所行政区划 name',
  `school_region_code` varchar(255) DEFAULT NULL COMMENT '（驾校）所属辖区code',
  `school_region_name` varchar(255) DEFAULT NULL COMMENT '（驾校）所属辖区  中文',
  `exam_k1` int(11) DEFAULT '1' COMMENT '(0约考成功  1 约考失败)',
  `exam_k2` int(11) DEFAULT '1' COMMENT '(0约考成功  1 约考失败)',
  `exam_k3` int(11) DEFAULT '1' COMMENT '(0约考成功  1 约考失败)',
  `exam_k4` int(11) DEFAULT '1' COMMENT '(0约考成功  1 约考失败)',
  `waring_status` varchar(255) DEFAULT '0001' COMMENT '预警状态(0001正常,0012：互联网注册信息，0013：预录入信息，0014：考试过程信息，0015：注册信息)',
  `student_data_sources` int(11) DEFAULT '1' COMMENT '1 或者 空 表示erp录入的学员  	2  表示  报名助手同步的学员',
  `student_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '报名助手的学员code',
  `auditing_time` datetime DEFAULT NULL COMMENT '审核时间',
  `sign_secret_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '签字数据包解压秘钥',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_student_news
-- ----------------------------
DROP TABLE IF EXISTS `t_student_news`;
CREATE TABLE `t_student_news` (
  `id` bigint(20) NOT NULL,
  `student_id` bigint(20) DEFAULT NULL COMMENT '学员id',
  `phase` bigint(20) DEFAULT NULL COMMENT '学员阶段(1：科目一；2：科目二；3：科目三；4：科目四)',
  `push_type` bigint(20) DEFAULT NULL COMMENT '推送类型（1：约考结果推送；2：考试结果推送）',
  `dep_code` varchar(255) DEFAULT NULL,
  `driver_id` bigint(20) DEFAULT NULL COMMENT '驾校id',
  `new_state` bigint(20) DEFAULT NULL COMMENT '发送状态(-1取消   0发送成功 1 发送中 2发送失败)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `user_id` bigint(20) DEFAULT NULL COMMENT '发送操作者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_student_picture
-- ----------------------------
DROP TABLE IF EXISTS `t_student_picture`;
CREATE TABLE `t_student_picture` (
  `id` bigint(11) NOT NULL,
  `student_id` bigint(20) DEFAULT NULL COMMENT '学员id',
  `file_id` bigint(20) DEFAULT NULL COMMENT '文件ID',
  `type` int(2) DEFAULT NULL COMMENT '0,"无" 1,"驾校申请表"  2,"互联网面签协"  3,"指纹"  4,"证件照"  5,"原驾驶证"  6,"身份证"  7,"体检表图片"  8,"现场照片"  9,"居住证照片"',
  `id_photo_type` int(11) DEFAULT NULL COMMENT '0小图  1 大图   3驾校上传 ',
  `status` int(2) DEFAULT NULL COMMENT '0：未采集（为空 0 1 都是未采集状态）\r\n2：已采集  \r\n3：已导出\r\n4：已导入  高级驾校上传变为4 其他变为2\r\n5：传输、上传成功',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `updated` datetime DEFAULT NULL COMMENT '最新更新时间',
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `export_time` datetime DEFAULT NULL COMMENT '导出时间',
  `operator_id` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_id` bigint(20) DEFAULT NULL COMMENT '修改人',
  `base_info` text COMMENT 'Base64',
  `sz_type` varchar(20) DEFAULT NULL COMMENT '录入的手指类型',
  `is_del` int(11) DEFAULT NULL COMMENT '是否删除（-1删除 0 正常）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='学员文件';

-- ----------------------------
-- Table structure for t_student_picture_zip
-- ----------------------------
DROP TABLE IF EXISTS `t_student_picture_zip`;
CREATE TABLE `t_student_picture_zip` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `zip_id` varchar(255) DEFAULT NULL COMMENT 'zipId',
  `zip_data_key` varchar(255) DEFAULT NULL COMMENT '文件数据',
  `student_id` bigint(20) DEFAULT NULL COMMENT '学生id',
  `study_type` int(11) DEFAULT NULL COMMENT '0 初学 1 增驾',
  `model` int(11) DEFAULT NULL COMMENT '签字板,model:1 协议；2 申请表 3 协议+申请表',
  `current_user_id` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL,
  `is_del` int(11) DEFAULT NULL COMMENT '-1删除  0正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=522854482971722059 DEFAULT CHARSET=utf8 COMMENT='学员文件zip包,文件';

-- ----------------------------
-- Table structure for t_student_reportresult
-- ----------------------------
DROP TABLE IF EXISTS `t_student_reportresult`;
CREATE TABLE `t_student_reportresult` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `cartype` varchar(20) DEFAULT NULL COMMENT '车型',
  `examtime` datetime DEFAULT NULL COMMENT '考试时间',
  `idnum` varchar(30) DEFAULT NULL COMMENT '身份证号码',
  `is_passed` int(11) DEFAULT NULL COMMENT '考试是否通过(0:否  1：是)',
  `subject` varchar(1) DEFAULT NULL COMMENT '科目（1：科目一,2：科目二,3：科目三,4：科目四）',
  `address` varchar(255) DEFAULT NULL COMMENT '考试地点',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `IDX_REPORTRESULT_IDNUM` (`idnum`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='学员成绩表';

-- ----------------------------
-- Table structure for t_student_result_info
-- ----------------------------
DROP TABLE IF EXISTS `t_student_result_info`;
CREATE TABLE `t_student_result_info` (
  `id` bigint(20) NOT NULL,
  `serial_number` varchar(255) DEFAULT '' COMMENT '流水号',
  `id_no` varchar(255) DEFAULT '' COMMENT '证件号码',
  `result_type` int(50) DEFAULT NULL COMMENT '审核结果：0为成功；1为失败',
  `feedback_result` varchar(255) DEFAULT '' COMMENT '反馈结果',
  `processing_time` datetime DEFAULT NULL COMMENT '受理时间',
  `apply_time` datetime DEFAULT NULL COMMENT '申请时间',
  `manager_department` varchar(255) DEFAULT '' COMMENT '管理部门',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `type` int(11) DEFAULT NULL COMMENT '1（导出审核结果） 2 （122审核结果）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_student_task
-- ----------------------------
DROP TABLE IF EXISTS `t_student_task`;
CREATE TABLE `t_student_task` (
  `id` bigint(20) NOT NULL,
  `type_code` int(11) DEFAULT NULL COMMENT '1 报名助手    2 二合一工具',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `last_excute_time` datetime DEFAULT NULL COMMENT '上次执行时间',
  `last_excute_num` int(11) DEFAULT NULL COMMENT '同步数量',
  `school_id` bigint(20) DEFAULT NULL COMMENT '驾校id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学员信息同步任务及调度表';

-- ----------------------------
-- Table structure for t_student_warning
-- ----------------------------
DROP TABLE IF EXISTS `t_student_warning`;
CREATE TABLE `t_student_warning` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `student_id` bigint(20) DEFAULT NULL COMMENT '学员ID',
  `car_code` varchar(40) DEFAULT NULL COMMENT '准驾车型',
  `phase` varchar(255) DEFAULT NULL COMMENT '所处阶段，0012：互联网注册信息，0013：预录入信息，0014：考试过程信息，0015：注册信息',
  `exam_subject` int(4) DEFAULT NULL COMMENT '科目类别',
  `message_id` varchar(255) DEFAULT NULL COMMENT '消息编号',
  `message_text` varchar(255) DEFAULT NULL COMMENT '消息内容',
  `status` int(11) DEFAULT NULL COMMENT '0预警关闭，1待补录，2已补录',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `student_id` (`student_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='学员预警表';

-- ----------------------------
-- Table structure for t_sys_department
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_department`;
CREATE TABLE `t_sys_department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dep_type` varchar(4) DEFAULT NULL COMMENT '部门类型：\r\nA:敖雄\r\nC:车管所\r\nJ：驾校总校\r\nF：驾校分校\r\nB：报名点\r\nD：部门\r\n',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父级ID',
  `parent_code` varchar(100) DEFAULT NULL COMMENT '父级code',
  `dep_code` varchar(100) NOT NULL COMMENT '部门编号唯一：\r\n车管所code\r\n车管所code+总校code\r\n车管所code+总校code+分校code\r\n车管所code+总校code+分校code+报名点code\r\n车管所code+总校code+报名点code',
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `updated` datetime DEFAULT NULL COMMENT '修改时间',
  `is_del` int(2) DEFAULT '0' COMMENT '是否删除  （0：否    1：是）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1012 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Table structure for t_sys_department_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_department_user`;
CREATE TABLE `t_sys_department_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键、自增',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `dep_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=983 DEFAULT CHARSET=latin1 COMMENT='机构用户关联表';

-- ----------------------------
-- Table structure for t_sys_file
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_file`;
CREATE TABLE `t_sys_file` (
  `id` bigint(20) NOT NULL,
  `app_id` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `uri_type` int(11) DEFAULT NULL,
  `uri_src` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `timeout_time` datetime DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_sys_position
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_position`;
CREATE TABLE `t_sys_position` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键、自增',
  `dep_id` bigint(20) NOT NULL COMMENT '部门id',
  `code` varchar(100) DEFAULT NULL COMMENT '职位代码',
  `name` varchar(50) DEFAULT NULL COMMENT '职位名称',
  `remarks` varchar(255) DEFAULT NULL COMMENT '职位描述',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `updated` datetime DEFAULT NULL COMMENT '修改时间',
  `is_del` int(2) DEFAULT '0' COMMENT '是否删除  （0：否    1：是）',
  `operator_id` bigint(20) DEFAULT NULL COMMENT '操作人id',
  PRIMARY KEY (`id`),
  KEY `t_sys_position_ibfk_1` (`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=438 DEFAULT CHARSET=utf8 COMMENT='职位表';

-- ----------------------------
-- Table structure for t_sys_position_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_position_user`;
CREATE TABLE `t_sys_position_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键、自增',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `position_id` bigint(20) NOT NULL COMMENT '职位ID',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `job_id` (`position_id`) USING BTREE,
  CONSTRAINT `t_sys_position_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_sys_user` (`id`),
  CONSTRAINT `t_sys_position_user_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `t_sys_position` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=926 DEFAULT CHARSET=utf8 COMMENT='用户职位关联表';

-- ----------------------------
-- Table structure for t_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` int(2) DEFAULT NULL COMMENT '1:学员预录入（驾校申请表）\r\n\r\n2;学员预录入（互联网面签协）\r\n\r\n3:学员预录入（指纹）\r\n\r\n4:学员预录入（证件照）\r\n\r\n5:学员预录入（原驾驶证）\r\n\r\n6:学员预录入（身份证）\r\n\r\n7:学员预录入（体检表图片）\r\n\r\n8:学员预录入（现场照片）\r\n\r\n9:学员预录入（居住证照片）\r\n',
  `state` int(2) DEFAULT NULL COMMENT '1：选填\r\n2：必填',
  `roleId` bigint(20) DEFAULT NULL COMMENT '权限系统角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键、自增',
  `username` varchar(50) NOT NULL COMMENT '登陆账号|用户名',
  `password` varchar(100) NOT NULL COMMENT '登陆密码或者密码标识(比如密码md5)',
  `name` varchar(50) DEFAULT NULL COMMENT '用户名字',
  `email` varchar(50) DEFAULT NULL COMMENT '用户电子邮箱',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `sex` int(2) DEFAULT NULL COMMENT '性别   男:1;女:2;未知:3',
  `salt` varchar(255) DEFAULT NULL COMMENT '密码加盐',
  `comment` varchar(50) DEFAULT NULL COMMENT '备注',
  `state` int(2) DEFAULT '1' COMMENT '用户状态（-2:：删除，-1 ；-1：禁用；0：待激活 1：正常）',
  `expire_datetime` date DEFAULT NULL COMMENT '用户到期时间 （默认空表示长期）',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated` datetime NOT NULL COMMENT '最后修改时间',
  `lastlogin_datetime` datetime DEFAULT NULL COMMENT '最后登录时间',
  `operator_id` bigint(20) DEFAULT NULL COMMENT '操作人',
  `type` int(2) DEFAULT NULL COMMENT '用户类别 （1：傲雄  2：车管所  3：驾校 ）',
  PRIMARY KEY (`id`),
  KEY `IDX_USER_CREATED_TIMESTAMP` (`created`),
  KEY `IDX_USER_UPDATED_DATETIME` (`updated`),
  KEY `IDX_USER_LASTLOGIN_DATETIME` (`lastlogin_datetime`),
  KEY `IDX_USER_USERNAME` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1369 DEFAULT CHARSET=utf8 COMMENT='系统用户表';

-- ----------------------------
-- Table structure for t_sys_user_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user_menu`;
CREATE TABLE `t_sys_user_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单id',
  `menu_name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `menu_url` varchar(50) DEFAULT NULL COMMENT '菜单url',
  `menu_icon` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=397 DEFAULT CHARSET=utf8 COMMENT='用户菜单快速入口';

-- ----------------------------
-- Procedure structure for pwhile
-- ----------------------------
DROP PROCEDURE IF EXISTS `pwhile`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pwhile`()
begin
declare i int;
set i = 0;
while i <230 do
	INSERT into t_common_dict(parent_id,code,name,type,created,updated)
VALUES(86,"","",8,NOW(),NOW());
set i = i+1;
end while;
end
;;
DELIMITER ;
