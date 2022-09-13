/*
 Navicat Premium Data Transfer

 Source Server         : 新建连接
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : phoneshop

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 13/09/2022 16:47:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_commodity
-- ----------------------------
DROP TABLE IF EXISTS `tb_commodity`;
CREATE TABLE `tb_commodity`  (
  `id` int NOT NULL,
  `commodityId` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品编号',
  `brand` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌',
  `model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '型号',
  `picture` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `commoditydetails` varchar(5120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详情',
  `category` int NULL DEFAULT NULL COMMENT '品类（1：手机、2：平板、3：配件）',
  `kind` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类',
  `isDelete` int NULL DEFAULT NULL COMMENT '是否删除',
  `createUser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `createTime` date NULL DEFAULT NULL COMMENT '创建时间',
  `updateUser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `updateTime` date NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`commodityId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_commodity
-- ----------------------------
INSERT INTO `tb_commodity` VALUES (1, '1101', '苹果', '苹果 iPhone11Pro', 'https://bkimg.cdn.bcebos.com/pic/3bf33a87e950352ac65cfaa90f09ecf2b21193131d75?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：500.00g商品产地：中国大陆CPU型号：其他运行内存：其它内存机身存储：64GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：1200万像素前摄主摄像素：1200万像素主屏幕尺寸（英寸）：5.8英寸分辨率：其它分辨率屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：以官网信息为准充电器：其他机身颜色：暗夜绿色操作系统：iOS(Apple)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (10, '1102', '苹果', '苹果 iPhone11Pro Max', 'https://bkimg.cdn.bcebos.com/pic/ca1349540923dd54564ebfca8d43a4de9c82d158e275?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：0.56kg商品产地：中国大陆CPU型号：其他运行内存：其它内存机身存储：64GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：1200万像素前摄主摄像素：1200万像素主屏幕尺寸（英寸）：6.5英寸分辨率：其它分辨率屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：以官网信息为准充电器：其他机身颜色：绿色操作系统：iOS(Apple)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (11, '1103', '苹果', '苹果 iPhone 11', 'https://bkimg.cdn.bcebos.com/pic/95eef01f3a292df5e0febbb7e07b4b6034a85edfd575?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：470.00g商品产地：中国大陆CPU型号：其他运行内存：其它内存机身存储：64GB存储卡：不支持存储卡摄像头数量：后置双摄后摄主摄像素：1200万像素前摄主摄像素：1200万像素主屏幕尺寸（英寸）：6.1英寸分辨率：其它分辨率屏幕比例：其它屏幕比例屏幕前摄组合：刘海屏电池容量（mAh）：以官网信息为准充电器：其他机身颜色：紫色操作系统：iOS(Apple)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (26, '1104', '苹果', '苹果 iPhone XR', 'https://bkimg.cdn.bcebos.com/pic/0b46f21fbe096b638038aa3f03338744ebf8acb8?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：460.00g商品产地：中国CPU型号：其他运行内存：其它内存机身存储：64GB存储卡：不支持存储卡摄像头数量：后置单摄后摄主摄像素：1200万像素前摄主摄像素：其他主屏幕尺寸（英寸）：6.1英寸分辨率：其它分辨率屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：以官网信息为准充电器：其他机身颜色：白色操作系统：iOS(Apple)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (2, '1201', '华为', '华为 Mate30Pro', 'https://bkimg.cdn.bcebos.com/pic/7aec54e736d12f2e461bef0b40c2d562853568bb?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：0.54kg商品产地：中国大陆CPU型号：麒麟990运行内存：8GB机身存储：其它存储存储卡：NM存储卡摄像头数量：后置四摄后摄主摄像素：4000万像素前摄主摄像素：3200万像素主屏幕尺寸（英寸）：6.53英寸分辨率：全高清FHD+屏幕比例：19.5:9屏幕前摄组合：其他电池容量（mAh）：4500mAh（典型值）备注：电池额定容量为4400mAh充电器：5V/2A；9V/2A；10V/4A机身颜色：亮黑色操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (12, '1202', '华为', '华为 Mate30', 'https://bkimg.cdn.bcebos.com/pic/c75c10385343fbf2b21178c8ef32dd8065380dd72181?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U5Mg==,g_7,xp_5,yp_5/format,f_auto', '商品毛重：0.54kg商品产地：中国大陆CPU型号：麒麟990运行内存：6GB机身存储：128GB存储卡：NM存储卡摄像头数量：后置三摄后摄主摄像素：4000万像素前摄主摄像素：2400万像素主屏幕尺寸（英寸）：6.62英寸 备注：显示屏采用圆角设计，按照标准矩形测量时，屏幕的对角线长度是6.62英寸（实际可视区域略小）分辨率：其它分辨率屏幕比例：19.5:9屏幕前摄组合：其他电池容量（mAh）：4200mAh（典型值） 备注：电池额定容量为4100mAh充电器：5V/2A；9V/2A；10V/4A机身颜色：罗兰紫操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (20, '1203', '华为', '华为 Mate20 X(5G)', 'https://bkimg.cdn.bcebos.com/pic/b3119313b07eca80772144af9c2397dda1448355?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：0.61kg商品产地：中国大陆CPU型号：麒麟980运行内存：8GB机身存储：256GB存储卡：NM存储卡摄像头数量：后置三摄后摄主摄像素：4000万像素前摄主摄像素：2400万像素拍照特点：景深，后置三摄，微距，光学变焦主屏幕尺寸（英寸）：7.2英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：水滴屏电池容量（mAh）：4200mAh（典型值） 备注：电池额定容量为 4100mAh（额定值）充电器：5V/2A；9V/2A；10V/4A机身颜色：宝石蓝热点：快速充电，液冷散热，NFC，5G游戏性能：其他游戏配置：液冷散热充电功率：40-49W特殊功能：超大字体，超大音量，语音命令，语音识别(文字语音互转)，远程协助，极简桌面模式操作系统：Android(安卓', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (43, '1204', '华为', '华为 Mate20 Pro', 'https://bkimg.cdn.bcebos.com/pic/8435e5dde71190ef76c6c6bade528a16fdfaaf51ca37?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U5Mg==,g_7,xp_5,yp_5/format,f_auto', '商品毛重：0.53kg商品产地：中国大陆CPU型号：麒麟980运行内存：8GB机身存储：128GB存储卡：NM存储卡摄像头数量：后置三摄后摄主摄像素：4000万像素前摄主摄像素：2400万像素主屏幕尺寸（英寸）：6.39 英寸分辨率：其它分辨率屏幕比例：其它屏幕比例屏幕前摄组合：刘海屏电池容量（mAh）：4200mAh（典型值）充电器：10V/4A机身颜色：亮黑色4G LTE网络特性：VOLTE 4G通话，CA载波聚合，MIMO多天线技术充电功率：40-49W操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (13, '1205', '华为', '华为 P30 Pro', 'https://bkimg.cdn.bcebos.com/pic/5bafa40f4bfbfbed8943c00076f0f736afc31fb2?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UyNzI=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：0.53kg商品产地：中国大陆CPU型号：麒麟980运行内存：8GB机身存储：128GB存储卡：NM存储卡摄像头数量：后置四摄后摄主摄像素：4000万像素前摄主摄像素：3200万像素拍照特点：景深，后置四摄，红外，微距，光学变焦，光学防抖主屏幕尺寸（英寸）：6.47英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：水滴屏电池容量（mAh）：4200mAh（典型值）充电器：10V/4A机身颜色：极光色热点：人脸识别，快速充电，无线充电，液冷散热，高倍率变焦，屏幕指纹，防水防尘，NFC，曲面屏屏占比：≥90%操作系统：Android(安卓)充电功率：40-49W', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (52, '1206', '华为', '华为 P30', 'https://bkimg.cdn.bcebos.com/pic/7aec54e736d12f2ed9a9880c40c2d56285356829?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：481.00g商品产地：中国大陆CPU型号：麒麟980运行内存：6GB机身存储：128GB存储卡：NM存储卡摄像头数量：后置三摄后摄主摄像素：1600万像素前摄主摄像素：3200万像素主屏幕尺寸（英寸）：6.1英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：3650mAh（典型值）备注：电池额定容量为 3550mAh充电器：4.5V/5A机身颜色：天空之境操作系统：Android(安卓)\r\n', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (59, '1207', '华为', '华为 Mate 20', 'https://bkimg.cdn.bcebos.com/pic/574e9258d109b3de9c8242f436f77b81800a19d8e65c?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：0.51kg商品产地：中国大陆CPU型号：麒麟980运行内存：6GB机身存储：64GB存储卡：NM存储卡摄像头数量：后置三摄后摄主摄像素：1200万像素前摄主摄像素：2400万像素拍照特点：后置三摄，微距，光学变焦主屏幕尺寸（英寸）：6.53英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：水滴屏电池容量（mAh）：4000mAh（典型值）充电器：4.5V/5A机身颜色：亮黑色热点：NFC4G LTE网络特性：VOLTE 4G通话，CA载波聚合，MIMO多天线技术充电功率：20-26W特殊功能：超大字体，语音命令，极简桌面模式操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (44, '1208', '华为', '华为 nova 5z', 'https://consumer.huawei.com/content/dam/huawei-cbg-site/greate-china/cn/mkt/pdp/phones/nova5z/images/product-design/design-blue-p-mob.png', '商品毛重：410.00g商品产地：中国大陆CPU型号：麒麟810运行内存：6GB机身存储：64GB存储卡：NM存储卡摄像头数量：后置四摄后摄主摄像素：4800万像素前摄主摄像素：3200万像素主屏幕尺寸（英寸）：6.26英寸分辨率：其它分辨率屏幕比例：19.5:9屏幕前摄组合：极点屏电池容量（mAh）：4000充电器：10V/2A机身颜色：幻夜黑操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (57, '1209', '华为', '华为 nova 5 Pro', 'https://bkimg.cdn.bcebos.com/pic/203fb80e7bec54e736d1895478708c504fc2d5623c6a?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U5Mg==,g_7,xp_5,yp_5/format,f_auto', '商品毛重：490.00g商品产地：中国大陆CPU型号：麒麟810运行内存：8GB机身存储：128GB存储卡：NM存储卡摄像头数量：后置四摄后摄主摄像素：4800万像素前摄主摄像素：3200万像素拍照特点：景深，后置四摄，微距主屏幕尺寸（英寸）：6.39英寸分辨率：全高清FHD+屏幕比例：19.5:9屏幕前摄组合：水滴屏电池容量（mAh）：3500mAh（典型值）充电器：10V/4A机身颜色：绮境森林热点：人脸识别，快速充电，屏幕指纹，超高屏占比游戏配置：游戏深度优化，游戏勿扰模式，游戏性能模式操作系统：Android(安卓)充电功率：40-49W特殊功能：超大字体，SOS功能', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (73, '1210', '华为', '华为 nova 5i Pro', 'https://consumer.huawei.com/content/dam/huawei-cbg-site/greate-china/cn/mkt/pdp/phones/nova5i-pro/images/mob-kv.jpg', '商品毛重：400.00g商品产地：中国大陆CPU型号：麒麟810运行内存：6GB机身存储：128GB存储卡：NM存储卡摄像头数量：后置四摄后摄主摄像素：4800万像素前摄主摄像素：3200万像素拍照特点：景深，后置四摄，微距主屏幕尺寸（英寸）：6.26英寸分辨率：全高清FHD+屏幕比例：19.5:9屏幕前摄组合：极点屏电池容量（mAh）：4000充电器：10V/2A机身颜色：翡冷翠热点：人脸识别，快速充电操作系统：Android(安卓)充电功率：20-26W特殊功能：超大字体；SOS功能；重力感应', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (27, '1211', '华为', '华为 nova 5i', 'https://bkimg.cdn.bcebos.com/pic/060828381f30e9248fc57c3843086e061d95f752?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：400.00g商品产地：中国CPU型号：其他运行内存：8GB机身存储：128GB存储卡：支持MicroSD(TF)摄像头数量：后置四摄后摄主摄像素：2400万像素前摄主摄像素：2400万像素拍照特点：景深，后置四摄，微距主屏幕尺寸（英寸）：6.4英寸分辨率：高清HD+屏幕比例：19.5:9屏幕前摄组合：极点屏电池容量（mAh）：4000mAh（典型值）充电器：5V/2A机身颜色：苏音蓝热点：超高屏占比操作系统：Android(安卓)充电功率：小于12 W特殊功能：超大字体，SOS功能，语音命令，语音识别(文字语音互转)，极简桌面模式', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (60, '1212', '华为', '华为 nova 5', 'https://img.pconline.com.cn/images/product/1076/1076593/q.jpg', '商品毛重：490.00g商品产地：中国大陆CPU型号：麒麟810运行内存：8GB机身存储：128GB存储卡：NM存储卡摄像头数量：后置四摄后摄主摄像素：4800万像素前摄主摄像素：3200万像素拍照特点：景深，后置四摄，微距主屏幕尺寸（英寸）：6.39英寸分辨率：全高清FHD+屏幕比例：19.5:9屏幕前摄组合：水滴屏电池容量（mAh）：3500mAh（典型值）充电器：10V/4A机身颜色：绮境森林热点：人脸识别，快速充电，屏幕指纹，超高屏占比游戏配置：游戏深度优化，游戏勿扰模式，游戏性能模式操作系统：Android(安卓)充电功率：40-49W特殊功能：超大字体，SOS功能', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (53, '1213', '华为', '华为 nova 4e', 'https://bkimg.cdn.bcebos.com/pic/43a7d933c895d1435b09363b7df082025aaf07af?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U4MA==,g_7,xp_5,yp_5/format,f_auto', '商品毛重：390.00g商品产地：中国大陆CPU型号：其他运行内存：4GB机身存储：128GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：2400万像素前摄主摄像素：3200万像素拍照特点：景深，后置三摄主屏幕尺寸（英寸）：6.15英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：3340mAh（典型值）充电器：9V/2A机身颜色：雀翎蓝热点：人脸识别，快速充电操作系统：Android(安卓)充电功率：18-19W特殊功能：语音识别(文字语音互转)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (74, '1214', '华为', '华为 nova 4', 'https://img.pconline.com.cn/images/product/1139/1139448/q.jpg', '商品毛重：390.00g商品产地：中国大陆CPU型号：其他运行内存：4GB机身存储：128GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：2400万像素前摄主摄像素：3200万像素拍照特点：景深，后置三摄主屏幕尺寸（英寸）：6.15英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：3340mAh（典型值）充电器：9V/2A机身颜色：雀翎蓝热点：人脸识别，快速充电操作系统：Android(安卓)充电功率：18-19W特殊功能：语音识别(文字语音互转)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (55, '1215', '华为', '华为畅享 9S', 'https://img.pconline.com.cn/images/product/1168/1168647/q.jpg', '商品毛重：360.00g商品产地：中国大陆CPU型号：其他运行内存：6GB机身存储：64GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：2400万像素前摄主摄像素：800万像素主屏幕尺寸（英寸）：6.21英寸分辨率：全高清FHD+屏幕比例：19.5:9屏幕前摄组合：水滴屏电池容量（mAh）：3400（典型值）充电器：5V/2A机身颜色：幻夜黑操作系统：Android(安卓)充电功率：小于12 W', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (75, '1216', '华为', '华为畅享 9e', 'https://consumer-img.huawei.com/content/dam/huawei-cbg-site/greate-china/cn/mkt/pdp/phones/changxiang9e/img/kv2.png', '商品毛重：320.00g商品产地：中国大陆CPU型号：其他运行内存：3GB机身存储：32GB存储卡：支持MicroSD(TF)摄像头数量：后置单摄后摄主摄像素：1300万像素前摄主摄像素：800万像素主屏幕尺寸（英寸）：6.088英寸分辨率：高清HD+屏幕比例：19.5:9屏幕前摄组合：水滴屏电池容量（mAh）：3020mAh（典型值）充电器：5V/1A机身颜色：摩登黑热点：人脸识别特殊功能：超大字体，SOS功能操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (58, '1217', '华为', '华为畅享 10s', 'https://consumer.huawei.com/content/dam/huawei-cbg-site/greate-china/cn/mkt/pdp/phones/changxiang-10s/img/cx10s-pic-overview-kv.jpg', '商品毛重：379.00g商品产地：中国大陆CPU型号：其他运行内存：6GB机身存储：64GB存储卡：NM存储卡摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：1600万像素主屏幕尺寸（英寸）：6.3英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：4000mAh (典型值)充电器：5V/2A机身颜色：天空之境操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (77, '1218', '华为', '华为畅享9 Plus', 'https://consumer-img.huawei.com/content/dam/huawei-cbg-site/greate-china/cn/mkt/pdp/phones/cx9plus/cx9plus-container1-product-section1.png', '商品毛重：500.00g商品产地：中国大陆CPU型号：其他运行内存：4GB机身存储：64GB存储卡：支持MicroSD(TF)摄像头数量：后置双摄后摄主摄像素：1300万像素前摄主摄像素：1600万像素拍照特点：景深，后置双摄，前置双摄主屏幕尺寸（英寸）：6.5英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：刘海屏电池容量（mAh）：4000mAh(典型值）充电器：5V/2A机身颜色：幻夜黑热点：人脸识别操作系统：Android(安卓)充电功率：小于12 W特殊功能：超大字体', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (140, '1219', '华为', '华为畅享10', 'https://bkimg.cdn.bcebos.com/pic/377adab44aed2e73f122347f8801a18b86d6fa9e?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：395.00g商品产地：中国大陆CPU型号：其他运行内存：6GB机身存储：64GB存储卡：支持MicroSD(TF)摄像头数量：后置双摄后摄主摄像素：4800万像素前摄主摄像素：800万像素主屏幕尺寸（英寸）：6.39英寸分辨率：其它分辨率屏幕比例：其它屏幕比例屏幕前摄组合：极点屏电池容量（mAh）：4000（典型值）充电器：5V/2A机身颜色：极光蓝操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (141, '1220', '华为', '华为麦芒8', 'https://bkimg.cdn.bcebos.com/pic/91529822720e0cf36f8901180446f21fbf09aad3?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U4MA==,g_7,xp_5,yp_5/format,f_auto', '商品毛重：359.00g商品产地：中国大陆CPU型号：其他运行内存：6GB机身存储：128GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：2400万像素前摄主摄像素：800万像素主屏幕尺寸（英寸）：6.21英寸分辨率：全高清FHD+屏幕比例：19.5:9屏幕前摄组合：水滴屏电池容量（mAh）：3400（典型值）充电器：5V/2A机身颜色：幻夜黑充电功率：小于12 W操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (56, '1221', '华为', '华为畅享10 Plus', 'https://consumer-img.huawei.com/content/dam/huawei-cbg-site/greate-china/cn/mkt/pdp/phones/changxiang-10plus/img/huawei-changxiang-10plus-kv.png', '商品毛重：415.00g商品产地：中国大陆CPU型号：其他运行内存：8GB机身存储：128GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：1600万像素主屏幕尺寸（英寸）：6.59英寸分辨率：全高清FHD+屏幕比例：19.5:9屏幕前摄组合：弹出式摄像头电池容量（mAh）：4000充电器：5V/2A机身颜色：天空之境操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (3, '1301', '小米', '小米 9pro5G', 'https://bkimg.cdn.bcebos.com/pic/9358d109b3de9c82790d3ce26381800a19d84377?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：490.00g商品产地：中国大陆CPU型号：骁龙855运行内存：8GB机身存储：128GB存储卡：其它存储卡摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：2000万像素主屏幕尺寸（英寸）：6.39 英寸分辨率：其它分辨率屏幕比例：其它屏幕比例屏幕前摄组合：水滴屏电池容量（mAh）：3300mAh(typ) / 3200mAh (min) 充电器：其他机身颜色：全息幻彩蓝热点：人脸识别，快速充电，无线充电4G LTE网络特性：VOLTE 4G通话操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (14, '1302', '小米', '小米 9', 'https://bkimg.cdn.bcebos.com/pic/a044ad345982b2b7bf1efda93eadcbef77099bde?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：480.00g商品产地：中国大陆CPU型号：骁龙855运行内存：8GB机身存储：256GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：2000万像素主屏幕尺寸（英寸）：6.39 英寸分辨率：其它分辨率屏幕比例：19.5:9屏幕前摄组合：水滴屏电池容量（mAh）：3300mAh(typ) / 3200mAh (min) 充电器：其他机身颜色：全息幻彩蓝热点：人脸识别，快速充电，无线充电4G LTE网络特性：VOLTE 4G通话操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (21, '1303', '小米', '小米 9SE', 'https://bkimg.cdn.bcebos.com/pic/5243fbf2b2119313d47138dd6a380cd791238da9?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：420.00g商品产地：中国大陆CPU型号：骁龙712运行内存：8GB机身存储：128GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：2000万像素主屏幕尺寸（英寸）：5.97英寸分辨率：全高清FHD+屏幕比例：19.5:9屏幕前摄组合：水滴屏电池容量（mAh）：3070mAh（typ）/2970mAh (min)充电器：其他机身颜色：蓝色操作系统：Android(安卓', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (15, '1304', '小米', '小米 CC9', 'https://bkimg.cdn.bcebos.com/pic/f7246b600c3387445c6e9e1f5e0fd9f9d72aa02e?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：490.00g商品产地：中国大陆CPU型号：骁龙710运行内存：6GB机身存储：64GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：3200万像素主屏幕尺寸（英寸）：6.39英寸分辨率：QHD+及以上屏幕比例：19.5:9屏幕前摄组合：水滴屏电池容量（mAh）：4030mAh充电器：9V/2A机身颜色：白色恋人热点：人脸识别，NFC操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (45, '1305', '小米', '小米 CC9e', 'https://bkimg.cdn.bcebos.com/pic/bba1cd11728b47108de44cafcccec3fdfd03238d?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：431.00g商品产地：中国大陆CPU型号：其他运行内存：6GB机身存储：64GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：3200万像素主屏幕尺寸（英寸）：6.088英寸分辨率：高清HD+屏幕比例：19.5:9屏幕前摄组合：水滴屏电池容量（mAh）：4030mAh充电器：5V/2A机身颜色：白色热点：人脸识别操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (47, '1306', '小米', '小米CC9 Pro', 'https://bkimg.cdn.bcebos.com/pic/b8014a90f603738dec598b72bc1bb051f819ec4b?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：500.00g商品产地：中国大陆操作系统：Android(安卓)\r\n', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (22, '1307', '小米', 'Redmi 8A', 'https://bkimg.cdn.bcebos.com/pic/d53f8794a4c27d1e0c85ebad14d5ad6eddc4383c?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：400.00g商品产地：中国大陆CPU型号：骁龙439运行内存：3GB机身存储：32GB存储卡：支持MicroSD(TF)摄像头数量：后置单摄后摄主摄像素：1200万像素前摄主摄像素：800万像素主屏幕尺寸（英寸）：其他英寸分辨率：高清HD+屏幕比例：19:9屏幕前摄组合：水滴屏电池容量（mAh）：5000mAh（typ）*充电器：5V/2A机身颜色：深海蓝操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (46, '1308', '小米', 'Redmi 8 ', 'https://bkimg.cdn.bcebos.com/pic/9213b07eca8065380cd7e81c4191b644ad3459822425?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：420.00g商品产地：中国大陆CPU型号：骁龙439运行内存：4GB机身存储：64GB存储卡：支持MicroSD(TF)摄像头数量：后置双摄后摄主摄像素：1200万像素前摄主摄像素：800万像素主屏幕尺寸（英寸）：6.22英寸分辨率：高清HD+屏幕比例：19:9屏幕前摄组合：其他电池容量（mAh）：5000mAh（typ）*充电器：5V/2A机身颜色：仙踪绿操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (61, '1309', '小米', 'Redmi K20Pro尊享版', 'https://bkimg.cdn.bcebos.com/pic/060828381f30e9249c02415343086e061d95f72a?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：0.52kg商品产地：中国大陆CPU型号：骁龙855plus运行内存：12GB机身存储：512GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：2000万像素主屏幕尺寸（英寸）：6.39 英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：弹出式摄像头电池容量（mAh）：4000mAh（typ）/3900mAh（min）充电器：其他机身颜色：冰川蓝操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (79, '1310', '小米', 'Redmi Note8Pro', 'https://bkimg.cdn.bcebos.com/pic/3812b31bb051f8199516df28d5b44aed2e73e7a5?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：490.00g商品产地：中国大陆CPU型号：Helio G90T运行内存：8GB机身存储：128GB存储卡：支持MicroSD(TF)摄像头数量：后置四摄后摄主摄像素：6400万像素前摄主摄像素：2000万像素主屏幕尺寸（英寸）：6.53英寸分辨率：全高清FHD+屏幕比例：19.5:9屏幕前摄组合：其他电池容量（mAh）：4500mAh（typ）充电器：其他机身颜色：冰翡翠操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (28, '1311', '小米', 'Redmi Note8', 'https://bkimg.cdn.bcebos.com/pic/b2de9c82d158ccbf1e69a85716d8bc3eb0354181?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：440.00g商品产地：中国大陆CPU型号：骁龙665运行内存：6GB机身存储：128GB存储卡：支持MicroSD(TF)摄像头数量：后置四摄后摄主摄像素：4800万像素前摄主摄像素：1300万像素主屏幕尺寸（英寸）：6.3英寸分辨率：全高清FHD+屏幕比例：19.5:9屏幕前摄组合：水滴屏电池容量（mAh）：4000mAh（typ）*3900mAh（min）充电器：其他机身颜色：梦幻蓝操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (78, '1312', '小米', 'Redmi K20Pro', 'https://bkimg.cdn.bcebos.com/pic/060828381f30e9249c02415343086e061d95f72a?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：480.00g商品产地：中国大陆CPU型号：骁龙855运行内存：8GB机身存储：128GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：2000万像素主屏幕尺寸（英寸）：6.39 英寸分辨率：其它分辨率屏幕比例：其它屏幕比例屏幕前摄组合：弹出式摄像头电池容量（mAh）：4000mAh（typ）/3900mAh（min）充电器：其他机身颜色：火焰红操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (62, '1313', '小米', 'Redmi K20', 'https://bkimg.cdn.bcebos.com/pic/6f061d950a7b02086670fc886dd9f2d3572cc81a?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：480.00g商品产地：中国大陆CPU型号：骁龙730运行内存：8GB机身存储：256GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：2000万像素主屏幕尺寸（英寸）：6.39英寸分辨率：全高清FHD+屏幕比例：19.5:9屏幕前摄组合：弹出式摄像头电池容量（mAh）：4000mAh（typ）/3900mAh（min）充电器：其他机身颜色：碳纤黑操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (4, '1401', 'OPPO', 'OPPO Reno Ace', 'https://dsfs.oppo.com/product/2019/RenoAce/images/gd40zn@2x-fa1e0b8625203f75b4b6a7b1310f7586.jpg', '商品毛重：0.635kg商品产地：中国大陆CPU型号：骁龙855plus运行内存：8GB机身存储：128GB存储卡：不支持存储卡摄像头数量：后置四摄后摄主摄像素：4800万像素前摄主摄像素：4800万像素拍照特点：后置四摄主屏幕尺寸（英寸）：6.55英寸分辨率：其它分辨率屏幕比例：20:9屏幕前摄组合：水滴屏，超高屏占比(>90%)的未开孔屏幕电池容量（mAh）：4000mAh充电器：其他机身颜色：星际蓝热点：人脸识别，快速充电，液冷散热，屏幕指纹，NFC，超高屏占比游戏性能：发烧级4G LTE网络特性：移动4G+游戏配置：液冷散热，游戏震感，游戏深度优化，游戏勿扰模式，游戏性能模式操作系统：Android(安卓)充电功率：50-100W特殊功能：超大字体，超大音量，SOS功能，语音命令屏占比：≥91%', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (23, '1402', 'OPPO', 'OPPO Reno2', 'https://bkimg.cdn.bcebos.com/pic/b3119313b07eca8048f327b79e2397dda04483ef?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：1.0kg运行内存：其它内存机身存储：128GB存储卡：不支持存储卡后摄主摄像素：4800万像素前摄主摄像素：1600万像素屏幕前摄组合：弹出式摄像头，超高屏占比(>90%)的未开孔屏幕电池容量（mAh）：3915mAh （额定值）4000mAh（典型值）充电器：其他机身颜色：其他屏占比：≥93%', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (16, '1403', 'OPPO', 'OPPO Reno Z', 'https://bkimg.cdn.bcebos.com/pic/5366d0160924ab1852f2df2f3afae6cd7a890bc5?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：0.517kg机身存储：8GB以下存储卡：不支持存储卡后摄主摄像素：4800万像素前摄主摄像素：3200万像素屏幕前摄组合：水滴屏电池容量（mAh）：4035mAh（典型值）充电器：其他机身颜色：其他热点：快速充电，人脸识别4G LTE网络特性：移动4G+', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (81, '1404', 'OPPO', 'OPPO Reno2 Z', 'https://imgm2.cnmo.com/cnmo_product/23_360x270/992/cejTF4kavJgs.jpg', '商品毛重：1.0kg运行内存：其它内存机身存储：128GB存储卡：支持MicroSD(TF)后摄主摄像素：4800万像素前摄主摄像素：1600万像素屏幕前摄组合：其他电池容量（mAh）：4000mAh充电器：其他机身颜色：其他4G LTE网络特性：VOLTE 4G通话\r\n', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (80, '1405', 'OPPO', 'OPPO Reno', 'https://bkimg.cdn.bcebos.com/pic/a6efce1b9d16fdfafa70d8bebb8f8c5494ee7b45?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：0.517kg机身存储：256GB存储卡：不支持存储卡后摄主摄像素：4800万像素前摄主摄像素：1600万像素拍照特点：景深，后置双摄，后置多摄屏幕前摄组合：弹出式摄像头，超高屏占比(>90%)的未开孔屏幕电池容量（mAh）：3680mAh （额定值）3765mAh（典型值）充电器：其他机身颜色：其他热点：人脸识别，快速充电，屏幕指纹，NFC，超高屏占比，弹出式摄像头4G LTE网络特性：移动4G+', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (83, '1406', 'OPPO', 'OPPO K5', 'https://bkimg.cdn.bcebos.com/pic/574e9258d109b3de91905b6cc3bf6c81800a4c82?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：1.0kg运行内存：8GB机身存储：其它存储存储卡：不支持存储卡后摄主摄像素：其他前摄主摄像素：其他屏幕前摄组合：其他电池容量（mAh）：以官网信息为准充电器：其他', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (30, '1407', 'OPPO', 'OPPO K3', 'https://bkimg.cdn.bcebos.com/pic/6a63f6246b600c3304db5353144c510fd8f9a18f?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U5Mg==,g_7,xp_5,yp_5/format,f_auto', '商品毛重：235.00g机身存储：其它存储存储卡：不支持存储卡后摄主摄像素：1600万像素前摄主摄像素：1600万像素屏幕前摄组合：弹出式摄像头，超高屏占比(>90%)的未开孔屏幕，其他电池容量（mAh）：3765mAh（典型值）3680mAh（额定值）充电器：5V/4A机身颜色：其他热点：人脸识别，屏幕指纹，快速充电，超高屏占比，弹出式摄像头4G LTE网络特性：移动4G+', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (49, '1408', 'OPPO', 'OPPO K1', 'https://bkimg.cdn.bcebos.com/pic/b219ebc4b74543a9258d85ba13178a82b9011435?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：235.00g机身存储：其它存储存储卡：支持MicroSD(TF)后摄主摄像素：1600万像素前摄主摄像素：2500万像素屏幕前摄组合：其他电池容量（mAh）：3600mAH充电器：5V/2A机身颜色：其他4G LTE网络特性：其他', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (48, '1409', 'OPPO', 'OPPO R17', 'https://bkimg.cdn.bcebos.com/pic/f11f3a292df5e0fe8ff0cf56536034a85fdf72f8?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：0.517kg机身存储：128GB存储卡：其它存储卡后摄主摄像素：其他前摄主摄像素：其他屏幕前摄组合：其他电池容量（mAh）：以官网信息为准充电器：5V/4A机身颜色：其他热点：快速充电4G LTE网络特性：移动4G+', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (50, '1410', 'OPPO', 'OPPO R15x', 'https://bkimg.cdn.bcebos.com/pic/c8ea15ce36d3d5392f138ea93787e950352ab0aa?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U5Mg==,g_7,xp_5,yp_5/format,f_auto', '商品毛重：235.00g机身存储：128GB存储卡：其它存储卡后摄主摄像素：其他前摄主摄像素：其他屏幕前摄组合：其他电池容量（mAh）：3600mAh（典型值）充电器：5V/2A机身颜色：其他热点：人脸识别4G LTE网络特性：其他', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (29, '1411', 'OPPO', 'OPPO R17 Pro', 'https://bkimg.cdn.bcebos.com/pic/d8f9d72a6059252d5c759400399b033b5bb5b950?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U5Mg==,g_7,xp_5,yp_5/format,f_auto', '商品毛重：0.517kgCPU型号：骁龙710运行内存：8GB机身存储：128GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：双核1200万像素（2400万感光单元）前摄主摄像素：2500万像素主屏幕尺寸（英寸）：6.4英寸分辨率：其它分辨率屏幕比例：其它屏幕比例屏幕前摄组合：水滴屏电池容量（mAh）：2×1850mAh（典型值）充电器：其他机身颜色：绿色操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (84, '1412', 'OPPO', 'OPPO A8', 'https://dsfs.oppo.com/archives/202011/202011130611055fae5ce53d4cb.jpg?x-oss-process=image/format,webp', '商品毛重：0.532kg机身存储：64GB存储卡：其它存储卡后摄主摄像素：其他前摄主摄像素：其他屏幕前摄组合：其他电池容量（mAh）：4230mAh 充电器：机身颜色：其他', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (82, '1413', 'OPPO', 'OPPO A11x', 'https://bkimg.cdn.bcebos.com/pic/fd039245d688d43f540d49a0721ed21b0ef43b38?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U4MA==,g_7,xp_5,yp_5/format,f_auto', '商品毛重：1.0kg运行内存：8GB机身存储：128GB存储卡：不支持存储卡后摄主摄像素：4800万像素前摄主摄像素：1600万像素屏幕前摄组合：水滴屏电池容量（mAh）：4880mAh(额定值) 5000mAh(典型值)充电器：其他', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (85, '1414', 'OPPO', 'OPPO A9x', 'https://bkimg.cdn.bcebos.com/pic/54fbb2fb43166d2257693193492309f79052d29e?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：0.532kgCPU型号：其他机身存储：256GB存储卡：不支持存储卡摄像头数量：后置双摄后摄主摄像素：4800万像素前摄主摄像素：1600万像素主屏幕尺寸（英寸）：6.53英寸分辨率：其它分辨率屏幕比例：其它屏幕比例屏幕前摄组合：水滴屏电池容量（mAh）：4020mAh（TYP）充电器：5V/4A机身颜色：其他热点：人脸识别，快速充电操作系统：Android(安卓)4G LTE网络特性：移动4G+', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (31, '1415', 'OPPO', 'OPPO A5', 'https://bkimg.cdn.bcebos.com/pic/d000baa1cd11728b1052dac6c4fcc3cec2fd2cd2?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：0.532kgCPU型号：其他机身存储：其它存储存储卡：其它存储卡摄像头数量：其他后摄主摄像素：其他前摄主摄像素：其他主屏幕尺寸（英寸）：6.2英寸分辨率：其它分辨率屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：4230mAh（典型值）充电器：5V/2A机身颜色：其他', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (86, '1416', 'OPPO', 'OPPO A9', 'https://bkimg.cdn.bcebos.com/pic/9825bc315c6034a8dd678799c413495409237624?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：0.532kgCPU型号：其他机身存储：其它存储存储卡：不支持存储卡摄像头数量：其他后摄主摄像素：其他前摄主摄像素：其他主屏幕尺寸（英寸）：6.53英寸分辨率：其它分辨率屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：4020mAh（典型值）充电器：其他机身颜色：其他', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (88, '1417', 'OPPO', 'OPPO A11', 'https://bkimg.cdn.bcebos.com/pic/4a36acaf2edda3cc72d9d6780ee93901213f92ac?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：1.0kg运行内存：4GB机身存储：128GB存储卡：不支持存储卡后摄主摄像素：其他前摄主摄像素：其他屏幕前摄组合：其他电池容量（mAh）：4880mAh(额定值) 5000mAh(典型值)充电器：其他', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (51, '1418', 'OPPO', 'OPPO A7', 'https://dsfs.oppo.com/product/2018/A7/images/1920/p1-phone2-404af2e7a387ce31dbf18274e09c1667.png?x-oss-process=image/format,webp', '商品毛重：0.532kgCPU型号：其他机身存储：64GB存储卡：其它存储卡摄像头数量：其他后摄主摄像素：其他前摄主摄像素：其他主屏幕尺寸（英寸）：6.2英寸分辨率：其它分辨率屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：4230充电器：5V/2A', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (5, '1501', 'VIVO', 'VIVO Nex3', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/77/10001477_1608863745117_250x250.png.webp', '商品毛重：0.718kg商品产地：中国大陆CPU型号：骁龙855plus存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：6400万像素前摄主摄像素：1600万像素拍照特点：后置三摄，微距主屏幕尺寸（英寸）：6.89英寸分辨率：QHD+及以上屏幕比例：其它屏幕比例屏幕前摄组合：弹出式摄像头，超高屏占比(>90%)的未开孔屏幕电池容量（mAh）：4500充电器：11V/4A热点：快速充电，屏幕指纹，5G，超高屏占比，弹出式摄像头屏占比：≥99%游戏配置：游戏深度优化，游戏勿扰模式，游戏性能模式充电功率：40-49W操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (25, '1502', 'VIVO', 'vivo iQOO Neo 855版', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/59/10001559_1571643866653_750x750.png.webp', '商品毛重：0.51kg商品产地：中国大陆CPU型号：骁龙855存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：1200万像素前摄主摄像素：1600万像素拍照特点：后置三摄主屏幕尺寸（英寸）：6.38英寸分辨率：QHD+及以上屏幕比例：19.5:9屏幕前摄组合：水滴屏电池容量（mAh）：4500充电器：其他热点：快速充电操作系统：Android(安卓)充电功率：30-39W游戏配置：游戏性能模式', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (87, '1503', 'VIVO', 'vivo iQOO Pro', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/99/10001399_1578644851407_250x250.png.webp', '商品毛重：0.62kg商品产地：中国大陆CPU型号：骁龙855plus存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：4800万像素拍照特点：后置三摄，微距主屏幕尺寸（英寸）：6.41英寸分辨率：QHD+及以上屏幕比例：19.5:9屏幕前摄组合：水滴屏电池容量（mAh）：4500充电器：11V/4A热点：快速充电，液冷散热，屏幕指纹，NFC，5G，超高屏占比屏占比：≥91%游戏性能：其他游戏配置：液冷散热，游戏深度优化，游戏勿扰模式，游戏性能模式，游戏灯效操作系统：Android(安卓)充电功率：40-49W', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (17, '1504', 'VIVO', 'vivo iQOO', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/67/10000467_1554791874901_750x750.png.webp', '商品毛重：0.585kg商品产地：中国大陆CPU型号：骁龙855运行内存：8GB机身存储：128GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：双核1200万像素（2400万感光单元）前摄主摄像素：双核1200万像素拍照特点：后置三摄主屏幕尺寸（英寸）：6.41英寸分辨率：QHD+及以上屏幕比例：19.5:9屏幕前摄组合：超高屏占比(>90%)的未开孔屏幕电池容量（mAh）：4000充电器：11V/4A机身颜色：熔岩橙热点：人脸识别，快速充电，液冷散热游戏性能：发烧级4G LTE网络特性：其他游戏配置：液冷散热，游戏深度优化，游戏勿扰模式，游戏性能模式，游戏灯效操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (90, '1505', 'VIVO', 'vivo Z5', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/14/10001314_1575856969719_750x750.png.webp', '商品毛重：458.00g商品产地：中国大陆CPU型号：骁龙712运行内存：6GB机身存储：256GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：3200万像素拍照特点：后置三摄主屏幕尺寸（英寸）：6.38英寸分辨率：其它分辨率屏幕比例：19.5:9屏幕前摄组合：水滴屏电池容量（mAh）：4500充电器：10V/2.25A机身颜色：极光幻境热点：快速充电，屏幕指纹，超高屏占比操作系统：Android(安卓)游戏配置：游戏勿扰模式，游戏性能', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (92, '1506', 'VIVO', 'vivo Z5x', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/72/10001072_1565264089045_250x250.png.webp', '商品毛重：445.00g商品产地：中国大陆CPU型号：骁龙710运行内存：8GB机身存储：64GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：1600万像素前摄主摄像素：1600万像素拍照特点：后置三摄主屏幕尺寸（英寸）：6.53英寸分辨率：QHD+及以上屏幕比例：19.5:9屏幕前摄组合：极点屏电池容量（mAh）：5000充电器：9V/2A机身颜色：幻影黑热点：快速充电，超高屏占比操作系统：Android(安卓)游戏配置：游戏性能模式', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (98, '1507', 'VIVO', 'vivo Z3 ', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/36/10636_1542630534209_250x250.png.webp', '商品毛重：420.00g商品产地：中国大陆CPU型号：骁龙710运行内存：6GB机身存储：64GB存储卡：支持MicroSD(TF)摄像头数量：后置双摄后摄主摄像素：1600万像素前摄主摄像素：双核1200万像素拍照特点：后置双摄主屏幕尺寸（英寸）：6.3英寸分辨率：QHD+及以上屏幕比例：19.5:9屏幕前摄组合：水滴屏电池容量（mAh）：3315充电器：其他；10V/2.25A机身颜色：梦幻粉热点：人脸识别操作系统：Android(安卓)4G LTE网络特性：其他游戏配置：游戏性能模式', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (89, '1508', 'VIVO', 'vivo X27', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/34/10000534_1571974401675_750x750.png.webp', '商品毛重：0.59kg商品产地：中国大陆CPU型号：骁龙710运行内存：8GB机身存储：256GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：1600万像素拍照特点：后置三摄主屏幕尺寸（英寸）：6.39 英寸分辨率：QHD+及以上屏幕比例：19.5:9屏幕前摄组合：弹出式摄像头，超高屏占比(>90%)的未开孔屏幕电池容量（mAh）：4000充电器：10V/2.25A机身颜色：雀羽蓝热点：快速充电，屏幕指纹，超高屏占比，弹出式摄像头操作系统：Android(安卓)4G LTE网络特性：其他游戏配置：游戏勿扰模式，游戏性', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (97, '1509', 'VIVO', 'vivo X27Pro', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/58/10000658_1568960370367_750x750.png.webp', '商品毛重：0.615kg商品产地：中国大陆CPU型号：骁龙710运行内存：8GB机身存储：256GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：3200万像素拍照特点：后置三摄主屏幕尺寸（英寸）：6.7英寸分辨率：QHD+及以上屏幕比例：19.5:9屏幕前摄组合：弹出式摄像头，超高屏占比(>90%)的未开孔屏幕电池容量（mAh）：4000充电器：10V/2.25A机身颜色：黑珍珠热点：快速充电，屏幕指纹，超高屏占比，弹出式摄像头操作系统：Android(安卓)游戏配置：游戏勿扰模式，游戏性能', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (99, '1510', 'VIVO', 'vivo S5', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/80/10001680_1575597635155_250x250.png.webp', '商品毛重：0.51kg商品产地：中国大陆操作系统：Android(安卓)游戏配置：游戏性能模式', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (32, '1511', 'VIVO', 'vivo S1', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/11/10000611_1558576059738_750x750.png.webp', '商品毛重：455.00g商品产地：中国大陆CPU型号：其他运行内存：6GB机身存储：128GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：双核1200万像素（2400万感光单元）前摄主摄像素：其他拍照特点：后置三摄主屏幕尺寸（英寸）：6.53英寸分辨率：QHD+及以上屏幕比例：19.5:9屏幕前摄组合：弹出式摄像头，超高屏占比(>90%)的未开孔屏幕电池容量（mAh）：3940充电器：其他机身颜色：冰湖蓝热点：快速充电，超高屏占比，弹出式摄像头操作系统：Android(安卓)游戏配置：游戏性能模式', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (91, '1512', 'VIVO', 'vivo S1Pro', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/59/10000759_1561340933312_250x250.png.webp', '商品毛重：1.0kg商品产地：中国大陆CPU型号：骁龙675运行内存：6GB机身存储：256GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：3200万像素拍照特点：后置三摄主屏幕尺寸（英寸）：6.39 英寸分辨率：全高清FHD+屏幕比例：19.5:9屏幕前摄组合：弹出式摄像头电池容量（mAh）：3700充电器：其他机身颜色：钟情蓝热点：快速充电，屏幕指纹，超高屏占比，弹出式摄像头操作系统：Android(安卓)游戏配置：游戏性能模式', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (33, '1513', 'VIVO', 'vivo U3', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/15/10001615_1571318517049_750x750.png.webp', '商品毛重：440.00g商品产地：中国大陆CPU型号：骁龙675运行内存：6GB机身存储：64GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：1600万像素前摄主摄像素：1600万像素拍照特点：后置三摄主屏幕尺寸（英寸）：6.53英寸分辨率：QHD+及以上屏幕比例：其它屏幕比例屏幕前摄组合：水滴屏电池容量（mAh）：5000充电器：其他机身颜色：晶石蓝热点：快速充电操作系统：Android(安卓)充电功率：18-19W', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (100, '1514', 'VIVO', 'vivo U3x', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/24/10001524_1568794589848_750x750.png.webp', '商品毛重：440.00g商品产地：中国大陆CPU型号：骁龙665运行内存：4GB机身存储：64GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：1300万像素前摄主摄像素：800万像素拍照特点：后置三摄主屏幕尺寸（英寸）：6.35英寸分辨率：高清HD+屏幕比例：其它屏幕比例屏幕前摄组合：水滴屏电池容量（mAh）：5000充电器：9V/2A机身颜色：深湖蓝热点：人脸识别，快速充电操作系统：Android(安卓)充电功率：18-19W', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (94, '1515', 'VIVO', 'vivo Y7s', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/85/10001285_1563172478465_750x750.png.webp', '商品毛重：420.00g商品产地：中国大陆CPU型号：其他运行内存：6GB机身存储：128GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：1600万像素前摄主摄像素：1600万像素主屏幕尺寸（英寸）：6.38英寸分辨率：QHD+及以上屏幕比例：其它屏幕比例屏幕前摄组合：水滴屏电池容量（mAh）：4500充电器：9V/2A机身颜色：波漾蓝热点：快速充电，屏幕指纹操作系统：Android(安卓)游戏配置：游戏性能模式', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (96, '1516', 'VIVO', 'vivo Y3', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/58/10000958_1608878060048_250x250.png.webp', '商品毛重：440.00g商品产地：中国大陆CPU型号：其他运行内存：4GB机身存储：128GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：1300万像素前摄主摄像素：1600万像素拍照特点：后置三摄主屏幕尺寸（英寸）：6.35分辨率：高清HD+屏幕比例：19.5:9屏幕前摄组合：水滴屏电池容量（mAh）：5000充电器：其他机身颜色：孔雀蓝热点：快速充电操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (95, '1517', 'VIVO', 'vivo Y93s', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/55/10000055_1544614135744_750x750.png.webp', '商品毛重：380.00g商品产地：中国大陆CPU型号：其他运行内存：4GB机身存储：128GB存储卡：支持MicroSD(TF)摄像头数量：后置双摄后摄主摄像素：1300万像素前摄主摄像素：800万像素拍照特点：后置双摄主屏幕尺寸（英寸）：6.2英寸分辨率：高清HD+屏幕比例：19.5:9屏幕前摄组合：其他电池容量（mAh）：4030充电器：其他机身颜色：极光蓝热点：人脸识别操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (101, '1518', 'VIVO', 'vivo Y91', 'https://shopstatic.vivo.com.cn/vivoshop/commodity/07/10000607_1553236793565_750x750.png.webp', '商品毛重：380.00g商品产地：中国大陆CPU型号：其他运行内存：3GB机身存储：32GB存储卡：支持MicroSD(TF)摄像头数量：后置单摄后摄主摄像素：1300万像素前摄主摄像素：500万像素主屏幕尺寸（英寸）：6.2英寸分辨率：高清HD+屏幕比例：19.5:9屏幕前摄组合：水滴屏电池容量（mAh）：4030充电器：其他机身颜色：典雅黑热点：人脸识别操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (6, '1601', '荣耀', '荣耀Magic2', 'https://img.pconline.com.cn/images/product/1104/1104672/x.jpg', '商品毛重：206.00g商品产地：中国大陆CPU型号：麒麟980运行内存：6GB机身存储：128GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：1600万像素前摄主摄像素：1600万像素拍照特点：后置三摄主屏幕尺寸（英寸）：6.39 英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：3500mAh（典型值）充电器：10V/4A机身颜色：渐变蓝热点：快速充电游戏性能：其他操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (18, '1602', '荣耀', '荣耀20 PRO ', 'https://bkimg.cdn.bcebos.com/pic/7acb0a46f21fbe09cfdb658165600c338644ad9a?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：182.00g商品产地：中国大陆CPU型号：麒麟980运行内存：8GB机身存储：128GB存储卡：不支持存储卡摄像头数量：后置四摄后摄主摄像素：4800万像素前摄主摄像素：3200万像素主屏幕尺寸（英寸）：6.26英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：4000mAh（典型值）充电器：5V/4.5A机身颜色：蓝水翡翠操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (102, '1603', '荣耀', '荣耀20', 'https://bkimg.cdn.bcebos.com/pic/6a600c338744ebf8d1092399d7f9d72a6059a718?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：174.00g商品产地：中国大陆CPU型号：麒麟980运行内存：8GB机身存储：128GB存储卡：不支持存储卡摄像头数量：后置四摄后摄主摄像素：4800万像素前摄主摄像素：3200万像素主屏幕尺寸（英寸）：6.26英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：3750mAh（典型值）充电器：5V/4.5A机身颜色：幻影蓝操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (19, '1604', '荣耀', '荣耀9X PRO', 'https://bkimg.cdn.bcebos.com/pic/267f9e2f07082838368a0bfbb699a9014d08f15e?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U4MA==,g_7,xp_5,yp_5/format,f_auto', '商品毛重：206.00g商品产地：中国大陆CPU型号：麒麟810运行内存：8GB机身存储：128GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：1600万像素主屏幕尺寸（英寸）：6.59英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：4000mAh（典型值）充电器：5V/2A机身颜色：幻影紫操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (103, '1605', '荣耀', '荣耀V20', 'https://bkimg.cdn.bcebos.com/pic/aec379310a55b3199ccac21e4ca98226cffc17ad?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：180.00g商品产地：中国大陆CPU型号：麒麟980运行内存：6GB机身存储：128GB存储卡：不支持存储卡摄像头数量：后置双摄后摄主摄像素：4800万像素前摄主摄像素：2500万像素拍照特点：后置双摄主屏幕尺寸（英寸）：6.4英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：4000mAh（典型值） 3900mAh（最小值）充电器：4.5V/5A机身颜色：幻影蓝操作系统：Android(安卓)游戏性能：发烧级4G LTE网络特性：其他', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (104, '1606', '荣耀', '荣耀Note10', 'https://bkimg.cdn.bcebos.com/pic/023b5bb5c9ea15ce650c2ccbba003af33b87b216?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U4MA==,g_7,xp_5,yp_5/format,f_auto', '商品毛重：230.00g商品产地：中国大陆CPU型号：麒麟970运行内存：6GB机身存储：64GB存储卡：支持MicroSD(TF)摄像头数量：后置双摄后摄主摄像素：2400万像素前摄主摄像素：1300万像素主屏幕尺寸（英寸）：6.95英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：5000mAh（典型值） 4900mAh（额定值）充电器：5V/4.5A机身颜色：幻夜黑热点：快速充电游戏性能：发烧级操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (34, '1607', '荣耀', '荣耀20S ', 'https://bkimg.cdn.bcebos.com/pic/b8014a90f603738da97755c23253a751f819871846b0?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：440.00g商品产地：中国大陆CPU型号：麒麟810运行内存：6GB机身存储：128GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：3200万像素拍照特点：后置三摄主屏幕尺寸（英寸）：6.26英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：3750mAh（典型值）充电器：10V/2A机身颜色：蝶羽蓝操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (105, '1608', '荣耀', '荣耀8X Max', 'https://img.pconline.com.cn/images/product/1120/1120507/Max-x.jpg', '商品毛重：210.00g商品产地：中国大陆CPU型号：其他运行内存：6GB机身存储：64GB存储卡：支持MicroSD(TF)摄像头数量：后置双摄后摄主摄像素：1600万像素前摄主摄像素：800万像素拍照特点：后置双摄主屏幕尺寸（英寸）：7.12（英寸）分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：5000mAh（典型值） 4900mAh（最小值）充电器：9V/2A机身颜色：魅海蓝操作系统：Android(安卓)游戏性能：其他', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (106, '1609', '荣耀', '荣耀20i', 'https://bkimg.cdn.bcebos.com/pic/d000baa1cd11728bc4808cf0c6fcc3cec2fd2cb6?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U4MA==,g_7,xp_5,yp_5/format,f_auto', '商品毛重：164.00g商品产地：中国大陆CPU型号：其他运行内存：6GB机身存储：64GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：2400万像素前摄主摄像素：3200万像素主屏幕尺寸（英寸）：6.21英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：3400mAh（典型值） 3320mAh（最小值）充电器：5V/2A机身颜色：渐变蓝操作系统：Android(安卓)游戏性能：其他', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (108, '1610', '荣耀', '荣耀10', 'https://bkimg.cdn.bcebos.com/pic/3b87e950352ac65c7309a222f7f2b21193138a57?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：162.00g商品产地：中国大陆CPU型号：其他运行内存：4GB机身存储：64GB存储卡：其它存储卡摄像头数量：后置双摄后摄主摄像素：1300万像素前摄主摄像素：2400万像素拍照特点：后置双摄主屏幕尺寸（英寸）：6.21英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：3400mAh（典型值）充电器：5V/2A机身颜色：渐变蓝操作系统：Android(安卓)游戏性能：其他', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (109, '1611', '荣耀', '荣耀9X', 'https://bkimg.cdn.bcebos.com/pic/f703738da97739122de9ec8ef6198618377ae216?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：206.00g商品产地：中国大陆CPU型号：麒麟810运行内存：4GB机身存储：64GB存储卡：支持MicroSD(TF)摄像头数量：后置双摄后摄主摄像素：4800万像素前摄主摄像素：1600万像素主屏幕尺寸（英寸）：6.59英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：4000mAh（典型值）充电器：5V/2A机身颜色：冰岛白操作系统：Android(安卓)游戏性能：其他', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (110, '1613', '荣耀', '荣耀20青春版', 'https://bkimg.cdn.bcebos.com/pic/80cb39dbb6fd52660493f064a418972bd4073602?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UyMjA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：400.00g商品产地：中国大陆CPU型号：其他运行内存：4GB机身存储：64GB存储卡：NM存储卡摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：1600万像素拍照特点：后置三摄主屏幕尺寸（英寸）：6.3英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：4000mAh（典型值） 3900mAh（最小值）充电器：10V/2A机身颜色：蓝水翡翠操作系统：Android(安卓)游戏性能：其他', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (111, '1614', '荣耀', '荣耀Play3', 'https://imgservice.suning.cn/uimg1/b2c/image/heurDXLd_ScdBiv9lKHAow.jpg_800w_800h_4e', '商品毛重：1.0kg商品产地：中国大陆CPU型号：其他运行内存：4GB机身存储：64GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：800万像素拍照特点：后置三摄主屏幕尺寸（英寸）：6.39英寸分辨率：高清HD+屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：4000mAh（典型值） 3900mAh（最小值）充电器：5V/2A机身颜色：幻夜黑操作系统：Android(安卓)游戏性能：其他', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (7, '1701', '三星 ', '三星 Galaxy Note10', 'https://bkimg.cdn.bcebos.com/pic/38dbb6fd5266d01681a6ecf0992bd40734fa35ae?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxODA=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：0.515kg商品产地：越南CPU型号：骁龙855运行内存：12GB机身存储：256GB存储卡：支持MicroSD(TF)摄像头数量：后置四摄后摄主摄像素：1600万像素前摄主摄像素：1000万像素主屏幕尺寸（英寸）：6.8英寸(直角)分辨率：QHD+及以上屏幕比例：19:9屏幕前摄组合：其他电池容量（mAh）：4300毫安（典型值）充电器：9V/1.67A机身颜色：密斯白热点：5G操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (36, '1702', '三星 ', '三星 SAMSUNG Galaxy Fold', 'https://bkimg.cdn.bcebos.com/pic/2fdda3cc7cd98d107489ce072f3fb80e7bec90a3?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U5Mg==,g_7,xp_5,yp_5/format,f_auto', '商品毛重：0.751kg商品产地：中国大陆操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (35, '1703', '三星 ', '三星 Galaxy A90', 'https://img.pconline.com.cn/images/product/1225/1225910/x.jpg', '商品毛重：480.00g商品产地：越南CPU型号：骁龙855运行内存：8GB机身存储：128GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：3200万像素主屏幕尺寸（英寸）：6.7英寸分辨率：全高清FHD+屏幕比例：20:9屏幕前摄组合：其他电池容量（mAh）：4500mAh充电器：其他机身颜色：全息黑操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (107, '1704', '三星 ', '三星 Galaxy A70s', 'https://img.pconline.com.cn/images/product/1239/1239776/xg-1.jpg', '商品毛重：416.00g商品产地：越南CPU型号：骁龙675运行内存：8GB机身存储：128GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：6400万像素前摄主摄像素：3200万像素主屏幕尺寸（英寸）：6.7英寸分辨率：全高清FHD+屏幕比例：20:9屏幕前摄组合：其他电池容量（mAh）：4500mAh充电器：其他机身颜色：光谱黑操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (37, '1705', '三星 ', '三星 Galaxy A50s', 'https://img.pconline.com.cn/images/product/1162227/20201/8/A50s/15784748860160398_800.jpg', '商品毛重：378.00g商品产地：越南CPU型号：其他运行内存：6GB机身存储：128GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：3200万像素主屏幕尺寸（英寸）：6.4英寸分辨率：全高清FHD+屏幕比例：19.5:9屏幕前摄组合：其他电池容量（mAh）：4000mAh充电器：9V/1.67A机身颜色：棱镜黑操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (112, '1706', '三星 ', '三星 Galaxy A20s', 'https://img.pconline.com.cn/images/product/1218/1218427/x.jpg', '商品毛重：350.00g商品产地：中国大陆CPU型号：其他运行内存：4GB机身存储：64GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：1300万像素前摄主摄像素：800万像素主屏幕尺寸（英寸）：6.5英寸分辨率：高清HD+屏幕比例：19.5:9屏幕前摄组合：其他电池容量（mAh）：4000mAH充电器：9V/1.67A机身颜色：复古黑操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (38, '1707', '三星 ', '三星 Galaxy A80', 'https://bkimg.cdn.bcebos.com/pic/b999a9014c086e069faa85230c087bf40ad1cb5c?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U5Mg==,g_7,xp_5,yp_5/format,f_auto', '商品毛重：494.00g商品产地：中国大陆CPU型号：骁龙730G运行内存：8GB机身存储：128GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：4800万像素主屏幕尺寸（英寸）：6.7英寸分辨率：全高清FHD+屏幕比例：18:9屏幕前摄组合：反转式摄像头电池容量（mAh）：3700充电器：其他机身颜色：太空黑热点：快速充电，屏幕指纹，NFC操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (113, '1708', '三星 ', '三星 Galaxy A70', 'https://img.pconline.com.cn/images/product/1169/1169464/A70/xg-1.jpg', '商品毛重：428.00g商品产地：中国大陆CPU型号：骁龙675运行内存：8GB机身存储：128GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：3200万像素前摄主摄像素：3200万像素主屏幕尺寸（英寸）：6.7英寸（直角）分辨率：全高清FHD+屏幕比例：20:9屏幕前摄组合：其他电池容量（mAh）：4,500mAh（典型值）充电器：其他机身颜色：黑色操作系统：Android(安卓）', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (114, '1709', '三星 ', '三星 Galaxy A60', 'https://img.pconline.com.cn/images/product/1169/1169547/4e744548d22fc5ee.jpg', '商品毛重：380.00g商品产地：中国大陆CPU型号：骁龙675运行内存：6GB机身存储：64GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：3200万像素前摄主摄像素：1600万像素主屏幕尺寸（英寸）：6.3英寸分辨率：全高清FHD+屏幕比例：19.5:9屏幕前摄组合：屏下摄像头电池容量（mAh）：3500充电器：其他机身颜色：丹宁黑热点：人脸识别操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (63, '1710', '三星 ', '三星 Galaxy A8s', 'https://2e.zol-img.com.cn/product/194/976/ceFduY9hsCnHE.jpg', '商品毛重：410.00g商品产地：中国大陆CPU型号：骁龙710运行内存：8GB机身存储：128GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：2400万像素前摄主摄像素：2400万像素主屏幕尺寸（英寸）：6.4英寸分辨率：全高清FHD+屏幕比例：19.5:9屏幕前摄组合：其他电池容量（mAh）：3400mAh（典型值）充电器：其他机身颜色：极光黑热点：人脸识别操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (64, '1711', '三星 ', '三星 Galaxy A6s', 'https://2b.zol-img.com.cn/product/194/109/ceimBjIeL8oIE.jpg', '商品毛重：400.00g商品产地：中国大陆CPU型号：骁龙660运行内存：6GB机身存储：128GB存储卡：支持MicroSD(TF)摄像头数量：后置双摄后摄主摄像素：1200万像素前摄主摄像素：1200万像素主屏幕尺寸（英寸）：6.0英寸分辨率：全高清FHD+屏幕比例：18:9屏幕前摄组合：其他电池容量（mAh）：3300充电器：其他机身颜色：紫色操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (115, '1712', '三星 ', '三星 Galaxy A40s', 'https://2f.zol-img.com.cn/product/197/15/ceKFxYqo2cyQ2.jpg', '商品毛重：410.00g商品产地：中国大陆CPU型号：其他运行内存：6GB机身存储：64GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：1300万像素前摄主摄像素：1600万像素主屏幕尺寸（英寸）：6.4英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：5000mAh（典型值）充电器：其他机身颜色：魅夜黑操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (65, '1713', '三星 ', '三星 Galaxy M30s', 'https://img.pconline.com.cn/images/product/1218/1218447/x.jpg', '商品毛重：335.00g商品产地：越南CPU型号：其他运行内存：6GB机身存储：128GB存储卡：支持MicroSD(TF)摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：1600万像素主屏幕尺寸（英寸）：6.4英寸分辨率：全高清FHD+屏幕比例：19.5:9屏幕前摄组合：水滴屏电池容量（mAh）：6000充电器：其他机身颜色：探索黑操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (116, '1714', '三星 ', '三星领世旗舰8', 'https://img.pconline.com.cn/images/product/1237/1237487/lingshi8-Q.jpg', '商品毛重：1.43kg商品产地：中国大陆CPU型号：其他运行内存：4GB机身存储：64GB存储卡：支持MicroSD(TF)摄像头数量：后置单摄后摄主摄像素：1200万像素前摄主摄像素：500万像素主屏幕尺寸（英寸）：4.2英寸分辨率：其它分辨率屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：2300mAh充电器：其他机身颜色：黑色热点：人脸识别，快速充电，无线充电操作系统：Android(安卓)', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (8, '1801', '一加', '一加 OnePlus 7T', 'https://2a.zol-img.com.cn/product/201/294/cesz5wU0SN0Gc.jpg', '商品毛重：0.602kg商品产地：中国大陆CPU型号：骁龙855plus运行内存：其它内存机身存储：128GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：1600万像素主屏幕尺寸（英寸）：6.55英寸分辨率：全高清FHD+屏幕比例：20:9屏幕前摄组合：水滴屏电池容量（mAh）：3800充电器：5V6A机身颜色：蓝色热点：人脸识别，快速充电，屏幕指纹屏占比：≥90%操作系统：Android(安卓)游戏性能：电竞级', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (39, '1802', '一加', '一加 OnePlus 7T Pro', 'https://img.pconline.com.cn/images/product/1220/1220513/prob.jpg', '商品毛重：0.602kg商品产地：中国大陆CPU型号：骁龙855plus运行内存：8GB机身存储：256GB存储卡：其它存储卡摄像头数量：后置三摄后摄主摄像素：1600万像素前摄主摄像素：1600万像素主屏幕尺寸（英寸）：6.67英寸分辨率：全高清FHD+屏幕比例：19.5:9屏幕前摄组合：弹出式摄像头电池容量（mAh）：4085充电器：5V6A机身颜色：蓝色操作系统：Android(安卓)屏占比：≥90%游戏性能：发烧级', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (71, '1803', '一加', '一加 OnePlus 7 Pro ', 'https://img.pconline.com.cn/images/product/1181190/20197/22/1/15637966192395810_800.jpg', '商品毛重：0.605kg商品产地：中国大陆CPU型号：骁龙855运行内存：8GB机身存储：256GB存储卡：其它存储卡摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：1600万像素主屏幕尺寸（英寸）：6.67 英寸分辨率：其它分辨率屏幕比例：19.5:9屏幕前摄组合：弹出式摄像头电池容量（mAh）：4000充电器：其他机身颜色：曜岩灰热点：人脸识别，快速充电操作系统：Android(安卓)游戏性能：发烧级', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (40, '1804', '一加', '一加 OnePlus 7', 'https://2b.zol-img.com.cn/product/198/223/ceBKXPTsBtKIQ.jpg', '商品毛重：0.54kg商品产地：中国大陆CPU型号：骁龙855运行内存：8GB机身存储：256GB存储卡：其它存储卡摄像头数量：后置双摄后摄主摄像素：4800万像素前摄主摄像素：1600万像素主屏幕尺寸（英寸）：6.4英寸分辨率：高清HD+屏幕比例：19.5:9屏幕前摄组合：水滴屏电池容量（mAh）：3700充电器：5V/4A机身颜色：深灰色热点：人脸识别，快速充电操作系统：Android(安卓)游戏性能：发烧级', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (9, '1901', '魅族', '魅族16T ', 'https://2f.zol-img.com.cn/product/202/675/ce1DhgbRxbMzs.jpg', '商品毛重：340.00g商品产地：中国大陆CPU型号：骁龙855运行内存：8GB机身存储：128GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：1200万像素前摄主摄像素：1600万像素拍照特点：后置三摄主屏幕尺寸（英寸）：6.5英寸分辨率：全高清FHD+屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：4500充电器：9V/2A机身颜色：鲸跃蓝热点：屏幕指纹游戏性能：其他4G LTE网络特性：VOLTE 4G通话游戏配置：游戏性能模式操作系统：Android(安卓)充电功率：18-19W特殊功能：超大字体屏占比：≥90%', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (41, '1902', '魅族', '魅族 16s Pro', 'https://openfile.meizu.com/group1/M00/07/48/Cgbj0F1jhu-AaV4AAAlk4z4lkt0463.png120x120.jpg', '商品毛重：445.00g商品产地：中国大陆CPU型号：骁龙855plus运行内存：8GB机身存储：128GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：2000万像素拍照特点：后置三摄，光学防抖主屏幕尺寸（英寸）：6.2英寸分辨率：其它分辨率屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：3600充电器：其他机身颜色：黑之谧镜热点：屏幕指纹，NFC游戏性能：其他4G LTE网络特性：VOLTE 4G通话游戏配置：游戏性能模式操作系统：Android(安卓)充电功率：20-26W特殊功能：超大字体屏占比：≥91%', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (72, '1903', '魅族', '魅族16Xs ', 'https://2d.zol-img.com.cn/product/197/541/ceMCWOrz8xdKE.jpg', '商品毛重：380.00g商品产地：中国大陆CPU型号：骁龙675运行内存：6GB机身存储：128GB存储卡：不支持存储卡摄像头数量：后置三摄后摄主摄像素：4800万像素前摄主摄像素：1600万像素拍照特点：后置三摄主屏幕尺寸（英寸）：6.2英寸全面屏分辨率：其它分辨率屏幕比例：其它屏幕比例屏幕前摄组合：超高屏占比(>90%)的未开孔屏幕电池容量（mAh）：4000mAh充电器：9V/2A机身颜色：骑士黑热点：屏幕指纹游戏性能：其他4G LTE网络特性：其他游戏配置：游戏性能模式操作系统：Android(安卓)充电功率：18-19W特殊功能：超大字体屏占比：≥90%', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (42, '1904', '魅族', '魅族 16s', 'https://openfile.meizu.com/group1/M00/07/3B/Cgbj0VzaXQqAHUNIAAi8Q-a1EVI137.png240x240.png', '商品毛重：445.00g商品产地：中国大陆CPU型号：骁龙855运行内存：8GB机身存储：128GB存储卡：不支持存储卡摄像头数量：后置双摄后摄主摄像素：4800万像素前摄主摄像素：2000万像素拍照特点：后置双摄主屏幕尺寸（英寸）：6.2英寸分辨率：其它分辨率屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：3600充电器：12V/2A机身颜色：碳纤黑热点：人脸识别，快速充电游戏性能：发烧级4G LTE网络特性：其他游戏配置：游戏深度优化操作系统：Android(安卓)充电功率：20-26W特殊功能：超大字体屏占比：≥91%', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (69, '1905', '魅族', '魅族 16th', 'https://openfile.meizu.com/group1/M00/06/AA/Cgbj0VujRsOANxDcAActMkyOOgg093.png680x680.jpg', '商品毛重：465.00g商品产地：中国大陆CPU型号：骁龙845运行内存：8GB机身存储：128GB存储卡：不支持存储卡摄像头数量：后置双摄后摄主摄像素：1200万像素前摄主摄像素：2000万像素拍照特点：后置双摄主屏幕尺寸（英寸）：6.0英寸分辨率：其它分辨率屏幕比例：18:9屏幕前摄组合：其他电池容量（mAh）：3010（典型值）充电器：其他机身颜色：极光蓝热点：屏幕指纹游戏性能：发烧级4G LTE网络特性：其他游戏配置：游戏性能模式操作系统：Android(安卓)充电功率：18-19W特殊功能：超大字体屏占比：≥91%', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (70, '1906', '魅族', '魅族 X8', 'https://openfile.meizu.com/group1/M00/06/A8/Cgbj0FusSJyACGwcAAg0epdui5o951.png680x680.jpg', '商品毛重：390.00g商品产地：中国大陆CPU型号：骁龙710运行内存：6GB机身存储：128GB存储卡：不支持存储卡摄像头数量：后置双摄后摄主摄像素：1200万像素前摄主摄像素：2000万像素拍照特点：后置双摄主屏幕尺寸（英寸）：6.2英寸分辨率：其它分辨率屏幕比例：18.5:9屏幕前摄组合：其他电池容量（mAh）：3210充电器：其他机身颜色：亮黑热点：人脸识别游戏性能：其他4G LTE网络特性：其他游戏配置：游戏性能模式操作系统：Android(安卓)充电功率：18-19W特殊功能：超大字体屏占比：<90%', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (68, '1907', '魅族', '魅族 Note9', 'https://openfile.meizu.com/group1/M00/07/12/Cgbj0Vx_ZK6AaEObAAa1DJqn7us376.png680x680.jpg', '商品毛重：500.00g商品产地：中国大陆CPU型号：骁龙675运行内存：4GB机身存储：64GB存储卡：不支持存储卡摄像头数量：后置双摄后摄主摄像素：4800万像素前摄主摄像素：2000万像素拍照特点：后置双摄主屏幕尺寸（英寸）：6.2英寸分辨率：其它分辨率屏幕比例：其它屏幕比例屏幕前摄组合：其他电池容量（mAh）：4000充电器：其他机身颜色：幻黑热点：人脸识别游戏性能：其他4G LTE网络特性：其他游戏配置：游戏性能模式操作系统：Android(安卓)充电功率：18-19W特殊功能：超大字体屏占比：<90%', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (67, '1908', '魅族', '魅族 16 X', 'https://openfile.meizu.com/group1/M00/06/BC/Cgbj0FvINLWAZXL4AAz1Mo4DEhM073.png680x680.jpg', '商品毛重：420.00g商品产地：中国大陆CPU型号：骁龙710运行内存：6GB机身存储：64GB存储卡：不支持存储卡摄像头数量：后置双摄后摄主摄像素：1200万像素前摄主摄像素：2000万像素拍照特点：后置双摄主屏幕尺寸（英寸）：6.0英寸分辨率：其它分辨率屏幕比例：18:9屏幕前摄组合：其他电池容量（mAh）：3100（典型值）充电器：其他机身颜色：烟晶紫热点：屏幕指纹游戏性能：其他4G LTE网络特性：其他游戏配置：游戏性能模式操作系统：Android(安卓)充电功率：20-26W特殊功能：超大字体屏占比：≥90%', 1, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (117, '2101', '苹果', '苹果 iPad Pro 11英寸', 'https://2c.zol-img.com.cn/product/193/260/ceivQPirQ8sPY.jpg', '商品毛重：0.87kg商品产地：中国大陆系统：ios系统存储容量：64GB厚度：7.0mm以下屏幕尺寸：其他分类：娱乐平板颜色：灰色', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (120, '2102', '苹果', '苹果 iPad Pro 12.9英寸', 'https://2d.zol-img.com.cn/product/193/297/ceqdK7Qx9XbA.jpg', '商品毛重：1.44kg商品产地：中国大陆系统：ios系统存储容量：512GB厚度：7.0mm以下屏幕尺寸：其他分类：娱乐平板颜色：灰色', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (123, '2103', '苹果', '苹果 iPad Air 10.5英寸', 'https://2a.zol-img.com.cn/product/196/710/cerXw9L1mUzX6.jpg', '商品毛重：0.84kg商品产地：中国大陆系统：ios系统存储容量：256GB厚度：7.0mm以下屏幕尺寸：其他分类：娱乐平板颜色：金色', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (124, '2104', '苹果', '苹果 iPad 10.2英寸', 'https://img.pconline.com.cn/images/product/1219/1219087/123/3.png', '商品毛重：0.86kg商品产地：中国大陆系统：ios系统存储容量：128G厚度：7.1mm-9mm屏幕尺寸：其他分类：娱乐平板颜色：金色', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (145, '2105', '苹果', '苹果 iPad mini ', 'https://bkimg.cdn.bcebos.com/pic/b2de9c82d158ccbf18eca66a16d8bc3eb1354109?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UyNzI=,g_7,xp_5,yp_5/format,f_auto', '商品毛重：0.59kg商品产地：中国大陆系统：ios系统存储容量：256GB厚度：7.0mm以下屏幕尺寸：7.9英寸分类：娱乐平板颜色：金色', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (118, '2201', '华为', '华为平板 M6 10.8英寸', 'https://img.pconline.com.cn/images/product/1192/1192708/z.jpg', '商品毛重：0.89kg商品产地：中国大陆系统：Android厚度：7.1mm-9mm颜色：金色存储容量：128G分类：娱乐平板屏幕尺寸：10.8英寸CPU核数：八核', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (121, '2202', '华为', '华为MatePad Pro10.8英寸', 'https://2e.zol-img.com.cn/product/206/424/cepINOAvRLw3E.jpg', '商品毛重：0.918kg商品产地：中国大陆系统：Android存储容量：256GB厚度：7.1mm-9mm分类：娱乐平板屏幕尺寸：10.8英寸颜色：灰色', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (122, '2203', '华为', '华为平板 M6 8.4英寸', 'https://res.vmallres.com/pimages//product/6901443319893/428_428_1560822511725mp.png', '商品毛重：0.655kg商品产地：中国大陆系统：Android分类：娱乐平板屏幕尺寸：8.4英寸', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (143, '2204', '华为', '华为平板 M6 10.8英寸', 'https://res.vmallres.com/pimages//product/6901443332571/428_428_54622D07B9F8EB6DFCCBC846D065833AF0E82BDD9FFDC013mp.png', '商品毛重：1.36kg商品产地：中国大陆系统：Android厚度：7.1mm-9mm颜色：灰色存储容量：256GB分类：娱乐平板屏幕尺寸：10.8英寸CPU核数：八核', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (128, '2205', '华为', '华为平板 M5 8.0英寸', 'https://res.vmallres.com/pimages//product/6901443321209/428_428_03E36F3811C5C3E97E89CB7C6CD937E843B234BADFEE705Fmp.png', '商品毛重：0.59kg商品产地：中国大陆系统：Android屏幕尺寸：8英寸颜色：金色厚度：7.1mm-9mm分类：娱乐平板特色：AI智能语音存储容量：64GB', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (129, '2206', '华为', '华为平板 M5 10.0英寸', 'https://res.vmallres.com/pimages//product/6901443321209/800_800_03E36F3811C5C3E97E89CB7C6CD937E843B234BADFEE705Fmp.png', '商品毛重：1.005kg商品产地：中国大陆系统：Android厚度：7.1mm-9mm屏幕尺寸：10.1英寸分类：娱乐平板特色：AI智能语音颜色：金色', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (119, '2301', '三星', '三星Tab S6SM-T860 10.5英寸', 'https://imgservice.suning.cn/uimg1/b2c/image/yHFykoDnI7B2fOneBYgIOA.jpg_800w_800h_4e', '商品毛重：0.78kg商品产地：中国大陆系统：Android热门机型：三星Tab S厚度：7.0mm以下可扩展容量：其他颜色：灰色存储容量：256GB屏幕尺寸：其他分类：娱乐平板特色：高保真音质CPU核数：八核', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (126, '2302', '三星', '三星Tab S5e10.5寸', 'https://2e.zol-img.com.cn/product/199/352/cerNIlfk3F0k.jpg', '商品毛重：1.21kg商品产地：中国大陆系统：Android热门机型：三星Tab S厚度：7.0mm以下可扩展容量：其他颜色：灰色存储容量：256GB屏幕尺寸：其他分类：娱乐平板特色：高保真音质CPU核数：八核', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (127, '2303', '三星', '三星Tab S6 10.5英寸', 'https://2a.zol-img.com.cn/product/200/608/ceMArD23xdow.jpg', '商品毛重：1.21kg商品产地：中国大陆系统：Android热门机型：三星Tab S厚度：7.0mm以下可扩展容量：其他颜色：灰色存储容量：256GB屏幕尺寸：其他分类：娱乐平板特色：高保真音质CPU核数：八核', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (130, '2304', '三星', '三星Tab A 10.1英寸', 'https://2a.zol-img.com.cn/product/174/480/cehsI70fQXNTg.jpg', '商品毛重：0.74kg商品产地：中国大陆系统：Android热门机型：三星Tab A厚度：7.1mm-9mm可扩展容量：最大支持512GB颜色：银色存储容量：128G屏幕尺寸：10.1英寸分类：娱乐平板特色：窄边框CPU核数：八核', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (132, '2401', '荣耀', '荣耀平板5 10.1英寸 ', 'https://2b.zol-img.com.cn/product/193/39/ce2P1mJtkaA6.jpg', '商品毛重：0.76kg商品产地：中国大陆系统：Android热门机型：荣耀平板5厚度：7.1mm-9mm可扩展容量：最大支持256GB颜色：蓝色存储容量：64GB屏幕尺寸：10.1英寸分类：娱乐平板特色：指纹识别CPU核数：八核', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (131, '2402', '荣耀', '荣耀平板5 8英寸', 'https://img.pconline.com.cn/images/product/1164/1164447/q.jpg', '商品毛重：0.54kg商品产地：中国大陆系统：Android热门机型：荣耀平板5厚度：7.1mm-9mm可扩展容量：最大支持512GB颜色：灰色存储容量：32GB屏幕尺寸：8英寸分类：娱乐平板特色：高保真音质CPU核数：八核', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (137, '2403', '荣耀', '荣耀Waterplay 8.0英寸', 'https://2a.zol-img.com.cn/product/193/326/ce3NDYYCo88I.jpg', '商品毛重：0.63kg商品产地：中国大陆系统：Android厚度：7.1mm-9mm可扩展容量：最大支持256GB颜色：金色存储容量：128G屏幕尺寸：8英寸分类：娱乐平板特色：高保真音质CPU核数：八核', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (136, '2404', '荣耀', '荣耀Waterplay 10.0英寸', 'https://2b.zol-img.com.cn/product/186/407/ceyN4tEjr5EjQ.jpg', '商品毛重：0.76kg商品产地：中国大陆系统：Android热门机型：荣耀平板5厚度：7.1mm-9mm可扩展容量：最大支持256GB颜色：蓝色存储容量：64GB屏幕尺寸：10.1英寸分类：娱乐平板特色：指纹识别CPU核数：八核', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (135, '2405', '荣耀', '荣耀畅玩平板2 8英寸', 'https://2d.zol-img.com.cn/product/183/597/ceCsdNdXgtUA.jpg', '商品毛重：0.61kg商品产地：中国大陆系统：Android热门机型：荣耀畅玩平板2厚度：7.1mm-9mm可扩展容量：最大支持128GB颜色：金色存储容量：128G屏幕尺寸：9.6英寸分类：通话平板特色：3G或4G上网CPU核数：四核', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (138, '2406', '荣耀', '荣耀畅玩平板2 9.6英寸', 'https://2c.zol-img.com.cn/product/183/602/cey65DpZ1I0d2.jpg', '商品毛重：0.61kg商品产地：中国大陆系统：Android热门机型：荣耀畅玩平板2厚度：7.1mm-9mm可扩展容量：最大支持128GB颜色：金色存储容量：128G屏幕尺寸：9.6英寸分类：通话平板特色：3G或4G上网CPU核数：四核', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (133, '2501', '小米', '小米平板4 Plus 10英寸', 'https://2f.zol-img.com.cn/product/192/585/ceJia2yAkugr.jpg', '商品毛重：0.82kg商品产地：中国大陆系统：Android热门机型：小米平板4屏幕尺寸：8英寸颜色：金色厚度：7.1mm-9mm分类：娱乐平板特色：3G或4G上网存储容量：64GB', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (134, '2502', '小米', '小米平板4 8英寸', 'http://5b0988e595225.cdn.sohucs.com/images/20180623/874cb1f22dd2491bbaa1f4783bc2e7d9.jpeg', '商品毛重：0.59kg商品产地：中国大陆系统：Android热门机型：小米平板4屏幕尺寸：8英寸颜色：黑色厚度：7.1mm-9mm分类：娱乐平板特色：3G或4G上网存储容量：64GB', 2, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (146, '3101', '苹果', '苹果AirPods Pro', 'https://bkimg.cdn.bcebos.com/pic/2cf5e0fe9925bc315c609f9688939ab1cb134954da22?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5/format,f_auto', '妙得不同凡响，主动降噪，通透模式，全新设计', 3, '耳机', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (147, '3102', '苹果', '苹果AirPods2（配无线充电盒）', 'https://2a.zol-img.com.cn/product/196/908/ceiZl2QPOSvE.jpg', 'AirPods 配备了全新 Apple H1 耳机芯片，使用光学传感器和运动加速感应器来检测你是否已将它们戴入耳中。无论是双耳同时使用 AirPods，还是仅佩戴其中一只，H1 芯片都能够自动传送音频和激活麦克风。当你在打电话或与 Siri 交谈时，额外的语音识别加速感应器与采用波束成形技术的麦克风默契协作，可过滤掉外界噪音，清晰锁定你的声音', 3, '耳机', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (148, '3103', '华为', '华为 FreeBuds 3 无线耳机（陶瓷白）', 'https://res.vmallres.com/pimages//product/6901443399048/428_428_870B6FE27F5BF4867AEAF26DA9389FDBDECC5DB85D23154Fmp.png', '一个配对键：1.首次使用时，按配对键2s，充电盒开机；2.充电盒开盖状态，耳机在盒子里，按配对键大于2s，耳机进入配对状态；3.耳机在盒子里时，充电盒开盖状态，按配对键大于7s，耳机恢复出厂设置；4.按配对键大于8s，充电盒重启', 3, '耳机', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (149, '3104', '华为', '华为 FreeLace 无线耳机（仲夏紫）', 'https://qny.smzdm.com/201909/23/5d883f243b8f39138.jpg_d250.jpg', '120mAh锂电池，充满电约70分钟，18小时音乐播放', 3, '耳机', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (176, '3105', '荣耀', '荣耀AM116 半入耳式耳机（白色）', 'https://qny.smzdm.com/201807/20/5b51cbcc833eb6314.jpg_d250.jpg', '三键线控（三键线控中的音量+/-适用于如下华为机型：荣耀3C LTE、荣耀4C、荣耀4X、荣耀6、荣耀6 Plus、荣耀7、P6S-U00、P7、P8青春版、P8、Mate2、Mate7）', 3, '耳机', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (177, '3106', '荣耀', '荣耀FlyPods Pro无线耳机 高配版（魅丽红）', 'https://2f.zol-img.com.cn/product/196/619/cecj71IxZVHIw.jpg', '一个配对键：1.首次使用时，按配对键4S，充电盒开机；2.充电盒开机状态，耳机在盒子里，按配对键大于2S，小于10S时，耳机进入配对状态；3.耳机在盒子里时，按配对键10~16S，耳机完成恢复出厂设置；4.按配对键16S，充电盒重启；短按，指示充电盒电量；', 3, '耳机', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (151, '3107', '小米', '小米运动蓝牙耳机青春版', 'https://img.pconline.com.cn/images/product/1048/1048271/bt-Q-2.jpg', '防脱落运动耳顶 / 轻至 13.6g / 11 小时持久续航 / IPX4 专业防水', 3, '耳机', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (170, '3108', '小米', '小米圈铁耳机Pro', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1478510064.36397738.jpg', '独创双动圈 + 动铁 三单元发声 / 均衡自然声音 / 高保真石墨烯振膜 / 25 道工序打磨 / 弹力磨砂线材', 3, '耳机', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (150, '3201', '小米', '小米无线充电宝 10000mAh', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1568083293.67871236.jpg', '支持 10W 无线快充 / 3 台设备可同时充电 / 可上飞机随行 / Qi 无线标准', 3, '充电宝', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (152, '3202', '华为', '华为10000mAh 移动电源 QuickCharge 快充版（Max 18W）', 'https://res.vmallres.com/pimages//product/6901443158379/55_55_1553776894400mp.png', '移动电源 x 1，USB Type C数据线 (40cm) x 1，说明书（含保修卡） x 1', 3, '充电宝', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (160, '3203', '华为', '华为40W超级快充移动电源 （宝石蓝）', 'https://res.vmallres.com/pimages//product/6901443288335/group//428_428_1553601210829.png', '高品质钴酸锂聚合物电芯\r\n', 3, '充电宝', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (169, '3204', '荣耀', '荣耀移动电源2 20000mAh (Max 18W) 快充版（白色）', 'https://imgservice.suning.cn/uimg1/b2c/image/oVtvH0j_OWtrP85_rOME6w.jpg_200w_200h_4e', '高品质聚合物电芯', 3, '充电宝', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (159, '3205', '荣耀', '荣耀10000mAh 移动电源 标准版（白色）', 'http://image.qd256.com/prod_img/52/5208/20170224112639_2.jpeg', '4颗白色LED灯，轻触式', 3, '充电宝', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (168, '3206', '小米', '10000mAh小米移动电源', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1546058471.685154.jpg', '支持 USB-C 充电|高密度锂聚合物电芯|双向快充|仅 12.6mm 薄', 3, '充电宝', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (161, '3207', '小米', '小米无线充电宝青春版10000mAh', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1568083247.368995.jpg', '10000mAh大容量 / 支持边充边放 / 有线无线都能充 / 双向快充', 3, '充电宝', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (172, '3301', '小米', '小米立式风冷无线充 30W', 'https://cdn.cnbj0.fds.api.mi-img.com/b2c-shopapi-pms/pms_1569240474.90093956.jpg', '立式充电，随放随充,无线束缚/ 30W无线闪充,兼容Qi标准无线充电电子设备/散热孔设计,主动散热,有效降温/内置静音风扇,体验生活场景静音/6重安全保护,确保手机安全稳定充电', 3, '充电器', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (154, '3302', '苹果', '苹果30W USB‑C 电源适配器', 'http://qny.smzdm.com/202007/06/5f029f3c1db8e8513.jpg_a200.jpg', '无论是在家中、办公室还是在路上，Apple 30W USB‑C 电源适配器都能让你快速而高效地充电。尽管这款电源适配器兼容任何支持 USB‑C 的设备', 3, '充电器', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (153, '3303', '华为', '华为超级快充无线车充（MAX 27W）', 'https://res.vmallres.com/pimages//product/6901443348213/428_428_49CE58ADB0BBD3D50078DB64A831141F6ABA2779A5D21027mp.png', '车充电源线DC 接口 &amp;TYPE-C接口，车充电源线（标配）', 3, '充电器', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (155, '3304', '华为', '华为超级快充无线充电器（MAX 27W', 'https://res.vmallres.com/pimages//product/6901443325214/800_800_B4B231BE557D9DC5AA9627749F0846ECD3DCE76D2A7F881Fmp.png', '华为Mate30系列手机、Mate20 Pro、P30 Pro等支持无线充电的手机', 3, '充电器', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (158, '3305', '荣耀', '荣耀无线充电器（星空灰）', 'https://qny.smzdm.com/202002/10/5ddce52477a225227.png_d250.jpg', '无线充电器 X 15A USB Type-C线缆 X 1说明书 X 1保修卡 X 1', 3, '充电器', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (157, '3306', '小米', '小米USB充电器30W快充版（1A1C）', 'https://y.zdmimg.com/201903/05/5c7dcb893f70a7714.jpg_d250.jpg', '双口输出 / 30W 输出 / 可折叠插脚 / 小巧便携', 3, '充电器', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (167, '3401', '华为', '华为Mate 30 Pro 旅行主题保护壳', 'https://consumer.huawei.com/content/dam/huawei-cbg-site/greate-china/cn/mkt/pdp/accessories/mate30-pro-travel-theme-case/pc1.jpg', '玻璃背盖通用版（适用于HUAWEI Mate 30 Pro 4G版、Mate 30 Pro 5G版的玻璃背盖版本；丹霞橙、青山黛版本不可用）', 3, '保护壳', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (156, '3402', '苹果', 'iPhone 11 Pro 硅胶保护壳 - 淡青绿色', 'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/MXM72?wcommodityId=572&hei=572&fmt=jpeg&qlt=95&.v=1590622569000', '此系列硅胶保护壳由 Apple 专为 iPhone 11 Pro 量身打造，外形与音量按钮、侧边按钮契合得丝丝入扣，并能紧贴机身线条，丝毫不显赘余。此外，超细纤维制成的柔软内衬，尽可呵护你的 iPhone。而外部的硅胶材质，则给人一种如丝般柔滑的出色手感。即使在对 iPhone 进行无线充电时，也无需取下保护壳。', 3, '保护壳', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (166, '3403', '华为', '华为 Mate 20 抽象主题保护壳（黄色）', 'https://2e.zol-img.com.cn/product/194/328/ceoXIGLVNf3MA.jpg', '适用机型HUAWEI Mate 20', 3, '保护壳', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (175, '3404', '荣耀', '荣耀Play3 TPU保护壳（透明）', 'https://2d.zol-img.com.cn/product/204/259/cejR9oUCAznHI.jpg', '荣耀Play3 TPU保护壳X 1', 3, '保护壳', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (171, '3405', '荣耀', '荣耀20 PRO 街头风PC保护壳（蓝色）', 'https://2a.zol-img.com.cn/product/199/148/ceCFJiHxSKUhY.jpg', '适用机型 荣耀20 PRO', 3, '保护壳', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (172, '3407', '小米', '小米9 米粉潮流保护壳', 'https://2e.zol-img.com.cn/product/198/156/ce5CQU2UsUo6.jpg', '个性名字定制 / 优选PC材料 / 强韧张力 / 经久耐用 / 纤薄轻巧 / 快速装卸', 3, '保护壳', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (174, '3501', '苹果', '11 英寸 iPad Pro 的键盘式智能双面夹', 'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/MXNK2CH?wcommodityId=572&hei=572&fmt=jpeg&qlt=95&.v=1620076381000', '适用于11英寸iPad Pro的键盘式智能双面夹，在你需要输入时可变身为全尺寸键盘;不用键盘的时候，它则为iPad Pro正背两面提供妥帖优护。此外，它还可折为不同角度以方便观看。而且它无需充电或配对，只要一贴上，立刻就能输入', 3, '平板配件', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (173, '3502', '苹果', 'Apple Pencil (第二代)', 'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/MU8F2?wcommodityId=572&hei=572&fmt=jpeg&qlt=95&.v=1540596407165', '新一代 Apple Pencil 拥有像素级别的高精准度和超低延迟表现，非常适合用来绘画、素描、着色、做笔记，甚至是在电子邮件上做标记等等。而且，它用起来就像铅笔一样轻松自然', 3, '平板配件', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (162, '3503', '华为', '华为 M-Pencil 触控笔（亮银色）', 'https://res.vmallres.com/pimages//product/6901443355808/428_428_F39E060760AFF64D1D74740CFD38AC3D2A890667DAA20E0Dmp.png', '平板产品：HUAWEI MatePad Pro（其他可适配产品，见后继主机产品说明）', 3, '平板配件', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (164, '3504', '华为', '华为 M-Pen lite 触控笔（灰色）', 'https://qny.smzdm.com/201910/06/5d5364976494e1679.png_d250.jpg', '适配 HUAWEI MateBook E 2019 款、华为平板 M5 青春版10.1英寸、华为平板 M6 10.8英寸（其他可适配产品见后继主机产品说明）', 3, '平板配件', 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodity` VALUES (165, '3505', '小米', '小米平板4 Plus 智能翻盖支架保护套', 'https://qny.smzdm.com/201901/16/5c3e86295f1ce7342.jpg_d250.jpg', '运用智能磁感技术，实现智能唤醒屏幕，快速响应', 3, '平板配件', 0, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_commodityinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_commodityinfo`;
CREATE TABLE `tb_commodityinfo`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `commodityId` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编号',
  `color` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '颜色',
  `memoryCapacity` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格',
  `price` double(40, 2) NULL DEFAULT NULL COMMENT '单价',
  `reserve` int NULL DEFAULT NULL COMMENT '库存',
  `isDelete` int NULL DEFAULT NULL COMMENT '是否删除',
  `createUser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `createTime` date NULL DEFAULT NULL COMMENT '创建时间',
  `updateUser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `updateTime` date NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_commodityinfo
-- ----------------------------
INSERT INTO `tb_commodityinfo` VALUES ('0b936331-0713-11ed-ad1c-88a4c2d9bb5a', '1101', '暗夜绿色', '256GB', 9999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0b98146d-0713-11ed-ad1c-88a4c2d9bb5a', '1201', '翡冷翠', '8GB+256GB', 6299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0b98b98a-0713-11ed-ad1c-88a4c2d9bb5a', '1301', '钛银黑', '8GB+256GB', 3799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0b999278-0713-11ed-ad1c-88a4c2d9bb5a', '1401', '电音紫', '8GB+256GB', 3399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0b9a22e4-0713-11ed-ad1c-88a4c2d9bb5a', '1501', '液态天河', '8GB+256GB', 5698.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0b9ab656-0713-11ed-ad1c-88a4c2d9bb5a', '1601', '渐变蓝', '8GB+128GB', 2399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0b9b8057-0713-11ed-ad1c-88a4c2d9bb5a', '1801', '冰川银', '8GB+256GB', 3199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0b9bfd18-0713-11ed-ad1c-88a4c2d9bb5a', '1901', '湖光绿', '8GB+128GB', 2299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0b9c781d-0713-11ed-ad1c-88a4c2d9bb5a', '1102', '金色', '256GB', 10899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0b9d058c-0713-11ed-ad1c-88a4c2d9bb5a', '1103', '黑色', '128GB', 5999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0b9d85e8-0713-11ed-ad1c-88a4c2d9bb5a', '1202', '翡冷翠', '8GB+256GB', 5499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0b9dfc76-0713-11ed-ad1c-88a4c2d9bb5a', '1205', '极光色', '8GB+256GB', 5488.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0b9e6d89-0713-11ed-ad1c-88a4c2d9bb5a', '1302', '全息幻彩紫', '8GB+256GB', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0b9ec974-0713-11ed-ad1c-88a4c2d9bb5a', '1304', '深蓝星球', '6GB+128GB', 1699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0b9f2b24-0713-11ed-ad1c-88a4c2d9bb5a', '1403', '珠贝白', '6GB+256GB', 2199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0b9f836a-0713-11ed-ad1c-88a4c2d9bb5a', '1504', '熔岩橙', '8GB+128GB', 2498.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0b9fd8be-0713-11ed-ad1c-88a4c2d9bb5a', '1602', '蓝水翡翠', '8GB+256GB', 2999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba02cfd-0713-11ed-ad1c-88a4c2d9bb5a', '1604', '幻夜蓝', '8GB+256GB', 2199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba0910c-0713-11ed-ad1c-88a4c2d9bb5a', '1307', '耀夜黑', '4GB+64GB', 699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba0e5fc-0713-11ed-ad1c-88a4c2d9bb5a', '1502', '电光紫', '6GB+128GB', 2298.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba13b6b-0713-11ed-ad1c-88a4c2d9bb5a', '1104', '黑色', '128GB', 4599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba18aa3-0713-11ed-ad1c-88a4c2d9bb5a', '1211', '苏音蓝', '8GB+128GB', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba1eb90-0713-11ed-ad1c-88a4c2d9bb5a', '1311', '曜石黑', '6GB+64GB', 1099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba2428d-0713-11ed-ad1c-88a4c2d9bb5a', '1407', '星云紫', '8GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba28d74-0713-11ed-ad1c-88a4c2d9bb5a', '1415', '幻境蓝', '4G+64G', 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba2e6af-0713-11ed-ad1c-88a4c2d9bb5a', '1511', '宠爱粉', '6GB+64GB', 1298.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba33016-0713-11ed-ad1c-88a4c2d9bb5a', '1513', '晶石蓝', '6GB+64GB', 1099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba37aa1-0713-11ed-ad1c-88a4c2d9bb5a', '1607', '蝶羽蓝', '8GB+128GB', 2199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba3b7ef-0713-11ed-ad1c-88a4c2d9bb5a', '1804', '珐琅红', '12GB+256GB', 2899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba403cc-0713-11ed-ad1c-88a4c2d9bb5a', '1902', '暮光深林', '8GB+128GB', 2989.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba44104-0713-11ed-ad1c-88a4c2d9bb5a', '1204', '翡冷翠', '8GB+128G', 5099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba47974-0713-11ed-ad1c-88a4c2d9bb5a', '1208', '翡冷翠', '6GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba4cb92-0713-11ed-ad1c-88a4c2d9bb5a', '1305', '深蓝星球', '6GB+128GB', 1399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba5049f-0713-11ed-ad1c-88a4c2d9bb5a', '1308', '宝石蓝', '4GB+64GB', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba540be-0713-11ed-ad1c-88a4c2d9bb5a', '1306', '魔法绿镜', '8GB+128GB', 3099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba570d5-0713-11ed-ad1c-88a4c2d9bb5a', '1408', '梵星蓝', '4GB+64G', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba5ac0b-0713-11ed-ad1c-88a4c2d9bb5a', '1206', '极光色', '8GB+128GB', 3988.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba5e7e0-0713-11ed-ad1c-88a4c2d9bb5a', '1215', '极光蓝', '6GB+64GB', 1399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba61fe4-0713-11ed-ad1c-88a4c2d9bb5a', '1221', '翡冷翠', '8GB+128GB', 2099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba6521b-0713-11ed-ad1c-88a4c2d9bb5a', '1209', '仲夏紫', '8GB+256GB', 3099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba68c4f-0713-11ed-ad1c-88a4c2d9bb5a', '1207', '极光色', '8GB+128GB', 3699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba6c015-0713-11ed-ad1c-88a4c2d9bb5a', '1309', '碳纤黑', '8GB+512GB', 2799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba70618-0713-11ed-ad1c-88a4c2d9bb5a', '1710', '有点芒', '8GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba73b1f-0713-11ed-ad1c-88a4c2d9bb5a', '1905', '极光蓝', '6GB+128GB', 1698.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba79023-0713-11ed-ad1c-88a4c2d9bb5a', '1906', '玉白', '6GB+64GB', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba7c090-0713-11ed-ad1c-88a4c2d9bb5a', '1803', '星雾蓝', '8GB+256GB', 3969.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba7f0a6-0713-11ed-ad1c-88a4c2d9bb5a', '1903', '冰丝白', '6GB+128GB', 1699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba825dc-0713-11ed-ad1c-88a4c2d9bb5a', '1210', '极光色', '8GB+128GB', 2299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba85564-0713-11ed-ad1c-88a4c2d9bb5a', '1214', '苏音蓝', '8GB+128GB', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba89856-0713-11ed-ad1c-88a4c2d9bb5a', '1216', '宝石蓝', '3GB+64GB', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba8ce15-0713-11ed-ad1c-88a4c2d9bb5a', '1218', '宝石蓝', '6GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba92517-0713-11ed-ad1c-88a4c2d9bb5a', '1312', '冰川蓝', '6GB+128GB', 2299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba9727c-0713-11ed-ad1c-88a4c2d9bb5a', '1310', '电光灰', '6GB+128GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba9a8d1-0713-11ed-ad1c-88a4c2d9bb5a', '1405', '晨雾白', '6GB+256GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0ba9dcd3-0713-11ed-ad1c-88a4c2d9bb5a', '1413', '湖光绿', '8GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0baa10c2-0713-11ed-ad1c-88a4c2d9bb5a', '1406', '极地阳光', '8GB+128GB', 2099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0baa48b3-0713-11ed-ad1c-88a4c2d9bb5a', '1412', '石榴红', '4GB+128GB', 1099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0baa8310-0713-11ed-ad1c-88a4c2d9bb5a', '1503', '勒芒蓝', '8GB+256GB', 3998.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0baab1dd-0713-11ed-ad1c-88a4c2d9bb5a', '1417', '流云白', '6GB+256G', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0baae662-0713-11ed-ad1c-88a4c2d9bb5a', '1508', '翡翠色', '8GB+256GB', 2798.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bab217f-0713-11ed-ad1c-88a4c2d9bb5a', '1505', '竹林幻夜', '6GB+128GB', 1698.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bab5dbc-0713-11ed-ad1c-88a4c2d9bb5a', '1512', '珊瑚红', '6GB+256GB', 2298.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bab9409-0713-11ed-ad1c-88a4c2d9bb5a', '1506', '极光色', '6GB+128GB', 1498.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0babd64b-0713-11ed-ad1c-88a4c2d9bb5a', '1507', '梦幻粉', '4GB+128GB', 1098.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bac5891-0713-11ed-ad1c-88a4c2d9bb5a', '1514', '赤茶红', '3GB+64GB', 849.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0baca4aa-0713-11ed-ad1c-88a4c2d9bb5a', '1603', '幻夜蓝', '8GB+256GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bacdff5-0713-11ed-ad1c-88a4c2d9bb5a', '1605', '幻夜黑', '8GB+128GB', 2399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bad4af6-0713-11ed-ad1c-88a4c2d9bb5a', '1606', '幻影蓝', '6GB+128G', 2099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bad998d-0713-11ed-ad1c-88a4c2d9bb5a', '1608', '魅海蓝', '6GB+128GB', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0baddc6d-0713-11ed-ad1c-88a4c2d9bb5a', '1609', '渐变蓝', '4GB+128G', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bae37ac-0713-11ed-ad1c-88a4c2d9bb5a', '1610', '渐变红', '6GB+64GB', 1099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bae69a7-0713-11ed-ad1c-88a4c2d9bb5a', '1611', '魅海蓝', '6GB+64GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bae9d51-0713-11ed-ad1c-88a4c2d9bb5a', '1613', '蓝水翡翠', '6GB+64GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0baed576-0713-11ed-ad1c-88a4c2d9bb5a', '1614', '极光蓝', '6GB+64GB', 1099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0baf1524-0713-11ed-ad1c-88a4c2d9bb5a', '1709', '浅滩蓝', '6GB+128GB', 1699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0baf575c-0713-11ed-ad1c-88a4c2d9bb5a', '2101', '银色', '256GB（WiFi+蜂窝数据)', 8669.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0baf9031-0713-11ed-ad1c-88a4c2d9bb5a', '2201', '香槟金', '4GB+128GB（WiFi）', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bafcb3b-0713-11ed-ad1c-88a4c2d9bb5a', '2301', '天际蓝', '8GB+256GB（WiFi）', 5799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb01b37-0713-11ed-ad1c-88a4c2d9bb5a', '2102', '银色', '256GB（WiFi+蜂窝数据)', 8299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb04bba-0713-11ed-ad1c-88a4c2d9bb5a', '2202', '贝母白', '8GB+256GB（WiFi）', 3899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb0843e-0713-11ed-ad1c-88a4c2d9bb5a', '2103', '银色', '256GB（WiFi+蜂窝数据)', 5065.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb0c7e4-0713-11ed-ad1c-88a4c2d9bb5a', '2104', '银色', '128GB（WiFi）', 3499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb100ae-0713-11ed-ad1c-88a4c2d9bb5a', '2302', '天际蓝', '8GB+256GB（WiFi）', 6699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb13105-0713-11ed-ad1c-88a4c2d9bb5a', '2303', '天际蓝', '8GB+256GB（WiFi）', 6699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb15de8-0713-11ed-ad1c-88a4c2d9bb5a', '2205', '深空灰色', '4GB+64GB（WiFi）', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb19152-0713-11ed-ad1c-88a4c2d9bb5a', '2206', '深空灰色', '4GB+128GB（WiFi）', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb1c51c-0713-11ed-ad1c-88a4c2d9bb5a', '2304', '鎏砂金', '3GB+128GB（WiFi）', 2199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb1fd53-0713-11ed-ad1c-88a4c2d9bb5a', '2402', '冰川蓝', '4GB+64GB（WiFi）', 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb22bf6-0713-11ed-ad1c-88a4c2d9bb5a', '2401', '苍穹灰', '4GB+128GB（WiFi）', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb25f4e-0713-11ed-ad1c-88a4c2d9bb5a', '2502', '金色', '4GB+64GB（LTE）', 1289.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb29bf0-0713-11ed-ad1c-88a4c2d9bb5a', '2406', '日晖金', '3GB+32GB（WiFi）', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb2dfe8-0713-11ed-ad1c-88a4c2d9bb5a', '1219', '天空之境', '6GB+64GB', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb3174c-0713-11ed-ad1c-88a4c2d9bb5a', '2105', '银色', '256GB（WiFi+蜂窝数据)', 4090.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb34546-0713-11ed-ad1c-88a4c2d9bb5a', '1101', '金色', '256GB', 9999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb391fa-0713-11ed-ad1c-88a4c2d9bb5a', '1201', '亮黑色', '8GB+256GB', 6299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb3c838-0713-11ed-ad1c-88a4c2d9bb5a', '1601', '渐变黑', '8GB+128GB', 2399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb3f1ac-0713-11ed-ad1c-88a4c2d9bb5a', '1901', '日光橙', '8GB+128GB', 2299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb42304-0713-11ed-ad1c-88a4c2d9bb5a', '1102', '深空灰色', '256GB', 10899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb45571-0713-11ed-ad1c-88a4c2d9bb5a', '1103', '红色', '128GB', 5999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb48ef0-0713-11ed-ad1c-88a4c2d9bb5a', '1202', '亮黑色', '8GB+256GB', 5499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb4c1c2-0713-11ed-ad1c-88a4c2d9bb5a', '1205', '天空之境', '8GB+256GB', 5488.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb4f585-0713-11ed-ad1c-88a4c2d9bb5a', '1302', '深空灰', '8GB+256GB', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb55c93-0713-11ed-ad1c-88a4c2d9bb5a', '1304', '暗夜王子', '6GB+128GB', 1699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb58fcc-0713-11ed-ad1c-88a4c2d9bb5a', '1403', '珊瑚橙', '6GB+256GB', 2199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb5c1f3-0713-11ed-ad1c-88a4c2d9bb5a', '1602', '冰岛幻境', '8GB+256GB', 2999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb5f002-0713-11ed-ad1c-88a4c2d9bb5a', '1604', '冰岛白', '8GB+256GB', 2199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb61e12-0713-11ed-ad1c-88a4c2d9bb5a', '1307', '珊瑚橙', '4GB+64GB', 699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb65c27-0713-11ed-ad1c-88a4c2d9bb5a', '1502', '冰岛极光', '6GB+128GB', 2298.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb691de-0713-11ed-ad1c-88a4c2d9bb5a', '1104', '白色', '128GB', 4599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb6c6a5-0713-11ed-ad1c-88a4c2d9bb5a', '1211', '密语红', '8GB+128GB', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb70546-0713-11ed-ad1c-88a4c2d9bb5a', '1311', '皓月白', '6GB+64GB', 1099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb742ec-0713-11ed-ad1c-88a4c2d9bb5a', '1407', '晨曦白', '8GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb79556-0713-11ed-ad1c-88a4c2d9bb5a', '1513', '玉瓷青', '6GB+64GB', 1099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb7c8bb-0713-11ed-ad1c-88a4c2d9bb5a', '1607', '蝶羽白', '8GB+128GB', 2199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb81aaa-0713-11ed-ad1c-88a4c2d9bb5a', '1204', '极光色', '8GB+128G', 5099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb85a4d-0713-11ed-ad1c-88a4c2d9bb5a', '1208', '苏音蓝', '6GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb8965b-0713-11ed-ad1c-88a4c2d9bb5a', '1305', '白色恋人', '6GB+128GB', 1399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb8e22e-0713-11ed-ad1c-88a4c2d9bb5a', '1308', '碳岩灰', '4GB+64GB', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb9245f-0713-11ed-ad1c-88a4c2d9bb5a', '1306', '冰雪极光', '8GB+128GB', 3099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb966fe-0713-11ed-ad1c-88a4c2d9bb5a', '1408', '银光绿', '4GB+64G', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb9a14a-0713-11ed-ad1c-88a4c2d9bb5a', '1206', '天空之境', '8GB+128GB', 3988.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bb9dba3-0713-11ed-ad1c-88a4c2d9bb5a', '1215', '珊瑚红', '6GB+64GB', 1399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bba1231-0713-11ed-ad1c-88a4c2d9bb5a', '1221', '赤茶菊', '8GB+128GB', 2099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bba3f29-0713-11ed-ad1c-88a4c2d9bb5a', '1209', '亮黑色', '8GB+256GB', 3099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bba6e07-0713-11ed-ad1c-88a4c2d9bb5a', '1207', '翡冷翠', '8GB+128GB', 3699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbaa2c7-0713-11ed-ad1c-88a4c2d9bb5a', '1309', '火焰红', '8GB+512GB', 2799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbaf2fe-0713-11ed-ad1c-88a4c2d9bb5a', '1710', '极光黑', '8GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbb32e3-0713-11ed-ad1c-88a4c2d9bb5a', '1906', '幻蓝', '6GB+64GB', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbb63e0-0713-11ed-ad1c-88a4c2d9bb5a', '1803', '皓月金', '8GB+256GB', 3969.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbb92c8-0713-11ed-ad1c-88a4c2d9bb5a', '1903', '珊瑚橙', '6GB+128GB', 1699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbbc9dc-0713-11ed-ad1c-88a4c2d9bb5a', '1210', '翡冷翠', '8GB+128GB', 2299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbbf3a1-0713-11ed-ad1c-88a4c2d9bb5a', '1216', '琥珀棕', '3GB+64GB', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbc2be8-0713-11ed-ad1c-88a4c2d9bb5a', '1218', '宝石蓝', '6GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbc626b-0713-11ed-ad1c-88a4c2d9bb5a', '1312', '火焰红', '6GB+128GB', 2299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbc9b05-0713-11ed-ad1c-88a4c2d9bb5a', '1310', '贝母白', '6GB+128GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbcce03-0713-11ed-ad1c-88a4c2d9bb5a', '1405', '雾海绿', '6GB+256GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbd016c-0713-11ed-ad1c-88a4c2d9bb5a', '1413', '流云白', '8GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbd30b8-0713-11ed-ad1c-88a4c2d9bb5a', '1406', '赛博金属', '8GB+128GB', 2099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbd6680-0713-11ed-ad1c-88a4c2d9bb5a', '1412', '秘夜黑', '4GB+128GB', 1099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbda007-0713-11ed-ad1c-88a4c2d9bb5a', '1503', '幻影蓝', '8GB+256GB', 3998.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbdd3b1-0713-11ed-ad1c-88a4c2d9bb5a', '1417', '慕辰紫', '6GB+256G', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbe06aa-0713-11ed-ad1c-88a4c2d9bb5a', '1508', '印象夏日', '8GB+256GB', 2798.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbe3971-0713-11ed-ad1c-88a4c2d9bb5a', '1505', '全息幻影', '6GB+128GB', 1698.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbe7149-0713-11ed-ad1c-88a4c2d9bb5a', '1506', '幻彩粉', '6GB+128GB', 1498.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbeb182-0713-11ed-ad1c-88a4c2d9bb5a', '1514', '深湖蓝', '3GB+64GB', 849.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbee67c-0713-11ed-ad1c-88a4c2d9bb5a', '1603', '冰岛白', '8GB+256GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbf16f9-0713-11ed-ad1c-88a4c2d9bb5a', '1605', '幻影红', '8GB+128GB', 2399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbf440b-0713-11ed-ad1c-88a4c2d9bb5a', '1608', '魅焰红', '6GB+128GB', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbf7d8c-0713-11ed-ad1c-88a4c2d9bb5a', '1609', '幻夜黑', '4GB+128G', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbfb7ee-0713-11ed-ad1c-88a4c2d9bb5a', '1610', '渐变蓝', '6GB+64GB', 1099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bbfe8ac-0713-11ed-ad1c-88a4c2d9bb5a', '1611', '魅焰红', '6GB+64GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bc0153a-0713-11ed-ad1c-88a4c2d9bb5a', '1613', '冰岛幻境', '6GB+64GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bc046ad-0713-11ed-ad1c-88a4c2d9bb5a', '1614', '魅焰红', '6GB+64GB', 1099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bc072fa-0713-11ed-ad1c-88a4c2d9bb5a', '1709', '暖阳橙', '6GB+128GB', 1699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bc0a59a-0713-11ed-ad1c-88a4c2d9bb5a', '2301', '珊瑚粉', '8GB+256GB（WiFi）', 5799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bc0d9d7-0713-11ed-ad1c-88a4c2d9bb5a', '2103', '深空灰色', '256GB（WiFi+蜂窝数据)', 5065.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bc104da-0713-11ed-ad1c-88a4c2d9bb5a', '2104', '深空灰色', '128GB（WiFi）', 3499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bc132c0-0713-11ed-ad1c-88a4c2d9bb5a', '2302', '珊瑚粉', '8GB+256GB（WiFi）', 6699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bc16578-0713-11ed-ad1c-88a4c2d9bb5a', '2303', '珊瑚粉', '8GB+256GB（WiFi）', 6699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bc19928-0713-11ed-ad1c-88a4c2d9bb5a', '2304', '铂光银', '3GB+128GB（WiFi）', 2199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bc1c1d5-0713-11ed-ad1c-88a4c2d9bb5a', '1219', '相思红', '6GB+64GB', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('0bc1ed8c-0713-11ed-ad1c-88a4c2d9bb5a', '2105', '深空灰色', '256GB（WiFi+蜂窝数据)', 4090.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bb85a60-0713-11ed-ad1c-88a4c2d9bb5a', '1101', '深空灰色', '512GB', 11799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bbd3ae6-0713-11ed-ad1c-88a4c2d9bb5a', '1301', '梦之白', '12GB+256GB', 4299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bbe0723-0713-11ed-ad1c-88a4c2d9bb5a', '1401', '星际蓝', '12GB+256GB', 3799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bbf2159-0713-11ed-ad1c-88a4c2d9bb5a', '1501', '深空流光', '12GB+256GB', 6198.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bbfcec6-0713-11ed-ad1c-88a4c2d9bb5a', '1601', '渐变红', '8GB+256GB', 2799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc06417-0713-11ed-ad1c-88a4c2d9bb5a', '1901', '鲸跃蓝', '8GB+256GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc0f03b-0713-11ed-ad1c-88a4c2d9bb5a', '1102', '暗夜绿色', '512GB', 12699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc175a0-0713-11ed-ad1c-88a4c2d9bb5a', '1205', '亮黑色', '8GB+512GB', 6288.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc22701-0713-11ed-ad1c-88a4c2d9bb5a', '1504', '电光蓝', '8GB+256GB', 2998.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc27730-0713-11ed-ad1c-88a4c2d9bb5a', '1502', '碳纤黑', '8GB+128GB', 2398.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc2c612-0713-11ed-ad1c-88a4c2d9bb5a', '1104', '蓝色', '256GB', 5999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc33730-0713-11ed-ad1c-88a4c2d9bb5a', '1311', '梦幻蓝', '6GB+128GB', 1399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc3b6d3-0713-11ed-ad1c-88a4c2d9bb5a', '1407', '秘境黑', '8GB+256GB', 2299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc4249a-0713-11ed-ad1c-88a4c2d9bb5a', '1511', '冰湖蓝', '6GB+128GB', 1898.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc48875-0713-11ed-ad1c-88a4c2d9bb5a', '1305', '暗夜王子', '4GB+128GB', 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc4f524-0713-11ed-ad1c-88a4c2d9bb5a', '1306', '暗夜魅影', '8GB+256GB', 3499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc59fae-0713-11ed-ad1c-88a4c2d9bb5a', '1206', '亮黑色', '8GB+256GB', 4488.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc5e262-0713-11ed-ad1c-88a4c2d9bb5a', '1215', '幻夜黑', '4GB+128GB', 1399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc62e40-0713-11ed-ad1c-88a4c2d9bb5a', '1309', '冰川蓝', '12GB+512GB', 2999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc66adf-0713-11ed-ad1c-88a4c2d9bb5a', '1905', '静夜黑', '8GB+128GB', 1798.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc6ac38-0713-11ed-ad1c-88a4c2d9bb5a', '1803', '曜岩灰', '12GB+256GB', 4299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc6f257-0713-11ed-ad1c-88a4c2d9bb5a', '1210', '亮黑色', '8GB+256GB', 2599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc728c5-0713-11ed-ad1c-88a4c2d9bb5a', '1312', '碳纤黑', '8GB+128GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc75b9e-0713-11ed-ad1c-88a4c2d9bb5a', '1310', '冰翡翠', '8GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc791cc-0713-11ed-ad1c-88a4c2d9bb5a', '1405', '极夜黑', '8GB+256GB', 2799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc7e331-0713-11ed-ad1c-88a4c2d9bb5a', '1406', '奇幻深林', '8GB+256GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc8136b-0713-11ed-ad1c-88a4c2d9bb5a', '1503', '竞速黑', '12GB+128GB', 3998.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc84d3b-0713-11ed-ad1c-88a4c2d9bb5a', '1417', '湖光绿', '8GB+128G', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc88606-0713-11ed-ad1c-88a4c2d9bb5a', '1505', '极光幻境', '6GB+256G', 1748.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc8c1a4-0713-11ed-ad1c-88a4c2d9bb5a', '1506', '极夜黑', '8GB+128GB', 1598.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc8f612-0713-11ed-ad1c-88a4c2d9bb5a', '1514', '子夜黑', '4GB+64GB', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc92b65-0713-11ed-ad1c-88a4c2d9bb5a', '1606', '幻夜黑', '8GB+128G', 2299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc963f5-0713-11ed-ad1c-88a4c2d9bb5a', '1609', '渐变红', '6GB+256GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc99a75-0713-11ed-ad1c-88a4c2d9bb5a', '1611', '幻夜黑', '6GB+128G', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bc9d1f8-0713-11ed-ad1c-88a4c2d9bb5a', '1613', '幻夜黑', '6GB+128G', 1699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bca0ea3-0713-11ed-ad1c-88a4c2d9bb5a', '1614', '幻夜黑', '4GB+128G', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bca4adf-0713-11ed-ad1c-88a4c2d9bb5a', '2101', '深空灰色', '512GB（WiFi+蜂窝数据)', 10227.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bca8b5c-0713-11ed-ad1c-88a4c2d9bb5a', '2201', '银钻灰', '4GB+64GB（全网通）', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bcabcf3-0713-11ed-ad1c-88a4c2d9bb5a', '2102', '深空灰色', '512GB（WiFi+蜂窝数据)', 10499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bcaf6a3-0713-11ed-ad1c-88a4c2d9bb5a', '2202', '夜阑灰', '8GB+256GB（全网通）', 4499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bcb2ca5-0713-11ed-ad1c-88a4c2d9bb5a', '2401', '冰川蓝', '4GB+64GB（全网通）', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bcb65c3-0713-11ed-ad1c-88a4c2d9bb5a', '1101', '暗夜绿色', '512GB', 11799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bcba73c-0713-11ed-ad1c-88a4c2d9bb5a', '1301', '钛银黑', '12GB+256GB', 4299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bcbe3ab-0713-11ed-ad1c-88a4c2d9bb5a', '1401', '电音紫', '12GB+256GB', 3799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bcc2c17-0713-11ed-ad1c-88a4c2d9bb5a', '1501', '液态天河', '12GB+256GB', 6198.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bcc6736-0713-11ed-ad1c-88a4c2d9bb5a', '1601', '渐变蓝', '8GB+256GB', 2799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bcc9c0d-0713-11ed-ad1c-88a4c2d9bb5a', '1901', '湖光绿', '8GB+256GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bcceb56-0713-11ed-ad1c-88a4c2d9bb5a', '1102', '金色', '512GB', 12699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bcd2ad5-0713-11ed-ad1c-88a4c2d9bb5a', '1205', '极光色', '8GB+512GB', 6288.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bcd625e-0713-11ed-ad1c-88a4c2d9bb5a', '1504', '熔岩橙', '8GB+256GB', 2998.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bcd9fa3-0713-11ed-ad1c-88a4c2d9bb5a', '1502', '电光紫', '8GB+128GB', 2398.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bcdd443-0713-11ed-ad1c-88a4c2d9bb5a', '1104', '黑色', '256GB', 5999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bce10c6-0713-11ed-ad1c-88a4c2d9bb5a', '1311', '曜石黑', '6GB+128GB', 1399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bce739f-0713-11ed-ad1c-88a4c2d9bb5a', '1407', '星云紫', '8GB+256GB', 2299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bceb1f3-0713-11ed-ad1c-88a4c2d9bb5a', '1511', '宠爱粉', '6GB+128GB', 1898.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bceefc1-0713-11ed-ad1c-88a4c2d9bb5a', '1305', '深蓝星球', '4GB+128GB', 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bcf28ff-0713-11ed-ad1c-88a4c2d9bb5a', '1306', '魔法绿镜', '8GB+256GB', 3499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bcf74a9-0713-11ed-ad1c-88a4c2d9bb5a', '1206', '极光色', '8GB+256GB', 4488.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bcfb996-0713-11ed-ad1c-88a4c2d9bb5a', '1215', '极光蓝', '4GB+128GB', 1399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bcfed0a-0713-11ed-ad1c-88a4c2d9bb5a', '1309', '碳纤黑', '12GB+512GB', 2999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd03499-0713-11ed-ad1c-88a4c2d9bb5a', '1905', '极光蓝', '8GB+128GB', 1798.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd070f5-0713-11ed-ad1c-88a4c2d9bb5a', '1803', '星雾蓝', '12GB+256GB', 4299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd0a943-0713-11ed-ad1c-88a4c2d9bb5a', '1210', '极光色', '8GB+256GB', 2599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd0f1f0-0713-11ed-ad1c-88a4c2d9bb5a', '1312', '冰川蓝', '8GB+128GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd1527b-0713-11ed-ad1c-88a4c2d9bb5a', '1310', '电光灰', '8GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd19827-0713-11ed-ad1c-88a4c2d9bb5a', '1405', '晨雾白', '8GB+256GB', 2799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd1d5e2-0713-11ed-ad1c-88a4c2d9bb5a', '1406', '极地阳光', '8GB+256GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd20e15-0713-11ed-ad1c-88a4c2d9bb5a', '1503', '勒芒蓝', '12GB+128GB', 3998.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd24e61-0713-11ed-ad1c-88a4c2d9bb5a', '1417', '流云白', '8GB+128G', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd2939a-0713-11ed-ad1c-88a4c2d9bb5a', '1505', '竹林幻夜', '6GB+256G', 1748.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd2d481-0713-11ed-ad1c-88a4c2d9bb5a', '1506', '极光色', '8GB+128GB', 1598.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd31dd0-0713-11ed-ad1c-88a4c2d9bb5a', '1514', '赤茶红', '4GB+64GB', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd38a36-0713-11ed-ad1c-88a4c2d9bb5a', '1606', '幻影蓝', '8GB+128G', 2299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd3c21a-0713-11ed-ad1c-88a4c2d9bb5a', '1609', '渐变蓝', '6GB+256GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd3fab5-0713-11ed-ad1c-88a4c2d9bb5a', '1611', '魅海蓝', '6GB+128G', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd43105-0713-11ed-ad1c-88a4c2d9bb5a', '1613', '蓝水翡翠', '6GB+128G', 1699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd468c6-0713-11ed-ad1c-88a4c2d9bb5a', '1614', '极光蓝', '4GB+128G', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd49855-0713-11ed-ad1c-88a4c2d9bb5a', '2101', '银色', '512GB（WiFi+蜂窝数据)', 10227.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd4cded-0713-11ed-ad1c-88a4c2d9bb5a', '2201', '香槟金', '4GB+64GB（全网通）', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd50c7d-0713-11ed-ad1c-88a4c2d9bb5a', '2102', '银色', '512GB（WiFi+蜂窝数据)', 10499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd540fc-0713-11ed-ad1c-88a4c2d9bb5a', '2202', '贝母白', '8GB+256GB（全网通）', 4499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd5821a-0713-11ed-ad1c-88a4c2d9bb5a', '2401', '苍穹灰', '4GB+64GB（全网通）', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd5eeba-0713-11ed-ad1c-88a4c2d9bb5a', '1601', '渐变黑', '8GB+256GB', 2799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd627a1-0713-11ed-ad1c-88a4c2d9bb5a', '1901', '日光橙', '8GB+256GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd662be-0713-11ed-ad1c-88a4c2d9bb5a', '1102', '深空灰色', '512GB', 12699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd68df2-0713-11ed-ad1c-88a4c2d9bb5a', '1205', '天空之境', '8GB+512GB', 6288.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd6e74a-0713-11ed-ad1c-88a4c2d9bb5a', '1502', '冰岛极光', '8GB+128GB', 2398.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd71b7f-0713-11ed-ad1c-88a4c2d9bb5a', '1104', '白色', '256GB', 5999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd75135-0713-11ed-ad1c-88a4c2d9bb5a', '1311', '皓月白', '6GB+128GB', 1399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd78861-0713-11ed-ad1c-88a4c2d9bb5a', '1407', '晨曦白', '8GB+256GB', 2299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd7dba4-0713-11ed-ad1c-88a4c2d9bb5a', '1305', '白色恋人', '4GB+128GB', 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd8228e-0713-11ed-ad1c-88a4c2d9bb5a', '1306', '冰雪极光', '8GB+256GB', 3499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd85f80-0713-11ed-ad1c-88a4c2d9bb5a', '1206', '天空之境', '8GB+256GB', 4488.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd8a111-0713-11ed-ad1c-88a4c2d9bb5a', '1215', '珊瑚红', '4GB+128GB', 1399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd8d9dc-0713-11ed-ad1c-88a4c2d9bb5a', '1309', '火焰红', '12GB+512GB', 2999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd9178d-0713-11ed-ad1c-88a4c2d9bb5a', '1803', '皓月金', '12GB+256GB', 4299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd94a6b-0713-11ed-ad1c-88a4c2d9bb5a', '1210', '翡冷翠', '8GB+256GB', 2599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd986b3-0713-11ed-ad1c-88a4c2d9bb5a', '1312', '火焰红', '8GB+128GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd9c2ad-0713-11ed-ad1c-88a4c2d9bb5a', '1310', '贝母白', '8GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bd9fdcb-0713-11ed-ad1c-88a4c2d9bb5a', '1405', '雾海绿', '8GB+256GB', 2799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bda3af5-0713-11ed-ad1c-88a4c2d9bb5a', '1406', '赛博金属', '8GB+256GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bda7310-0713-11ed-ad1c-88a4c2d9bb5a', '1503', '幻影蓝', '12GB+128GB', 3998.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bdaa4a5-0713-11ed-ad1c-88a4c2d9bb5a', '1417', '慕辰紫', '8GB+128G', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bdadb1d-0713-11ed-ad1c-88a4c2d9bb5a', '1505', '全息幻影', '6GB+256G', 1748.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bdb183d-0713-11ed-ad1c-88a4c2d9bb5a', '1506', '幻彩粉', '8GB+128GB', 1598.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bdb5735-0713-11ed-ad1c-88a4c2d9bb5a', '1514', '深湖蓝', '4GB+64GB', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bdb8c11-0713-11ed-ad1c-88a4c2d9bb5a', '1609', '幻夜黑', '6GB+256GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bdbc5dc-0713-11ed-ad1c-88a4c2d9bb5a', '1611', '魅焰红', '6GB+128G', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bdbff4b-0713-11ed-ad1c-88a4c2d9bb5a', '1613', '冰岛幻境', '6GB+128G', 1699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('7bdc491c-0713-11ed-ad1c-88a4c2d9bb5a', '1614', '魅焰红', '4GB+128G', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('976d7cda-06b9-11ed-ad1c-88a4c2d9bb5a', '1101', '深空灰色', '64GB', 8699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('976de71e-06b9-11ed-ad1c-88a4c2d9bb5a', '1201', '星河银', '8GB+128GB', 5799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('976e5280-06b9-11ed-ad1c-88a4c2d9bb5a', '1301', '梦之白', '8GB+128GB', 3699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('976e95d1-06b9-11ed-ad1c-88a4c2d9bb5a', '1401', '星际蓝', '8GB+128GB', 3199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('976ecca1-06b9-11ed-ad1c-88a4c2d9bb5a', '1501', '深空流光', '8GB+128GB', 4498.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('976efb57-06b9-11ed-ad1c-88a4c2d9bb5a', '1601', '渐变红', '6GB+128G', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('976f2c76-06b9-11ed-ad1c-88a4c2d9bb5a', '1701', '密斯白', '12GB+256GB', 7999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('976f5b19-06b9-11ed-ad1c-88a4c2d9bb5a', '1801', '冰际蓝', '8GB+128GB', 2999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('976f8b9c-06b9-11ed-ad1c-88a4c2d9bb5a', '1901', '鲸跃蓝', '6GB+128GB', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('976fd193-06b9-11ed-ad1c-88a4c2d9bb5a', '1102', '暗夜绿色', '64GB', 9599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9770000a-06b9-11ed-ad1c-88a4c2d9bb5a', '1103', '白色', '64GB', 5499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977030e0-06b9-11ed-ad1c-88a4c2d9bb5a', '1202', '星河银', '8GB+128GB', 4999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97706b5f-06b9-11ed-ad1c-88a4c2d9bb5a', '1205', '亮黑色', '8GB+128GB', 4988.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977091ff-06b9-11ed-ad1c-88a4c2d9bb5a', '1302', '全息幻彩蓝', '8GB+128GB', 2399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9770ca7d-06b9-11ed-ad1c-88a4c2d9bb5a', '1304', '白色恋人', '6GB+64GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9770fb7f-06b9-11ed-ad1c-88a4c2d9bb5a', '1403', '极夜黑', '8GB+128GB', 2199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97712f77-06b9-11ed-ad1c-88a4c2d9bb5a', '1504', '电光蓝', '6GB+128GB', 2098.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97715d74-06b9-11ed-ad1c-88a4c2d9bb5a', '1602', '幻夜星河', '8GB+128GB', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97718e57-06b9-11ed-ad1c-88a4c2d9bb5a', '1604', '幻夜黑', '8GB+128GB', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9771bf5e-06b9-11ed-ad1c-88a4c2d9bb5a', '1203', '翡冷翠', '8GB+256GB', 5899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9771f4e8-06b9-11ed-ad1c-88a4c2d9bb5a', '1303', '全息幻彩蓝', '6GB+128GB', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97722000-06b9-11ed-ad1c-88a4c2d9bb5a', '1307', '深海蓝', '3GB+32GB', 699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97724b94-06b9-11ed-ad1c-88a4c2d9bb5a', '1402', '薄雾粉', '8GB+128GB', 2999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9772785d-06b9-11ed-ad1c-88a4c2d9bb5a', '1502', '碳纤黑', '6GB+64GB', 1898.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9772af1c-06b9-11ed-ad1c-88a4c2d9bb5a', '1104', '蓝色', '64GB', 4399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9772dfa6-06b9-11ed-ad1c-88a4c2d9bb5a', '1211', '幻夜黑', '6GB+128G', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97731815-06b9-11ed-ad1c-88a4c2d9bb5a', '1311', '梦幻蓝', '4GB+64GB', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97734628-06b9-11ed-ad1c-88a4c2d9bb5a', '1411', '凝光绿', '8GB+128G', 3599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97737e49-06b9-11ed-ad1c-88a4c2d9bb5a', '1407', '秘境黑', '6GB+64GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9773b3f2-06b9-11ed-ad1c-88a4c2d9bb5a', '1415', '幻境份', '3GB+64G', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9773f4e1-06b9-11ed-ad1c-88a4c2d9bb5a', '1511', '冰湖蓝', '4GB+128GB', 1598.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977420aa-06b9-11ed-ad1c-88a4c2d9bb5a', '1513', '玛瑙黑', '4GB+64GB', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977452ec-06b9-11ed-ad1c-88a4c2d9bb5a', '1607', '蝶羽黑', '6GB+128G', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9774877f-06b9-11ed-ad1c-88a4c2d9bb5a', '1703', '全息黑', '8GB+128GB', 4499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9774bc41-06b9-11ed-ad1c-88a4c2d9bb5a', '1702', '量子黑', '12GB+512GB\r\n', 15999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9774eb30-06b9-11ed-ad1c-88a4c2d9bb5a', '1705', '棱镜黑', '6GB+128GB', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97752167-06b9-11ed-ad1c-88a4c2d9bb5a', '1707', '太空黑', '8GB+128GB', 2999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9775635e-06b9-11ed-ad1c-88a4c2d9bb5a', '1802', '海月蓝', '8GB+256GB', 4599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97759d68-06b9-11ed-ad1c-88a4c2d9bb5a', '1804', '曜岩灰', '8GB+256GB', 2599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9775d034-06b9-11ed-ad1c-88a4c2d9bb5a', '1902', '黑之谧镜', '6GB+128GB', 2689.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97760166-06b9-11ed-ad1c-88a4c2d9bb5a', '1904', '碳纤黑', '6GB+128GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97762a27-06b9-11ed-ad1c-88a4c2d9bb5a', '1204', '宝石蓝', '6GB+128G', 4499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97765774-06b9-11ed-ad1c-88a4c2d9bb5a', '1208', '幻夜黑', '6GB+64GB', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97768825-06b9-11ed-ad1c-88a4c2d9bb5a', '1305', '暗夜王子', '6GB+64GB', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9776b9ba-06b9-11ed-ad1c-88a4c2d9bb5a', '1308', '仙踪绿', '3GB+32GB', 749.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9776e4b4-06b9-11ed-ad1c-88a4c2d9bb5a', '1306', '暗夜魅影', '6GB+128G', 2799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977718c4-06b9-11ed-ad1c-88a4c2d9bb5a', '1409', '霓光紫', '6GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977751ed-06b9-11ed-ad1c-88a4c2d9bb5a', '1408', '摩卡红', '6GB+64GB', 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97778931-06b9-11ed-ad1c-88a4c2d9bb5a', '1410', '星云渐变色', '6GB+128GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9777c7d6-06b9-11ed-ad1c-88a4c2d9bb5a', '1418', '清新粉', '4GB+64G', 1699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9778094c-06b9-11ed-ad1c-88a4c2d9bb5a', '1206', '亮黑色', '6GB+128GB', 3688.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977843b3-06b9-11ed-ad1c-88a4c2d9bb5a', '1213', '幻夜黑', '6GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97787c67-06b9-11ed-ad1c-88a4c2d9bb5a', '1215', '幻夜黑', '4GB+64GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9778b59e-06b9-11ed-ad1c-88a4c2d9bb5a', '1221', '天空之境', '6GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9778e85c-06b9-11ed-ad1c-88a4c2d9bb5a', '1209', '绮境深林', '8GB+128GB', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97792132-06b9-11ed-ad1c-88a4c2d9bb5a', '1217', '天空之境', '6GB+64GB', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9779567a-06b9-11ed-ad1c-88a4c2d9bb5a', '1207', '亮黑色', '6GB+64GB', 3199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97798ad5-06b9-11ed-ad1c-88a4c2d9bb5a', '1212', '亮黑色', '8GB+128GB', 2599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9779bcaa-06b9-11ed-ad1c-88a4c2d9bb5a', '1309', '冰川蓝', '8GB+128GB', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977a19af-06b9-11ed-ad1c-88a4c2d9bb5a', '1313', '碳纤黑', '6GB+128GB', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977a4ffd-06b9-11ed-ad1c-88a4c2d9bb5a', '1710', '莓什么', '6GB+128GB', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977ba33a-06b9-11ed-ad1c-88a4c2d9bb5a', '1711', '花仙紫', '6GB+128GB ', 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977bf40c-06b9-11ed-ad1c-88a4c2d9bb5a', '1713', '探索黑', '6GB+128GB', 1699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977c5329-06b9-11ed-ad1c-88a4c2d9bb5a', '1908', '砚墨黑', '6GB+64GB', 1098.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977ca106-06b9-11ed-ad1c-88a4c2d9bb5a', '1907', '幻黑', '4GB+64GB', 1099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977ce721-06b9-11ed-ad1c-88a4c2d9bb5a', '1905', '静夜黑', '6GB+64GB', 1598.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977d24de-06b9-11ed-ad1c-88a4c2d9bb5a', '1906', '亮黑', '4GB+64GB', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977d5a7d-06b9-11ed-ad1c-88a4c2d9bb5a', '1803', '曜岩灰', '6GB+128GB', 3699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977d92dd-06b9-11ed-ad1c-88a4c2d9bb5a', '1903', '骑士黑', '6GB+64GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977dcb80-06b9-11ed-ad1c-88a4c2d9bb5a', '1210', '亮黑色', '6GB+128G', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977dfb19-06b9-11ed-ad1c-88a4c2d9bb5a', '1214', '密语红', '6GB+128GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977e35b1-06b9-11ed-ad1c-88a4c2d9bb5a', '1216', '幻夜黑', '3GB+32GB', 799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977e7607-06b9-11ed-ad1c-88a4c2d9bb5a', '1218', '幻夜黑', '4GB+128GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977edf49-06b9-11ed-ad1c-88a4c2d9bb5a', '1312', '碳纤黑', '6GB+64GB', 2099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977f153f-06b9-11ed-ad1c-88a4c2d9bb5a', '1310', '冰翡翠', '6GB+64GB', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977f4af0-06b9-11ed-ad1c-88a4c2d9bb5a', '1405', '极夜黑', '6GB+128GB', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977f8460-06b9-11ed-ad1c-88a4c2d9bb5a', '1404', '深海夜光', '8GB+128GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977fbc0a-06b9-11ed-ad1c-88a4c2d9bb5a', '1413', '慕辰紫', '4GB+128GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('977ff42b-06b9-11ed-ad1c-88a4c2d9bb5a', '1406', '奇幻深林', '6GB+128GB', 1899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97802f40-06b9-11ed-ad1c-88a4c2d9bb5a', '1412', '天青色', '4GB+64GB', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('978067de-06b9-11ed-ad1c-88a4c2d9bb5a', '1414', '曜石黑', '6GB+128GB', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9780a4e9-06b9-11ed-ad1c-88a4c2d9bb5a', '1416', '荧石紫', '4GB+128G', 1399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9780ed53-06b9-11ed-ad1c-88a4c2d9bb5a', '1503', '竞速黑', '8GB+128GB', 3698.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97812ddc-06b9-11ed-ad1c-88a4c2d9bb5a', '1417', '湖光绿', '4GB+128GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('978170b8-06b9-11ed-ad1c-88a4c2d9bb5a', '1508', '雀羽蓝', '8GB+128GB', 2498.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9781b311-06b9-11ed-ad1c-88a4c2d9bb5a', '1505', '极光幻境', '6GB+64GB', 1498.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9781f0fb-06b9-11ed-ad1c-88a4c2d9bb5a', '1512', '钟情蓝', '6GB+128GB', 1698.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97822a29-06b9-11ed-ad1c-88a4c2d9bb5a', '1506', '极夜黑', '4GB+64GB', 1298.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('978265d1-06b9-11ed-ad1c-88a4c2d9bb5a', '1515', '琉璃黑', '6GB+128GB', 1598.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97829ef6-06b9-11ed-ad1c-88a4c2d9bb5a', '1517', '极光蓝', '4GB+128GB', 1098.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9782d817-06b9-11ed-ad1c-88a4c2d9bb5a', '1516', '孔雀蓝', '4GB+128GB', 1298.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97831045-06b9-11ed-ad1c-88a4c2d9bb5a', '1509', '黑珍珠', '8GB+256GB', 3298.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97835993-06b9-11ed-ad1c-88a4c2d9bb5a', '1507', '极光蓝', '6GB+64GB', 1098.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('978395d6-06b9-11ed-ad1c-88a4c2d9bb5a', '1510', '冰岛恋歌', '8GB+128GB', 2698.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9783c6e0-06b9-11ed-ad1c-88a4c2d9bb5a', '1514', '子夜黑', '3GB+32GB', 749.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9783ffab-06b9-11ed-ad1c-88a4c2d9bb5a', '1518', '典雅黑', '3GB+32GB', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97842f58-06b9-11ed-ad1c-88a4c2d9bb5a', '1603', '幻夜黑', '8GB+128GB', 2099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('978463fe-06b9-11ed-ad1c-88a4c2d9bb5a', '1605', '魅海蓝', '6GB+128G', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('978495ab-06b9-11ed-ad1c-88a4c2d9bb5a', '1606', '幻夜黑', '6GB+64G', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9784ca67-06b9-11ed-ad1c-88a4c2d9bb5a', '1608', '幻夜黑', '6GB+64G', 1099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9785020b-06b9-11ed-ad1c-88a4c2d9bb5a', '1609', '渐变红', '6GB+64G', 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('978537c2-06b9-11ed-ad1c-88a4c2d9bb5a', '1704', '光谱黑', '8GB+128GB', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97856936-06b9-11ed-ad1c-88a4c2d9bb5a', '1610', '幻夜黑', '4GB+64GB', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9785a3d5-06b9-11ed-ad1c-88a4c2d9bb5a', '1611', '幻夜黑', '4GB+64GB', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9785d867-06b9-11ed-ad1c-88a4c2d9bb5a', '1613', '幻夜黑', '4GB+64GB', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97861059-06b9-11ed-ad1c-88a4c2d9bb5a', '1614', '幻夜黑', '4GB+64GB', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97863e02-06b9-11ed-ad1c-88a4c2d9bb5a', '1706', '复古黑', '4GB+64GB', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97866aaa-06b9-11ed-ad1c-88a4c2d9bb5a', '1708', '镭射黑', '8GB+128GB ', 2299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97869768-06b9-11ed-ad1c-88a4c2d9bb5a', '1709', '丹宁黑', '6GB+64G', 1399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9786ca21-06b9-11ed-ad1c-88a4c2d9bb5a', '1712', '魅夜黑', '6GB+64GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9786fa6e-06b9-11ed-ad1c-88a4c2d9bb5a', '1714', '黑色', '4GB+64GB', 5299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97872859-06b9-11ed-ad1c-88a4c2d9bb5a', '2101', '深空灰色', '256GB（WiFi）', 7500.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97876315-06b9-11ed-ad1c-88a4c2d9bb5a', '2201', '银钻灰', '4GB+64GB（WiFi）', 2249.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('978790db-06b9-11ed-ad1c-88a4c2d9bb5a', '2301', '星空灰', '6GB+128GB（WiFi）', 5099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9787bce5-06b9-11ed-ad1c-88a4c2d9bb5a', '2102', '深空灰色', '64GB（WiFi）', 7699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9788127f-06b9-11ed-ad1c-88a4c2d9bb5a', '2202', '夜阑灰', '6GB+128GB（WiFi）', 3199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97884623-06b9-11ed-ad1c-88a4c2d9bb5a', '2203', '香槟金', '6GB+128GB（WiFi）', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97887a46-06b9-11ed-ad1c-88a4c2d9bb5a', '2103', '金色', '64GB（WiFi）', 3896.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9788a9d0-06b9-11ed-ad1c-88a4c2d9bb5a', '2104', '金色', '32GB（WiFi）', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9788dd9f-06b9-11ed-ad1c-88a4c2d9bb5a', '2302', '星空灰', '6GB+128GB（WiFi）', 5099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97890c9d-06b9-11ed-ad1c-88a4c2d9bb5a', '2303', '星空灰', '6GB+128GB（WiFi）', 5999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97893e2e-06b9-11ed-ad1c-88a4c2d9bb5a', '2205', '香槟金', '3GB+32GB（WiFi）', 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('978974a8-06b9-11ed-ad1c-88a4c2d9bb5a', '2206', '香槟金', '4GB+64GB（WiFi）', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('97899ec0-06b9-11ed-ad1c-88a4c2d9bb5a', '2304', '锡墨家', '3GB+32GB（WiFi）', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9789d2ed-06b9-11ed-ad1c-88a4c2d9bb5a', '2402', '苍穹灰', '3GB+32GB（WiFi）', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('978a0f50-06b9-11ed-ad1c-88a4c2d9bb5a', '2401', '冰川蓝', '4GB+64GB（WiFi）', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('978a595a-06b9-11ed-ad1c-88a4c2d9bb5a', '2501', '黑色', '4GB+64GB（LTE）', 1899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('978a8489-06b9-11ed-ad1c-88a4c2d9bb5a', '2502', '黑色', '4GB+64GB（WiFi）', 1189.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('978aaf63-06b9-11ed-ad1c-88a4c2d9bb5a', '2405', '苍穹灰', '3GB+32GB（WiFi）', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('978adb23-06b9-11ed-ad1c-88a4c2d9bb5a', '2404', '香槟金', '4GB+64GB（WiFi）', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('978b08f9-06b9-11ed-ad1c-88a4c2d9bb5a', '2403', '香槟金', '4GB+64GB（WiFi）', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('978b3175-06b9-11ed-ad1c-88a4c2d9bb5a', '2406', '苍穹灰', '2GB+16GB（WiFi）', 949.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('978b6159-06b9-11ed-ad1c-88a4c2d9bb5a', '1219', '极光蓝', '4GB+64GB', 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('978b9078-06b9-11ed-ad1c-88a4c2d9bb5a', '1220', '幻夜黑', '6GB+128GB', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('978bc479-06b9-11ed-ad1c-88a4c2d9bb5a', '2204', '香槟金', '6GB+256GB（WiFi）', 3999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('978beed7-06b9-11ed-ad1c-88a4c2d9bb5a', '2105', '金色', '64GB（WiFi）', 2921.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987868cd-06ba-11ed-ad1c-88a4c2d9bb5a', '1101', '暗夜绿色', '64GB', 8699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9879778b-06ba-11ed-ad1c-88a4c2d9bb5a', '1201', '翡冷翠', '8GB+128GB', 5799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9879a9ab-06ba-11ed-ad1c-88a4c2d9bb5a', '1301', '钛银黑', '8GB+128GB', 3699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9879e715-06ba-11ed-ad1c-88a4c2d9bb5a', '1401', '电音紫', '8GB+128GB', 3199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987a2629-06ba-11ed-ad1c-88a4c2d9bb5a', '1501', '液态天河', '8GB+128GB', 4498.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987a5af6-06ba-11ed-ad1c-88a4c2d9bb5a', '1601', '渐变蓝', '6GB+128G', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987a8af7-06ba-11ed-ad1c-88a4c2d9bb5a', '1701', '麦昆黑', '12GB+256GB', 7999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987ab84e-06ba-11ed-ad1c-88a4c2d9bb5a', '1801', '冰川银', '8GB+128GB', 2999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987afb77-06ba-11ed-ad1c-88a4c2d9bb5a', '1901', '湖光绿', '6GB+128GB', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987b2a4c-06ba-11ed-ad1c-88a4c2d9bb5a', '1102', '金色', '64GB', 9599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987b549f-06ba-11ed-ad1c-88a4c2d9bb5a', '1103', '黑色', '64GB', 5499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987b8299-06ba-11ed-ad1c-88a4c2d9bb5a', '1202', '翡冷翠', '8GB+128GB', 4999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987bacd4-06ba-11ed-ad1c-88a4c2d9bb5a', '1205', '极光色', '8GB+128GB', 4988.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987be21e-06ba-11ed-ad1c-88a4c2d9bb5a', '1302', '全息幻彩紫', '8GB+128GB', 2399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987c11bf-06ba-11ed-ad1c-88a4c2d9bb5a', '1304', '深蓝星球', '6GB+64GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987c3dbe-06ba-11ed-ad1c-88a4c2d9bb5a', '1403', '珠贝白', '8GB+128GB', 2199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987c7627-06ba-11ed-ad1c-88a4c2d9bb5a', '1504', '熔岩橙', '6GB+128GB', 2098.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987cac8d-06ba-11ed-ad1c-88a4c2d9bb5a', '1602', '蓝水翡翠', '8GB+128GB', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987cd91b-06ba-11ed-ad1c-88a4c2d9bb5a', '1604', '幻夜蓝', '8GB+128GB', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987d03ae-06ba-11ed-ad1c-88a4c2d9bb5a', '1203', '宝石蓝', '8GB+256GB', 5899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987d82db-06ba-11ed-ad1c-88a4c2d9bb5a', '1307', '耀夜黑', '3GB+32GB', 699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987db9d3-06ba-11ed-ad1c-88a4c2d9bb5a', '1402', '深海夜光', '8GB+128GB', 2999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987decb3-06ba-11ed-ad1c-88a4c2d9bb5a', '1502', '电光紫', '6GB+64GB', 1898.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987e1945-06ba-11ed-ad1c-88a4c2d9bb5a', '1104', '黑色', '64GB', 4399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987e469c-06ba-11ed-ad1c-88a4c2d9bb5a', '1211', '苏音蓝', '6GB+128G', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987e76c2-06ba-11ed-ad1c-88a4c2d9bb5a', '1311', '曜石黑', '4GB+64GB', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987ef173-06ba-11ed-ad1c-88a4c2d9bb5a', '1407', '星云紫', '6GB+64GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987f24bc-06ba-11ed-ad1c-88a4c2d9bb5a', '1415', '幻境蓝', '3GB+64G', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987f4e4f-06ba-11ed-ad1c-88a4c2d9bb5a', '1511', '宠爱粉', '4GB+128GB', 1598.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987f80e8-06ba-11ed-ad1c-88a4c2d9bb5a', '1513', '晶石蓝', '4GB+64GB', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987fa94f-06ba-11ed-ad1c-88a4c2d9bb5a', '1607', '蝶羽蓝', '6GB+128G', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987fd2b1-06ba-11ed-ad1c-88a4c2d9bb5a', '1703', '空间白', '8GB+128GB', 4499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('987ffb11-06ba-11ed-ad1c-88a4c2d9bb5a', '1702', '夜雾银', '12GB+512GB\r\n', 15999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98802463-06ba-11ed-ad1c-88a4c2d9bb5a', '1705', '几何绿', '6GB+128GB', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98804fac-06ba-11ed-ad1c-88a4c2d9bb5a', '1707', '月光银', '8GB+128GB', 2999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9880ae48-06ba-11ed-ad1c-88a4c2d9bb5a', '1804', '珐琅红', '8GB+256GB', 2599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9880db36-06ba-11ed-ad1c-88a4c2d9bb5a', '1902', '暮光深林', '6GB+128GB', 2689.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988136c3-06ba-11ed-ad1c-88a4c2d9bb5a', '1204', '翡冷翠', '6GB+128G', 4499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988166aa-06ba-11ed-ad1c-88a4c2d9bb5a', '1208', '翡冷翠', '6GB+64GB', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98818ed1-06ba-11ed-ad1c-88a4c2d9bb5a', '1305', '深蓝星球', '6GB+64GB', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9881b44e-06ba-11ed-ad1c-88a4c2d9bb5a', '1308', '宝石蓝', '3GB+32GB', 749.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9881dad1-06ba-11ed-ad1c-88a4c2d9bb5a', '1306', '魔法绿镜', '6GB+128G', 2799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98823084-06ba-11ed-ad1c-88a4c2d9bb5a', '1408', '梵星蓝', '6GB+64GB', 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98829ae2-06ba-11ed-ad1c-88a4c2d9bb5a', '1418', '琥珀金', '4GB+64G', 1699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9882d3ab-06ba-11ed-ad1c-88a4c2d9bb5a', '1206', '极光色', '6GB+128GB', 3688.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9882fe4c-06ba-11ed-ad1c-88a4c2d9bb5a', '1213', '雀翎蓝', '6GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988328af-06ba-11ed-ad1c-88a4c2d9bb5a', '1215', '极光蓝', '4GB+64GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98835272-06ba-11ed-ad1c-88a4c2d9bb5a', '1221', '翡冷翠', '6GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988386bd-06ba-11ed-ad1c-88a4c2d9bb5a', '1209', '仲夏紫', '8GB+128GB', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9883b6d4-06ba-11ed-ad1c-88a4c2d9bb5a', '1217', '翡冷翠', '6GB+64GB', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9883e17f-06ba-11ed-ad1c-88a4c2d9bb5a', '1207', '极光色', '6GB+64GB', 3199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98840989-06ba-11ed-ad1c-88a4c2d9bb5a', '1212', '仲夏紫', '8GB+128GB', 2599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988437da-06ba-11ed-ad1c-88a4c2d9bb5a', '1309', '碳纤黑', '8GB+128GB', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9884897c-06ba-11ed-ad1c-88a4c2d9bb5a', '1710', '有点芒', '6GB+128GB', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9884d90b-06ba-11ed-ad1c-88a4c2d9bb5a', '1713', '梦想蓝', '6GB+128GB', 1699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988500c4-06ba-11ed-ad1c-88a4c2d9bb5a', '1908', '烟晶紫', '6GB+64GB', 1098.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98855414-06ba-11ed-ad1c-88a4c2d9bb5a', '1905', '极光蓝', '6GB+64GB', 1598.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98857d6d-06ba-11ed-ad1c-88a4c2d9bb5a', '1906', '玉白', '4GB+64GB', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9885a609-06ba-11ed-ad1c-88a4c2d9bb5a', '1803', '星雾蓝', '6GB+128GB', 3699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9885d394-06ba-11ed-ad1c-88a4c2d9bb5a', '1903', '冰丝白', '6GB+64GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9885f981-06ba-11ed-ad1c-88a4c2d9bb5a', '1210', '极光色', '6GB+128G', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98862113-06ba-11ed-ad1c-88a4c2d9bb5a', '1214', '苏音蓝', '6GB+128GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98864827-06ba-11ed-ad1c-88a4c2d9bb5a', '1216', '宝石蓝', '3GB+32GB', 799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98867b13-06ba-11ed-ad1c-88a4c2d9bb5a', '1218', '宝石蓝', '4GB+128GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9886a776-06ba-11ed-ad1c-88a4c2d9bb5a', '1312', '冰川蓝', '6GB+64GB', 2099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9886ce52-06ba-11ed-ad1c-88a4c2d9bb5a', '1310', '电光灰', '6GB+64GB', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9886fb89-06ba-11ed-ad1c-88a4c2d9bb5a', '1405', '晨雾白', '6GB+128GB', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98872460-06ba-11ed-ad1c-88a4c2d9bb5a', '1404', '晨雾白', '8GB+128GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98874728-06ba-11ed-ad1c-88a4c2d9bb5a', '1413', '湖光绿', '4GB+128GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9887711e-06ba-11ed-ad1c-88a4c2d9bb5a', '1406', '极地阳光', '6GB+128GB', 1899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98879733-06ba-11ed-ad1c-88a4c2d9bb5a', '1412', '石榴红', '4GB+64GB', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9887be2b-06ba-11ed-ad1c-88a4c2d9bb5a', '1414', '冰白玉', '6GB+128GB', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9887eca1-06ba-11ed-ad1c-88a4c2d9bb5a', '1416', '云母绿', '4GB+128G', 1399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98882055-06ba-11ed-ad1c-88a4c2d9bb5a', '1503', '勒芒蓝', '8GB+128GB', 3698.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98884fbe-06ba-11ed-ad1c-88a4c2d9bb5a', '1417', '流云白', '4GB+128GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98887dc6-06ba-11ed-ad1c-88a4c2d9bb5a', '1508', '翡翠色', '8GB+128GB', 2498.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9888a462-06ba-11ed-ad1c-88a4c2d9bb5a', '1505', '竹林幻夜', '6GB+64GB', 1498.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9888cac9-06ba-11ed-ad1c-88a4c2d9bb5a', '1512', '珊瑚红', '6GB+128GB', 1698.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9888fa2d-06ba-11ed-ad1c-88a4c2d9bb5a', '1506', '极光色', '4GB+64GB', 1298.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988922ce-06ba-11ed-ad1c-88a4c2d9bb5a', '1515', '波漾蓝', '6GB+128GB', 1598.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98894dcf-06ba-11ed-ad1c-88a4c2d9bb5a', '1517', '极光粉', '4GB+128GB', 1098.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98897306-06ba-11ed-ad1c-88a4c2d9bb5a', '1516', '初桃粉', '4GB+128GB', 1298.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9889cca4-06ba-11ed-ad1c-88a4c2d9bb5a', '1507', '梦幻粉', '6GB+64GB', 1098.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9889f567-06ba-11ed-ad1c-88a4c2d9bb5a', '1510', '黑眸色', '8GB+128GB', 2698.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988a1db0-06ba-11ed-ad1c-88a4c2d9bb5a', '1514', '赤茶红', '3GB+32GB', 749.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988a4532-06ba-11ed-ad1c-88a4c2d9bb5a', '1518', '紫霞红', '3GB+32GB', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988a7ddc-06ba-11ed-ad1c-88a4c2d9bb5a', '1603', '幻夜蓝', '8GB+128GB', 2099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988ab84c-06ba-11ed-ad1c-88a4c2d9bb5a', '1605', '幻夜黑', '6GB+128G', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988af2d5-06ba-11ed-ad1c-88a4c2d9bb5a', '1606', '幻影蓝', '6GB+64G', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988b1ff4-06ba-11ed-ad1c-88a4c2d9bb5a', '1608', '魅海蓝', '6GB+64G', 1099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988b5918-06ba-11ed-ad1c-88a4c2d9bb5a', '1609', '渐变蓝', '6GB+64G', 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988b8340-06ba-11ed-ad1c-88a4c2d9bb5a', '1704', '钻石白', '8GB+128GB', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988bb2ca-06ba-11ed-ad1c-88a4c2d9bb5a', '1610', '渐变红', '4GB+64GB', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988be227-06ba-11ed-ad1c-88a4c2d9bb5a', '1611', '魅海蓝', '4GB+64GB', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988c08ee-06ba-11ed-ad1c-88a4c2d9bb5a', '1613', '蓝水翡翠', '4GB+64GB', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988c3b69-06ba-11ed-ad1c-88a4c2d9bb5a', '1614', '极光蓝', '4GB+64GB', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988c67cd-06ba-11ed-ad1c-88a4c2d9bb5a', '1706', '炽热红', '4GB+64GB', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988ca462-06ba-11ed-ad1c-88a4c2d9bb5a', '1708', '珍珠白', '8GB+128GB ', 2299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988ce971-06ba-11ed-ad1c-88a4c2d9bb5a', '1709', '浅滩蓝', '6GB+64G', 1399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988d830f-06ba-11ed-ad1c-88a4c2d9bb5a', '2101', '银色', '256GB（WiFi）', 7500.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988db14e-06ba-11ed-ad1c-88a4c2d9bb5a', '2201', '香槟金', '4GB+64GB（WiFi）', 2249.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988de7d0-06ba-11ed-ad1c-88a4c2d9bb5a', '2301', '天际蓝', '6GB+128GB（WiFi）', 5099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988e1851-06ba-11ed-ad1c-88a4c2d9bb5a', '2102', '银色', '64GB（WiFi）', 7699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988e4c41-06ba-11ed-ad1c-88a4c2d9bb5a', '2202', '贝母白', '6GB+128GB（WiFi）', 3199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988e7f66-06ba-11ed-ad1c-88a4c2d9bb5a', '2203', '幻影蓝', '6GB+128GB（WiFi）', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988eab32-06ba-11ed-ad1c-88a4c2d9bb5a', '2103', '银色', '64GB（WiFi）', 3896.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988ee4ac-06ba-11ed-ad1c-88a4c2d9bb5a', '2104', '银色', '32GB（WiFi）', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988f1b9c-06ba-11ed-ad1c-88a4c2d9bb5a', '2302', '天际蓝', '6GB+128GB（WiFi）', 5099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988f6389-06ba-11ed-ad1c-88a4c2d9bb5a', '2303', '天际蓝', '6GB+128GB（WiFi）', 5999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988f9853-06ba-11ed-ad1c-88a4c2d9bb5a', '2205', '深空灰色', '3GB+32GB（WiFi）', 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988fc8a9-06ba-11ed-ad1c-88a4c2d9bb5a', '2206', '深空灰色', '4GB+64GB（WiFi）', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('988ff5a9-06ba-11ed-ad1c-88a4c2d9bb5a', '2304', '鎏砂金', '3GB+32GB（WiFi）', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98902675-06ba-11ed-ad1c-88a4c2d9bb5a', '2402', '冰川蓝', '3GB+32GB（WiFi）', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98905d7a-06ba-11ed-ad1c-88a4c2d9bb5a', '2401', '苍穹灰', '4GB+64GB（WiFi）', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98908fa7-06ba-11ed-ad1c-88a4c2d9bb5a', '2501', '金色', '4GB+64GB（LTE）', 1899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9890bce3-06ba-11ed-ad1c-88a4c2d9bb5a', '2502', '金色', '4GB+64GB（WiFi）', 1189.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9890e91a-06ba-11ed-ad1c-88a4c2d9bb5a', '2405', '日晖金', '3GB+32GB（WiFi）', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9891a18d-06ba-11ed-ad1c-88a4c2d9bb5a', '2406', '日晖金', '2GB+16GB（WiFi）', 949.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('9891d22f-06ba-11ed-ad1c-88a4c2d9bb5a', '1219', '天空之境', '4GB+64GB', 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('989203ba-06ba-11ed-ad1c-88a4c2d9bb5a', '1220', '宝石蓝', '6GB+128GB', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('989236dd-06ba-11ed-ad1c-88a4c2d9bb5a', '2204', '幻影蓝', '6GB+256GB（WiFi）', 3999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('98926492-06ba-11ed-ad1c-88a4c2d9bb5a', '2105', '银色', '64GB（WiFi）', 2921.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('aea10bf2-0712-11ed-ad1c-88a4c2d9bb5a', '1101', '深空灰色', '256GB', 9999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('aea1dec8-0712-11ed-ad1c-88a4c2d9bb5a', '1201', '星河银', '8GB+256GB', 6299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('aea259ca-0712-11ed-ad1c-88a4c2d9bb5a', '1301', '梦之白', '8GB+256GB', 3799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('aea2dee8-0712-11ed-ad1c-88a4c2d9bb5a', '1401', '星际蓝', '8GB+256GB', 3399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('aea36190-0712-11ed-ad1c-88a4c2d9bb5a', '1501', '深空流光', '8GB+256GB', 5698.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('aea3dbd0-0712-11ed-ad1c-88a4c2d9bb5a', '1601', '渐变红', '8GB+128GB', 2399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('aea45697-0712-11ed-ad1c-88a4c2d9bb5a', '1801', '冰际蓝', '8GB+256GB', 3199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('aea4c3b3-0712-11ed-ad1c-88a4c2d9bb5a', '1901', '鲸跃蓝', '8GB+128GB', 2299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56398ef-06bb-11ed-ad1c-88a4c2d9bb5a', '1101', '金色', '64GB', 8699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c564b537-06bb-11ed-ad1c-88a4c2d9bb5a', '1201', '亮黑色', '8GB+128GB', 5799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c564ef34-06bb-11ed-ad1c-88a4c2d9bb5a', '1601', '渐变黑', '6GB+128G', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5652aee-06bb-11ed-ad1c-88a4c2d9bb5a', '1701', '莫奈彩', '12GB+256GB', 7999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5655c03-06bb-11ed-ad1c-88a4c2d9bb5a', '1901', '日光橙', '6GB+128GB', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c565aafc-06bb-11ed-ad1c-88a4c2d9bb5a', '1102', '深空灰色', '64GB', 9599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c565dd23-06bb-11ed-ad1c-88a4c2d9bb5a', '1103', '红色', '64GB', 5499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5660aab-06bb-11ed-ad1c-88a4c2d9bb5a', '1202', '亮黑色', '8GB+128GB', 4999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c566343d-06bb-11ed-ad1c-88a4c2d9bb5a', '1205', '天空之境', '8GB+128GB', 4988.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5666e1c-06bb-11ed-ad1c-88a4c2d9bb5a', '1302', '深空灰', '8GB+128GB', 2399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c566a606-06bb-11ed-ad1c-88a4c2d9bb5a', '1304', '暗夜王子', '6GB+64GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c566d711-06bb-11ed-ad1c-88a4c2d9bb5a', '1403', '珊瑚橙', '8GB+128GB', 2199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c566ffb9-06bb-11ed-ad1c-88a4c2d9bb5a', '1602', '冰岛幻境', '8GB+128GB', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56730a7-06bb-11ed-ad1c-88a4c2d9bb5a', '1604', '冰岛白', '8GB+128GB', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5675c0f-06bb-11ed-ad1c-88a4c2d9bb5a', '1307', '珊瑚橙', '3GB+32GB', 699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5678d0b-06bb-11ed-ad1c-88a4c2d9bb5a', '1402', '海洋之心', '8GB+128GB', 2999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c567bbd8-06bb-11ed-ad1c-88a4c2d9bb5a', '1502', '冰岛极光', '6GB+64GB', 1898.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c567f743-06bb-11ed-ad1c-88a4c2d9bb5a', '1104', '白色', '64GB', 4399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5682638-06bb-11ed-ad1c-88a4c2d9bb5a', '1211', '密语红', '6GB+128G', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5685352-06bb-11ed-ad1c-88a4c2d9bb5a', '1311', '皓月白', '4GB+64GB', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5688392-06bb-11ed-ad1c-88a4c2d9bb5a', '1407', '晨曦白', '6GB+64GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c568b780-06bb-11ed-ad1c-88a4c2d9bb5a', '1513', '玉瓷青', '4GB+64GB', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c568ed61-06bb-11ed-ad1c-88a4c2d9bb5a', '1607', '蝶羽白', '6GB+128G', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56932af-06bb-11ed-ad1c-88a4c2d9bb5a', '1705', '高光白', '6GB+128GB', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5697579-06bb-11ed-ad1c-88a4c2d9bb5a', '1707', '蜜桃金', '8GB+128GB', 2999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c569b5b4-06bb-11ed-ad1c-88a4c2d9bb5a', '1204', '极光色', '6GB+128G', 4499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c569ecfa-06bb-11ed-ad1c-88a4c2d9bb5a', '1208', '苏音蓝', '6GB+64GB', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56a1bb4-06bb-11ed-ad1c-88a4c2d9bb5a', '1305', '白色恋人', '6GB+64GB', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56a4cdc-06bb-11ed-ad1c-88a4c2d9bb5a', '1308', '碳岩灰', '3GB+32GB', 749.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56a78be-06bb-11ed-ad1c-88a4c2d9bb5a', '1306', '冰雪极光', '6GB+128G', 2799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56aa8b9-06bb-11ed-ad1c-88a4c2d9bb5a', '1408', '银光绿', '6GB+64GB', 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56ae30e-06bb-11ed-ad1c-88a4c2d9bb5a', '1206', '天空之境', '6GB+128GB', 3688.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56b1664-06bb-11ed-ad1c-88a4c2d9bb5a', '1215', '珊瑚红', '4GB+64GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56b5040-06bb-11ed-ad1c-88a4c2d9bb5a', '1221', '赤茶菊', '6GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56b86d6-06bb-11ed-ad1c-88a4c2d9bb5a', '1209', '亮黑色', '8GB+128GB', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56bb561-06bb-11ed-ad1c-88a4c2d9bb5a', '1217', '幻夜黑', '6GB+64GB', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56be6be-06bb-11ed-ad1c-88a4c2d9bb5a', '1207', '翡冷翠', '6GB+64GB', 3199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56c16bc-06bb-11ed-ad1c-88a4c2d9bb5a', '1212', '绮境深林', '8GB+128GB', 2599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56c459c-06bb-11ed-ad1c-88a4c2d9bb5a', '1309', '火焰红', '8GB+128GB', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56c7123-06bb-11ed-ad1c-88a4c2d9bb5a', '1710', '极光黑', '6GB+128GB', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56cc06c-06bb-11ed-ad1c-88a4c2d9bb5a', '1713', '青涩白', '6GB+128GB', 1699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56cf2d2-06bb-11ed-ad1c-88a4c2d9bb5a', '1908', '云山蓝', '6GB+64GB', 1098.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56d1e75-06bb-11ed-ad1c-88a4c2d9bb5a', '1906', '幻蓝', '4GB+64GB', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56d46a2-06bb-11ed-ad1c-88a4c2d9bb5a', '1803', '皓月金', '6GB+128GB', 3699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56d787d-06bb-11ed-ad1c-88a4c2d9bb5a', '1903', '珊瑚橙', '6GB+64GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56db02f-06bb-11ed-ad1c-88a4c2d9bb5a', '1210', '翡冷翠', '6GB+128G', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56de0b4-06bb-11ed-ad1c-88a4c2d9bb5a', '1216', '琥珀棕', '3GB+32GB', 799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56e0cf5-06bb-11ed-ad1c-88a4c2d9bb5a', '1218', '宝石蓝', '4GB+128GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56e3e82-06bb-11ed-ad1c-88a4c2d9bb5a', '1312', '火焰红', '6GB+64GB', 2099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56e7110-06bb-11ed-ad1c-88a4c2d9bb5a', '1310', '贝母白', '6GB+64GB', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56ea2f5-06bb-11ed-ad1c-88a4c2d9bb5a', '1405', '雾海绿', '6GB+128GB', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56ee727-06bb-11ed-ad1c-88a4c2d9bb5a', '1404', '极夜星云', '8GB+128GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56f1bf9-06bb-11ed-ad1c-88a4c2d9bb5a', '1413', '流云白', '4GB+128GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56f4614-06bb-11ed-ad1c-88a4c2d9bb5a', '1406', '赛博金属', '6GB+128GB', 1899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56f6a9f-06bb-11ed-ad1c-88a4c2d9bb5a', '1412', '秘夜黑', '4GB+64GB', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56f946d-06bb-11ed-ad1c-88a4c2d9bb5a', '1416', '冰玉白', '4GB+128G', 1399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56fc1ea-06bb-11ed-ad1c-88a4c2d9bb5a', '1503', '幻影蓝', '8GB+128GB', 3698.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c56ffa2e-06bb-11ed-ad1c-88a4c2d9bb5a', '1417', '慕辰紫', '4GB+128GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5702e96-06bb-11ed-ad1c-88a4c2d9bb5a', '1508', '印象夏日', '8GB+128GB', 2498.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c57057f8-06bb-11ed-ad1c-88a4c2d9bb5a', '1505', '全息幻影', '6GB+64GB', 1498.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5708a63-06bb-11ed-ad1c-88a4c2d9bb5a', '1506', '幻彩粉', '4GB+64GB', 1298.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c570b266-06bb-11ed-ad1c-88a4c2d9bb5a', '1515', '海风青', '6GB+128GB', 1598.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c570df6e-06bb-11ed-ad1c-88a4c2d9bb5a', '1514', '深湖蓝', '3GB+32GB', 749.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5711846-06bb-11ed-ad1c-88a4c2d9bb5a', '1603', '冰岛白', '8GB+128GB', 2099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5714bf1-06bb-11ed-ad1c-88a4c2d9bb5a', '1605', '幻影红', '6GB+128G', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5717361-06bb-11ed-ad1c-88a4c2d9bb5a', '1608', '魅焰红', '6GB+64G', 1099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5719c2e-06bb-11ed-ad1c-88a4c2d9bb5a', '1609', '幻夜黑', '6GB+64G', 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c571c5b6-06bb-11ed-ad1c-88a4c2d9bb5a', '1704', '炫目红', '8GB+128GB', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c571ea50-06bb-11ed-ad1c-88a4c2d9bb5a', '1610', '渐变蓝', '4GB+64GB', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5720fc4-06bb-11ed-ad1c-88a4c2d9bb5a', '1611', '魅焰红', '4GB+64GB', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5723da0-06bb-11ed-ad1c-88a4c2d9bb5a', '1613', '冰岛幻境', '4GB+64GB', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c57266f2-06bb-11ed-ad1c-88a4c2d9bb5a', '1614', '魅焰红', '4GB+64GB', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c572934b-06bb-11ed-ad1c-88a4c2d9bb5a', '1706', '幻想蓝', '4GB+64GB', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c572c0df-06bb-11ed-ad1c-88a4c2d9bb5a', '1708', '珊瑚橙', '8GB+128GB ', 2299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c572eeef-06bb-11ed-ad1c-88a4c2d9bb5a', '1709', '暖阳橙', '6GB+64G', 1399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5731a72-06bb-11ed-ad1c-88a4c2d9bb5a', '2301', '珊瑚粉', '6GB+128GB（WiFi）', 5099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5734261-06bb-11ed-ad1c-88a4c2d9bb5a', '2203', '幻影红', '6GB+128GB（WiFi）', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c57375c8-06bb-11ed-ad1c-88a4c2d9bb5a', '2103', '深空灰色', '64GB（WiFi）', 3896.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5739ffe-06bb-11ed-ad1c-88a4c2d9bb5a', '2104', '深空灰色', '32GB（WiFi）', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c573c705-06bb-11ed-ad1c-88a4c2d9bb5a', '2302', '珊瑚粉', '6GB+128GB（WiFi）', 5099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c573f608-06bb-11ed-ad1c-88a4c2d9bb5a', '2303', '珊瑚粉', '6GB+128GB（WiFi）', 5999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5742115-06bb-11ed-ad1c-88a4c2d9bb5a', '2304', '铂光银', '3GB+32GB（WiFi）', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5744780-06bb-11ed-ad1c-88a4c2d9bb5a', '1219', '相思红', '4GB+64GB', 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5746f15-06bb-11ed-ad1c-88a4c2d9bb5a', '1220', '极光蓝', '6GB+128GB', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c5748fbb-06bb-11ed-ad1c-88a4c2d9bb5a', '2204', '幻影红', '6GB+256GB（WiFi）', 3999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('c574b930-06bb-11ed-ad1c-88a4c2d9bb5a', '2105', '深空灰色', '64GB（WiFi）', 2921.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7797a9-1a21-11ed-8807-88a4c2d9bb5a', '3101', '白色', NULL, 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd77f931-1a21-11ed-8807-88a4c2d9bb5a', '3102', NULL, NULL, 1558.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd786205-1a21-11ed-8807-88a4c2d9bb5a', '3103', NULL, NULL, 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd78c1ab-1a21-11ed-8807-88a4c2d9bb5a', '3104', NULL, NULL, 499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7a0134-1a21-11ed-8807-88a4c2d9bb5a', '3105', NULL, NULL, 49.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7a4c9e-1a21-11ed-8807-88a4c2d9bb5a', '3106', NULL, NULL, 799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7a9c60-1a21-11ed-8807-88a4c2d9bb5a', '3107', NULL, NULL, 99.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7ae779-1a21-11ed-8807-88a4c2d9bb5a', '3108', NULL, NULL, 149.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7b216a-1a21-11ed-8807-88a4c2d9bb5a', '3201', NULL, NULL, 149.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7b58cf-1a21-11ed-8807-88a4c2d9bb5a', '3202', NULL, NULL, 159.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7b91ce-1a21-11ed-8807-88a4c2d9bb5a', '3203', NULL, NULL, 329.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7bd214-1a21-11ed-8807-88a4c2d9bb5a', '3204', NULL, NULL, 149.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7c08ea-1a21-11ed-8807-88a4c2d9bb5a', '3205', NULL, NULL, 99.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7c4e0d-1a21-11ed-8807-88a4c2d9bb5a', '3206', NULL, NULL, 149.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7c852e-1a21-11ed-8807-88a4c2d9bb5a', '3207', NULL, NULL, 129.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7cb473-1a21-11ed-8807-88a4c2d9bb5a', '3301', NULL, NULL, 199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7cf24f-1a21-11ed-8807-88a4c2d9bb5a', '3302', NULL, NULL, 340.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7d4be7-1a21-11ed-8807-88a4c2d9bb5a', '3303', NULL, NULL, 299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7d9086-1a21-11ed-8807-88a4c2d9bb5a', '3304', NULL, NULL, 199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7dc7bb-1a21-11ed-8807-88a4c2d9bb5a', '3305', NULL, NULL, 199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7e0a7b-1a21-11ed-8807-88a4c2d9bb5a', '3306', NULL, NULL, 54.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7e4fa3-1a21-11ed-8807-88a4c2d9bb5a', '3401', NULL, NULL, 99.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7eb367-1a21-11ed-8807-88a4c2d9bb5a', '3402', NULL, NULL, 329.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7ee829-1a21-11ed-8807-88a4c2d9bb5a', '3403', NULL, NULL, 99.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7f1b98-1a21-11ed-8807-88a4c2d9bb5a', '3404', NULL, NULL, 49.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7f54bd-1a21-11ed-8807-88a4c2d9bb5a', '3405', NULL, NULL, 69.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7f8eac-1a21-11ed-8807-88a4c2d9bb5a', '3407', NULL, NULL, 39.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd7fc70f-1a21-11ed-8807-88a4c2d9bb5a', '3501', NULL, NULL, 1412.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd800c1d-1a21-11ed-8807-88a4c2d9bb5a', '3502', NULL, NULL, 973.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd803fb1-1a21-11ed-8807-88a4c2d9bb5a', '3503', NULL, NULL, 499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd807084-1a21-11ed-8807-88a4c2d9bb5a', '3504', NULL, NULL, 199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('dd80a0ed-1a21-11ed-8807-88a4c2d9bb5a', '3505', NULL, NULL, 79.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0d43911-0712-11ed-ad1c-88a4c2d9bb5a', '1102', '暗夜绿色', '256GB', 10899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0d95448-0712-11ed-ad1c-88a4c2d9bb5a', '1103', '白色', '128GB', 5999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0da0dce-0712-11ed-ad1c-88a4c2d9bb5a', '1202', '星河银', '8GB+256GB', 5499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0dad51a-0712-11ed-ad1c-88a4c2d9bb5a', '1205', '亮黑色', '8GB+256GB', 5488.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0db4b35-0712-11ed-ad1c-88a4c2d9bb5a', '1302', '全息幻彩蓝', '8GB+256GB', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0dbb602-0712-11ed-ad1c-88a4c2d9bb5a', '1304', '白色恋人', '6GB+128GB', 1699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0dc1455-0712-11ed-ad1c-88a4c2d9bb5a', '1403', '极夜黑', '6GB+256GB', 2199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0dc70aa-0712-11ed-ad1c-88a4c2d9bb5a', '1504', '电光蓝', '8GB+128GB', 2498.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0dcd481-0712-11ed-ad1c-88a4c2d9bb5a', '1602', '幻夜星河', '8GB+256GB', 2999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0dd2892-0712-11ed-ad1c-88a4c2d9bb5a', '1604', '幻夜黑', '8GB+256GB', 2199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0dd7540-0712-11ed-ad1c-88a4c2d9bb5a', '1307', '深海蓝', '4GB+64GB', 699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0ddf6d2-0712-11ed-ad1c-88a4c2d9bb5a', '1502', '碳纤黑', '6GB+128GB', 2298.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0de870f-0712-11ed-ad1c-88a4c2d9bb5a', '1104', '蓝色', '128GB', 4599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0defa9d-0712-11ed-ad1c-88a4c2d9bb5a', '1211', '幻夜黑', '8GB+128GB', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0df66f6-0712-11ed-ad1c-88a4c2d9bb5a', '1311', '梦幻蓝', '6GB+64GB', 1099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0dfb84b-0712-11ed-ad1c-88a4c2d9bb5a', '1407', '秘境黑', '8GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e0026d-0712-11ed-ad1c-88a4c2d9bb5a', '1415', '幻境份', '4G+64G', 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e0701a-0712-11ed-ad1c-88a4c2d9bb5a', '1511', '冰湖蓝', '6GB+64GB', 1298.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e0c4d0-0712-11ed-ad1c-88a4c2d9bb5a', '1513', '玛瑙黑', '6GB+64GB', 1099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e122d2-0712-11ed-ad1c-88a4c2d9bb5a', '1607', '蝶羽黑', '8GB+128GB', 2199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e17b4d-0712-11ed-ad1c-88a4c2d9bb5a', '1802', '海月蓝', '6GB+128GB', 3699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e1de08-0712-11ed-ad1c-88a4c2d9bb5a', '1804', '曜岩灰', '12GB+256GB', 2899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e2533a-0712-11ed-ad1c-88a4c2d9bb5a', '1902', '黑之谧镜', '8GB+128GB', 2989.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e2bd46-0712-11ed-ad1c-88a4c2d9bb5a', '1904', '碳纤黑', '8GB+128GB', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e31cb0-0712-11ed-ad1c-88a4c2d9bb5a', '1204', '宝石蓝', '8GB+128G', 5099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e370b1-0712-11ed-ad1c-88a4c2d9bb5a', '1208', '幻夜黑', '6GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e3cd3b-0712-11ed-ad1c-88a4c2d9bb5a', '1305', '暗夜王子', '6GB+128GB', 1399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e43828-0712-11ed-ad1c-88a4c2d9bb5a', '1308', '仙踪绿', '4GB+64GB', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e4987a-0712-11ed-ad1c-88a4c2d9bb5a', '1306', '暗夜魅影', '8GB+128GB', 3099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e5051f-0712-11ed-ad1c-88a4c2d9bb5a', '1408', '摩卡红', '4GB+64G', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e553b7-0712-11ed-ad1c-88a4c2d9bb5a', '1206', '亮黑色', '8GB+128GB', 3988.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e5a1e3-0712-11ed-ad1c-88a4c2d9bb5a', '1215', '幻夜黑', '6GB+64GB', 1399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e5ef84-0712-11ed-ad1c-88a4c2d9bb5a', '1221', '天空之境', '8GB+128GB', 2099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e64002-0712-11ed-ad1c-88a4c2d9bb5a', '1209', '绮境深林', '8GB+256GB', 3099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e68582-0712-11ed-ad1c-88a4c2d9bb5a', '1207', '亮黑色', '8GB+128GB', 3699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e6cb34-0712-11ed-ad1c-88a4c2d9bb5a', '1309', '冰川蓝', '8GB+512GB', 2799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e71722-0712-11ed-ad1c-88a4c2d9bb5a', '1313', '碳纤黑', '8GB+256GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e77308-0712-11ed-ad1c-88a4c2d9bb5a', '1710', '莓什么', '8GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e7bb5b-0712-11ed-ad1c-88a4c2d9bb5a', '1905', '静夜黑', '6GB+128GB', 1698.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e8163d-0712-11ed-ad1c-88a4c2d9bb5a', '1906', '亮黑', '6GB+64GB', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e84c99-0712-11ed-ad1c-88a4c2d9bb5a', '1803', '曜岩灰', '8GB+256GB', 3969.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e8825d-0712-11ed-ad1c-88a4c2d9bb5a', '1903', '骑士黑', '6GB+128GB', 1699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e8d3f0-0712-11ed-ad1c-88a4c2d9bb5a', '1210', '亮黑色', '8GB+128GB', 2299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e92595-0712-11ed-ad1c-88a4c2d9bb5a', '1214', '密语红', '8GB+128GB', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e97ade-0712-11ed-ad1c-88a4c2d9bb5a', '1216', '幻夜黑', '3GB+64GB', 899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0e9ca0d-0712-11ed-ad1c-88a4c2d9bb5a', '1218', '幻夜黑', '6GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0ea10fc-0712-11ed-ad1c-88a4c2d9bb5a', '1312', '碳纤黑', '6GB+128GB', 2299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0ea6ad7-0712-11ed-ad1c-88a4c2d9bb5a', '1310', '冰翡翠', '6GB+128GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0eaaacc-0712-11ed-ad1c-88a4c2d9bb5a', '1405', '极夜黑', '6GB+256GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0eaf678-0712-11ed-ad1c-88a4c2d9bb5a', '1413', '慕辰紫', '8GB+128GB', 1799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0eb49f4-0712-11ed-ad1c-88a4c2d9bb5a', '1406', '奇幻深林', '8GB+128GB', 2099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0eb8adc-0712-11ed-ad1c-88a4c2d9bb5a', '1412', '天青色', '4GB+128GB', 1099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0ebeb48-0712-11ed-ad1c-88a4c2d9bb5a', '1503', '竞速黑', '8GB+256GB', 3998.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0ec3b75-0712-11ed-ad1c-88a4c2d9bb5a', '1417', '湖光绿', '6GB+256G', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0ec8b13-0712-11ed-ad1c-88a4c2d9bb5a', '1508', '雀羽蓝', '8GB+256GB', 2798.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0eccf27-0712-11ed-ad1c-88a4c2d9bb5a', '1505', '极光幻境', '6GB+128GB', 1698.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0ed0c9c-0712-11ed-ad1c-88a4c2d9bb5a', '1512', '钟情蓝', '6GB+256GB', 2298.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0ed561a-0712-11ed-ad1c-88a4c2d9bb5a', '1506', '极夜黑', '6GB+128GB', 1498.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0ed98ff-0712-11ed-ad1c-88a4c2d9bb5a', '1507', '极光蓝', '4GB+128GB', 1098.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0edd793-0712-11ed-ad1c-88a4c2d9bb5a', '1514', '子夜黑', '3GB+64GB', 849.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0ee3628-0712-11ed-ad1c-88a4c2d9bb5a', '1603', '幻夜黑', '8GB+256GB', 2499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0ee79eb-0712-11ed-ad1c-88a4c2d9bb5a', '1605', '魅海蓝', '8GB+128GB', 2399.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0eebd0c-0712-11ed-ad1c-88a4c2d9bb5a', '1606', '幻夜黑', '6GB+128G', 2099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0eef60c-0712-11ed-ad1c-88a4c2d9bb5a', '1608', '幻夜黑', '6GB+128GB', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0ef2789-0712-11ed-ad1c-88a4c2d9bb5a', '1609', '渐变红', '4GB+128G', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0ef59d0-0712-11ed-ad1c-88a4c2d9bb5a', '1610', '幻夜黑', '6GB+64GB', 1099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0ef8d31-0712-11ed-ad1c-88a4c2d9bb5a', '1611', '幻夜黑', '6GB+64GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0efbac0-0712-11ed-ad1c-88a4c2d9bb5a', '1613', '幻夜黑', '6GB+64GB', 1499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0efe8ad-0712-11ed-ad1c-88a4c2d9bb5a', '1614', '幻夜黑', '6GB+64GB', 1099.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0f01a80-0712-11ed-ad1c-88a4c2d9bb5a', '1709', '丹宁黑', '6GB+128GB', 1699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0f05dcf-0712-11ed-ad1c-88a4c2d9bb5a', '2101', '深空灰色', '256GB（WiFi+蜂窝数据)', 8669.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0f09319-0712-11ed-ad1c-88a4c2d9bb5a', '2201', '银钻灰', '4GB+128GB（WiFi）', 2699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0f0c8c0-0712-11ed-ad1c-88a4c2d9bb5a', '2301', '星空灰', '8GB+256GB（WiFi）', 5799.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0f0f92c-0712-11ed-ad1c-88a4c2d9bb5a', '2102', '深空灰色', '256GB（WiFi+蜂窝数据)', 8299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0f1303b-0712-11ed-ad1c-88a4c2d9bb5a', '2202', '夜阑灰', '8GB+256GB（WiFi）', 3899.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0f16311-0712-11ed-ad1c-88a4c2d9bb5a', '2103', '金色', '256GB（WiFi+蜂窝数据)', 5065.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0f1934f-0712-11ed-ad1c-88a4c2d9bb5a', '2104', '金色', '128GB（WiFi）', 3499.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0f1bea8-0712-11ed-ad1c-88a4c2d9bb5a', '2302', '星空灰', '8GB+256GB（WiFi）', 6699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0f2013d-0712-11ed-ad1c-88a4c2d9bb5a', '2303', '星空灰', '8GB+256GB（WiFi）', 6699.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0f23cf8-0712-11ed-ad1c-88a4c2d9bb5a', '2205', '香槟金', '4GB+64GB（WiFi）', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0f27269-0712-11ed-ad1c-88a4c2d9bb5a', '2206', '香槟金', '4GB+128GB（WiFi）', 1999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0f2bbe6-0712-11ed-ad1c-88a4c2d9bb5a', '2304', '锡墨家', '3GB+128GB（WiFi）', 2199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0f2efac-0712-11ed-ad1c-88a4c2d9bb5a', '2402', '苍穹灰', '4GB+64GB（WiFi）', 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0f32843-0712-11ed-ad1c-88a4c2d9bb5a', '2401', '冰川蓝', '4GB+128GB（WiFi）', 1599.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0f3598d-0712-11ed-ad1c-88a4c2d9bb5a', '2502', '黑色', '4GB+64GB（LTE）', 1289.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0f38f36-0712-11ed-ad1c-88a4c2d9bb5a', '2403', '香槟金', '4GB+128GB（WiFi）', 1199.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0f3d101-0712-11ed-ad1c-88a4c2d9bb5a', '2406', '苍穹灰', '3GB+32GB（WiFi）', 999.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0f40fc4-0712-11ed-ad1c-88a4c2d9bb5a', '1219', '极光蓝', '6GB+64GB', 1299.00, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `tb_commodityinfo` VALUES ('e0f44210-0712-11ed-ad1c-88a4c2d9bb5a', '2105', '金色', '256GB（WiFi+蜂窝数据)', 4090.00, NULL, 0, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order`  (
  `orderid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下单者',
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下单时间',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人姓名',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人手机',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人地址',
  `state` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单状态（0：未支付，1：已支付，2：已取消）',
  `totalnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品数量',
  `totalmoney` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品总价',
  `isdel` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否删除',
  `operator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作者',
  `operateTime` date NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`orderid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('1060192755', 'root', '2022-07-21 23:21:50', '到达地1', '13188546785', '吉林省吉林市经开大街翰林路77号吉林农业科技学院', '1', '1', '1999.0', '0', NULL, NULL);
INSERT INTO `tb_order` VALUES ('1196309745', 'root', '2022-07-22 20:24:37', '到达地2', '13188546785', '吉林省吉林市经开大街翰林路77号吉林农业科技学院', '1', '1', '1999.0', '0', NULL, NULL);
INSERT INTO `tb_order` VALUES ('123618022', 'root', '2022-08-12 17:22:25', '到达地', '13188546785', '吉林省吉林市经开大街翰林路77号吉林农业科技学院', '1', '2', '3998.0', '0', NULL, NULL);
INSERT INTO `tb_order` VALUES ('1360677987', 'root', '2022-07-20 23:21:00', '到达地3', '13188546785', '吉林省吉林市经开大街翰林路77号吉林农业科技学院', '1', '1', '5799.0', '0', NULL, NULL);
INSERT INTO `tb_order` VALUES ('1366437166', 'root', '2022-08-12 02:36:38', '到达地', '13188546785', '吉林省吉林市经开大街翰林路77号吉林农业科技学院', '2', '1', '1999.0', '1', NULL, NULL);
INSERT INTO `tb_order` VALUES ('155462371', 'root', '2022-07-21 20:27:35', '到达地4', '13188546785', '吉林省吉林市经开大街翰林路77号吉林农业科技学院', '1', '1', '11799.0', '0', NULL, NULL);
INSERT INTO `tb_order` VALUES ('166272353', 'root', '2022-08-12 02:37:08', '到达地', '13188546785', '吉林省吉林市经开大街翰林路77号吉林农业科技学院', '2', '1', '11799.0', '1', NULL, NULL);
INSERT INTO `tb_order` VALUES ('1815143921', 'root', '2022-07-21 23:23:36', '到达地5', '13188546785', '吉林省吉林市经开大街翰林路77号吉林农业科技学院', '2', '1', '1999.0', '1', NULL, NULL);
INSERT INTO `tb_order` VALUES ('2085772925', 'root', '2022-07-21 23:22:36', '到达地6', '13188546785', '吉林省吉林市经开大街翰林路77号吉林农业科技学院', '1', '1', '11799.0', '0', NULL, NULL);

-- ----------------------------
-- Table structure for tb_orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_orderinfo`;
CREATE TABLE `tb_orderinfo`  (
  `orderid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `goodsID` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品编号',
  `model` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品型号',
  `color` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '颜色',
  `memoryCapacity` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内存、存储容量',
  `number` int NULL DEFAULT NULL COMMENT '商品数量',
  `price` double(10, 0) NULL DEFAULT NULL COMMENT '商品价格',
  `picture` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_orderinfo
-- ----------------------------
INSERT INTO `tb_orderinfo` VALUES ('1196309745', '3101', '苹果AirPods Pro', ' ', ' ', 1, 1999, 'https://bkimg.cdn.bcebos.com/pic/2cf5e0fe9925bc315c609f9688939ab1cb134954da22?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5/format,f_auto');
INSERT INTO `tb_orderinfo` VALUES ('155462371', '1101', '苹果 iPhone11Pro', '暗夜绿色', '512GB', 1, 11799, 'https://bkimg.cdn.bcebos.com/pic/3bf33a87e950352ac65cfaa90f09ecf2b21193131d75?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto');
INSERT INTO `tb_orderinfo` VALUES ('1360677987', '1201', '华为 Mate30Pro', '翡冷翠', '8GB+128GB', 1, 5799, 'https://bkimg.cdn.bcebos.com/pic/7aec54e736d12f2e461bef0b40c2d562853568bb?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto');
INSERT INTO `tb_orderinfo` VALUES ('1060192755', '3101', '苹果AirPods Pro', ' ', ' ', 1, 1999, 'https://bkimg.cdn.bcebos.com/pic/2cf5e0fe9925bc315c609f9688939ab1cb134954da22?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5/format,f_auto');
INSERT INTO `tb_orderinfo` VALUES ('2085772925', '1101', '苹果 iPhone11Pro', '暗夜绿色', '512GB', 1, 11799, 'https://bkimg.cdn.bcebos.com/pic/3bf33a87e950352ac65cfaa90f09ecf2b21193131d75?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto');
INSERT INTO `tb_orderinfo` VALUES ('1815143921', '3101', '苹果AirPods Pro', ' ', ' ', 1, 1999, 'https://bkimg.cdn.bcebos.com/pic/2cf5e0fe9925bc315c609f9688939ab1cb134954da22?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5/format,f_auto');
INSERT INTO `tb_orderinfo` VALUES ('1366437166', '3101', '苹果AirPods Pro', NULL, NULL, 1, 1999, 'https://bkimg.cdn.bcebos.com/pic/2cf5e0fe9925bc315c609f9688939ab1cb134954da22?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5/format,f_auto');
INSERT INTO `tb_orderinfo` VALUES ('166272353', '1101', '苹果 iPhone11Pro', '暗夜绿色', '512GB', 1, 11799, 'https://bkimg.cdn.bcebos.com/pic/3bf33a87e950352ac65cfaa90f09ecf2b21193131d75?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxNTA=,g_7,xp_5,yp_5/format,f_auto');
INSERT INTO `tb_orderinfo` VALUES ('123618022', '3101', '苹果AirPods Pro', '', '', 2, 1999, 'https://bkimg.cdn.bcebos.com/pic/2cf5e0fe9925bc315c609f9688939ab1cb134954da22?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UxMTY=,g_7,xp_5,yp_5/format,f_auto');

-- ----------------------------
-- Table structure for tb_parts
-- ----------------------------
DROP TABLE IF EXISTS `tb_parts`;
CREATE TABLE `tb_parts`  (
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编号',
  `kind` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品类',
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌',
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '型号',
  `price` double(10, 0) NULL DEFAULT NULL COMMENT '价格',
  `details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详情',
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '颜色',
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_parts
-- ----------------------------

-- ----------------------------
-- Table structure for tb_shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `tb_shopping_cart`;
CREATE TABLE `tb_shopping_cart`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goodsID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品id',
  `model` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品型号',
  `color` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '颜色',
  `memoryCapacity` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内存、存储容量',
  `number` int NULL DEFAULT NULL COMMENT '数量',
  `price` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '价格',
  `picture` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `username` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `state` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_shopping_cart
-- ----------------------------
INSERT INTO `tb_shopping_cart` VALUES ('b639912ee2174c278188be387b77f21b', '3105', '荣耀AM116 半入耳式耳机（白色）', NULL, NULL, 1, '49.0', 'https://qny.smzdm.com/201807/20/5b51cbcc833eb6314.jpg_d250.jpg', 'root', '2');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `gold` double(64, 0) NULL DEFAULT NULL COMMENT '金币',
  `isadmin` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否管理员',
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('admin', 'admin', NULL, '1');
INSERT INTO `tb_user` VALUES ('root', '1234', 71508, '0');

-- ----------------------------
-- Table structure for tb_useraddress
-- ----------------------------
DROP TABLE IF EXISTS `tb_useraddress`;
CREATE TABLE `tb_useraddress`  (
  `id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `postalcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮编',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tb_useraddress
-- ----------------------------
INSERT INTO `tb_useraddress` VALUES ('604fd6baf4194234a0fd0e8dd572bd59', '到达地', '13188546785', '吉林省吉林市经开大街翰林路77号吉林农业科技学院', '132000', 'root');

SET FOREIGN_KEY_CHECKS = 1;
