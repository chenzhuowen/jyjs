/*
 Navicat Premium Data Transfer

 Source Server         : jyjs
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : jyjs

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 10/10/2020 17:53:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for deduction_rule
-- ----------------------------
DROP TABLE IF EXISTS `deduction_rule`;
CREATE TABLE `deduction_rule`  (
  `id` int(11) NOT NULL COMMENT 'id',
  `index_id` int(11) NULL DEFAULT NULL COMMENT '指标id',
  `year` year NOT NULL COMMENT '年度',
  `completion_rate_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '完成率类型',
  `upper_limit` float(255, 0) NOT NULL COMMENT '上限值',
  `lower_limit` float(255, 0) NOT NULL COMMENT '下限值',
  `deduction_rule_des` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '扣罚规则',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gs
-- ----------------------------
DROP TABLE IF EXISTS `gs`;
CREATE TABLE `gs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gsdm` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gsmc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sjgsid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gs
-- ----------------------------
INSERT INTO `gs` VALUES (2, '23233', 'rfadfaf', 3);

-- ----------------------------
-- Table structure for index_library
-- ----------------------------
DROP TABLE IF EXISTS `index_library`;
CREATE TABLE `index_library`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `index_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '指标编号',
  `index_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '指标名称',
  `work_matters` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '工作事项',
  `index_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '指标说明',
  `enable_flag` int(11) NULL DEFAULT NULL COMMENT '启用状态1启用0停用',
  `matter_type_id` int(11) NULL DEFAULT NULL COMMENT '事项类型id',
  `company_id` int(11) NULL DEFAULT NULL COMMENT '公司id',
  `line_id` int(11) NULL DEFAULT NULL COMMENT '条线id',
  `responsible_department_id` int(11) NULL DEFAULT NULL COMMENT '责任部门id',
  `overlay_flag` int(11) NULL DEFAULT NULL COMMENT '是否可叠加1可叠加0不可叠加',
  `key_position_index_flag` int(11) NULL DEFAULT NULL COMMENT '是否关键岗位指标1是0否',
  `report_flag` int(11) NULL DEFAULT NULL COMMENT '是否上报完成情况1上报0不上报',
  `preconditions` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '前置条件',
  `billing_cycle_id` int(11) NULL DEFAULT NULL COMMENT '结算周期id',
  `task_source_id` int(11) NULL DEFAULT NULL COMMENT '任务来源id',
  `report_type_id` int(11) NULL DEFAULT NULL COMMENT '填报类型id',
  `deduction_type` int(11) NULL DEFAULT NULL COMMENT '扣罚属性0正向指标1负向指标',
  `disclaimer_flag` int(11) NULL DEFAULT NULL COMMENT '是否免责1是0否',
  `reissue_flag` int(11) NULL DEFAULT NULL COMMENT '是否补发1是0否',
  `completion_rate_type_id` int(11) NULL DEFAULT NULL COMMENT '指标完成率类型0本月完成率1本年累计完成率2本月完成率与本年累计完成率最大值',
  `upper_completion_rate` float(255, 0) NULL DEFAULT NULL COMMENT '完成率上限值',
  `lower_completion_rate` float(255, 0) NULL DEFAULT NULL COMMENT '完成率下限值',
  `delivery` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '交付物',
  `report_rule_id` int(11) NULL DEFAULT NULL COMMENT '上报规则id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_library_u01`(`index_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 205 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_library
-- ----------------------------
INSERT INTO `index_library` VALUES (1, '10101000000001', '完成养老地产保险销售任务（公司整体）', '保费收入', '完成养老地产保险销售任务（公司整体）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1、养老地产取得资质 2、网销业务恢复销售', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (2, '10101000000002', '完成投连险销售任务', '保费收入', '完成投连险销售任务', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '网销业务恢复销售', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (3, '10101000000003', '完成其他保险销售任务（不含养老和投连产品）', '保费收入', '完成其他保险销售任务（不含养老和投连产品）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (4, '10101000000004', '新单期交保费（银保渠道）', '保费收入', '新单期交保费（银保渠道）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (5, '10101000000005', '完成养老地产保险销售任务（银保渠道）', '保费收入', '完成养老地产保险销售任务（银保渠道）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '养老社区取得相关资质', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (6, '10101000000006', '完成投连险销售任务（银保渠道）', '保费收入', '完成投连险销售任务（银保渠道）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (7, '10101000000007', '完成其他保险销售任务（不含养老和投连产品）（银保渠道）', '保费收入', '完成其他保险销售任务（不含养老和投连产品）（银保渠道）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (8, '10101000000008', '规模保费（团险渠道）', '保费收入', '规模保费（团险渠道）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (9, '10101000000009', '新单保费（广东分公司）', '保费收入', '新单保费（广东分公司）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (10, '10101000000010', '规模保费（个险渠道，不含养老地产）', '保费收入', '规模保费（个险渠道，不含养老地产）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (11, '10101000000011', '新单期缴保费（个险渠道）', '保费收入', '新单期缴保费（个险渠道）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (12, '10101000000012', '完成养老地产保险销售任务（个险渠道）', '保费收入', '完成养老地产保险销售任务（个险渠道）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '养老社区取得相关资质', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (13, '10101000000013', '规模保费（大客户渠道）', '保费收入', '规模保费（大客户渠道）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (14, '10101000000014', '期交保费（大客户渠道）', '保费收入', '期交保费（大客户渠道）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (15, '10101000000015', '期交保费（科技发展渠道）', '保费收入', '期交保费（科技发展渠道）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (16, '10101000000016', '完成养老地产保险销售任务（科技发展渠道）', '保费收入', '完成养老地产保险销售任务（科技发展渠道）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1、养老地产取得资质 2、网销业务恢复销售', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (17, '10101000000017', '完成投连险销售任务（科技发展渠道）', '保费收入', '完成投连险销售任务（科技发展渠道）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '网销业务恢复销售', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (18, '10101000000018', '完成其他保险销售任务（不含养老和投连产品）（科技发展渠道）', '保费收入', '完成其他保险销售任务（不含养老和投连产品）（科技发展渠道）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (19, '10101000000019', '新单保费（深圳分公司）', '保费收入', '新单保费（深圳分公司）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (20, '10101000000020', '新单保费（北京分公司）', '保费收入', '新单保费（北京分公司）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (21, '10101000000021', '当年口径（全公司-汇总）', '经营成本率', '当年口径（全公司-汇总）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (22, '10101000000022', '存续期口径（全公司-汇总）', '经营成本率', '存续期口径（全公司-汇总）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (23, '10101000000023', '当年口径（全公司-不含投连）', '经营成本率', '当年口径（全公司-不含投连）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (24, '10101000000024', '存续期口径（全公司-不含投连）', '经营成本率', '存续期口径（全公司-不含投连）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (25, '10101000000025', '当年口径（全公司-长险）', '经营成本率', '当年口径（全公司-长险）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (26, '10101000000026', '存续期口径（全公司-长险）', '经营成本率', '存续期口径（全公司-长险）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (27, '10101000000027', '当年口径（全公司-长险（不含投连））', '经营成本率', '当年口径（全公司-长险（不含投连））', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (28, '10101000000028', '存续期口径（全公司-长险（不含投连））', '经营成本率', '存续期口径（全公司-长险（不含投连））', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (29, '10101000000029', '当年口径（全公司-短险）', '经营成本率', '当年口径（全公司-短险）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (30, '10101000000030', '当年口径（银保渠道）', '经营成本率', '当年口径（银保渠道）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (31, '10101000000031', '存续期口径（银保渠道）', '经营成本率', '存续期口径（银保渠道）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (32, '10101000000032', '当年口径（银保渠道，不含投连）', '经营成本率', '当年口径（银保渠道，不含投连）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (33, '10101000000033', '存续期口径（银保渠道，不含投连）', '经营成本率', '存续期口径（银保渠道，不含投连）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (34, '10101000000034', '当年口径（团险渠道）', '经营成本率', '当年口径（团险渠道）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (35, '10101000000035', '当年口径（个险渠道）', '经营成本率', '当年口径（个险渠道）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (36, '10101000000036', '存续期口径（个险渠道）', '经营成本率', '存续期口径（个险渠道）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (37, '10101000000037', '当年口径（个险渠道，长险）', '经营成本率', '当年口径（个险渠道，长险）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (38, '10101000000038', '存续期口径（个险渠道，长险）', '经营成本率', '存续期口径（个险渠道，长险）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (39, '10101000000039', '当年口径（大客户渠道，长险）', '经营成本率', '当年口径（大客户渠道，长险）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (40, '10101000000040', '当年口径（大客户渠道，短险）', '经营成本率', '当年口径（大客户渠道，短险）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (41, '10101000000041', '存续期口径（大客户渠道，长险）', '经营成本率', '存续期口径（大客户渠道，长险）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (42, '10101000000042', '当年口径（科技发展渠道）', '经营成本率', '当年口径（科技发展渠道）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (43, '10101000000043', '存续期口径（科技发展渠道）', '经营成本率', '存续期口径（科技发展渠道）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (44, '10101000000044', '当年口径（科技发展渠道，不含投连）', '经营成本率', '当年口径（科技发展渠道，不含投连）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (45, '10101000000045', '存续期口径（科技发展渠道，不含投连）', '经营成本率', '存续期口径（科技发展渠道，不含投连）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (46, '10101000000046', '当年口径销售费用率-银保', '销售费用', '当年口径销售费用率-银保', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (47, '10101000000047', '当年口径销售费用率-团险', '销售费用', '当年口径销售费用率-团险', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (48, '10101000000048', '当年口径销售费用率-个险', '销售费用', '当年口径销售费用率-个险', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (49, '10101000000049', '当年口径销售费用率-大客户', '销售费用', '当年口径销售费用率-大客户', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (50, '10101000000050', '当年口径销售费用率-科技发展', '销售费用', '当年口径销售费用率-科技发展', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (51, '10101000000051', '销售费用执行率-广分', '销售费用', '销售费用执行率-广分', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (52, '10101000000052', '销售费用执行率-深分', '销售费用', '销售费用执行率-深分', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (53, '10101000000053', '销售费用执行率-北分', '销售费用', '销售费用执行率-北分', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (54, '10101000000054', '行政及运营费用率', '行政及运营费用率', '行政及运营费用率', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (55, '10201000000001', '新增投资-非标', '新增投资', '新增投资-非标', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '预计偿付能力达到120%以上', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (56, '10301000000001', '新增投资-股票', '新增投资', '新增投资-股票', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '预计偿付能力达到120%以上', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (57, '10301000000002', '新增投资-非标及股票', '新增投资', '新增投资-非标及股票', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '预计偿付能力达到120%以上', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (58, '10301000000003', '投资收益（总口径）', '投资收益', '投资收益（总口径）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '预计偿付能力达到120%以上', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (59, '10301000000004', '可投资金收益率（总口径）', '投资收益', '可投资金收益率（总口径）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (60, '10301000000005', '新增投资收益率-股票', '投资收益', '新增投资收益率-股票', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (61, '10301000000006', '新增投资收益率-固收', '投资收益', '新增投资收益率-固收', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (62, '10301000000007', '新增投资收益率-未上市股权', '投资收益', '新增投资收益率-未上市股权', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (63, '10301000000008', '新增投资收益率-不动产', '投资收益', '新增投资收益率-不动产', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '监管恢复不动产投资', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (64, '10301000000009', '新增投资收益率-信托', '投资收益', '新增投资收益率-信托', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (65, '10301000000010', '新增投资收益率-固收和流动性资产', '投资收益', '新增投资收益率-固收和流动性资产', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (66, '10301000000011', '会计利润', '经营利润', '会计利润', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1、内部基金项目全部按约定收益率分红； 2、预计偿付能力达到120%以上。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (67, '10301000000012', '内部口径的经营利润', '经营利润', '内部口径的经营利润', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '预计偿付能力达到120%以上', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (68, '10301000000013', '综合收益（会计利润+其他综合收益）', '经营利润', '综合收益（会计利润+其他综合收益）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '预计偿付能力达到120%以上', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (69, '10301000000014', '综合偿付能力充足率', '偿付能力充足率', '综合偿付能力充足率', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '剩余3.5亿元资本补充债发行完成', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (70, '10301000000015', '成功发行资本补充债', '发行资本补充债', '成功发行资本补充债', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (71, '10301000000016', '资金头寸满足退保要求', '流动性风险管控', '资金头寸满足退保要求', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (72, '10301000000017', '监管转办有效投诉件总量/期末有效保单总量×10000（全公司）', '万张保单投诉量', '监管转办有效投诉件总量/期末有效保单总量×10000（全公司）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (73, '10301000000018', '监管转办有效投诉件总量/期末有效保单总量×10000（广分）', '万张保单投诉量', '监管转办有效投诉件总量/期末有效保单总量×10000（广分）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (74, '10301000000019', '监管转办有效投诉件总量/期末有效保单总量×10000（深分）', '万张保单投诉量', '监管转办有效投诉件总量/期末有效保单总量×10000（深分）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (75, '10301000000020', '监管转办有效投诉件总量/期末有效保单总量×10000（北分）', '万张保单投诉量', '监管转办有效投诉件总量/期末有效保单总量×10000（北分）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (76, '10301000000021', '固收及流动性占上季度总资产余额占比', '资金型业务与可投资金相匹配', '固收及流动性占上季度总资产余额占比', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (77, '10301000000022', '公司治理的综合评分/行业平均值', '公司治理工作评分', '公司治理的综合评分/行业平均值', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (78, '10301000000023', '监管风险综合评级结果', '风险综合评级', '监管风险综合评级结果', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (79, '10301000000024', '资产负债管理能力得分/行业平均值', '资产负债管理能力评分', '资产负债管理能力得分/行业平均值', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (80, '10301000000025', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件（全公司）', '合规风险管理评分', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件（全公司）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (81, '10301000000026', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件（银保、团险）', '合规风险管理评分', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件（银保、团险）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (82, '10301000000027', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件（投资中心）', '合规风险管理评分', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件（投资中心）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (83, '10301000000028', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件（财务、投审、董办）', '合规风险管理评分', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件（财务、投审、董办）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (84, '10301000000029', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件（运营、客服、信息技术）', '合规风险管理评分', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件（运营、客服、信息技术）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (85, '10301000000030', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件（精算、战略）', '合规风险管理评分', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件（精算、战略）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (86, '10301000000031', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件（个险）', '合规风险管理评分', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件（个险）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (87, '10301000000032', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件（大客户）', '合规风险管理评分', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件（大客户）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (88, '10301000000033', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件（科技发展）', '合规风险管理评分', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件（科技发展）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (89, '10301000000034', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件(广分)', '合规风险管理评分', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件(广分)', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (90, '10301000000035', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件(深分)', '合规风险管理评分', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件(深分)', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (91, '10301000000036', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件(北分)', '合规风险管理评分', '因违法违规行为受到监管部门、司法机关的行政处罚或刑事处罚；或引发一、二、三级声誉风险事件(北分)', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (92, '10301000000037', '个险13月继续率（广分）', '保单品质', '个险13月继续率（广分）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (93, '10301000000038', '银保13月继续率（广分）', '保单品质', '银保13月继续率（广分）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (94, '10301000000039', '个险13月继续率（全公司）', '保单品质', '个险13月继续率（全公司）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (95, '10301000000040', '银保13月继续率（全公司）', '保单品质', '银保13月继续率（全公司）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (96, '10301000000041', '个人期交产品13月继续率（科技发展）', '保单品质', '个人期交产品13月继续率（科技发展）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (97, '10301000000042', '个险13月继续率（深分）', '保单品质', '个险13月继续率（深分）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (98, '10301000000043', '银保13月继续率（深分）', '保单品质', '银保13月继续率（深分）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (99, '10301000000044', '个险13月继续率（北分）', '保单品质', '个险13月继续率（北分）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (100, '10301000000045', '银保13月继续率（北分）', '保单品质', '银保13月继续率（北分）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (101, '10301000000046', '出单人力/总人力(银保)', '人员活动率', '出单人力/总人力(银保)', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (102, '10301000000047', '出单人力/总人力（科技发展）', '人员活动率', '出单人力/总人力（科技发展）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (103, '10301000000048', '团险短期险销售费用率+赔付率', '团险短期险综合成本率', '团险短期险销售费用率+赔付率', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (104, '10301000000049', 'Σ犹豫期内电话回访成功件数/Σ犹豫期内电话应访件数总数（广分）', '犹豫期内电话回访成功率', 'Σ犹豫期内电话回访成功件数/Σ犹豫期内电话应访件数总数（广分）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (105, '10301000000050', 'Σ犹豫期内电话回访成功件数/Σ犹豫期内电话应访件数总数（全公司）', '犹豫期内电话回访成功率', 'Σ犹豫期内电话回访成功件数/Σ犹豫期内电话应访件数总数（全公司）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (106, '10301000000051', 'Σ犹豫期内电话回访成功件数/Σ犹豫期内电话应访件数总数（科技发展）', '犹豫期内电话回访成功率', 'Σ犹豫期内电话回访成功件数/Σ犹豫期内电话应访件数总数（科技发展）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (107, '10301000000052', 'Σ犹豫期内电话回访成功件数/Σ犹豫期内电话应访件数总数（深分）', '犹豫期内电话回访成功率', 'Σ犹豫期内电话回访成功件数/Σ犹豫期内电话应访件数总数（深分）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (108, '10301000000053', 'Σ犹豫期内电话回访成功件数/Σ犹豫期内电话应访件数总数（北分）', '犹豫期内电话回访成功率', 'Σ犹豫期内电话回访成功件数/Σ犹豫期内电话应访件数总数（北分）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (109, '10301000000054', '统计期内从消费者投保日期起至保单签收回执之日止的时间小于或等于15天的保单件数/统计期内所有承保保单件数×100%（广分）', '个险保单15日送达率', '统计期内从消费者投保日期起至保单签收回执之日止的时间小于或等于15天的保单件数/统计期内所有承保保单件数×100%（广分）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (110, '10301000000055', '统计期内从消费者投保日期起至保单签收回执之日止的时间小于或等于15天的保单件数/统计期内所有承保保单件数×100%（深分）', '个险保单15日送达率', '统计期内从消费者投保日期起至保单签收回执之日止的时间小于或等于15天的保单件数/统计期内所有承保保单件数×100%（深分）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (111, '10301000000056', '统计期内从消费者投保日期起至保单签收回执之日止的时间小于或等于15天的保单件数/统计期内所有承保保单件数×100%（北分）', '个险保单15日送达率', '统计期内从消费者投保日期起至保单签收回执之日止的时间小于或等于15天的保单件数/统计期内所有承保保单件数×100%（北分）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (112, '10301000000057', 'Σ（统计期内录入的所有新单标准件复核通过时间-新单标准件初审时间）/Σ新单标准件录入总件数', '录单时效', 'Σ（统计期内录入的所有新单标准件复核通过时间-新单标准件初审时间）/Σ新单标准件录入总件数', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (113, '10301000000058', '营销员13个月留存率', '营销员13个月留存率', '营销员13个月留存率', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (114, '10301000000059', '新增央企在粤企业、广东省及广州市国资委下属企业、广东地区上市公司、50强民企和外企等大中型企事业单位团体及单一主体保费10万元以上的保险', '大型企业突破', '新增央企在粤企业、广东省及广州市国资委下属企业、广东地区上市公司、50强民企和外企等大中型企事业单位团体及单一主体保费10万元以上的保险', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (115, '10301000000060', '意健险综合成本率=意健险年度累计赔付率+意健险年度累计费用率', '意健险综合成本率', '意健险综合成本率=意健险年度累计赔付率+意健险年度累计费用率', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (116, '10301000000061', '团险续保率=当年团险实续客户数/当年团险应续客户数', '团险续保率', '团险续保率=当年团险实续客户数/当年团险应续客户数', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (117, '10301000000062', '重疾13月继续率（大客户）', '保单品质', '重疾13月继续率（大客户）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (118, '10301000000063', '实际新增签约合作单位数量/计划新增签约合作单位数量', '新增签约合作单位数量达成率', '实际新增签约合作单位数量/计划新增签约合作单位数量', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (119, '10301000000064', '分公司行政费用率', '行政及运营费用率', '分公司行政费用率', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (120, '10301000000065', '经营结算系统优化', '信息系统建设', '经营结算系统优化', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (121, '10301000000066', '投资管理平台上线', '信息系统建设', '投资管理平台上线', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (122, '10301000000067', '投资管理平台上线', '信息系统建设', '投资管理平台上线', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (123, '10301000000068', '人力资源系统上线', '信息系统建设', '人力资源系统上线', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (124, '10301000000069', '人力资源系统上线', '信息系统建设', '人力资源系统上线', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (125, '10301000000070', '人力资源系统上线', '信息系统建设', '人力资源系统上线', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (126, '10301000000071', '产品销售', '养老地产项目', '产品销售', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '养老社区取得相关资质', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (127, '10301000000072', '产品销售', '养老地产项目', '产品销售', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '养老社区取得相关资质', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (128, '10301000000073', '产品销售', '养老地产项目', '产品销售', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '养老社区取得相关资质', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (129, '10301000000074', '养老地产项目落地', '养老地产项目', '养老地产项目落地', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '养老社区取得相关资质', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (130, '10301000000075', '养老地产项目落地', '养老地产项目', '养老地产项目落地', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '养老社区取得相关资质', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (131, '10301000000076', '养老地产项目落地', '养老地产项目', '养老地产项目落地', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '养老社区取得相关资质', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (132, '10301000000077', '完成养老保险产品系统开发', '养老地产项目', '完成养老保险产品系统开发', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (133, '10301000000078', '“平台+个人”模式落地', '“平台+个人”模式落地', '“平台+个人”模式落地', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (134, '10301000000079', '“平台+个人”模式落地', '“平台+个人”模式落地', '“平台+个人”模式落地', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (135, '10301000000080', '“平台+个人”模式落地', '“平台+个人”模式落地', '“平台+个人”模式落地', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (136, '10301000000081', '“平台+个人”模式落地', '“平台+个人”模式落地', '“平台+个人”模式落地', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (137, '10301000000082', '投资经营管理体系（两算一控模型及相关系统）完成', '两算一控', '投资经营管理体系（两算一控模型及相关系统）完成', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (138, '10301000000083', '协调银行端出单系统，满足开售条件', '投连险准入', '协调银行端出单系统，满足开售条件', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (139, '10301000000084', '投连险账户投资', '投连险账户投资', '投连险账户投资', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1、业务销售达成目标 2、关联额度交易额度充足', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (140, '10301000000085', '投连险账户投资', '投连险账户投资', '投连险账户投资', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1、业务销售达成目标 3、关联额度交易额度充足', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (141, '10301000000086', '不动产投资', '不动产投资', '不动产投资', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (142, '10301000000087', '不动产投资', '不动产投资', '不动产投资', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (143, '10301000000088', '无形资产费用执行率', '资本性支出费用执行率', '无形资产费用执行率', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (144, '10301000000089', '资本性支出（IT）费用执行率', '资本性支出费用执行率', '资本性支出（IT）费用执行率', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (145, '10301000000090', '发起设立聚焦于城市更新领域投资的基金', '发起设立城市更新基金', '发起设立聚焦于城市更新领域投资的基金', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (146, '10301000000091', '活动人均产能达成率', '活动人均产能达成率', '活动人均产能达成率', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (147, '10301000000092', '促进增员发展　', '促进增员发展　', '促进增员发展　', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (148, '10301000000093', '监管和政府关系维护', '监管和政府关系维护', '监管和政府关系维护', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (149, '10301000000105', '规模保费（平台+个人）', '保费收入', '规模保费（平台+个人）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (150, '10301000000106', '银行保险部新单保费，业务口径，即含普通型保险和分红保险产生原保险保费收入、万能保险产生的保户投资款新增交费、及投资连结保险产生的独立账户新增交费（广分）', '保费收入', '银行保险部新单保费，业务口径，即含普通型保险和分红保险产生原保险保费收入、万能保险产生的保户投资款新增交费、及投资连结保险产生的独立账户新增交费（广分）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '养老产品开售前置条件：养老社区取得相关资质，且合作渠道准入可售', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (151, '10301000000107', '银行保险部新单保费，业务口径，即含普通型保险和分红保险产生原保险保费收入、万能保险产生的保户投资款新增交费、及投资连结保险产生的独立账户新增交费（北分）', '保费收入', '银行保险部新单保费，业务口径，即含普通型保险和分红保险产生原保险保费收入、万能保险产生的保户投资款新增交费、及投资连结保险产生的独立账户新增交费（北分）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '养老产品开售前置条件：养老社区取得相关资质', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (152, '10301000000108', '新单保费（北分个险）', '保费收入', '新单保费（北分个险）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '养老产品开售前置条件：养老社区取得相关资质', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (153, '10301000000109', '规模保费（北分团险）', '保费收入', '规模保费（北分团险）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (154, '10301000000110', '银行保险部新单保费，业务口径，即含普通型保险和分红保险产生原保险保费收入、万能保险产生的保户投资款新增交费、及投资连结保险产生的独立账户新增交费（深分）', '保费收入', '银行保险部新单保费，业务口径，即含普通型保险和分红保险产生原保险保费收入、万能保险产生的保户投资款新增交费、及投资连结保险产生的独立账户新增交费（深分）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '养老产品开售前置条件：养老社区取得相关资质', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (155, '10301000000111', '个人业务部新单保费，业务口径，即含普通型保险和分红保险产生原保险保费收入、万能保险产生的保户投资款新增交费、及投资连结保险产生的独立账户新增交费 。（广州本部、汕头、江门、韶关）', '保费收入', '个人业务部新单保费，业务口径，即含普通型保险和分红保险产生原保险保费收入、万能保险产生的保户投资款新增交费、及投资连结保险产生的独立账户新增交费 。（广州本部、汕头、江门、韶关）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '养老产品开售前置条件：养老社区取得相关资质', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (156, '10301000000112', '银行保险部新单保费，业务口径，即含普通型保险和分红保险产生原保险保费收入、万能保险产生的保户投资款新增交费、及投资连结保险产生的独立账户新增交费（广州本部）', '保费收入', '银行保险部新单保费，业务口径，即含普通型保险和分红保险产生原保险保费收入、万能保险产生的保户投资款新增交费、及投资连结保险产生的独立账户新增交费（广州本部）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '养老产品开售前置条件：养老社区取得相关资质', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (157, '10301000000113', '个人业务部新单保费，业务口径，即含普通型保险和分红保险产生原保险保费收入、万能保险产生的保户投资款新增交费、及投资连结保险产生的独立账户新增交费 。（东莞）', '保费收入', '个人业务部新单保费，业务口径，即含普通型保险和分红保险产生原保险保费收入、万能保险产生的保户投资款新增交费、及投资连结保险产生的独立账户新增交费 。（东莞）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '养老产品开售前置条件：养老社区取得相关资质', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (158, '10301000000114', '当年口径（平台+个人）', '经营成本率', '当年口径（平台+个人）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (159, '10301000000115', '存续期口径（平台+个人）', '经营成本率', '存续期口径（平台+个人）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (160, '10301000000116', '当年口径（平台+个人，长险）', '经营成本率', '当年口径（平台+个人，长险）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (161, '10301000000117', '当年口径（平台+个人，短险）', '经营成本率', '当年口径（平台+个人，短险）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (162, '10301000000118', '存续期口径（平台+个人，长险）', '经营成本率', '存续期口径（平台+个人，长险）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (163, '10301000000119', '当年口径销售费用率-平台+个人', '销售费用', '当年口径销售费用率-平台+个人', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (164, '10301000000120', '销售费用执行率-银保（广分）', '销售费用', '销售费用执行率-银保（广分）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (165, '10301000000121', '销售费用执行率-北分银保', '销售费用', '销售费用执行率-北分银保', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (166, '10301000000122', '销售费用实际/销售费用预算（北分个险）', '销售费用', '销售费用实际/销售费用预算（北分个险）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (167, '10301000000123', '销售费用执行率-北分团险', '销售费用', '销售费用执行率-北分团险', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (168, '10301000000124', '销售费用执行率-深分银保', '销售费用', '销售费用执行率-深分银保', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (169, '10301000000125', '销售费用执行率（广州本部、汕头、江门、韶关）', '销售费用', '销售费用执行率（广州本部、汕头、江门、韶关）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (170, '10301000000126', '销售费用执行率-银保（广州本部）', '销售费用', '销售费用执行率-银保（广州本部）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (171, '10301000000127', '销售费用实际/销售费用预算（东莞）', '销售费用', '销售费用实际/销售费用预算（东莞）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (172, '10301000000128', '新增投资-非标（金融产品投资）', '新增投资', '新增投资-非标（金融产品投资）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '预计偿付能力达到120%以上', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (173, '10301000000129', '新增投资-非标（不动产投资部）', '新增投资', '新增投资-非标（不动产投资部）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '预计偿付能力达到120%以上', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (174, '10301000000130', '新增投资-非标（股权投资部）', '新增投资', '新增投资-非标（股权投资部）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '预计偿付能力达到120%以上', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (175, '10301000000131', '新增投资收益率-信托（港深投资分部）,项目收益按年度结算，结算月为11月', '新增投资', '新增投资收益率-非标（港深投资分部）', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (178, '12312', '123123', '142141', '23123123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (181, '12312123123', '123123', '142141', '23123123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (182, 'huhu', '123123', '恩恩', '发多少', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (193, '1112', '111', '111', '打发打发', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (195, '11123', '222', '222', '大声道', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (196, '213', '3123', '213', '213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (198, '111111', '11', '11', '111212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `index_library` VALUES (202, '反倒是发送到', '大师傅', 'adsf', '大方', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
