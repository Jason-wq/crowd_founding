/*
 Navicat Premium Data Transfer

 Source Server         : 本地Mysql
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : project_crowd

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 27/06/2021 21:23:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for inner_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `inner_admin_role`;
CREATE TABLE `inner_admin_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NULL DEFAULT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of inner_admin_role
-- ----------------------------

-- ----------------------------
-- Table structure for inner_role_auth
-- ----------------------------
DROP TABLE IF EXISTS `inner_role_auth`;
CREATE TABLE `inner_role_auth`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `auth_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of inner_role_auth
-- ----------------------------
INSERT INTO `inner_role_auth` VALUES (1, 1, 2);
INSERT INTO `inner_role_auth` VALUES (8, 238, 1);
INSERT INTO `inner_role_auth` VALUES (9, 238, 8);
INSERT INTO `inner_role_auth` VALUES (12, 239, 4);
INSERT INTO `inner_role_auth` VALUES (13, 239, 5);

-- ----------------------------
-- Table structure for t_address
-- ----------------------------
DROP TABLE IF EXISTS `t_address`;
CREATE TABLE `t_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `receive_name` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件人',
  `phone_num` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `address` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `member_id` int(11) NULL DEFAULT NULL COMMENT '用户 id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_address
-- ----------------------------
INSERT INTO `t_address` VALUES (1, 'test', '18111145277', '四川', 4);
INSERT INTO `t_address` VALUES (2, 'test', '18111145277', '四川', 4);
INSERT INTO `t_address` VALUES (3, '张大炮', '173331011456', '河北省邯郸市', 7);
INSERT INTO `t_address` VALUES (4, '张大炮', '173331011456', '河北省邯郸市', 8);
INSERT INTO `t_address` VALUES (5, '12', '17331011486', '131', 8);

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_acct` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_pswd` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `login_acct`(`login_acct`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 729 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES (490, '123', '202CB962AC59075B964B07152D234B70', 'jack', '123@com', 'null');
INSERT INTO `t_admin` VALUES (491, 'loginAcct0', 'userPswd0', 'userName0', 'email0', NULL);
INSERT INTO `t_admin` VALUES (492, 'loginAcct1', 'userPswd1', 'userName1', 'email1', NULL);
INSERT INTO `t_admin` VALUES (493, 'loginAcct2', 'userPswd2', 'userName2', 'email2', NULL);
INSERT INTO `t_admin` VALUES (494, 'loginAcct3', 'userPswd3', 'userName3', 'email2@qq.com', NULL);
INSERT INTO `t_admin` VALUES (495, 'loginAcct4', 'userPswd4', 'userName4', 'email4', NULL);
INSERT INTO `t_admin` VALUES (496, 'loginAcct5', 'userPswd5', 'userName5', 'email5', NULL);
INSERT INTO `t_admin` VALUES (497, 'loginAcct6', 'userPswd6', 'userName6', 'email6', NULL);
INSERT INTO `t_admin` VALUES (498, 'loginAcct7', 'userPswd7', 'userName7', 'email7', NULL);
INSERT INTO `t_admin` VALUES (499, 'loginAcct8', 'userPswd8', 'userName8', 'email8', NULL);
INSERT INTO `t_admin` VALUES (500, 'loginAcct9', 'userPswd9', 'userName9', 'email9', NULL);
INSERT INTO `t_admin` VALUES (501, 'loginAcct10', 'userPswd10', 'userName10', 'email10', NULL);
INSERT INTO `t_admin` VALUES (502, 'loginAcct11', 'userPswd11', 'userName11', 'email11', NULL);
INSERT INTO `t_admin` VALUES (503, 'loginAcct12', 'userPswd12', 'userName12', 'email12', NULL);
INSERT INTO `t_admin` VALUES (504, 'loginAcct13', 'userPswd13', 'userName13', 'email13', NULL);
INSERT INTO `t_admin` VALUES (505, 'loginAcct14', 'userPswd14', 'userName14', 'email14', NULL);
INSERT INTO `t_admin` VALUES (506, 'loginAcct15', 'userPswd15', 'userName15', 'email15', NULL);
INSERT INTO `t_admin` VALUES (507, 'loginAcct16', 'userPswd16', 'userName16', 'email16', NULL);
INSERT INTO `t_admin` VALUES (508, 'loginAcct17', 'userPswd17', 'userName17', 'email17', NULL);
INSERT INTO `t_admin` VALUES (509, 'loginAcct18', 'userPswd18', 'userName18', 'email18', NULL);
INSERT INTO `t_admin` VALUES (510, 'loginAcct19', 'userPswd19', 'userName19', 'email19', NULL);
INSERT INTO `t_admin` VALUES (511, 'loginAcct20', 'userPswd20', 'userName20', 'email20', NULL);
INSERT INTO `t_admin` VALUES (512, 'loginAcct21', 'userPswd21', 'userName21', 'email21', NULL);
INSERT INTO `t_admin` VALUES (513, 'loginAcct22', 'userPswd22', 'userName22', 'email22', NULL);
INSERT INTO `t_admin` VALUES (514, 'loginAcct23', 'userPswd23', 'userName23', 'email23', NULL);
INSERT INTO `t_admin` VALUES (515, 'loginAcct24', 'userPswd24', 'userName24', 'email24', NULL);
INSERT INTO `t_admin` VALUES (516, 'loginAcct25', 'userPswd25', 'userName25', 'email25', NULL);
INSERT INTO `t_admin` VALUES (517, 'loginAcct26', 'userPswd26', 'userName26', 'email26', NULL);
INSERT INTO `t_admin` VALUES (518, 'loginAcct27', 'userPswd27', 'userName27', 'email27', NULL);
INSERT INTO `t_admin` VALUES (519, 'loginAcct28', 'userPswd28', 'userName28', 'email28', NULL);
INSERT INTO `t_admin` VALUES (520, 'loginAcct29', 'userPswd29', 'userName29', 'email29', NULL);
INSERT INTO `t_admin` VALUES (521, 'loginAcct30', 'userPswd30', 'userName30', 'email30', NULL);
INSERT INTO `t_admin` VALUES (522, 'loginAcct31', 'userPswd31', 'userName31', 'email31', NULL);
INSERT INTO `t_admin` VALUES (523, 'loginAcct32', 'userPswd32', 'userName32', 'email32', NULL);
INSERT INTO `t_admin` VALUES (524, 'loginAcct33', 'userPswd33', 'userName33', 'email33', NULL);
INSERT INTO `t_admin` VALUES (525, 'loginAcct34', 'userPswd34', 'userName34', 'email34', NULL);
INSERT INTO `t_admin` VALUES (526, 'loginAcct35', 'userPswd35', 'userName35', 'email35', NULL);
INSERT INTO `t_admin` VALUES (527, 'loginAcct36', 'userPswd36', 'userName36', 'email36', NULL);
INSERT INTO `t_admin` VALUES (528, 'loginAcct37', 'userPswd37', 'userName37', 'email37', NULL);
INSERT INTO `t_admin` VALUES (529, 'loginAcct38', 'userPswd38', 'userName38', 'email38', NULL);
INSERT INTO `t_admin` VALUES (530, 'loginAcct39', 'userPswd39', 'userName39', 'email39', NULL);
INSERT INTO `t_admin` VALUES (531, 'loginAcct40', 'userPswd40', 'userName40', 'email40', NULL);
INSERT INTO `t_admin` VALUES (532, 'loginAcct41', 'userPswd41', 'userName41', 'email41', NULL);
INSERT INTO `t_admin` VALUES (533, 'loginAcct42', 'userPswd42', 'userName42', 'email42', NULL);
INSERT INTO `t_admin` VALUES (534, 'loginAcct43', 'userPswd43', 'userName43', 'email43', NULL);
INSERT INTO `t_admin` VALUES (535, 'loginAcct44', 'userPswd44', 'userName44', 'email44', NULL);
INSERT INTO `t_admin` VALUES (536, 'loginAcct45', 'userPswd45', 'userName45', 'email45', NULL);
INSERT INTO `t_admin` VALUES (537, 'loginAcct46', 'userPswd46', 'userName46', 'email46', NULL);
INSERT INTO `t_admin` VALUES (538, 'loginAcct47', 'userPswd47', 'userName47', 'email47', NULL);
INSERT INTO `t_admin` VALUES (539, 'loginAcct48', 'userPswd48', 'userName48', 'email48', NULL);
INSERT INTO `t_admin` VALUES (540, 'loginAcct49', 'userPswd49', 'userName49', 'email49', NULL);
INSERT INTO `t_admin` VALUES (541, 'loginAcct50', 'userPswd50', 'userName50', 'email50', NULL);
INSERT INTO `t_admin` VALUES (542, 'loginAcct51', 'userPswd51', 'userName51', 'email51', NULL);
INSERT INTO `t_admin` VALUES (543, 'loginAcct52', 'userPswd52', 'userName52', 'email52', NULL);
INSERT INTO `t_admin` VALUES (544, 'loginAcct53', 'userPswd53', 'userName53', 'email53', NULL);
INSERT INTO `t_admin` VALUES (545, 'loginAcct54', 'userPswd54', 'userName54', 'email54', NULL);
INSERT INTO `t_admin` VALUES (546, 'loginAcct55', 'userPswd55', 'userName55', 'email55', NULL);
INSERT INTO `t_admin` VALUES (547, 'loginAcct56', 'userPswd56', 'userName56', 'email56', NULL);
INSERT INTO `t_admin` VALUES (548, 'loginAcct57', 'userPswd57', 'userName57', 'email57', NULL);
INSERT INTO `t_admin` VALUES (549, 'loginAcct58', 'userPswd58', 'userName58', 'email58', NULL);
INSERT INTO `t_admin` VALUES (550, 'loginAcct59', 'userPswd59', 'userName59', 'email59', NULL);
INSERT INTO `t_admin` VALUES (551, 'loginAcct60', 'userPswd60', 'userName60', 'email60', NULL);
INSERT INTO `t_admin` VALUES (552, 'loginAcct61', 'userPswd61', 'userName61', 'email61', NULL);
INSERT INTO `t_admin` VALUES (553, 'loginAcct62', 'userPswd62', 'userName62', 'email62', NULL);
INSERT INTO `t_admin` VALUES (554, 'loginAcct63', 'userPswd63', 'userName63', 'email63', NULL);
INSERT INTO `t_admin` VALUES (555, 'loginAcct64', 'userPswd64', 'userName64', 'email64', NULL);
INSERT INTO `t_admin` VALUES (556, 'loginAcct65', 'userPswd65', 'userName65', 'email65', NULL);
INSERT INTO `t_admin` VALUES (557, 'loginAcct66', 'userPswd66', 'userName66', 'email66', NULL);
INSERT INTO `t_admin` VALUES (558, 'loginAcct67', 'userPswd67', 'userName67', 'email67', NULL);
INSERT INTO `t_admin` VALUES (559, 'loginAcct68', 'userPswd68', 'userName68', 'email68', NULL);
INSERT INTO `t_admin` VALUES (560, 'loginAcct69', 'userPswd69', 'userName69', 'email69', NULL);
INSERT INTO `t_admin` VALUES (561, 'loginAcct70', 'userPswd70', 'userName70', 'email70', NULL);
INSERT INTO `t_admin` VALUES (562, 'loginAcct71', 'userPswd71', 'userName71', 'email71', NULL);
INSERT INTO `t_admin` VALUES (563, 'loginAcct72', 'userPswd72', 'userName72', 'email72', NULL);
INSERT INTO `t_admin` VALUES (564, 'loginAcct73', 'userPswd73', 'userName73', 'email73', NULL);
INSERT INTO `t_admin` VALUES (565, 'loginAcct74', 'userPswd74', 'userName74', 'email74', NULL);
INSERT INTO `t_admin` VALUES (566, 'loginAcct75', 'userPswd75', 'userName75', 'email75', NULL);
INSERT INTO `t_admin` VALUES (567, 'loginAcct76', 'userPswd76', 'userName76', 'email76', NULL);
INSERT INTO `t_admin` VALUES (568, 'loginAcct77', 'userPswd77', 'userName77', 'email77', NULL);
INSERT INTO `t_admin` VALUES (569, 'loginAcct78', 'userPswd78', 'userName78', 'email78', NULL);
INSERT INTO `t_admin` VALUES (570, 'loginAcct79', 'userPswd79', 'userName79', 'email79', NULL);
INSERT INTO `t_admin` VALUES (571, 'loginAcct80', 'userPswd80', 'userName80', 'email80', NULL);
INSERT INTO `t_admin` VALUES (572, 'loginAcct81', 'userPswd81', 'userName81', 'email81', NULL);
INSERT INTO `t_admin` VALUES (573, 'loginAcct82', 'userPswd82', 'userName82', 'email82', NULL);
INSERT INTO `t_admin` VALUES (574, 'loginAcct83', 'userPswd83', 'userName83', 'email83', NULL);
INSERT INTO `t_admin` VALUES (575, 'loginAcct84', 'userPswd84', 'userName84', 'email84', NULL);
INSERT INTO `t_admin` VALUES (576, 'loginAcct85', 'userPswd85', 'userName85', 'email85', NULL);
INSERT INTO `t_admin` VALUES (577, 'loginAcct86', 'userPswd86', 'userName86', 'email86', NULL);
INSERT INTO `t_admin` VALUES (578, 'loginAcct87', 'userPswd87', 'userName87', 'email87', NULL);
INSERT INTO `t_admin` VALUES (579, 'loginAcct88', 'userPswd88', 'userName88', 'email88', NULL);
INSERT INTO `t_admin` VALUES (580, 'loginAcct89', 'userPswd89', 'userName89', 'email89', NULL);
INSERT INTO `t_admin` VALUES (581, 'loginAcct90', 'userPswd90', 'userName90', 'email90', NULL);
INSERT INTO `t_admin` VALUES (582, 'loginAcct91', 'userPswd91', 'userName91', 'email91', NULL);
INSERT INTO `t_admin` VALUES (583, 'loginAcct92', 'userPswd92', 'userName92', 'email92', NULL);
INSERT INTO `t_admin` VALUES (584, 'loginAcct93', 'userPswd93', 'userName93', 'email93', NULL);
INSERT INTO `t_admin` VALUES (585, 'loginAcct94', 'userPswd94', 'userName94', 'email94', NULL);
INSERT INTO `t_admin` VALUES (586, 'loginAcct95', 'userPswd95', 'userName95', 'email95', NULL);
INSERT INTO `t_admin` VALUES (587, 'loginAcct96', 'userPswd96', 'userName96', 'email96', NULL);
INSERT INTO `t_admin` VALUES (588, 'loginAcct97', 'userPswd97', 'userName97', 'email97', NULL);
INSERT INTO `t_admin` VALUES (589, 'loginAcct98', 'userPswd98', 'userName98', 'email98', NULL);
INSERT INTO `t_admin` VALUES (590, 'loginAcct99', 'userPswd99', 'userName99', 'email99', NULL);
INSERT INTO `t_admin` VALUES (591, 'loginAcct100', 'userPswd100', 'userName100', 'email100', NULL);
INSERT INTO `t_admin` VALUES (592, 'loginAcct101', 'userPswd101', 'userName101', 'email101', NULL);
INSERT INTO `t_admin` VALUES (593, 'loginAcct102', 'userPswd102', 'userName102', 'email102', NULL);
INSERT INTO `t_admin` VALUES (594, 'loginAcct103', 'userPswd103', 'userName103', 'email103', NULL);
INSERT INTO `t_admin` VALUES (595, 'loginAcct104', 'userPswd104', 'userName104', 'email104', NULL);
INSERT INTO `t_admin` VALUES (596, 'loginAcct105', 'userPswd105', 'userName105', 'email105', NULL);
INSERT INTO `t_admin` VALUES (597, 'loginAcct106', 'userPswd106', 'userName106', 'email106', NULL);
INSERT INTO `t_admin` VALUES (598, 'loginAcct107', 'userPswd107', 'userName107', 'email107', NULL);
INSERT INTO `t_admin` VALUES (599, 'loginAcct108', 'userPswd108', 'userName108', 'email108', NULL);
INSERT INTO `t_admin` VALUES (600, 'loginAcct109', 'userPswd109', 'userName109', 'email109', NULL);
INSERT INTO `t_admin` VALUES (601, 'loginAcct110', 'userPswd110', 'userName110', 'email110', NULL);
INSERT INTO `t_admin` VALUES (602, 'loginAcct111', 'userPswd111', 'userName111', 'email111', NULL);
INSERT INTO `t_admin` VALUES (603, 'loginAcct112', 'userPswd112', 'userName112', 'email112', NULL);
INSERT INTO `t_admin` VALUES (604, 'loginAcct113', 'userPswd113', 'userName113', 'email113', NULL);
INSERT INTO `t_admin` VALUES (605, 'loginAcct114', 'userPswd114', 'userName114', 'email114', NULL);
INSERT INTO `t_admin` VALUES (606, 'loginAcct115', 'userPswd115', 'userName115', 'email115', NULL);
INSERT INTO `t_admin` VALUES (607, 'loginAcct116', 'userPswd116', 'userName116', 'email116', NULL);
INSERT INTO `t_admin` VALUES (608, 'loginAcct117', 'userPswd117', 'userName117', 'email117', NULL);
INSERT INTO `t_admin` VALUES (609, 'loginAcct118', 'userPswd118', 'userName118', 'email118', NULL);
INSERT INTO `t_admin` VALUES (610, 'loginAcct119', 'userPswd119', 'userName119', 'email119', NULL);
INSERT INTO `t_admin` VALUES (611, 'loginAcct120', 'userPswd120', 'userName120', 'email120', NULL);
INSERT INTO `t_admin` VALUES (612, 'loginAcct121', 'userPswd121', 'userName121', 'email121', NULL);
INSERT INTO `t_admin` VALUES (613, 'loginAcct122', 'userPswd122', 'userName122', 'email122', NULL);
INSERT INTO `t_admin` VALUES (614, 'loginAcct123', 'userPswd123', 'userName123', 'email123', NULL);
INSERT INTO `t_admin` VALUES (615, 'loginAcct124', 'userPswd124', 'userName124', 'email124', NULL);
INSERT INTO `t_admin` VALUES (616, 'loginAcct125', 'userPswd125', 'userName125', 'email125', NULL);
INSERT INTO `t_admin` VALUES (617, 'loginAcct126', 'userPswd126', 'userName126', 'email126', NULL);
INSERT INTO `t_admin` VALUES (618, 'loginAcct127', 'userPswd127', 'userName127', 'email127', NULL);
INSERT INTO `t_admin` VALUES (619, 'loginAcct128', 'userPswd128', 'userName128', 'email128', NULL);
INSERT INTO `t_admin` VALUES (620, 'loginAcct129', 'userPswd129', 'userName129', 'email129', NULL);
INSERT INTO `t_admin` VALUES (621, 'loginAcct130', 'userPswd130', 'userName130', 'email130', NULL);
INSERT INTO `t_admin` VALUES (622, 'loginAcct131', 'userPswd131', 'userName131', 'email131', NULL);
INSERT INTO `t_admin` VALUES (623, 'loginAcct132', 'userPswd132', 'userName132', 'email132', NULL);
INSERT INTO `t_admin` VALUES (624, 'loginAcct133', 'userPswd133', 'userName133', 'email133', NULL);
INSERT INTO `t_admin` VALUES (625, 'loginAcct134', 'userPswd134', 'userName134', 'email134', NULL);
INSERT INTO `t_admin` VALUES (626, 'loginAcct135', 'userPswd135', 'userName135', 'email135', NULL);
INSERT INTO `t_admin` VALUES (627, 'loginAcct136', 'userPswd136', 'userName136', 'email136', NULL);
INSERT INTO `t_admin` VALUES (628, 'loginAcct137', 'userPswd137', 'userName137', 'email137', NULL);
INSERT INTO `t_admin` VALUES (629, 'loginAcct138', 'userPswd138', 'userName138', 'email138', NULL);
INSERT INTO `t_admin` VALUES (630, 'loginAcct139', 'userPswd139', 'userName139', 'email139', NULL);
INSERT INTO `t_admin` VALUES (631, 'loginAcct140', 'userPswd140', 'userName140', 'email140', NULL);
INSERT INTO `t_admin` VALUES (632, 'loginAcct141', 'userPswd141', 'userName141', 'email141', NULL);
INSERT INTO `t_admin` VALUES (633, 'loginAcct142', 'userPswd142', 'userName142', 'email142', NULL);
INSERT INTO `t_admin` VALUES (634, 'loginAcct143', 'userPswd143', 'userName143', 'email143', NULL);
INSERT INTO `t_admin` VALUES (635, 'loginAcct144', 'userPswd144', 'userName144', 'email144', NULL);
INSERT INTO `t_admin` VALUES (636, 'loginAcct145', 'userPswd145', 'userName145', 'email145', NULL);
INSERT INTO `t_admin` VALUES (637, 'loginAcct146', 'userPswd146', 'userName146', 'email146', NULL);
INSERT INTO `t_admin` VALUES (638, 'loginAcct147', 'userPswd147', 'userName147', 'email147', NULL);
INSERT INTO `t_admin` VALUES (639, 'loginAcct148', 'userPswd148', 'userName148', 'email148', NULL);
INSERT INTO `t_admin` VALUES (640, 'loginAcct149', 'userPswd149', 'userName149', 'email149', NULL);
INSERT INTO `t_admin` VALUES (641, 'loginAcct150', 'userPswd150', 'userName150', 'email150', NULL);
INSERT INTO `t_admin` VALUES (642, 'loginAcct151', 'userPswd151', 'userName151', 'email151', NULL);
INSERT INTO `t_admin` VALUES (643, 'loginAcct152', 'userPswd152', 'userName152', 'email152', NULL);
INSERT INTO `t_admin` VALUES (644, 'loginAcct153', 'userPswd153', 'userName153', 'email153', NULL);
INSERT INTO `t_admin` VALUES (645, 'loginAcct154', 'userPswd154', 'userName154', 'email154', NULL);
INSERT INTO `t_admin` VALUES (646, 'loginAcct155', 'userPswd155', 'userName155', 'email155', NULL);
INSERT INTO `t_admin` VALUES (647, 'loginAcct156', 'userPswd156', 'userName156', 'email156', NULL);
INSERT INTO `t_admin` VALUES (648, 'loginAcct157', 'userPswd157', 'userName157', 'email157', NULL);
INSERT INTO `t_admin` VALUES (649, 'loginAcct158', 'userPswd158', 'userName158', 'email158', NULL);
INSERT INTO `t_admin` VALUES (650, 'loginAcct159', 'userPswd159', 'userName159', 'email159', NULL);
INSERT INTO `t_admin` VALUES (651, 'loginAcct160', 'userPswd160', 'userName160', 'email160', NULL);
INSERT INTO `t_admin` VALUES (652, 'loginAcct161', 'userPswd161', 'userName161', 'email161', NULL);
INSERT INTO `t_admin` VALUES (653, 'loginAcct162', 'userPswd162', 'userName162', 'email162', NULL);
INSERT INTO `t_admin` VALUES (654, 'loginAcct163', 'userPswd163', 'userName163', 'email163', NULL);
INSERT INTO `t_admin` VALUES (655, 'loginAcct164', 'userPswd164', 'userName164', 'email164', NULL);
INSERT INTO `t_admin` VALUES (656, 'loginAcct165', 'userPswd165', 'userName165', 'email165', NULL);
INSERT INTO `t_admin` VALUES (657, 'loginAcct166', 'userPswd166', 'userName166', 'email166', NULL);
INSERT INTO `t_admin` VALUES (658, 'loginAcct167', 'userPswd167', 'userName167', 'email167', NULL);
INSERT INTO `t_admin` VALUES (659, 'loginAcct168', 'userPswd168', 'userName168', 'email168', NULL);
INSERT INTO `t_admin` VALUES (660, 'loginAcct169', 'userPswd169', 'userName169', 'email169', NULL);
INSERT INTO `t_admin` VALUES (661, 'loginAcct170', 'userPswd170', 'userName170', 'email170', NULL);
INSERT INTO `t_admin` VALUES (662, 'loginAcct171', 'userPswd171', 'userName171', 'email171', NULL);
INSERT INTO `t_admin` VALUES (663, 'loginAcct172', 'userPswd172', 'userName172', 'email172', NULL);
INSERT INTO `t_admin` VALUES (664, 'loginAcct173', 'userPswd173', 'userName173', 'email173', NULL);
INSERT INTO `t_admin` VALUES (665, 'loginAcct174', 'userPswd174', 'userName174', 'email174', NULL);
INSERT INTO `t_admin` VALUES (666, 'loginAcct175', 'userPswd175', 'userName175', 'email175', NULL);
INSERT INTO `t_admin` VALUES (667, 'loginAcct176', 'userPswd176', 'userName176', 'email176', NULL);
INSERT INTO `t_admin` VALUES (668, 'loginAcct177', 'userPswd177', 'userName177', 'email177', NULL);
INSERT INTO `t_admin` VALUES (669, 'loginAcct178', 'userPswd178', 'userName178', 'email178', NULL);
INSERT INTO `t_admin` VALUES (670, 'loginAcct179', 'userPswd179', 'userName179', 'email179', NULL);
INSERT INTO `t_admin` VALUES (671, 'loginAcct180', 'userPswd180', 'userName180', 'email180', NULL);
INSERT INTO `t_admin` VALUES (672, 'loginAcct181', 'userPswd181', 'userName181', 'email181', NULL);
INSERT INTO `t_admin` VALUES (673, 'loginAcct182', 'userPswd182', 'userName182', 'email182', NULL);
INSERT INTO `t_admin` VALUES (674, 'loginAcct183', 'userPswd183', 'userName183', 'email183', NULL);
INSERT INTO `t_admin` VALUES (675, 'loginAcct184', 'userPswd184', 'userName184', 'email184', NULL);
INSERT INTO `t_admin` VALUES (676, 'loginAcct185', 'userPswd185', 'userName185', 'email185', NULL);
INSERT INTO `t_admin` VALUES (677, 'loginAcct186', 'userPswd186', 'userName186', 'email186', NULL);
INSERT INTO `t_admin` VALUES (678, 'loginAcct187', 'userPswd187', 'userName187', 'email187', NULL);
INSERT INTO `t_admin` VALUES (679, 'loginAcct188', 'userPswd188', 'userName188', 'email188', NULL);
INSERT INTO `t_admin` VALUES (680, 'loginAcct189', 'userPswd189', 'userName189', 'email189', NULL);
INSERT INTO `t_admin` VALUES (681, 'loginAcct190', 'userPswd190', 'userName190', 'email190', NULL);
INSERT INTO `t_admin` VALUES (682, 'loginAcct191', 'userPswd191', 'userName191', 'email191', NULL);
INSERT INTO `t_admin` VALUES (683, 'loginAcct192', 'userPswd192', 'userName192', 'email192', NULL);
INSERT INTO `t_admin` VALUES (684, 'loginAcct193', 'userPswd193', 'userName193', 'email193', NULL);
INSERT INTO `t_admin` VALUES (685, 'loginAcct194', 'userPswd194', 'userName194', 'email194', NULL);
INSERT INTO `t_admin` VALUES (686, 'loginAcct195', 'userPswd195', 'userName195', 'email195', NULL);
INSERT INTO `t_admin` VALUES (687, 'loginAcct196', 'userPswd196', 'userName196', 'email196', NULL);
INSERT INTO `t_admin` VALUES (688, 'loginAcct197', 'userPswd197', 'userName197', 'email197', NULL);
INSERT INTO `t_admin` VALUES (689, 'loginAcct198', 'userPswd198', 'userName198', 'email198', NULL);
INSERT INTO `t_admin` VALUES (690, 'loginAcct199', 'userPswd199', 'userName199', 'email199', NULL);
INSERT INTO `t_admin` VALUES (691, 'loginAcct200', 'userPswd200', 'userName200', 'email200', NULL);
INSERT INTO `t_admin` VALUES (692, 'loginAcct201', 'userPswd201', 'userName201', 'email201', NULL);
INSERT INTO `t_admin` VALUES (693, 'loginAcct202', 'userPswd202', 'userName202', 'email202', NULL);
INSERT INTO `t_admin` VALUES (694, 'loginAcct203', 'userPswd203', 'userName203', 'email203', NULL);
INSERT INTO `t_admin` VALUES (695, 'loginAcct204', 'userPswd204', 'userName204', 'email204', NULL);
INSERT INTO `t_admin` VALUES (696, 'loginAcct205', 'userPswd205', 'userName205', 'email205', NULL);
INSERT INTO `t_admin` VALUES (697, 'loginAcct206', 'userPswd206', 'userName206', 'email206', NULL);
INSERT INTO `t_admin` VALUES (698, 'loginAcct207', 'userPswd207', 'userName207', 'email207', NULL);
INSERT INTO `t_admin` VALUES (699, 'loginAcct208', 'userPswd208', 'userName208', 'email208', NULL);
INSERT INTO `t_admin` VALUES (700, 'loginAcct209', 'userPswd209', 'userName209', 'email209', NULL);
INSERT INTO `t_admin` VALUES (701, 'loginAcct210', 'userPswd210', 'userName210', 'email210', NULL);
INSERT INTO `t_admin` VALUES (702, 'loginAcct211', 'userPswd211', 'userName211', 'email211', NULL);
INSERT INTO `t_admin` VALUES (703, 'loginAcct212', 'userPswd212', 'userName212', 'email212', NULL);
INSERT INTO `t_admin` VALUES (704, 'loginAcct213', 'userPswd213', 'userName213', 'email213', NULL);
INSERT INTO `t_admin` VALUES (705, 'loginAcct214', 'userPswd214', 'userName214', 'email214', NULL);
INSERT INTO `t_admin` VALUES (706, 'loginAcct215', 'userPswd215', 'userName215', 'email215', NULL);
INSERT INTO `t_admin` VALUES (707, 'loginAcct216', 'userPswd216', 'userName216', 'email216', NULL);
INSERT INTO `t_admin` VALUES (708, 'loginAcct217', 'userPswd217', 'userName217', 'email217', NULL);
INSERT INTO `t_admin` VALUES (709, 'loginAcct218', 'userPswd218', 'userName218', 'email218', NULL);
INSERT INTO `t_admin` VALUES (710, 'loginAcct219', 'userPswd219', 'userName219', 'email219', NULL);
INSERT INTO `t_admin` VALUES (711, 'loginAcct220', 'userPswd220', 'userName220', 'email220', NULL);
INSERT INTO `t_admin` VALUES (712, 'loginAcct221', 'userPswd221', 'userName221', 'email221', NULL);
INSERT INTO `t_admin` VALUES (713, 'loginAcct222', 'userPswd222', 'userName222', 'email222', NULL);
INSERT INTO `t_admin` VALUES (714, 'loginAcct223', 'userPswd223', 'userName223', 'email223', NULL);
INSERT INTO `t_admin` VALUES (715, 'loginAcct224', 'userPswd224', 'userName224', 'email224', NULL);
INSERT INTO `t_admin` VALUES (716, 'loginAcct225', 'userPswd225', 'userName225', 'email225', NULL);
INSERT INTO `t_admin` VALUES (717, 'loginAcct226', 'userPswd226', 'userName226', 'email226', NULL);
INSERT INTO `t_admin` VALUES (718, 'loginAcct227', 'userPswd227', 'userName227', 'email227', NULL);
INSERT INTO `t_admin` VALUES (719, 'loginAcct228', 'userPswd228', 'userName228', 'email228', NULL);
INSERT INTO `t_admin` VALUES (720, 'loginAcct229', 'userPswd229', 'userName229', 'email229', NULL);
INSERT INTO `t_admin` VALUES (721, 'loginAcct230', 'userPswd230', 'userName230', 'email230', NULL);
INSERT INTO `t_admin` VALUES (722, 'loginAcct231', 'userPswd231', 'userName231', 'email231', NULL);
INSERT INTO `t_admin` VALUES (723, 'loginAcct232', 'userPswd232', 'userName232', 'email232', NULL);
INSERT INTO `t_admin` VALUES (724, 'loginAcct233', 'userPswd233', 'userName233', 'email233', NULL);
INSERT INTO `t_admin` VALUES (725, 'loginAcct234', 'userPswd234', 'userName234', 'email234', NULL);
INSERT INTO `t_admin` VALUES (726, 'loginAcct235', 'userPswd235', 'userName235', 'email235', NULL);
INSERT INTO `t_admin` VALUES (727, 'loginAcct236', 'userPswd236', 'userName236', 'email236', NULL);
INSERT INTO `t_admin` VALUES (728, 'loginAcct237', 'userPswd237', 'userName237', 'email237', NULL);

-- ----------------------------
-- Table structure for t_auth
-- ----------------------------
DROP TABLE IF EXISTS `t_auth`;
CREATE TABLE `t_auth`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_auth
-- ----------------------------
INSERT INTO `t_auth` VALUES (1, '', '用户模块', NULL);
INSERT INTO `t_auth` VALUES (2, 'user:delete', '删除', 1);
INSERT INTO `t_auth` VALUES (3, 'user:get', '查询', 1);
INSERT INTO `t_auth` VALUES (4, '', '角色模块', NULL);
INSERT INTO `t_auth` VALUES (5, 'role:delete', '删除', 4);
INSERT INTO `t_auth` VALUES (6, 'role:get', '查询', 4);
INSERT INTO `t_auth` VALUES (7, 'role:add', '新增', 4);
INSERT INTO `t_auth` VALUES (8, 'user:save', '保存', 1);

-- ----------------------------
-- Table structure for t_member
-- ----------------------------
DROP TABLE IF EXISTS `t_member`;
CREATE TABLE `t_member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginacct` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userpswd` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `authstatus` int(4) NULL DEFAULT NULL COMMENT '实名认证状态 0 - 未实名认证， 1 - 实名认证申请中， 2 - 已实名认证',
  `usertype` int(4) NULL DEFAULT NULL COMMENT ' 0 - 个人， 1 - 企业',
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cardnum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `accttype` int(4) NULL DEFAULT NULL COMMENT '0 - 企业， 1 - 个体， 2 - 个人， 3 - 政府',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `loginacct`(`loginacct`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_member
-- ----------------------------
INSERT INTO `t_member` VALUES (2, 'tom', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (4, 'root', '$2a$10$6CWQZWx3UfBsMmKDmzEgWuRI2QgrmhZq4X/1fjOCaSlFi2WS4PHNa', 'nsu', '1822014927@qq.com', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (7, 'jack', '$2a$10$MofESuwpb2jofxRSVFk.C.pr3FgHOWavRcpzefuknNHG4lgoT71LC', '杰克', 'jack@qq.com', 1, 1, '杰克', '123123', 2);
INSERT INTO `t_member` VALUES (8, 'qer', '$2a$10$MofESuwpb2jofxRSVFk.C.pr3FgHOWavRcpzefuknNHG4lgoT71LC', 'sd', 'email3@qq.com', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_member` VALUES (9, 'jason', '$2a$10$qW7xdUoB9y190YWoYA0jbeeksN7wT8W.sUkyNAp2YW/BRJ3U0Bppm', '壹小壹', '2240015382@qq.com', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_member_confirm_info
-- ----------------------------
DROP TABLE IF EXISTS `t_member_confirm_info`;
CREATE TABLE `t_member_confirm_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NULL DEFAULT NULL COMMENT '会员 id',
  `paynum` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '易付宝企业账号',
  `cardnum` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法人身份证号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_member_confirm_info
-- ----------------------------
INSERT INTO `t_member_confirm_info` VALUES (1, 4, 'test', 'test');
INSERT INTO `t_member_confirm_info` VALUES (2, 4, 'test', 'teset');
INSERT INTO `t_member_confirm_info` VALUES (5, 7, '18801282948', '18801282948');
INSERT INTO `t_member_confirm_info` VALUES (6, 7, '18801282948', '18801282948');
INSERT INTO `t_member_confirm_info` VALUES (7, 7, '18801282948', '18801282948');
INSERT INTO `t_member_confirm_info` VALUES (8, 7, '18801282948', '18801282948');
INSERT INTO `t_member_confirm_info` VALUES (9, 8, '18801282948', '18801282948');
INSERT INTO `t_member_confirm_info` VALUES (10, 8, '18801282948', 'q13');
INSERT INTO `t_member_confirm_info` VALUES (11, 7, '18801282948', '18801282948');

-- ----------------------------
-- Table structure for t_member_launch_info
-- ----------------------------
DROP TABLE IF EXISTS `t_member_launch_info`;
CREATE TABLE `t_member_launch_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) NULL DEFAULT NULL COMMENT '会员 id',
  `description_simple` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简单介绍',
  `description_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细介绍',
  `phone_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `service_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客服电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_member_launch_info
-- ----------------------------
INSERT INTO `t_member_launch_info` VALUES (1, 4, 'i am mao', '我是猫哥', '123456', '654321');
INSERT INTO `t_member_launch_info` VALUES (2, 4, 'i am mao', '我是猫哥', '123456', '654321');
INSERT INTO `t_member_launch_info` VALUES (5, 7, '创业者001', '大众集资', '1733101156', '654321');
INSERT INTO `t_member_launch_info` VALUES (6, 7, '创业者001', '大众集资', '1733101156', '654321');
INSERT INTO `t_member_launch_info` VALUES (7, 7, '创业者001', '大众集资', '1733101156', '654321');
INSERT INTO `t_member_launch_info` VALUES (8, 7, '创业者001', '大众集资', '1733101156', '654321');
INSERT INTO `t_member_launch_info` VALUES (9, 8, 'sd', 'email3@qq.com', '111111', '111111');
INSERT INTO `t_member_launch_info` VALUES (10, 8, 'i am mao', '我是猫哥', '123456', '654321');
INSERT INTO `t_member_launch_info` VALUES (11, 7, '11', '111', '111111', '111');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (1, NULL, '系统权限菜单', NULL, 'glyphicon glyphicon-th-list');
INSERT INTO `t_menu` VALUES (2, 1, ' 控 制 面 板 ', 'main.htm', 'glyphicon glyphicon-dashboard');
INSERT INTO `t_menu` VALUES (3, 1, '权限管理', NULL, 'glyphicon glyphicon glyphicon-tasks');
INSERT INTO `t_menu` VALUES (4, 3, ' 用 户 维 护 ', 'user/index.htm', 'glyphicon glyphicon-user');
INSERT INTO `t_menu` VALUES (5, 3, ' 角 色 维 护 ', 'role/index.htm', 'glyphicon glyphicon-king');
INSERT INTO `t_menu` VALUES (6, 3, ' 菜 单 维 护 ', 'permission/index.htm', 'glyphicon glyphicon-lock');
INSERT INTO `t_menu` VALUES (7, 1, ' 业 务 审 核 ', NULL, 'glyphicon glyphicon-ok');
INSERT INTO `t_menu` VALUES (8, 7, '实名认证审核', 'auth_cert/index.htm', 'glyphicon glyphicon-check');
INSERT INTO `t_menu` VALUES (9, 7, ' 广 告 审 核 ', 'auth_adv/index.htm', 'glyphicon glyphicon-check');
INSERT INTO `t_menu` VALUES (10, 7, ' 项 目 审 核 ', 'auth_project/index.htm', 'glyphicon glyphicon-check');
INSERT INTO `t_menu` VALUES (11, 1, ' 业 务 管 理 ', NULL, 'glyphicon glyphicon-th-large');
INSERT INTO `t_menu` VALUES (12, 11, ' 资 质 维 护 ', 'cert/index.htm', 'glyphicon glyphicon-picture');
INSERT INTO `t_menu` VALUES (13, 11, ' 分 类 管 理 ', 'certtype/index.htm', 'glyphicon glyphicon-equalizer');
INSERT INTO `t_menu` VALUES (14, 11, ' 流 程 管 理 ', 'process/index.htm', 'glyphicon glyphicon-random');
INSERT INTO `t_menu` VALUES (15, 11, ' 广 告 管 理 ', 'advert/index.htm', 'glyphicon glyphicon-hdd');
INSERT INTO `t_menu` VALUES (16, 11, ' 消 息 模 板 ', 'message/index.htm', 'glyphicon glyphicon-comment');
INSERT INTO `t_menu` VALUES (17, 11, ' 项 目 分 类 ', 'projectType/index.htm', 'glyphicon glyphicon-list');
INSERT INTO `t_menu` VALUES (18, 11, ' 项 目 标 签 ', 'tag/index.htm', 'glyphicon glyphicon-tags');
INSERT INTO `t_menu` VALUES (19, 1, '参 数 管 理', 'param/index.htm', 'glyphicon glyphicon-list-alt');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_num` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `pay_order_num` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付宝流水号',
  `order_amount` double(10, 5) NULL DEFAULT NULL COMMENT '订单金额',
  `invoice` int(11) NULL DEFAULT NULL COMMENT '是否开发票（0 不开，1 开）',
  `invoice_title` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发票抬头',
  `order_remark` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单备注',
  `address_id` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址 id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (3, '20200717195629A4684B2889E848C89E582E67D28CE102', '2020071722001417480501410672', 10.00000, 0, '', '无', '3');
INSERT INTO `t_order` VALUES (4, '20200717204202D1C24189D4FF48DD8E4476EC909E697D', '2020071722001417480501411268', 50.00000, 0, '', '', 'undefined');
INSERT INTO `t_order` VALUES (5, '20200719033037303B678DC1AC4775B9F8387C36EA0D26', '2020071922001417480501411681', 50.00000, 0, '', '', '3');
INSERT INTO `t_order` VALUES (6, '2020071903423598B241DC15904C41AE217757F82DD327', '2020071922001417480501411811', 50.00000, 0, '', '', '4');
INSERT INTO `t_order` VALUES (7, '20201013153757EB2336EB80E34C4499DE6AF270C46E09', '2020101322001417480501572366', 10.00000, 0, '', '', '4');

-- ----------------------------
-- Table structure for t_order_project
-- ----------------------------
DROP TABLE IF EXISTS `t_order_project`;
CREATE TABLE `t_order_project`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `project_name` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  `launch_name` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发起人',
  `return_content` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回报内容',
  `return_count` int(11) NULL DEFAULT NULL COMMENT '回报数量',
  `support_price` int(11) NULL DEFAULT NULL COMMENT '支持单价',
  `freight` int(11) NULL DEFAULT NULL COMMENT '配送费用',
  `order_id` int(11) NULL DEFAULT NULL COMMENT '订单表的主键',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_order_project
-- ----------------------------
INSERT INTO `t_order_project` VALUES (3, '三星手机', '创业者001', '优惠卷', 1, 10, 0, 3);
INSERT INTO `t_order_project` VALUES (4, '泡泡机', '创业者001', '优惠劵', 5, 10, 0, 4);
INSERT INTO `t_order_project` VALUES (5, '4D投影', 'sd', '折扣', 5, 10, 0, 5);
INSERT INTO `t_order_project` VALUES (6, '泡泡机', '创业者001', '优惠劵', 5, 10, 0, 6);
INSERT INTO `t_order_project` VALUES (7, '三星手机', '创业者001', '优惠卷', 1, 10, 0, 7);

-- ----------------------------
-- Table structure for t_project
-- ----------------------------
DROP TABLE IF EXISTS `t_project`;
CREATE TABLE `t_project`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  `project_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目描述',
  `money` bigint(11) NULL DEFAULT NULL COMMENT '筹集金额',
  `day` int(11) NULL DEFAULT NULL COMMENT '筹集天数',
  `status` int(4) NULL DEFAULT NULL COMMENT '0-即将开始，1-众筹中，2-众筹成功，3-众筹失败',
  `deploydate` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目发起时间',
  `supportmoney` bigint(11) NULL DEFAULT NULL COMMENT '已筹集到的金额',
  `supporter` int(11) NULL DEFAULT NULL COMMENT '支持人数',
  `completion` int(3) NULL DEFAULT NULL COMMENT '百分比完成度',
  `memberid` int(11) NULL DEFAULT NULL COMMENT '发起人的会员 id',
  `createdate` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目创建时间',
  `follower` int(11) NULL DEFAULT NULL COMMENT '关注人数',
  `header_picture_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头图路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_project
-- ----------------------------
INSERT INTO `t_project` VALUES (3, 'brotherMao', '就是帅！', 100000, 30, 1, '2020-07-18', 1000, 20, 25, 4, '2020-06-03', NULL, 'http://ccctop-first.oss-cn-chengdu.aliyuncs.com/20200603/935077885bd44007a38bb3b50282355f.png');
INSERT INTO `t_project` VALUES (4, 'brotherMao', '就是帅！', 100000, 30, 1, '2020-07-18', 1000, 20, 25, 4, '2020-06-04', NULL, 'http://ccctop-first.oss-cn-chengdu.aliyuncs.com/20200604/5d9813ee713e46c892c3d3b1eff46dd3.png');
INSERT INTO `t_project` VALUES (11, '泡泡机', '专为泡沫而生', 2000, 30, 1, '2020-07-18', 50, 1, NULL, 7, '2020-07-16', NULL, 'http://atguigu190830.oss-cn-shenzhen.aliyuncs.com/20200716/dceb295af6704e34b104b24597dd5111.png');
INSERT INTO `t_project` VALUES (12, '三星手机', '回收手机', 1000, 30, 1, '2020-07-18', 10, 1, NULL, 7, '2020-07-16', NULL, 'http://atguigu190830.oss-cn-shenzhen.aliyuncs.com/20200716/3b21b1a4ba8a44108b1e57dc14634818.png');
INSERT INTO `t_project` VALUES (13, '农家乐', '享受乡村生活', 1000, 30, 1, '2020-07-18', 0, 0, NULL, 7, '2020-07-16', NULL, 'http://atguigu190830.oss-cn-shenzhen.aliyuncs.com/20200716/19d9209b4658475692b6c1426cdd2315.png');
INSERT INTO `t_project` VALUES (14, 'brotherMao', '就是帅！', 100000, 30, 1, '2020-07-18', 0, 0, NULL, 7, '2020-07-16', NULL, 'http://atguigu190830.oss-cn-shenzhen.aliyuncs.com/20200716/938ea61e425241bf8b79e7cd159f555f.png');
INSERT INTO `t_project` VALUES (15, '4D投影', '体验全新的世界', 5000, 30, 1, '2020-07-19', 10, 1, NULL, 8, '2020-07-19', NULL, 'http://atguigu190830.oss-cn-shenzhen.aliyuncs.com/20200719/3d0ac9c38f424efb9f7bd158e73e666d.jpg');
INSERT INTO `t_project` VALUES (16, 'brotherMao', '就是帅！', 100, 30, 0, '2020-10-13', 0, 0, NULL, 8, '2020-10-13', NULL, 'http://atguigu190830.oss-cn-shenzhen.aliyuncs.com/20201013/42918716de5e4074b351e2d70557d073.png');
INSERT INTO `t_project` VALUES (38, '11', '11', 1000, 30, 0, '2020-10-13', 0, 0, NULL, 7, '2020-10-13', NULL, 'http://atguigu190830.oss-cn-shenzhen.aliyuncs.com/20201013/a4611399537647548d34f025d07694b4.png');

-- ----------------------------
-- Table structure for t_project_item_pic
-- ----------------------------
DROP TABLE IF EXISTS `t_project_item_pic`;
CREATE TABLE `t_project_item_pic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) NULL DEFAULT NULL,
  `item_pic_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_project_item_pic
-- ----------------------------
INSERT INTO `t_project_item_pic` VALUES (1, NULL, 'http://ccctop-first.oss-cn-chengdu.aliyuncs.com/20200603/085a3c34e0414c71948738adee371040.png');
INSERT INTO `t_project_item_pic` VALUES (2, 4, 'http://ccctop-first.oss-cn-chengdu.aliyuncs.com/20200604/31bbbe24ed1041ca934a7f11a98c7914.png');
INSERT INTO `t_project_item_pic` VALUES (5, 11, 'http://atguigu190830.oss-cn-shenzhen.aliyuncs.com/20200716/7ae581b6551b4271b6006103d73d574e.png');
INSERT INTO `t_project_item_pic` VALUES (6, 12, 'http://atguigu190830.oss-cn-shenzhen.aliyuncs.com/20200716/477565521f134cbfb2ad022aaa401c7c.png');
INSERT INTO `t_project_item_pic` VALUES (7, 13, 'http://atguigu190830.oss-cn-shenzhen.aliyuncs.com/20200716/84f3fef9d2804a0e849a91245d5e8083.png');
INSERT INTO `t_project_item_pic` VALUES (8, 14, 'http://atguigu190830.oss-cn-shenzhen.aliyuncs.com/20200716/e20c7c077e13430b90ad17dd6d3c6c3d.png');
INSERT INTO `t_project_item_pic` VALUES (9, 15, 'http://atguigu190830.oss-cn-shenzhen.aliyuncs.com/20200719/18aee11b5cd348b7abb91facaa6534e5.jpg');
INSERT INTO `t_project_item_pic` VALUES (10, 16, 'http://atguigu190830.oss-cn-shenzhen.aliyuncs.com/20201013/2bb1c43be5ef45d8ade85500504a0f86.png');
INSERT INTO `t_project_item_pic` VALUES (11, 38, 'http://atguigu190830.oss-cn-shenzhen.aliyuncs.com/20201013/bbf17d0ac34a4484bc0ed003a2313321.png');

-- ----------------------------
-- Table structure for t_project_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_project_tag`;
CREATE TABLE `t_project_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) NULL DEFAULT NULL,
  `tagid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_project_tag
-- ----------------------------
INSERT INTO `t_project_tag` VALUES (7, NULL, 5);
INSERT INTO `t_project_tag` VALUES (8, NULL, 7);
INSERT INTO `t_project_tag` VALUES (9, NULL, 9);
INSERT INTO `t_project_tag` VALUES (10, 1, 1);
INSERT INTO `t_project_tag` VALUES (11, 4, 5);
INSERT INTO `t_project_tag` VALUES (12, 4, 7);
INSERT INTO `t_project_tag` VALUES (13, 4, 9);
INSERT INTO `t_project_tag` VALUES (14, 5, 4);
INSERT INTO `t_project_tag` VALUES (15, 5, 9);
INSERT INTO `t_project_tag` VALUES (16, 5, 8);
INSERT INTO `t_project_tag` VALUES (17, 6, 4);
INSERT INTO `t_project_tag` VALUES (18, 6, 7);
INSERT INTO `t_project_tag` VALUES (19, 6, 9);
INSERT INTO `t_project_tag` VALUES (20, 11, 4);
INSERT INTO `t_project_tag` VALUES (21, 11, 7);
INSERT INTO `t_project_tag` VALUES (22, 11, 9);
INSERT INTO `t_project_tag` VALUES (23, 12, 4);
INSERT INTO `t_project_tag` VALUES (24, 12, 7);
INSERT INTO `t_project_tag` VALUES (25, 12, 9);
INSERT INTO `t_project_tag` VALUES (26, 13, 8);
INSERT INTO `t_project_tag` VALUES (27, 13, 5);
INSERT INTO `t_project_tag` VALUES (28, 13, 9);
INSERT INTO `t_project_tag` VALUES (29, 14, 4);
INSERT INTO `t_project_tag` VALUES (30, 14, 7);
INSERT INTO `t_project_tag` VALUES (31, 14, 9);
INSERT INTO `t_project_tag` VALUES (32, 15, 4);
INSERT INTO `t_project_tag` VALUES (33, 15, 7);
INSERT INTO `t_project_tag` VALUES (34, 15, 9);
INSERT INTO `t_project_tag` VALUES (35, 16, 4);
INSERT INTO `t_project_tag` VALUES (36, 16, 9);
INSERT INTO `t_project_tag` VALUES (37, 38, 4);
INSERT INTO `t_project_tag` VALUES (38, 38, 7);
INSERT INTO `t_project_tag` VALUES (39, 38, 9);

-- ----------------------------
-- Table structure for t_project_type
-- ----------------------------
DROP TABLE IF EXISTS `t_project_type`;
CREATE TABLE `t_project_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) NULL DEFAULT NULL,
  `typeid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_project_type
-- ----------------------------
INSERT INTO `t_project_type` VALUES (7, 3, 2);
INSERT INTO `t_project_type` VALUES (8, 4, 4);
INSERT INTO `t_project_type` VALUES (9, 5, 2);
INSERT INTO `t_project_type` VALUES (10, 5, 4);
INSERT INTO `t_project_type` VALUES (11, 6, 1);
INSERT INTO `t_project_type` VALUES (16, 11, 2);
INSERT INTO `t_project_type` VALUES (17, 11, 4);
INSERT INTO `t_project_type` VALUES (18, 12, 1);
INSERT INTO `t_project_type` VALUES (19, 13, 4);
INSERT INTO `t_project_type` VALUES (20, 14, 3);
INSERT INTO `t_project_type` VALUES (21, 15, 1);
INSERT INTO `t_project_type` VALUES (22, 16, 2);
INSERT INTO `t_project_type` VALUES (23, 16, 4);
INSERT INTO `t_project_type` VALUES (45, 38, 4);

-- ----------------------------
-- Table structure for t_return
-- ----------------------------
DROP TABLE IF EXISTS `t_return`;
CREATE TABLE `t_return`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) NULL DEFAULT NULL,
  `type` int(4) NULL DEFAULT NULL COMMENT '0 - 实物回报， 1 虚拟物品回报',
  `supportmoney` int(11) NULL DEFAULT NULL COMMENT '支持金额',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回报内容',
  `count` int(11) NULL DEFAULT NULL COMMENT '回报产品限额，“0”为不限回报数量',
  `signalpurchase` int(11) NULL DEFAULT NULL COMMENT '是否设置单笔限购',
  `purchase` int(11) NULL DEFAULT NULL COMMENT '具体限购数量',
  `freight` int(11) NULL DEFAULT NULL COMMENT '运费，“0”为包邮',
  `invoice` int(4) NULL DEFAULT NULL COMMENT '0 - 不开发票， 1 - 开发票',
  `returndate` int(11) NULL DEFAULT NULL COMMENT '项目结束后多少天向支持者发送回报',
  `describ_pic_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '说明图片路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_return
-- ----------------------------
INSERT INTO `t_return` VALUES (1, NULL, NULL, 10, '以身相许', 5, NULL, 8, 0, NULL, 15, 'http://ccctop-first.oss-cn-chengdu.aliyuncs.com/20200603/f83b07fb27e6465da2f6ad67ac96f12f.png');
INSERT INTO `t_return` VALUES (2, 4, NULL, 10, '以身相许', 5, NULL, 8, 0, NULL, 15, 'http://ccctop-first.oss-cn-chengdu.aliyuncs.com/20200604/b6901356705844ab85b7ecfe6621ab9f.png');
INSERT INTO `t_return` VALUES (5, 11, 1, 10, '优惠劵', 5, 0, 8, 0, 0, 15, 'http://atguigu190830.oss-cn-shenzhen.aliyuncs.com/20200716/5f869a0f665a4dc4b1a6400812b5e84c.png');
INSERT INTO `t_return` VALUES (6, 12, 1, 10, '优惠卷', 0, 0, 8, 0, 1, 15, 'http://atguigu190830.oss-cn-shenzhen.aliyuncs.com/20200716/c9ec6faa37e6464291ada1701ebd9c9b.png');
INSERT INTO `t_return` VALUES (7, 13, 0, 10, '免费一场体验', 0, 0, 1, 0, 0, 15, 'http://atguigu190830.oss-cn-shenzhen.aliyuncs.com/20200716/b08d6122c27543b29a74654ef3159381.png');
INSERT INTO `t_return` VALUES (8, 14, 0, 10, '以身相许', 5, 1, 8, 0, 0, 15, 'http://atguigu190830.oss-cn-shenzhen.aliyuncs.com/20200716/4b7d7c6c7d9c4b7ab47b96b723a3dd02.png');
INSERT INTO `t_return` VALUES (9, 15, 1, 10, '折扣', 5, 0, 8, 0, 1, 15, 'http://atguigu190830.oss-cn-shenzhen.aliyuncs.com/20200719/1c1516b1baf84d508d883916074a653f.png');
INSERT INTO `t_return` VALUES (10, 16, 0, 10, '以身相许', 5, NULL, 8, 0, NULL, 15, NULL);
INSERT INTO `t_return` VALUES (11, 38, 0, 10, '121', 8, 1, 4, 0, 1, 16, 'http://atguigu190830.oss-cn-shenzhen.aliyuncs.com/20201013/6a37e17ab20e4976bc9aa847828a7a24.png');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (2, 'PM - 项目经理');
INSERT INTO `t_role` VALUES (3, 'SE - 软件工程师');
INSERT INTO `t_role` VALUES (5, 'PG - 程序员');
INSERT INTO `t_role` VALUES (6, 'TL - 组长');
INSERT INTO `t_role` VALUES (7, 'GL - 组长');
INSERT INTO `t_role` VALUES (8, 'QA - 品质保证');
INSERT INTO `t_role` VALUES (9, 'QC - 品质控制');
INSERT INTO `t_role` VALUES (10, 'SA - 软件架构师');
INSERT INTO `t_role` VALUES (11, 'CMO / CMS - 配置管理员');

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_tag
-- ----------------------------

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES (1, '科技', '开启智慧生活');
INSERT INTO `t_type` VALUES (2, '设计', '创建改变未来');
INSERT INTO `t_type` VALUES (3, '农业', '网罗天下肥美');
INSERT INTO `t_type` VALUES (4, '公益', '汇集点点爱心');

SET FOREIGN_KEY_CHECKS = 1;
