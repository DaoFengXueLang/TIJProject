/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : om

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2019-10-15 20:09:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`aid`),
  KEY `article_ibfk_1` (`uid`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('2', '9', '缺血性脑卒中预后好不好？注意这些影像表现', '0', '2018-11-20 18:50:51', '<p><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/3c/pcmoren_wu_org.png\" alt=\"[污]\" data-w-e=\"1\"><br></p><p>哈哈哈</p><p><img src=\"http://[2001:da8:4001:3::36:c27c]:8080/OnlineMedical/file/images/b659b79d-8163-4fac-8f97-f538f9e2967c.png\" style=\"max-width:100%;\"><br></p>');
INSERT INTO `article` VALUES ('3', '8', '昏迷有多少种鉴别诊断？ 26 种都不止！', '1', '2018-11-21 18:49:14', '<p><img src=\"http://[2001:da8:4001:3::36:c27c]:8080/OnlineMedical/file/images/52234d8d-7cfc-43ba-bbcf-7a6b886a7d6d.png\" style=\"max-width:100%;\"><br></p><p>123</p>');
INSERT INTO `article` VALUES ('5', '17', '流感重症、危重症医疗救治要点', '0', '2018-11-26 22:04:17', '<p>我要添加图片</p><p><img src=\"http://[2001:da8:4001:3::36:c27c]:8080/OnlineMedical/file/images/b3e5e96d-2d28-4635-b47e-844016133419.jpg\" style=\"max-width:100%;\"></p><p>成功了吗？</p>');
INSERT INTO `article` VALUES ('6', '17', '临床须知：抗抑郁药物的停药症状', '1', '2018-11-27 14:35:46', '<p><img src=\"http://[2001:da8:4001:3::36:c27c]:8080/OnlineMedical/file/images/56fa7596-4587-4115-8346-6ac704ce5bff.jpg\" style=\"max-width:100%;\"></p><p>吕忠民的知识共享</p>');
INSERT INTO `article` VALUES ('7', '17', '眼底血管造影前后，二甲双胍停不停？', '1', '2018-11-27 15:03:50', '最近，身边有糖尿病患者需做荧光素钠眼底造影检查，而该患者正在服用二甲双胍控制血糖。问题来了，患者吃的二甲双胍，需不需要停药？\n\n眼底血管造影剂\n\n忽然想起在内分泌时间曾拜读过吴川杰医师的一篇文章 ，连忙翻来复习。\n\n但文章主要关注到的是碘造影剂在使用二甲双胍的患者中的安全性。查阅文章中提到的 2011 版欧洲泌尿放射学会造影剂相关肾病指南，发现指南仅仅探讨了 碘造影剂和钆类造影剂。这都并非眼底血管造影所使用的造影剂。\n\n糖尿病患者常用的眼底血管造影，主要包括静脉注射荧光素钠眼底血管造影（FFA）及吲哚青绿血管造影（ICGA）。前者对对视网膜血管疾患和视网膜色素上皮病变显示重要的临床价值，后者则用于脉络膜相关疾病的评价。\n\n因此，荧光素钠和吲哚青绿是常用的眼底血管造影剂。那么，眼底血管造影前后，造影剂肾病（CIN）会不会找上门，如何处理好「棘手」的二甲双胍？\n\n从药代动力学看眼底造影剂的肾脏安全性\n\n1. 碘造影剂\n\n碘造影剂是大分子物质，使用后部分患者可能会发生肾损害，即 CIN，而二甲双胍在肾损害时增加乳酸酸中毒的发生风险，这在吴川杰医师的文章中已有详述。其机制与碘造影剂相对较高的渗透压和粘滞性有关。\n\n2. 荧光素钠\n\n荧光素钠是一种水溶性有机分子，不会引起较高的渗透压。虽然主要经肾脏排泄，但 60% 与血浆蛋白结合，约 20% 呈游离状态而发挥作用。\n\n它在人体不参与代谢，进入人体后 24 小时内即清除。而且，造影中荧光素钠的使用剂量较碘造影剂低。理论上，荧光素钠引起 CIN 的风险极低。\n\n3.&nbsp; 吲哚青绿\n\n吲哚青绿静脉注入体内后，立刻和血浆蛋白结合，随血循环迅速分布于全身血管内，高效率、选择地被肝细胞摄取，又从肝细胞以游离形式排泄到胆汁中，经胆道入肠，随粪便排出体外。\n\n正常人静注 20 分钟后约有 97% 从血中排出，无肠肝循环、不从肾等其它肝外脏器排泄。这么一看，吲哚青绿引起 CIN 的可能性也很小。\n\n临床研究：眼底造影剂的 CIN 风险极低\n\n研究表明，经历心导管术造影和 CT 增强扫描的患者中，分别有 5.2～33% 和 4～12% 的患者发生了 CIN。而韩国一项回顾性研究纳入 160 例患者，对比进行 FFA 后 CIN 的发生情况。\n\n结果总体上，FFA 后患者血肌酐（Scr）和估算肾小球滤过率（eGFR）无明显变化；即使在合并糖尿病肾病或慢性肾脏病的患者中，FFA 后 Scr 和 eGFR 也无明显变化。仅有 2 例患者（1.3%）在 FFA 后发生了 CIN，10 天内这 2 例患者的 Scr 水平恢复正常。\n\n在关于荧光素钠不良反应的文献中，均未提到肾脏的不良反应。\n\nJunhui Du 等人在 2017 年 6 月的《CHINESE MEDICAL SCIENCES JOURNAL》发表文章，总结了文献中荧光素钠的不良反应 (表 1)。<br>');
INSERT INTO `article` VALUES ('9', '6', '常见慢性气道疾病中大环内酯类抗菌药物怎么用？指南告诉你。', '1', '2019-03-24 16:53:04', '自从日本上世纪 80 年代发现大环内酯类用于治疗弥漫性泛细支气管炎取得良好的效果后，大环内酯类不依赖其抗菌作用的抗炎及免疫抑制效应就有了越来越多的研究，这对于常见的慢性呼吸系统疾病如慢性阻塞性疾病及支气管扩张等有重要或潜在的价值。&nbsp;<div>&nbsp;1. 大环内酯类抗菌药物 [1] 包括哪些？&nbsp;</div><div>&nbsp;大环内酯类按化学结构，常见的大环内酯类抗生素有：</div><div>&nbsp;(1)12 元环大环内酯类，如酒霉素等；&nbsp;</div><div>&nbsp;(2)14 元环大环内酯类，包括红霉素、罗红霉素、克拉霉素、地红霉素等；&nbsp;</div><div>&nbsp;(3)15 元环大环内酯类，以半合成的阿奇霉素为代表药物；\r\n&nbsp;</div><div>(4)16 元环大环内酯类，包括螺旋霉素、乙酰螺旋霉素、麦迪霉素、交沙霉素、吉他霉素等。\r\n\r\n其中的 14 元环、15 元环大环内酯类具有抗菌外作用。&nbsp;\r\n</div><div>2. 大环内酯类的抗菌外作用机制 [1]\r\n\r\n主要包括以下五个方面：&nbsp;</div><div>（1）抗炎效应：大环内酯类可抑制炎性细胞及其细胞因子和炎性介质，从而发挥抗炎作用；&nbsp;\r\n</div><div>（2）调节气道分泌：气道黏液高分泌是多种慢性气道疾病的重要特征，可导致气流受限、纤毛黏液转运功能降低及反复的呼吸道感染；体内外试验均证实大环内酯类可以抑制黏液高分泌；\r\n&nbsp;</div><div>（3）免疫调节相关抗微生物效应：大环内酯类即使在 MIC 以下仍能干扰细菌蛋白合成，且对大环内酯类耐药的铜绿假单胞菌也同样具有此活性，表明此类药物的抗微生物效应并非依赖其直接的抗菌活性，而是与其免疫调节作用有关，是一种间接效应；&nbsp;\r\n</div><div>（4）激素节省效应：大环内酯类能减少激素依赖或抵抗性哮喘激素的用量，减轻激素的不良反应。大环内酯类还可以部分促进慢阻肺对糖皮质激素的敏感性，也可恢复吸烟患者的激素敏感性；&nbsp;\r\n</div><div>（5）抗病毒效应：多项研究显示，大环内酯类对鼻病毒和流感病毒感染的动物模型有治疗作用，但其确切的临床意义尚需进一步研究。\r\n&nbsp;</div><div>3. 大环内酯类在慢性阻塞性肺疾病中的应用\r\n&nbsp;</div><div>慢性阻塞性肺疾病是一种常见的呼吸系统疾病，近日我国学者完成的大规模人群研究 [2] 显示，我国慢性阻塞性肺疾病（COPD）患者人数为 9990 万人，约 1 亿人，已经成为与高血压、糖尿病「等量齐观」的慢性疾病，构成重大疾病负担。\r\n\r\n慢阻肺患者每年发生约 0.5～3.5 次的急性加重，反复急性加重则会加速肺功能的下降，还是导致患者死亡的重要因素，因此预防急性加重是 COPD 治疗的一个重要目标。\r\n\r\n降低慢阻肺急性加重的干预措施有多种，包括药物预防及非药物预防，《2019 年 GOLD 慢性阻塞性肺疾病全球倡议：COPD 诊断、治疗与预防全球策略》提出的干预措施如下图所示。\r\n\r\nGOLD 指南在抗感染药物类的干预措施中列出了长期使用大环内酯类。</div><p><img src=\"http://[2001:da8:4001:3::36:c27c]:8080/OnlineMedical/file/images/8406d6fc-e034-4e61-975d-bd7b55bf9494.png\" style=\"max-width:100%;\"></p>');
INSERT INTO `article` VALUES ('12', '6', '有人了解循环内皮细胞么？', '0', '2019-03-24 22:33:15', '<p>本人实验小白，查了一些关于循环内皮细胞的文献，大多都是用流氏对其进行检测，用到的是CD146-PE 单抗和CD45-PE 单抗。如果我还要检测循环内皮细胞的细胞因子呢？那该怎么办？&nbsp; 求解答！<br></p>');
INSERT INTO `article` VALUES ('13', '6', '关于抗抑郁药物的「戒断反应」，能完全相信指南吗？', '1', '2019-03-25 16:43:44', '<div>门诊上经常有服用抗抑郁药物的患者复查时向医生反映，在减停药物的过程中感觉很不舒服，患者很担心自己吃药「上瘾了」，心理负担重，从而大大影响治疗的依从性。因此作为精神科医生，对于抗抑郁药物「戒断反应」的发生、持续时间和严重程度有一个全面的了解，是十分必要的。&nbsp;\n</div><div><br></div><div>典型的抗抑郁药物「戒断反应」包括焦虑、激越或过度兴奋、流感样症状、失眠、恶心、失衡及感觉障碍。除此之外，还报道有头晕、头痛、电击样感觉、腹泻、肌肉痉挛、震颤、幻觉等多样的不适。\n&nbsp;</div><div><br></div><div>大部分患者以躯体症状为主，但也有证据表明抗抑郁药物可引起躁狂、轻躁狂、情绪迟钝以及长期甚至永久的性功能障碍。这些症状通常在停药后几天内发生并持续数周，逐渐减少，但也有迟发和长期存在的报道。通常来说，抗抑郁药物引起的「戒断反应」是轻微的，且持续时间短，但有些患者即使停药缓慢，也会出现严重的「戒断反应」。\n\n美国临床指南中指出，抗抑郁药物的「戒断反应」</div><div><br></div><div>通常在 1-2 周内不用通过特殊处理就能缓解（APA，2010，p.39），而英国指南同样指出，抗抑郁药物的「戒断症状」通常是轻微的，有自限性的，通常在 1 周左右，但如果药物突然停止，「戒断反应」可能会很严重（NICE，2009，CG90，1.9.2.1）。有的指南中将抗抑郁药物的「戒断反应」与「停药综合征」混用。</div><div><br></div><div>&nbsp;为评估目前各临床指南的准确性及有效性，英国罗汉普敦大学的 James Davies 教授抗针对抑郁药戒断的发生率、持续时间和严重程度进行了一项系统回顾及 Meta 分析。</div><div><br></div><div>&nbsp;该研究共纳入 24 项研究结果，提供了 31 组调查数据，17 项研究结果与发病率有关，4 项与严重程度有关，10 项与持续时间有关，研究的数据库包括 MEDLINE、PubMed、PsycINFO 和谷歌学术搜索。检索时间截止至 2018 年 1 月。研究结果发表在 2018 年 9 月的 Addictive Behaviors 杂志上。&nbsp;\n</div><div><br></div><div><br></div><div>研究结果表明，抗抑郁药物「戒断反应」的发生率从 27% 到 86% 不等（平均值为 56%），其中大多数患者描述他们的「戒断反应」程度为中度或重度，近一半（46%）为非常严重。<span style=\"font-size: 0.8em;\">提供持续时间数据的 10 项研究中，有 7 项与指南相矛盾，很大一部分患者所经历「戒断反应」的时间远远超过 2 周，持续数月甚至更长时间者亦不罕见。&nbsp;</span></div><div><span style=\"font-size: 0.8em;\"><br></span></div><div><span style=\"font-size: 0.8em;\">&nbsp;针对这一结果，作者认为目前存在两大问题：&nbsp;\n</span></div><div><span style=\"font-size: 0.8em;\">（1）「停药综合征」与「戒断反应」的混用：「停药综合征」被描述为「自限性综合征」，包括轻微、短暂和 / 或更令人痛苦的症状，可导致社会功能受损，通常在 2 至 3 周内自然消退。经典的「戒断反应」是指由苯二氮卓类和镇静催眠药物产生的戒断症状，其发生率高，程度较重，持续时间长。\n\n目前的临床指南中，将抗抑郁药物的「戒断反应」或「停药综合征」描述为轻微的、有自限性的，但该 Meta 分析研究表明，抗抑郁药物的「戒断反应」并非轻微的，其高发生率、较重的严重程度及长的持续时间与指南所述相悖，故指南应规范术语应用，且有必要重新定义「抗抑郁药物的戒断反应」。\n&nbsp;</span></div><div><span style=\"font-size: 0.8em;\"><br></span></div><div><span style=\"font-size: 0.8em;\">（2）「戒断」与「复发」的误诊：此类的误诊的直接后果是，延长抗抑郁药物的使用时间，甚至增加抗抑郁药物的剂量。如果医生遵守目前通用的指南，会将许多服用抗抑郁药物的患者误诊为复发，进而恢复剂量、换药或增加剂量。因此，作者建议及时修正目前关于抗抑郁药物「戒断反应」的临床指南。\n\n最后作者指出，该 Meta 分析纳入的研究多为短期治疗，有的研究只进行了有限时间的随访；且均未涉及到「反安慰剂效应」；未考虑抗抑郁剂类型之间的差异；未排除抗抑郁药物成瘾的问题，故研究具有一定的局限性，今后有必要在抗抑郁药物「戒断反应」问题上开展更多临床研究，进行循证医学论证，指导临床工作。</span></div><div><span style=\"font-size: 0.8em;\"><br></span></div><div><span style=\"font-size: 0.8em;\">&nbsp;参考文献&nbsp;\n</span></div><div><span style=\"font-size: 0.8em;\">1.Davies J, Read J. A systematic review into the incidence, severity and duration of antidepressant withdrawal effects: Are guidelines evidence-based? Addictive behaviors. 2018.&nbsp;</span></div><div><span style=\"font-size: 0.8em;\">2. Centers for Disease Control and Prevention (August 2017). NCHS Data Brief No. 283: Antidepressant Use Among Persons Aged 12 and Over: United States, 2011–2014.&nbsp;</span></div><div><span style=\"font-size: 0.8em;\">3. Fava, G., Benasi, G., Lucente, M., Offidani, E., Cosci, F., &amp; Guidi, J. (2018). Withdrawal symptoms after Serotonin-Noradrenaline Reuptake Inhibitor discontinuation: Systematic review. Psychotherapy and Psychosomatics, 87, 195–203.&nbsp;</span></div><div><span style=\"font-size: 0.8em;\">4. Groot, P. C., &amp; Van Os, J. (2018). Antidepressant tapering strips to help people come off medication more safely. Psychosis, 10(2), 142–145.&nbsp;</span></div><div><span style=\"font-size: 0.8em;\">5. Hengartner, M. P., Angst, J., &amp; Rössler, W. (2018). Antidepressant use prospectively re-lates to a poorer long-term outcome of depression: Results from a prospective com-munity cohort study over 30 years. Psychotherapy and Psychosomatics, 87, 181–183.</span></div>');

-- ----------------------------
-- Table structure for cfile
-- ----------------------------
DROP TABLE IF EXISTS `cfile`;
CREATE TABLE `cfile` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `savepath` varchar(255) DEFAULT NULL,
  `isDirectory` tinyint(1) DEFAULT NULL,
  `isShared` tinyint(1) DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT NULL,
  `parentPath` int(11) DEFAULT NULL,
  `recoverPath` int(11) DEFAULT NULL,
  PRIMARY KEY (`fid`),
  KEY `cfile_ibfk_1` (`did`),
  KEY `cfile_ibfk_2` (`parentPath`),
  CONSTRAINT `cfile_ibfk_1` FOREIGN KEY (`did`) REFERENCES `doctor` (`did`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cfile_ibfk_2` FOREIGN KEY (`parentPath`) REFERENCES `cfile` (`fid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cfile
-- ----------------------------
INSERT INTO `cfile` VALUES ('1', null, 'root', null, null, null, '1', null, null, null, null);
INSERT INTO `cfile` VALUES ('2', null, '共享图片', null, null, null, '1', '1', null, '1', null);
INSERT INTO `cfile` VALUES ('3', null, '共享影音', null, null, null, '1', '1', null, '1', null);
INSERT INTO `cfile` VALUES ('4', null, '共享文档', null, null, null, '1', '1', null, '1', null);
INSERT INTO `cfile` VALUES ('5', null, '共享数据', null, null, null, '1', '1', null, '1', null);
INSERT INTO `cfile` VALUES ('6', null, '私密文件', null, null, null, '1', '1', null, '1', null);
INSERT INTO `cfile` VALUES ('7', null, '共享文件', null, null, null, null, null, null, null, null);
INSERT INTO `cfile` VALUES ('8', null, '回收站', null, null, null, null, null, null, null, null);
INSERT INTO `cfile` VALUES ('9', null, '图片', null, '2019-03-19 09:46:50', null, '1', '0', '0', '6', null);
INSERT INTO `cfile` VALUES ('10', null, '影音', null, '2019-03-19 09:46:49', null, '1', '0', '0', '6', null);
INSERT INTO `cfile` VALUES ('11', null, '文档', null, '2019-03-19 09:46:45', null, '1', '0', '0', '6', null);
INSERT INTO `cfile` VALUES ('12', null, '数据', null, '2019-03-19 09:46:39', null, '1', '0', '0', '6', null);
INSERT INTO `cfile` VALUES ('13', '17', '新建文件夹-954b439e-bbe5-45df-8139-ef0cd687faf0', null, '2018-11-26 16:14:46', null, '1', '1', '0', '2', null);
INSERT INTO `cfile` VALUES ('14', '17', '新建文件夹-646d3cf8-9ca7-4891-a315-c84c766aabe3', null, '2018-11-26 16:14:57', null, '1', '1', '0', '2', null);
INSERT INTO `cfile` VALUES ('16', '17', '新建文件夹-4bf3e153-3878-47a8-8ac3-42bdef0ad54e', null, '2018-11-26 16:16:19', null, '1', '1', '0', '3', null);
INSERT INTO `cfile` VALUES ('19', '18', '数据文件-sun', null, '2018-11-26 22:09:47', null, '1', '1', '0', '2', null);
INSERT INTO `cfile` VALUES ('20', '17', '原始精确度.PNG', '54756', '2018-11-27 11:02:50', '7316b712-3c53-4efc-8445-aa9709445062.PNG', '0', '1', '0', '2', null);
INSERT INTO `cfile` VALUES ('21', '17', 'OriImage.jpg', '20968', '2018-11-27 11:04:07', '0a00f467-d661-4fd6-b40e-c5be5ce3eb3b.jpg', '0', '1', '0', '2', null);
INSERT INTO `cfile` VALUES ('22', '18', '1.jpg', '257217', '2018-11-27 11:04:37', '757e0cf5-57fd-4ea8-9f85-a420cb81759c.jpg', '0', '1', '0', '2', null);
INSERT INTO `cfile` VALUES ('23', '17', '新建文件夹-e4b7de56-a2b4-4db2-ba29-cb8242bc4f0f', null, '2018-11-27 15:43:09', null, '1', '1', '0', '2', null);
INSERT INTO `cfile` VALUES ('26', '17', '美好事物.mp3', '3322943', '2018-11-27 15:44:41', '4507c5fa-74bd-48aa-9fca-2be804f979cd.mp3', '0', '1', '0', '3', '10');
INSERT INTO `cfile` VALUES ('28', '17', '新建文件夹-180707c6-bbc3-456b-9bf6-cc58bf9700cd', null, '2019-03-07 09:46:10', null, '1', '1', '0', '2', null);
INSERT INTO `cfile` VALUES ('29', '17', '新建文件夹-8eb86167-fc2a-4765-b551-a918f00ae27a', null, '2019-03-07 09:47:58', null, '1', '1', '0', '2', null);
INSERT INTO `cfile` VALUES ('30', '19', '虚拟机.png', '102295', '2019-03-07 10:00:03', '28da1ce0-7007-4d8c-981e-3a11ebf59f50.png', '0', '1', '0', '2', null);
INSERT INTO `cfile` VALUES ('31', '19', '新建文件夹-8e2410b0-bf05-4c41-b020-6e5d6db100c8', null, '2019-03-11 21:28:09', null, '1', '1', '0', '2', null);
INSERT INTO `cfile` VALUES ('32', '19', '学习.png', '311191', '2019-03-11 21:28:38', '8d67ba22-a22e-42d1-8fac-56f9666f6f83.png', '0', '1', '0', '19', null);
INSERT INTO `cfile` VALUES ('33', '17', '新建文件夹-a047cd1d-3125-4f4c-a616-18d26846d9c0', null, '2019-03-19 14:02:11', null, '1', '1', '0', '2', '9');
INSERT INTO `cfile` VALUES ('35', '17', '微信图片_20180630155954.jpg', '338387', '2019-03-19 17:28:50', 'bb80f53b-bb97-4a2f-9fd8-dd3da5c8bf91.jpg', '0', '1', '0', '2', '9');
INSERT INTO `cfile` VALUES ('37', '17', '新建文件夹-6038128e-cc9f-47c7-b835-28c1b1ccf213', null, '2019-03-19 19:33:34', null, '1', '1', '0', '8', '2');
INSERT INTO `cfile` VALUES ('38', '17', '图片.jpg', '152907', '2019-03-19 19:33:39', '325bad4f-053e-4664-8b6c-7e4631cbab55.jpg', '0', '1', '0', '9', null);
INSERT INTO `cfile` VALUES ('39', '17', '微信图片_20180630160020.jpg', '125411', '2019-03-19 19:43:21', '6672c7dd-6d69-40f2-91cd-5dda2eac3c5d.jpg', '0', '1', '0', '37', null);
INSERT INTO `cfile` VALUES ('40', '17', '赛尔网络下一代互联网创新项目2018年申报指南.pdf', '298297', '2019-03-19 19:55:37', '6fc444fb-3774-4b68-924b-aabe11882358.pdf', '0', '1', '0', '4', null);
INSERT INTO `cfile` VALUES ('41', '17', '文件夹1', null, '2019-03-20 13:16:35', null, '1', '1', '0', '8', '9');
INSERT INTO `cfile` VALUES ('42', '17', '新建文件夹-6fb4a567-c555-4588-9dda-919569d3163c', null, '2019-03-20 14:35:55', null, '1', '1', '0', '41', null);
INSERT INTO `cfile` VALUES ('45', '17', '文件夹2', null, '2019-03-20 16:28:04', null, '1', '1', '0', '9', null);
INSERT INTO `cfile` VALUES ('46', '17', '图片1', null, '2019-03-20 16:33:55', null, '1', '1', '0', '9', null);
INSERT INTO `cfile` VALUES ('47', '17', '实验图片', null, '2019-03-20 16:35:39', null, '1', '1', '0', '2', '9');
INSERT INTO `cfile` VALUES ('48', '17', '深度学习', null, '2019-03-20 16:40:59', null, '1', '1', '0', '46', null);
INSERT INTO `cfile` VALUES ('49', '17', '手术流程', null, '2019-03-24 22:36:34', null, '1', '1', '0', '10', null);
INSERT INTO `cfile` VALUES ('50', '17', '休闲音乐', null, '2019-03-24 22:36:55', null, '1', '1', '0', '10', null);
INSERT INTO `cfile` VALUES ('51', '17', 'text.png', '4434', '2019-03-24 22:38:36', 'ff45de38-f21b-406f-9d1e-d7fc4822d40c.png', '0', '1', '0', '41', null);
INSERT INTO `cfile` VALUES ('52', '17', 'movie.mp4', '318465', '2019-03-24 22:41:09', '0717ad56-d8f8-41fe-8c62-fbb165e87674.mp4', '0', '1', '0', '10', null);
INSERT INTO `cfile` VALUES ('53', '17', 'wenjianjia', null, '2019-03-25 17:24:10', null, '1', '1', '0', '2', null);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `aid` int(11) NOT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `comment_ibfk_1` (`uid`),
  KEY `comment_ibfk_2` (`aid`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`aid`) REFERENCES `article` (`aid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '8', '2019-03-12 22:06:08', '5', '写得好');
INSERT INTO `comment` VALUES ('2', '13', '2019-03-13 09:36:02', '5', 'GET，受教了');
INSERT INTO `comment` VALUES ('6', '6', '2019-03-15 10:32:03', '9', '添加评论');
INSERT INTO `comment` VALUES ('7', '6', '2019-03-15 10:32:05', '9', '评论内容');
INSERT INTO `comment` VALUES ('8', '17', '2019-03-20 10:43:57', '9', '图片显示有问题');
INSERT INTO `comment` VALUES ('11', '6', '2019-03-23 16:04:36', '7', '多谢指导');
INSERT INTO `comment` VALUES ('12', '6', '2019-03-23 16:07:49', '7', '再来一条');
INSERT INTO `comment` VALUES ('13', '6', '2019-03-23 16:08:52', '7', '第三次测试');
INSERT INTO `comment` VALUES ('14', '6', '2019-03-23 16:13:27', '7', '第四次提交');
INSERT INTO `comment` VALUES ('15', '6', '2019-03-23 16:14:48', '7', '第五次提交');
INSERT INTO `comment` VALUES ('16', '6', '2019-03-23 16:17:59', '7', '第六次提交');
INSERT INTO `comment` VALUES ('17', '6', '2019-03-23 16:18:30', '7', '第七次提交');
INSERT INTO `comment` VALUES ('18', '6', '2019-03-23 16:22:44', '7', '第八次提交');
INSERT INTO `comment` VALUES ('19', '6', '2019-03-23 16:25:06', '7', '第九次提交');
INSERT INTO `comment` VALUES ('20', '6', '2019-03-23 16:26:19', '7', '第十次提交');
INSERT INTO `comment` VALUES ('21', '6', '2019-03-23 16:28:02', '7', '十一次提交');
INSERT INTO `comment` VALUES ('22', '6', '2019-03-23 16:31:43', '7', '十二次提交');
INSERT INTO `comment` VALUES ('23', '6', '2019-03-23 16:33:04', '7', '十三次提交');
INSERT INTO `comment` VALUES ('24', '6', '2019-03-23 16:34:27', '7', '十四次提交');
INSERT INTO `comment` VALUES ('25', '6', '2019-03-23 16:36:24', '7', '十五次提交');
INSERT INTO `comment` VALUES ('26', '6', '2019-03-23 16:39:32', '7', '十六次提交');
INSERT INTO `comment` VALUES ('27', '6', '2019-03-23 16:39:57', '7', '十七次提交');
INSERT INTO `comment` VALUES ('28', '6', '2019-03-23 16:41:41', '7', '十八次提交');
INSERT INTO `comment` VALUES ('29', '6', '2019-03-23 16:43:30', '7', '十九次提交');
INSERT INTO `comment` VALUES ('32', '6', '2019-03-24 22:32:30', '12', '好好好');
INSERT INTO `comment` VALUES ('33', '4', '2019-03-25 16:44:41', '13', '文章不错啊');

-- ----------------------------
-- Table structure for dandp
-- ----------------------------
DROP TABLE IF EXISTS `dandp`;
CREATE TABLE `dandp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `part` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `dandp_ibfk_1` (`pid`),
  KEY `dandp_ibfk_2` (`did`),
  CONSTRAINT `dandp_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `patient` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `dandp_ibfk_2` FOREIGN KEY (`did`) REFERENCES `doctor` (`did`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dandp
-- ----------------------------
INSERT INTO `dandp` VALUES ('38', '8', '17', '2018-11-27 15:40:44', '8', '手臂受伤，烫伤');
INSERT INTO `dandp` VALUES ('41', '6', '19', '2019-03-24 16:50:17', '4', '落枕，脖子疼，伴有针刺感，疼痛难受，浑身酸痛');

-- ----------------------------
-- Table structure for doctor
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `did` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `title` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`did`),
  CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`did`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES ('17', '吕忠民', '1', '1962-05-19', '4', '2', '吕忠民，儿科主任，副主任医师，擅长小儿肾病、新生儿疾病、小儿咳喘、小儿腹泻、婴幼儿营养与生长发育、脑瘫的早期诊断与治疗、多发性抽动等。1982年毕业于广东医学院医疗系。从事儿科临床工作24年，有丰富的临床工作经验和扎实的理论基础。1987年在广东医附院儿科进修，1996年和1998年在北京医科大附一院参加全国儿科高级研修班和全国儿科肾脏病专修班学习。熟悉儿科各种常见病和多发病的诊治，成功抢救了许多急危重症的小患者，尤其在小儿肾脏疾病的诊断、鉴别诊断及治疗方面有较高的造诣。近年来致力于儿童发育行为的研究，先后多次到复旦大学第二医科大附属新华医院和上海儿童医疗中心、中南大学湘雅二医院等地学习。1996年开办了儿童保健门诊，开展了0~3岁散居儿童的系统管理、佝偻病和营养性贫血的早期防治、小婴儿听力检查、学龄前儿童视力检查、脑瘫的早期诊断与治疗、高危儿的早期干预等服务项目，为数千名宝宝的生长发育起了很好的保障和促进作用。有10余篇论文在国内各级杂志上发表，现任中华医学会湛江市儿科分会副主任委员、围产医学分会委员、湛江市医疗事故鉴定委员会专家库成员和湛江市科技评估专家。');
INSERT INTO `doctor` VALUES ('18', '孙学工', '1', '1970-08-21', '1', '2', '孙学工，副主任医师，1992年毕业于皖南医学院，曾在解放军总医院进修，发表专业论文多篇。主要擅长普外疾病的诊治，在腹腔镜治疗普外疾病方面积累了较为丰富的临床经验。');
INSERT INTO `doctor` VALUES ('19', '谢爱玲', '0', '1962-04-20', '2', '3', '谢爱玲，主任医师 、教授 、硕士研究生导师，毕业于三峡医学院。从事妇产科临床、教学、科研工作三十五年，有丰富的临床经验。曾作为国家妇产科专家援外四年。精湛的妇科手术在南宁市享有盛名。\r\n职称：主任医师 教授 硕士研究生导师\r\n擅长：不孕症、肿瘤的诊断治疗及腹腔镜、宫腔镜微创的手术及各种大型手术，获省级科技成果奖一项妇科手术的精湛在南宁市享有盛名 。');
INSERT INTO `doctor` VALUES ('20', '陈长根', '1', '1983-03-09', '5', '3', '陈长根,现任兰州军康医院耳鼻咽喉科主任、北京畅听耳病医学研究院研究员。\r\n曾在北京医科大学进修深造,从事耳鼻喉科临床研究工作多年,积累了丰富的临床工作经验.在国家级医学刊物上发表论文十余篇.曾先后于2008年、 2010年两次前往美国宾夕法尼亚大学医学院进行学习深造,精通最新的耳鼻喉微创诊疗理论基础和临床手术操作.2010年获\"全国卫生系统先进工作者\"称号.\r\n');
INSERT INTO `doctor` VALUES ('21', '王豫平', '0', '1964-06-04', '7', '3', '主任医师，省级知名专家。\r\n专长：皮肤组织病理学的诊断（皮肤肿瘤、大疱性皮肤病等），银屑病、皮炎湿疹、荨麻疹、白癜风及痤疮等常见皮肤病的诊断治疗，结缔组织病（红斑狼疮、皮肌炎、硬皮病等）的诊断治疗。');
INSERT INTO `doctor` VALUES ('22', '李鹏程', '1', '1978-07-14', '11', '0', '李鹏程，整形外科博士，博士后，师从我国著名整形外科专家李森恺教授。毕业于清华大学北京协和医学院。系中国医师协会整形医师分会瘢痕分会全国委员。自2002年开始从事整形美容，主要擅长微创面部美容、瘢痕整形修复。曾赴韩国延世大学医学院考察学习整形美容，主要研究方向是注射美容和组织移植。目前已在国内外各类专业杂志发表学术论文35篇，其中SCI论文3篇，参加编写专著5部。');
INSERT INTO `doctor` VALUES ('23', '薛建平', '1', '1979-02-18', '3', '3', '毕业于同济医科大学，从事泌尿外科临床和科研工作30余年，具有扎实的医学理论知识和丰富的临床经验。数次应邀参加国际性泌尿、男科学术交流会议。对国内外生殖医学新进展、新动态把握准确，熟悉各类泌尿外科疾病的病理基础，诊断治疗和临床操作，技术全面。尤其擅长运用国内外先进的医学技术和设备，科学诊疗各类前列腺病疾、性功能障碍、生殖感染等疾病。其精湛的的医术获得患者和家属的一致好评。');
INSERT INTO `doctor` VALUES ('24', '刘中勇', '1', '1973-04-12', '0', '3', '刘中勇，男，主任医师，教授，江西中医学院附属医院大内科主任兼副院长，硕士研究生导师，1962年出生，江西省高等学校中青年骨干教师。现任江西中医学院附属医院副院长兼大内科主任、江西省中西医结合心血管专业委员会副主任委员。从事内科临床医疗、教学、科研工作近20年。尤其擅长心脑血管内科及危急重症临床医疗和教学。');
INSERT INTO `doctor` VALUES ('25', '田登汉', '1', '1985-01-08', '3', '2', '田登汉，北京大学吴阶平泌尿外科医学中心特聘专家，副主任医师，副教授、男科专家。他是我国临床研究应用不开刀非手术不出血治疗前列腺增生的创始人。');
INSERT INTO `doctor` VALUES ('26', '张贵昌 ', '1', '1977-07-12', '0', '2', '张贵昌现任急诊科主任、深圳市急诊专业委员会委员、深圳市危重病专业委员会委员、深圳市医疗事故鉴定委员会专案库专家，对心血管病的诊治有较深的研究，尤其对心肺脑复苏、危重疑难疾病的救治有丰富的经验，是医院急救专业学科带头人。');
INSERT INTO `doctor` VALUES ('27', '黄宇烽', '1', '1965-01-05', '3', '1', '黄宇烽，主治医师。博士生导师，南京军区南京总医院全军临床医学检验中心主任、教授、解放军检验医学研究所所长、博士生导师、中华男科学杂志主编、中华医学会男科学分会副主任委员、江苏省医学会男科学分会主任委员。擅长运用中西医结合疗法治疗前列腺炎、前列腺增生、生殖功能障碍、男性不育症等。');
INSERT INTO `doctor` VALUES ('28', '袁亦铭', '1', '1987-07-17', '3', '0', '袁亦铭，男，主治医师。中华医学会男科学分会青年委员会“男性不育诊断治疗全国协作组”成员，北京市医学会男科学分会青年委员。主要研究男性勃起功能障碍、男性射精功能障碍、男性不育症、性腺功能异常、前列腺疾病等泌尿外科男科学相关疾病。发表相关论文数十篇，参编著作7部,主编1部。专业特长男性性功能障碍、男性不育症、前列腺疾病等的诊治。擅长显微下输精管吻合术、显微镜下输精管附睾吻合术、显微镜下精索静脉结扎及各种男科常规手术。');
INSERT INTO `doctor` VALUES ('29', '臧静', '0', '1986-11-04', '0', '1', '熟练掌握内科常见多发病的诊断和治疗，尤其是擅长血液内科常见病多发病的诊断及治疗。');
INSERT INTO `doctor` VALUES ('30', '梁永杰', '1', '1982-01-05', '0', '0', '梁永杰，博士、同济大学附属东方医院呼吸内科主任、主任医师、教授、博士生导师上海医科大学研究生院毕业。');
INSERT INTO `doctor` VALUES ('31', '付师亭', '0', '1965-11-15', '4', '0', '付师亭，付师亭教授是我国著名的儿科专家，华西医科大学一级教授，第八届全国人大代表，北京天使阳光儿童医学研究院荣誉院长，毕生致力于我国儿童发育行为疾病科研工作，先后出席过国内外数十次学术会议，帮助无数贫困患儿康复直到踏入社会。现坐诊于西南儿童医院，是成都西南儿童医院的权威专家。');
INSERT INTO `doctor` VALUES ('32', '徐荣谦', '1', '1968-02-13', '4', '3', '徐荣谦，汉族，吉林省蛟河人，毕业于北京中医药大学。东直门医院儿科主任医师，教授，也是北京惠民中医儿童医院特聘专家。');
INSERT INTO `doctor` VALUES ('33', '周兆平', '1', '1987-02-04', '1', '0', '周兆平，男，复旦大学附属华山医院执业医师。');
INSERT INTO `doctor` VALUES ('34', '蔡振荣', '1', '1999-06-09', '1', '1', '1992年毕业于上海医科大学临床专业。1992年至今在南汇县中心医院内科工作，任主治医师。');
INSERT INTO `doctor` VALUES ('35', '申昆玲', '0', '1975-06-19', '4', '1', '申昆玲，医学博士，教授、博士生导师、主任医师。现任中华医学会儿科学分会主任委员、国际儿科学会常务委员、亚洲儿科学会常务委员、中国医师协会儿科医师分会副会长、中华医学会儿科学分会呼吸专业组组长、卫生部第十届药典委员会委员、中国医师协会呼吸医师分会常务委员、中国医师协会理事、北京女医师协会副会长、北京医师协会儿科专业专家委员会副主任委员、国家呼吸系统疾病临床医学研究中心主任等职。\r\n');
INSERT INTO `doctor` VALUES ('36', '张静媛', '0', '1985-02-19', '2', '0', '张静媛，从事妇产科临床，教学，科研工作30余年，有丰富的妇产科临床工作和教学经验，熟练掌握妇产科常见病，多发病，疑难危重病和妇科肿瘤的诊治。\r\n');
INSERT INTO `doctor` VALUES ('37', '王恩光 ', '0', '1984-11-05', '2', '1', '曾多次被评为院内的先进工作者及学雷锋先进个人，1989年被选为铜川市青联委员，1991年当选铜川市第十一届人大代表，1991年被省卫生厅评为支援农村卫生建设先进个人。1999年被西安医科聘为副教授。曾多次被评为西安医科大学教学基地带教先进个人。');
INSERT INTO `doctor` VALUES ('38', '杨群', '1', '1982-06-15', '2', '2', '从事妇产科临床工作近20年。擅长诊治各种生殖器官炎症、内分泌疾病、不孕症、子宫内膜异位症，妇科肿瘤及处理各种难产，产科并发症、合并症。熟练开展腹式全子宫切除术、阴式全子宫切除术、腹腔镜下全子宫切除术。');
INSERT INTO `doctor` VALUES ('39', '陶磊', '1', '1985-05-06', '5', '0', '陶磊，男，医师，副教授，获复旦大学临床医学博士学位。曾赴法国巴黎六大进行博士后学习深造，是中华医学会耳鼻咽喉-头颈外科学会会员、法国耳鼻咽喉-头颈外科学会（La SFORL）会员，是第三届“复旦大学十大医务青年”称号的获得者。致力从事耳鼻咽喉科临床医疗、科研工作多年，能熟练诊断治疗耳鼻咽喉科各种疾病，对包括喉显微手术、咽喉部肿瘤手术、涎腺肿瘤手术等在内的头颈部良、恶性肿瘤病例的诊疗有较丰富的经验。已在国内外多种杂志上发表专业论文二十余篇（其中SCI收录6篇）。');
INSERT INTO `doctor` VALUES ('40', '韩朝', '0', '1985-09-03', '5', '2', '韩朝，女，副主任医师，擅长于耳科疾病尤其是耳鸣、眩晕、耳聋的诊治，熟悉耳鼻咽喉头颈外科常见的诊治，擅长于中耳炎等耳科相关各类手术。');
INSERT INTO `doctor` VALUES ('41', '王德辉', '1', '1986-06-03', '5', '1', '王德辉，男，主任医师，教授。多年来，完成了鼻内窥镜手术四千余例，无一例严重手术并发症出现。为进一步拓展鼻内窥镜手术范围，发挥鼻内窥镜的优势，进一步提高眼耳鼻喉科医院鼻眼、鼻颅底相关外科的医疗水平，积极探索并开展了鼻内窥镜下鼻腔泪囊吻合术、鼻内窥镜下视神经减压术、鼻内窥镜下眶减压术、鼻内窥镜下鼻颅底区多种疾病的手术。手术成功率明显提高，使上海地区在鼻内镜外科领域处于全国领先水平。特长多种鼻部、鼻眼相关和鼻颅相关疾病的药物及鼻内镜手术治疗，包括鼻炎、鼻窦炎、鼻息肉、过敏性鼻炎、鼻部囊肿、鼻中隔弯曲，鼻内翻性乳头状瘤等良、恶性肿瘤、慢性泪囊炎、外伤后失明、突眼、脑脊液鼻窦及颅底区肿瘤等。');
INSERT INTO `doctor` VALUES ('42', '粟周海', '1', '1976-05-04', '15', '0', '贵州医科大学外聘副教授，中华医学会放射学分会传染病放射学专业委员会委员，贵州省医学会放射学分会及影像技术学分会委员，贵州省评标专家库专家。');
INSERT INTO `doctor` VALUES ('43', '陈增', '1', '1977-06-14', '15', '1', '陈增，影像科主治医师，从事影像工作3多年，曾在贵阳医学院附属医院介入科进修临床介入，在《介入放射学》等省级以上杂志发表论文6篇。黔东南州放射学分会常委。擅长介入诊疗技术。');
INSERT INTO `doctor` VALUES ('44', '商观锋', '1', '1983-12-06', '15', '2', '贵阳医学院影像医学与核医学专业硕士，从事医学影像工作近20年，先后在山东大学齐鲁医院、山东省胸科医院、贵阳医学院附属医院、贵州省肿瘤医院进修学习，发表学术论文3篇，参与贵州省科技厅、黔东南州科技局多项科技成果奖的设计及研究。');
INSERT INTO `doctor` VALUES ('45', '黄贵', '1', '1983-06-13', '15', '3', '黄贵，影像科副主任、主治医师，从事影像工作10多年，曾在贵阳医学院附属医院、贵州省人民医院进修教学及CT，在省级以上杂志发表论文多篇。黔东南州放射学分会常委兼副秘书长。擅长CT诊断。');
INSERT INTO `doctor` VALUES ('46', '沈朋', '0', '1980-07-02', '6', '3', '沈朋，女，主任医师，化疗科（肿瘤内科）副主任，硕士，美国临床肿瘤学会（ASCO）会员，中国国家自然基金及教育部科技进步奖评审专家，浙江省抗癌协会抗癌药物专业委员会副主委，擅长治疗：乳腺癌内科治疗，浙江大学医学院硕士毕业。在浙医一院工作二十余年。曾在美国creighton大学肿瘤中心进行肿瘤基础及临床研究一年。获全国GCP培训获临床试验资格证书。研究方向在肿瘤内科领域开展多项具有开拓性意义的临床研究。主要研究方向为乳腺癌、抗肿瘤药物的多药耐药机制，及肿瘤的蛋白质组学、代谢组学等的研究。近年SCI收录的论文10余篇，先后共主持国家级、省部级及厅局级课题10项。');
INSERT INTO `doctor` VALUES ('47', '方维佳', '1', '1985-07-05', '6', '2', '方维佳，男，副主任医师，硕士，擅长治疗：消化道肿瘤。 1998年浙江医科大学临床本科毕业并进入浙大一院工作，医学博士，导师为中国工程院院士郑树森教授。2011年9月获香港大学郑裕彤博士奖助金并于同年赴香港玛丽医院临床肿瘤科进修。2012年9月作为浙江省国际交流合作项目首批赴美访问学者，赴美国印第安纳州医疗集团SIMON肿瘤中心临床进修。');
INSERT INTO `doctor` VALUES ('48', '邓晶', '0', '1988-08-15', '6', '1', '邓晶，女，主治医师，中国抗癌协会临床肿瘤学协作委员会（CSCO）委员。浙江大学肿瘤学博士，从事临床肿瘤工作16年，获全国GCP培训临床试验资格证书。近年发表SCI收录论文10余篇，主持及参与国家级，省厅级课题多项。');
INSERT INTO `doctor` VALUES ('49', '陈彦青', '0', '1989-05-01', '14', '0', '陈彦青,女,医师,福建医科大学副教授,福建省立医院麻醉科主任,福建医科大学省立临床学院麻醉教研室主任,硕士生导师,福建省保健委员会保健专家。毕业于福建医科大学。长期从事临床麻醉与镇痛治疗及临床重症患者的抢救。');
INSERT INTO `doctor` VALUES ('50', '徐农', '1', '1990-06-09', '6', '0', '徐农，男，医师， 浙江大学医学院附属第一医院肿瘤内科主任，中国抗癌协会临床肿瘤学协作委员会(CSCO) 委员，浙江省抗癌协会肿瘤化疗专业委员会副主任委员，中国生物医学工程学会肿瘤分子靶向治疗专业委员会（CAMO）常委，美国临床肿瘤学会（ASCO）会员。欧洲肿瘤内科学会（ESMO）会员。');
INSERT INTO `doctor` VALUES ('51', '郭向阳', '1', '1976-07-20', '14', '1', '郭向阳，男，主治医师，教授，麻醉科科主任，博士生导师。主要研究方向：临床麻醉及镇痛、麻醉药理、围术期重要脏器保护、恶性高热基础与临床研究。');
INSERT INTO `doctor` VALUES ('52', '刘荣国', '1', '1966-05-18', '14', '2', '刘荣国,男,副主任医师,副教授,医学博士,199年毕业于中南大学湘雅医学院,同年分配至山东大学齐鲁医院工作。2001年获山东大学硕士学位,2004年获中国协和医科大学博士学位。');
INSERT INTO `doctor` VALUES ('53', '崔永武', '1', '1979-05-22', '14', '3', '崔永武，男，主任医师，刊物上发表研究论文四十余篇，其中二篇获福建省卫生厅“省医药卫生科技进步二等奖”，还先后二次代表中国参加援外医疗队，分别赴塞内加尔和博茨瓦纳共和国为非洲人民服务。擅长麻醉、复苏及镇痛等专业技术。');
INSERT INTO `doctor` VALUES ('54', '杨淑梅', '0', '1965-03-05', '7', '0', '杨淑梅教授 擅长治疗各种皮肤病，从事皮肤科临床诊治工作30余年，致力于传统中医药结合现代高新技术治疗皮肤科疾病的研究，对中西医结合治疗白癜风、牛皮癣、脱发、黄褐斑、疤痕疙瘩、扁平疣、真菌病等各种皮肤病有独特造诣。');
INSERT INTO `doctor` VALUES ('55', '钱文燕', '0', '1956-05-20', '7', '1', '钱文燕教教授是北京美迪中医皮肤病医院专家，北京中医药大学教授。毕业于北京中医学院，师从中医医院皮肤科师承中医泰斗、全国著名皮外科专家赵炳南先生20余年，深受其真传。尤其擅长治各种急性热性红斑性皮肤病，是著名的中西医结合皮肤病专家。');
INSERT INTO `doctor` VALUES ('56', '李长恒', '1', '1960-12-03', '7', '2', '李长恒上海华山医院皮肤科主任，上海皮肤疾病医院(武夷路,保德路)院长， 擅长治疗各类皮肤病疑难杂症。中国皮肤科杰出贡献奖获得者，上海皮肤科诊疗界的泰斗。具有丰富的临床经验，高超的医疗技术，痤疮（青春痘）、银屑病（牛皮癣）、白癜风、皮炎、湿疹、荨麻疹、鱼鳞病、腋臭、毛囊炎、脱发（斑秃）、灰指甲、脚气、鸡眼、雀斑（黄褐斑）、硬皮病、皮肤瘙痒、脱毛、扁平疣、带状疱疹、疥疮、疤痕、癣、以及性传播疾病有梅毒、尖锐湿疣、淋病、非淋菌性尿道炎、酒渣鼻等方面有很高的造诣。近年来，李长恒教授致力于医学美容研究，是国内著名的皮肤病病学和美容学专家。');
INSERT INTO `doctor` VALUES ('57', '刘青', '0', '1977-11-14', '13', '0', '擅长黏膜疾病（黏膜溃烂，疼痛，干燥，味觉异常，颜色改变等，往往伴有全身系统疾病）的诊断和综合治疗。');
INSERT INTO `doctor` VALUES ('58', '孟国林', '0', '1974-06-10', '13', '1', '擅长黏膜疾病（黏膜溃烂，疼痛，干燥，味觉异常，颜色改变等，往往伴有全身系统疾病）的诊断和综合治疗。');
INSERT INTO `doctor` VALUES ('59', '杨莉洁', '0', '1989-10-10', '13', '2', '擅长黏膜疾病（黏膜溃烂，疼痛，干燥，味觉异常，颜色改变等，往往伴有全身系统疾病）的诊断和综合治疗。');
INSERT INTO `doctor` VALUES ('60', '陶惠人', '0', '1983-09-15', '13', '3', '擅长黏膜疾病（黏膜溃烂，疼痛，干燥，味觉异常，颜色改变等，往往伴有全身系统疾病）的诊断和综合治疗。');
INSERT INTO `doctor` VALUES ('61', '刘燕池', '-1', '1965-01-06', '8', '0', '全国名老中医药专家。从事医疗、教学、科研五十年，主治肝病、肾病、冠心病、高血压、胃肠病、糖尿病、咳喘、过敏性疾病、胆囊炎、胆结石、慢性咽炎、鼻炎、疲劳综合症、肿瘤术后调治、性功能障碍、不孕不育症、子宫内膜异位、白塞氏病、乳腺病、慢性盆腔炎、顽固痤疮和湿疹等内、妇、皮科病症，以及各种虚证的调理，疗效卓著，声誉颇高。');
INSERT INTO `doctor` VALUES ('62', '杨守德', '1', '1952-12-05', '8', '1', '杨守德，著名中医专家，男，1952年出生于江西萍乡中医世家，为家族第三代传人，自幼随爷爷、父亲学习中医，至今已从医40多年的临床经验。在呼吸系统疾病、消化系统疾病、妇科疾病、心脑血管疾病等方面有独特的治疗经验。');
INSERT INTO `doctor` VALUES ('63', '宫兰芳', '0', '1963-05-06', '8', '2', '宫兰芳，女，济南名老中医，主任中医师、教授。山东省高青县人，农工，民主党派代表，1962年10月参加工作。山东中医学院（现山东中医药大学前身）医疗系首届毕业生。');
INSERT INTO `doctor` VALUES ('64', '刘景源', '1', '1960-03-09', '8', '3', '全国名老中医药专家。擅治：感冒、发热、咳嗽、哮喘、自汗、盗汗、头痛、失眠、抑郁症、高血压、高脂血症、冠心病、风心病、肺心病、胃病、腹痛、泄泻、痢疾、便秘、眩晕、脑血管病、中风、内分泌失调、甲亢、肝病、胆囊炎、胆石症、肾炎、泌尿系感染、泌尿系结石、糖尿病、关节炎，男性遗精、阳痿、前列腺炎、不育等，妇女月经不调、痛经、功血、更年期综合征、带下病、乳腺病、不孕，痤疮，小儿厌食等。');
INSERT INTO `doctor` VALUES ('65', '关阳', '0', '1986-06-27', '12', '0', '大连医科大学临床医学系毕业，毕业后一直从事临床营养工作。广东省营养学会会员，广东省医学会会员。在临床营养的医教研方面有着丰富的实践经验，2005年参与撰写了《糖尿病的营养防治》一书。从事临床营养工作6年，年均为1200多名在院患者进行营养指导，积累了丰富的临床经验。在2008年的四川大地震患者救治中，对来南方医院救治的每位患者进行营养评估，并按需要制定营养支持方案。');
INSERT INTO `doctor` VALUES ('66', '杨顺玉 ', '0', '1988-08-24', '12', '1', '擅长疾病：肥胖、妊娠糖尿病、心脑血管疾病的营养治疗。');
INSERT INTO `doctor` VALUES ('67', '李青', '0', '1990-09-06', '12', '2', '医学营养学博士。2005年毕业于南方医科大学临床医学专业，并于当年赴英国谢菲尔德大学攻读人类营养学专业。毕业后就职于南方医科大学南方医院营养科。2013年获得南方医科大学营养与食品卫生学博士学位。曾赴加州大学洛杉矶分校临床营养科访问学习1年半。');
INSERT INTO `doctor` VALUES ('68', ' 谢清华', '0', '1984-11-14', '12', '3', ' 谢清华,主治医师，擅长呼吸系统疾病的营养治疗');
INSERT INTO `doctor` VALUES ('69', '杨巨丰', '1', '1985-09-05', '9', '0', '杨巨丰，中共党员，毕业于河北北方学院，临床医学，大专学历，毕业后一直在传染科工作20余年，对各类肝病及感染性疾病有丰富临床经验，擅长诊治丙型肝炎、乙型肝炎、酒精性肝病、肝硬化、及其它感染性疾病，在传染科临床工作20于年，对麻疹， 手足口病， 有独特的治疗方法。每年外出参加肝病，结核学术会议，增长新知识，治疗新方案。');
INSERT INTO `doctor` VALUES ('70', '蒋卫民', '1', '1969-03-01', '9', '1', '蒋卫民，男，主治医师，教授，中国医师协会感染病分会委员。1969年3月出生。1993年毕业于复旦大学医学院（原上海医科大学）临床医学专业，并就职于复旦大学附属华山医院感染科，1998年起师从中国著名的感染病学专家翁心华教授，于2004年获得复旦大学内科学博士学位。2005年赴美国南加州大学进修，从事HIV感染者细胞免疫及HIV耐药机制的研究，获University of Southern California Keck School of Medicine Pacific AIDS Education and Training Center证书。回国后参与完成艾滋病相关的多项国家自然科学基金及十一五、十二五国家传染病重大专项。2008年11月获得复旦大学青年骨干基金一项（上海地区HIV合并结核感染的影响因素及免疫发病机制研究）。2012年获上海市科委医学引导类项目:结核潜伏感染与活动性感染鉴别诊断标记物的筛选和鉴定。2013年1月-2013年七月赴日本北里大学进修。');
INSERT INTO `doctor` VALUES ('71', '谭晓风', '0', '1980-02-05', '9', '2', '对艾滋病等传染病的传染、发病等机制有自己的理解，中西医结合诊治肝炎等感染类疾病，对妇科子宫内膜异位症亦有一定的经验。');
INSERT INTO `doctor` VALUES ('72', '潘业', '1', '1970-03-06', '9', '3', '潘业，主任医师，籍贯福建泉州，毕业于福建医科大学。 首批“全国肝病科普咨询专家”；“全国肝胆病咨询专家”；“全国疑难和重症肝病攻关协作组”第二、三届全国委员；福建省医学会感染病学分会第六届委员会艾滋病学组副组长和肝衰竭学组委员；福建省中西医结合学会肝病学分会第四届委员；厦门市医学会感染病专业分会第三届常委；厦门市中西医结合学会肝病分会第一届委员；1991年开始参加临床一线工作，2004年3月调入厦门大学附属第一医院，先后从事ICU急救2年、继而专注感染病专业至今。参加２０１３年第１期的国家级艾滋病临床进修培训班（上海公卫临床中心基地）学习。工作以来先后在国外内杂志发表了十几篇论文。');
INSERT INTO `doctor` VALUES ('73', '王艳波', '1', '1987-08-19', '11', '3', '医疗美容医院首席面部精雕师王雁波主任，现任职于石家庄美联臣整形外科主任。毕业于白求恩医科大学（现吉林大学），系国内首批美容主诊医师之一。专注于东方面部美学设计，从事整形美容外科工作十年余，手术以自然、细腻见长，对面部精细化操作、韩式美眼术、美眼精雕、妇科爱心整形有独特的造诣，创造性把医学科技、艺术思维、术式特点和顾客的生理条件、性格特征有机的结合。');
INSERT INTO `doctor` VALUES ('74', '王志鹏', '1', '1991-06-17', '11', '2', '2009年，王志鹏毕业于北京大学医学部。现从事医疗美容整形行业，在皮肤病的物理治疗方面达到国际一流水平。在美容外科、皮肤色素病和血管病的研究与激光治疗工作中，率先将韩国“水光注射”运用到医疗美容中。');
INSERT INTO `doctor` VALUES ('75', '陈锦', '1', '1983-10-11', '11', '1', '陈锦，男，汉族，主治医师，整形美容外科硕士，毕业于大连医科大学，现就职于北京伊美尔健翔医院整形科，从事临床美容整形方向工作6年余。针对脂肪移植，吸脂瘦身，面部鼻眼整形美容手术，肉毒素注射除皱及瘦脸有着较为丰富临床经验，手术细致娴熟、造型自然协调。多次参加国内学术会议，多次在国内期刊发表论文。');
INSERT INTO `doctor` VALUES ('76', '尹岩', '0', '1988-02-09', '10', '0', '杭州市第七人民医院心理科，副主任医师，医学博士。毕业于中南大学湘雅二院精神卫生研究所。在国际专业期刊上发表英文论文8篇。现主持浙江省卫生厅和杭州市科委课题各一项。2次获得全国学术会议优秀论文奖。');
INSERT INTO `doctor` VALUES ('77', '焦玉梅', '0', '1983-06-09', '10', '1', '焦玉梅，女，副主任医师。长期从事精神科临床工作，并对精神药物（包括抗精神病药物、抗躁狂药物、抗抑郁药物）引起的糖脂代谢问题一直进行关注和研究，并对精神分裂症后的康复、家庭成员的应付行为、情感表达等问题有一定的研究。在药物治疗的同时，更注重各类疾病的社会、心理学的相互作用。');
INSERT INTO `doctor` VALUES ('78', '郑英君', '1', '1979-04-09', '10', '2', '郑英君，成人精神科主任、学术带头人，广州医科大学精神卫生学院临床精神药理学教研室主任，副主任医师、副教授，硕士研究生导师，医学博士，精神病与精神卫生学博士后，擅长	抑郁症、精神分裂症、焦虑症，早期精神心理和行为异常、双相情感障碍（躁郁症）、失眠症、躁狂症；青少年情绪、行为问题的诊疗；各种心理障碍的鉴别诊断和认知行为心理治疗。');
INSERT INTO `doctor` VALUES ('79', '石华孟', '1', '1960-05-08', '10', '3', '石华孟，男，上海交通大学医学院附属精神卫生中心（上海市精神卫生中心）精神科主任医师（三级）。擅长精神分裂症、心境障碍、神经症、躯体疾病所致精神障碍的综合治疗，以及正念认知，行为治疗。');
INSERT INTO `doctor` VALUES ('81', '高维生', '1', '1953-03-12', '1', '3', '1976年毕业于北京医学院（现北京大学医学部）医学系，同年分配到北京协和医院外科工作，历任外科住院医师、总住院医师、基本外科主治医师、副主任医师、主任医师、副教授、教授。1994年赴美国德克萨斯州医学院附属医院研修。\r\n通过三十余年基本外科的临床实践，对基本外科各种疾病的诊治积累了丰富的临床经验，熟悉基本外科各种手术方法。近年来，临床工作重点主要在门脉高压症、胃肠道肿瘤、甲状腺疾病以及腹膜后肿瘤的诊治方面，曾多次手术救治严重脾亢、多次手术后仍消化道出血的门脉高压患者，巨大腹膜后肿物患者，以及巨大甲状腺肿瘤、难控制性甲亢患者等。目前，积极倡导、推广规范的胃癌根治性手术治疗方案，并承担着有关胃癌新辅助化疗的临床研究项目。\r\n从多年临床实践中研究、总结相关临床问题，先后发表学术论文40余篇，参与编写、编译学术著作4部。');

-- ----------------------------
-- Table structure for exrecord
-- ----------------------------
DROP TABLE IF EXISTS `exrecord`;
CREATE TABLE `exrecord` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `isConfirmed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`eid`),
  KEY `exrecord_ibfk_1` (`pid`),
  CONSTRAINT `exrecord_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `patient` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=542 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exrecord
-- ----------------------------
INSERT INTO `exrecord` VALUES ('1', '6', '2018-09-07 17:48:35', '0');
INSERT INTO `exrecord` VALUES ('2', '6', '2018-09-08 17:48:59', '0');
INSERT INTO `exrecord` VALUES ('3', '6', '2018-09-09 17:49:12', '0');
INSERT INTO `exrecord` VALUES ('4', '6', '2018-09-11 18:09:09', '0');
INSERT INTO `exrecord` VALUES ('5', '6', '2018-09-12 18:17:28', '0');
INSERT INTO `exrecord` VALUES ('6', '6', '2018-12-14 18:17:37', '0');
INSERT INTO `exrecord` VALUES ('7', '6', '2019-05-20 18:51:01', '0');
INSERT INTO `exrecord` VALUES ('8', '6', '2019-05-21 18:58:29', '0');
INSERT INTO `exrecord` VALUES ('9', '6', '2019-05-22 15:29:17', '0');
INSERT INTO `exrecord` VALUES ('10', '6', '2019-05-22 15:39:36', '0');
INSERT INTO `exrecord` VALUES ('11', '6', '2019-05-22 20:22:46', '0');
INSERT INTO `exrecord` VALUES ('12', '6', '2019-05-22 20:27:19', '0');
INSERT INTO `exrecord` VALUES ('13', '6', '2019-05-22 20:27:21', '0');
INSERT INTO `exrecord` VALUES ('14', '6', '2019-05-22 20:27:33', '0');
INSERT INTO `exrecord` VALUES ('15', '6', '2019-05-22 20:27:49', '0');
INSERT INTO `exrecord` VALUES ('16', '6', '2019-05-22 21:15:24', '0');
INSERT INTO `exrecord` VALUES ('17', '6', '2019-05-22 21:15:36', '0');
INSERT INTO `exrecord` VALUES ('18', '6', '2019-05-22 21:18:45', '0');
INSERT INTO `exrecord` VALUES ('19', '6', '2019-05-22 21:25:39', '0');
INSERT INTO `exrecord` VALUES ('20', '6', '2019-05-22 21:25:45', '0');
INSERT INTO `exrecord` VALUES ('21', '6', '2019-05-22 21:25:48', '0');
INSERT INTO `exrecord` VALUES ('22', '6', '2019-05-22 21:26:10', '0');
INSERT INTO `exrecord` VALUES ('23', '6', '2019-05-22 22:00:13', '0');
INSERT INTO `exrecord` VALUES ('24', '6', '2019-05-22 22:00:31', '0');
INSERT INTO `exrecord` VALUES ('25', '6', '2019-05-22 22:00:52', '0');
INSERT INTO `exrecord` VALUES ('26', '6', '2019-05-22 22:01:29', '0');
INSERT INTO `exrecord` VALUES ('27', '6', '2019-05-22 22:01:47', '0');
INSERT INTO `exrecord` VALUES ('28', '6', '2019-05-22 22:02:06', '0');
INSERT INTO `exrecord` VALUES ('29', '6', '2019-05-22 22:02:21', '0');
INSERT INTO `exrecord` VALUES ('30', '6', '2019-05-22 22:02:36', '0');
INSERT INTO `exrecord` VALUES ('31', '6', '2019-05-22 22:02:40', '0');
INSERT INTO `exrecord` VALUES ('32', '6', '2019-05-22 22:03:31', '0');
INSERT INTO `exrecord` VALUES ('33', '6', '2019-05-22 22:03:44', '0');
INSERT INTO `exrecord` VALUES ('34', '6', '2019-05-22 22:03:47', '0');
INSERT INTO `exrecord` VALUES ('35', '6', '2019-05-22 22:04:20', '0');
INSERT INTO `exrecord` VALUES ('36', '6', '2019-05-22 22:04:48', '0');
INSERT INTO `exrecord` VALUES ('37', '6', '2019-05-22 22:04:54', '0');
INSERT INTO `exrecord` VALUES ('38', '6', '2019-05-22 22:07:05', '0');
INSERT INTO `exrecord` VALUES ('39', '6', '2019-05-22 22:07:14', '0');
INSERT INTO `exrecord` VALUES ('40', '6', '2019-05-22 22:07:23', '0');
INSERT INTO `exrecord` VALUES ('41', '6', '2019-05-22 22:07:30', '0');
INSERT INTO `exrecord` VALUES ('42', '6', '2019-05-22 22:08:36', '0');
INSERT INTO `exrecord` VALUES ('43', '6', '2019-05-22 22:08:39', '0');
INSERT INTO `exrecord` VALUES ('44', '6', '2019-05-22 22:08:52', '0');
INSERT INTO `exrecord` VALUES ('45', '6', '2019-05-22 22:10:20', '0');
INSERT INTO `exrecord` VALUES ('46', '6', '2019-05-22 22:10:44', '0');
INSERT INTO `exrecord` VALUES ('47', '6', '2019-05-22 22:11:02', '0');
INSERT INTO `exrecord` VALUES ('48', '6', '2019-05-22 22:11:05', '0');
INSERT INTO `exrecord` VALUES ('49', '6', '2019-05-22 22:22:31', '0');
INSERT INTO `exrecord` VALUES ('50', '6', '2019-05-22 22:22:39', '0');
INSERT INTO `exrecord` VALUES ('51', '6', '2019-05-22 22:22:54', '0');
INSERT INTO `exrecord` VALUES ('52', '6', '2019-05-22 22:27:34', '0');
INSERT INTO `exrecord` VALUES ('53', '6', '2019-05-22 22:27:37', '0');
INSERT INTO `exrecord` VALUES ('54', '6', '2019-05-22 22:28:54', '0');
INSERT INTO `exrecord` VALUES ('55', '6', '2019-05-22 22:29:35', '0');
INSERT INTO `exrecord` VALUES ('56', '6', '2019-05-22 22:29:53', '0');
INSERT INTO `exrecord` VALUES ('57', '6', '2019-05-22 22:30:33', '0');
INSERT INTO `exrecord` VALUES ('58', '6', '2019-05-22 22:30:46', '0');
INSERT INTO `exrecord` VALUES ('59', '6', '2019-05-22 22:33:37', '0');
INSERT INTO `exrecord` VALUES ('60', '6', '2019-05-22 22:33:43', '0');
INSERT INTO `exrecord` VALUES ('61', '6', '2019-05-23 09:36:26', '0');
INSERT INTO `exrecord` VALUES ('62', '6', '2019-05-23 09:36:37', '0');
INSERT INTO `exrecord` VALUES ('63', '6', '2019-05-23 09:36:40', '0');
INSERT INTO `exrecord` VALUES ('64', '6', '2019-05-23 09:38:22', '0');
INSERT INTO `exrecord` VALUES ('65', '6', '2019-05-23 09:38:41', '0');
INSERT INTO `exrecord` VALUES ('66', '6', '2019-05-23 09:38:50', '0');
INSERT INTO `exrecord` VALUES ('67', '8', '2019-05-23 09:39:15', '0');
INSERT INTO `exrecord` VALUES ('68', '6', '2019-05-23 09:39:17', '0');
INSERT INTO `exrecord` VALUES ('69', '8', '2019-05-23 09:39:36', '0');
INSERT INTO `exrecord` VALUES ('70', '8', '2019-05-23 09:44:37', '0');
INSERT INTO `exrecord` VALUES ('71', '6', '2019-05-23 09:49:01', '0');
INSERT INTO `exrecord` VALUES ('72', '6', '2019-05-23 09:49:53', '0');
INSERT INTO `exrecord` VALUES ('73', '6', '2019-05-23 09:52:55', '0');
INSERT INTO `exrecord` VALUES ('74', '6', '2019-05-23 09:53:14', '0');
INSERT INTO `exrecord` VALUES ('75', '6', '2019-05-23 09:54:24', '0');
INSERT INTO `exrecord` VALUES ('76', '6', '2019-05-23 09:54:30', '0');
INSERT INTO `exrecord` VALUES ('77', '6', '2019-05-23 09:55:39', '0');
INSERT INTO `exrecord` VALUES ('78', '6', '2019-05-23 09:56:57', '0');
INSERT INTO `exrecord` VALUES ('79', '6', '2019-05-23 09:59:00', '0');
INSERT INTO `exrecord` VALUES ('80', '6', '2019-05-23 09:59:27', '0');
INSERT INTO `exrecord` VALUES ('81', '6', '2019-05-23 10:00:16', '0');
INSERT INTO `exrecord` VALUES ('82', '6', '2019-05-23 10:00:22', '0');
INSERT INTO `exrecord` VALUES ('83', '6', '2019-05-23 10:04:19', '0');
INSERT INTO `exrecord` VALUES ('84', '6', '2019-05-23 10:04:46', '0');
INSERT INTO `exrecord` VALUES ('85', '6', '2019-05-23 10:04:58', '0');
INSERT INTO `exrecord` VALUES ('86', '6', '2019-05-23 10:05:04', '0');
INSERT INTO `exrecord` VALUES ('87', '6', '2019-05-23 10:05:20', '0');
INSERT INTO `exrecord` VALUES ('88', '6', '2019-05-23 10:05:23', '0');
INSERT INTO `exrecord` VALUES ('89', '6', '2019-05-23 10:05:44', '0');
INSERT INTO `exrecord` VALUES ('90', '6', '2019-05-23 10:05:50', '0');
INSERT INTO `exrecord` VALUES ('91', '6', '2019-05-23 10:06:03', '0');
INSERT INTO `exrecord` VALUES ('92', '6', '2019-05-23 10:06:09', '0');
INSERT INTO `exrecord` VALUES ('93', '6', '2019-05-23 10:08:54', '0');
INSERT INTO `exrecord` VALUES ('94', '6', '2019-05-23 10:09:13', '0');
INSERT INTO `exrecord` VALUES ('95', '6', '2019-05-23 10:09:22', '0');
INSERT INTO `exrecord` VALUES ('96', '6', '2019-05-23 10:09:46', '0');
INSERT INTO `exrecord` VALUES ('97', '6', '2019-05-23 10:10:05', '0');
INSERT INTO `exrecord` VALUES ('98', '6', '2019-05-23 10:10:33', '0');
INSERT INTO `exrecord` VALUES ('99', '6', '2019-05-23 10:11:00', '0');
INSERT INTO `exrecord` VALUES ('100', '6', '2019-05-23 10:11:40', '0');
INSERT INTO `exrecord` VALUES ('101', '6', '2019-05-23 10:11:58', '0');
INSERT INTO `exrecord` VALUES ('102', '6', '2019-05-23 10:22:31', '0');
INSERT INTO `exrecord` VALUES ('103', '6', '2019-05-23 10:22:36', '0');
INSERT INTO `exrecord` VALUES ('104', '6', '2019-05-23 10:22:45', '0');
INSERT INTO `exrecord` VALUES ('105', '6', '2019-05-23 10:25:40', '0');
INSERT INTO `exrecord` VALUES ('106', '6', '2019-05-23 10:25:49', '0');
INSERT INTO `exrecord` VALUES ('107', '6', '2019-05-23 10:25:52', '0');
INSERT INTO `exrecord` VALUES ('108', '6', '2019-05-23 10:26:01', '0');
INSERT INTO `exrecord` VALUES ('109', '6', '2019-05-23 10:26:17', '0');
INSERT INTO `exrecord` VALUES ('110', '6', '2019-05-23 10:26:53', '0');
INSERT INTO `exrecord` VALUES ('111', '6', '2019-05-23 10:26:56', '0');
INSERT INTO `exrecord` VALUES ('112', '6', '2019-05-23 10:33:14', '0');
INSERT INTO `exrecord` VALUES ('113', '6', '2019-05-23 10:33:20', '0');
INSERT INTO `exrecord` VALUES ('114', '6', '2019-05-23 10:33:23', '0');
INSERT INTO `exrecord` VALUES ('115', '6', '2019-05-23 10:33:26', '0');
INSERT INTO `exrecord` VALUES ('116', '6', '2019-05-23 10:36:05', '0');
INSERT INTO `exrecord` VALUES ('117', '6', '2019-05-23 10:37:53', '0');
INSERT INTO `exrecord` VALUES ('118', '6', '2019-05-23 10:38:05', '0');
INSERT INTO `exrecord` VALUES ('119', '6', '2019-05-23 10:38:14', '0');
INSERT INTO `exrecord` VALUES ('120', '6', '2019-05-23 10:38:20', '0');
INSERT INTO `exrecord` VALUES ('121', '6', '2019-05-23 10:38:36', '0');
INSERT INTO `exrecord` VALUES ('122', '6', '2019-05-23 10:38:45', '0');
INSERT INTO `exrecord` VALUES ('123', '6', '2019-05-23 10:40:02', '0');
INSERT INTO `exrecord` VALUES ('124', '6', '2019-05-23 10:41:43', '0');
INSERT INTO `exrecord` VALUES ('126', '6', '2019-05-23 10:41:52', '1');
INSERT INTO `exrecord` VALUES ('127', '6', '2019-05-23 10:41:58', '1');
INSERT INTO `exrecord` VALUES ('128', '6', '2019-05-23 10:42:10', '1');
INSERT INTO `exrecord` VALUES ('129', '6', '2019-05-23 10:42:38', '1');
INSERT INTO `exrecord` VALUES ('130', '6', '2019-05-23 10:44:08', '1');
INSERT INTO `exrecord` VALUES ('131', '6', '2019-05-23 10:44:19', '1');
INSERT INTO `exrecord` VALUES ('132', '6', '2019-05-23 10:44:25', '1');
INSERT INTO `exrecord` VALUES ('133', '6', '2019-05-23 19:50:51', '1');
INSERT INTO `exrecord` VALUES ('134', '6', '2019-05-23 19:51:09', '1');
INSERT INTO `exrecord` VALUES ('135', '6', '2019-05-23 19:51:40', '1');
INSERT INTO `exrecord` VALUES ('136', '6', '2019-05-23 19:52:56', '1');
INSERT INTO `exrecord` VALUES ('137', '6', '2019-05-23 19:53:21', '1');
INSERT INTO `exrecord` VALUES ('138', '6', '2019-05-23 19:54:09', '1');
INSERT INTO `exrecord` VALUES ('139', '6', '2019-05-23 19:55:19', '1');
INSERT INTO `exrecord` VALUES ('140', '6', '2019-05-23 19:55:31', '1');
INSERT INTO `exrecord` VALUES ('141', '6', '2019-05-24 15:28:55', '0');
INSERT INTO `exrecord` VALUES ('143', '6', '2019-05-25 15:30:27', '0');
INSERT INTO `exrecord` VALUES ('144', '6', '2019-05-26 15:30:30', '0');
INSERT INTO `exrecord` VALUES ('145', '6', '2019-05-27 15:31:31', '0');
INSERT INTO `exrecord` VALUES ('146', '6', '2019-05-27 15:31:34', '0');
INSERT INTO `exrecord` VALUES ('148', '6', '2019-05-28 15:41:50', '0');
INSERT INTO `exrecord` VALUES ('149', '6', '2019-05-28 15:42:12', '0');
INSERT INTO `exrecord` VALUES ('150', '6', '2019-05-28 15:42:15', '0');
INSERT INTO `exrecord` VALUES ('151', '6', '2019-05-28 15:50:09', '0');
INSERT INTO `exrecord` VALUES ('152', '6', '2019-05-29 15:50:12', '0');
INSERT INTO `exrecord` VALUES ('153', '6', '2019-05-29 15:50:58', '0');
INSERT INTO `exrecord` VALUES ('154', '6', '2019-05-30 15:51:16', '0');
INSERT INTO `exrecord` VALUES ('155', '8', '2019-05-25 19:43:46', '0');
INSERT INTO `exrecord` VALUES ('156', '8', '2019-05-25 19:43:52', '0');
INSERT INTO `exrecord` VALUES ('157', '8', '2019-05-25 19:43:56', '0');
INSERT INTO `exrecord` VALUES ('158', '8', '2019-05-25 19:44:35', '0');
INSERT INTO `exrecord` VALUES ('159', '8', '2019-05-25 19:44:50', '0');
INSERT INTO `exrecord` VALUES ('160', '8', '2019-05-25 19:45:09', '0');
INSERT INTO `exrecord` VALUES ('161', '4', '2019-05-25 19:45:53', '0');
INSERT INTO `exrecord` VALUES ('162', '8', '2019-05-25 19:46:07', '0');
INSERT INTO `exrecord` VALUES ('163', '4', '2019-05-25 19:46:09', '0');
INSERT INTO `exrecord` VALUES ('164', '4', '2019-05-25 19:46:45', '0');
INSERT INTO `exrecord` VALUES ('165', '4', '2019-05-25 19:46:48', '0');
INSERT INTO `exrecord` VALUES ('166', '8', '2019-05-25 19:46:49', '0');
INSERT INTO `exrecord` VALUES ('167', '8', '2019-05-25 19:46:55', '0');
INSERT INTO `exrecord` VALUES ('168', '4', '2019-05-25 19:47:00', '0');
INSERT INTO `exrecord` VALUES ('169', '4', '2019-05-25 19:47:07', '0');
INSERT INTO `exrecord` VALUES ('170', '8', '2019-05-25 19:47:08', '0');
INSERT INTO `exrecord` VALUES ('171', '8', '2019-05-25 19:47:23', '0');
INSERT INTO `exrecord` VALUES ('172', '8', '2019-05-25 19:47:38', '0');
INSERT INTO `exrecord` VALUES ('173', '8', '2019-05-25 19:47:44', '0');
INSERT INTO `exrecord` VALUES ('174', '8', '2019-05-25 19:48:05', '0');
INSERT INTO `exrecord` VALUES ('175', '8', '2019-05-25 19:49:20', '0');
INSERT INTO `exrecord` VALUES ('176', '8', '2019-05-25 19:49:28', '0');
INSERT INTO `exrecord` VALUES ('177', '4', '2019-05-25 19:49:30', '0');
INSERT INTO `exrecord` VALUES ('178', '8', '2019-05-25 19:49:46', '0');
INSERT INTO `exrecord` VALUES ('179', '4', '2019-05-25 19:50:13', '0');
INSERT INTO `exrecord` VALUES ('180', '4', '2019-05-25 19:50:37', '0');
INSERT INTO `exrecord` VALUES ('181', '4', '2019-05-25 19:50:43', '0');
INSERT INTO `exrecord` VALUES ('182', '4', '2019-05-25 19:51:14', '0');
INSERT INTO `exrecord` VALUES ('183', '4', '2019-05-25 19:51:20', '0');
INSERT INTO `exrecord` VALUES ('184', '4', '2019-05-25 19:51:26', '0');
INSERT INTO `exrecord` VALUES ('185', '6', '2019-05-30 19:51:28', '1');
INSERT INTO `exrecord` VALUES ('186', '6', '2019-05-30 19:51:31', '1');
INSERT INTO `exrecord` VALUES ('187', '4', '2019-05-25 19:51:47', '0');
INSERT INTO `exrecord` VALUES ('188', '8', '2019-05-25 19:51:48', '0');
INSERT INTO `exrecord` VALUES ('189', '8', '2019-05-25 19:52:00', '0');
INSERT INTO `exrecord` VALUES ('190', '8', '2019-05-27 19:52:06', '0');
INSERT INTO `exrecord` VALUES ('191', '4', '2019-05-25 19:52:08', '0');
INSERT INTO `exrecord` VALUES ('192', '4', '2019-05-25 19:52:21', '0');
INSERT INTO `exrecord` VALUES ('193', '4', '2019-05-25 19:53:25', '0');
INSERT INTO `exrecord` VALUES ('194', '4', '2019-05-25 19:53:31', '0');
INSERT INTO `exrecord` VALUES ('195', '8', '2019-05-28 19:53:44', '0');
INSERT INTO `exrecord` VALUES ('196', '8', '2019-05-29 19:53:56', '0');
INSERT INTO `exrecord` VALUES ('197', '4', '2019-05-25 20:07:25', '0');
INSERT INTO `exrecord` VALUES ('198', '4', '2019-05-25 20:07:28', '0');
INSERT INTO `exrecord` VALUES ('199', '4', '2019-05-25 20:07:31', '0');
INSERT INTO `exrecord` VALUES ('200', '4', '2019-05-25 20:07:43', '0');
INSERT INTO `exrecord` VALUES ('201', '4', '2019-05-25 20:07:46', '0');
INSERT INTO `exrecord` VALUES ('202', '4', '2019-05-25 20:07:55', '0');
INSERT INTO `exrecord` VALUES ('203', '4', '2019-05-25 20:08:38', '0');
INSERT INTO `exrecord` VALUES ('204', '4', '2019-05-25 20:08:41', '0');
INSERT INTO `exrecord` VALUES ('205', '4', '2019-05-25 20:08:47', '0');
INSERT INTO `exrecord` VALUES ('206', '8', '2019-05-30 20:08:57', '0');
INSERT INTO `exrecord` VALUES ('207', '8', '2019-05-30 20:09:00', '0');
INSERT INTO `exrecord` VALUES ('208', '4', '2019-05-25 20:09:03', '0');
INSERT INTO `exrecord` VALUES ('209', '4', '2019-05-25 20:09:18', '0');
INSERT INTO `exrecord` VALUES ('210', '4', '2019-05-25 20:09:30', '0');
INSERT INTO `exrecord` VALUES ('211', '8', '2019-05-30 20:09:30', '0');
INSERT INTO `exrecord` VALUES ('212', '8', '2019-05-31 20:09:40', '0');
INSERT INTO `exrecord` VALUES ('213', '8', '2019-05-31 20:09:55', '0');
INSERT INTO `exrecord` VALUES ('214', '4', '2019-05-25 20:09:57', '0');
INSERT INTO `exrecord` VALUES ('215', '4', '2019-05-25 20:10:16', '0');
INSERT INTO `exrecord` VALUES ('216', '4', '2019-05-25 20:19:06', '0');
INSERT INTO `exrecord` VALUES ('217', '4', '2019-05-25 20:19:45', '0');
INSERT INTO `exrecord` VALUES ('218', '4', '2019-05-25 20:19:51', '0');
INSERT INTO `exrecord` VALUES ('219', '4', '2019-05-25 20:19:58', '0');
INSERT INTO `exrecord` VALUES ('220', '4', '2019-05-25 20:20:07', '0');
INSERT INTO `exrecord` VALUES ('221', '4', '2019-05-25 20:20:16', '0');
INSERT INTO `exrecord` VALUES ('222', '4', '2019-05-25 20:21:02', '0');
INSERT INTO `exrecord` VALUES ('223', '4', '2019-05-25 20:21:08', '0');
INSERT INTO `exrecord` VALUES ('224', '4', '2019-05-25 20:22:46', '0');
INSERT INTO `exrecord` VALUES ('225', '4', '2019-05-25 20:23:04', '0');
INSERT INTO `exrecord` VALUES ('226', '4', '2019-05-25 20:24:20', '0');
INSERT INTO `exrecord` VALUES ('227', '4', '2019-05-25 20:24:27', '0');
INSERT INTO `exrecord` VALUES ('228', '4', '2019-05-25 20:24:30', '0');
INSERT INTO `exrecord` VALUES ('229', '4', '2019-05-25 20:24:36', '0');
INSERT INTO `exrecord` VALUES ('230', '4', '2019-05-25 20:24:42', '0');
INSERT INTO `exrecord` VALUES ('231', '4', '2019-05-25 20:25:12', '0');
INSERT INTO `exrecord` VALUES ('232', '4', '2019-05-25 20:25:21', '0');
INSERT INTO `exrecord` VALUES ('233', '4', '2019-05-25 20:25:31', '0');
INSERT INTO `exrecord` VALUES ('234', '4', '2019-05-25 20:25:37', '0');
INSERT INTO `exrecord` VALUES ('235', '4', '2019-05-25 20:25:43', '0');
INSERT INTO `exrecord` VALUES ('236', '4', '2019-05-25 20:26:01', '0');
INSERT INTO `exrecord` VALUES ('237', '4', '2019-05-25 20:26:13', '0');
INSERT INTO `exrecord` VALUES ('238', '6', '2019-05-31 16:51:55', '0');
INSERT INTO `exrecord` VALUES ('240', '6', '2019-05-31 22:22:07', '0');
INSERT INTO `exrecord` VALUES ('241', '6', '2019-05-31 22:22:16', '0');
INSERT INTO `exrecord` VALUES ('242', '6', '2019-05-31 22:23:14', '0');
INSERT INTO `exrecord` VALUES ('243', '6', '2019-05-31 22:23:32', '0');
INSERT INTO `exrecord` VALUES ('244', '6', '2019-05-31 22:23:35', '0');
INSERT INTO `exrecord` VALUES ('245', '6', '2019-05-31 22:24:08', '0');
INSERT INTO `exrecord` VALUES ('246', '6', '2019-05-31 22:24:11', '0');
INSERT INTO `exrecord` VALUES ('247', '6', '2019-05-31 22:24:58', '0');
INSERT INTO `exrecord` VALUES ('248', '6', '2019-05-31 22:25:16', '0');
INSERT INTO `exrecord` VALUES ('249', '6', '2019-05-31 22:25:59', '0');
INSERT INTO `exrecord` VALUES ('250', '6', '2019-05-31 22:26:45', '0');
INSERT INTO `exrecord` VALUES ('251', '6', '2019-05-31 22:27:12', '0');
INSERT INTO `exrecord` VALUES ('252', '6', '2019-05-31 22:28:10', '0');
INSERT INTO `exrecord` VALUES ('253', '6', '2019-05-31 22:28:19', '0');
INSERT INTO `exrecord` VALUES ('254', '6', '2019-05-31 22:28:28', '1');
INSERT INTO `exrecord` VALUES ('255', '6', '2019-05-31 22:29:10', '0');
INSERT INTO `exrecord` VALUES ('256', '6', '2019-05-31 22:29:26', '0');
INSERT INTO `exrecord` VALUES ('257', '6', '2019-05-31 22:29:35', '0');
INSERT INTO `exrecord` VALUES ('258', '6', '2019-05-31 22:30:05', '0');
INSERT INTO `exrecord` VALUES ('259', '6', '2019-05-31 22:30:30', '0');
INSERT INTO `exrecord` VALUES ('260', '6', '2019-05-31 22:30:36', '1');
INSERT INTO `exrecord` VALUES ('261', '6', '2019-05-31 22:30:51', '0');
INSERT INTO `exrecord` VALUES ('262', '6', '2019-05-31 22:31:00', '0');
INSERT INTO `exrecord` VALUES ('263', '6', '2019-05-31 22:31:40', '0');
INSERT INTO `exrecord` VALUES ('265', '6', '2019-05-31 22:32:41', '0');
INSERT INTO `exrecord` VALUES ('266', '6', '2019-05-31 22:32:47', '0');
INSERT INTO `exrecord` VALUES ('267', '6', '2019-05-31 22:33:02', '0');
INSERT INTO `exrecord` VALUES ('268', '6', '2019-05-31 22:33:36', '0');
INSERT INTO `exrecord` VALUES ('269', '6', '2019-05-31 22:34:09', '0');
INSERT INTO `exrecord` VALUES ('270', '6', '2019-05-31 22:34:27', '0');
INSERT INTO `exrecord` VALUES ('271', '6', '2019-05-31 22:35:07', '0');
INSERT INTO `exrecord` VALUES ('272', '6', '2019-06-01 09:25:22', '0');
INSERT INTO `exrecord` VALUES ('273', '6', '2019-06-01 09:25:28', '0');
INSERT INTO `exrecord` VALUES ('274', '6', '2019-06-01 09:26:28', '0');
INSERT INTO `exrecord` VALUES ('275', '6', '2019-06-01 09:26:43', '0');
INSERT INTO `exrecord` VALUES ('276', '6', '2019-06-01 09:26:46', '0');
INSERT INTO `exrecord` VALUES ('277', '6', '2019-06-01 09:26:55', '0');
INSERT INTO `exrecord` VALUES ('278', '6', '2019-06-01 09:27:16', '0');
INSERT INTO `exrecord` VALUES ('280', '6', '2019-06-01 09:27:47', '0');
INSERT INTO `exrecord` VALUES ('281', '6', '2019-06-01 09:27:50', '0');
INSERT INTO `exrecord` VALUES ('282', '6', '2019-06-01 09:28:45', '0');
INSERT INTO `exrecord` VALUES ('283', '6', '2019-06-01 16:38:01', '0');
INSERT INTO `exrecord` VALUES ('284', '6', '2019-06-01 16:38:11', '1');
INSERT INTO `exrecord` VALUES ('285', '6', '2019-06-01 16:38:23', '0');
INSERT INTO `exrecord` VALUES ('286', '6', '2019-06-01 16:38:26', '1');
INSERT INTO `exrecord` VALUES ('287', '6', '2019-06-01 16:39:52', '0');
INSERT INTO `exrecord` VALUES ('288', '6', '2019-06-01 16:39:58', '0');
INSERT INTO `exrecord` VALUES ('289', '6', '2019-06-01 16:40:13', '0');
INSERT INTO `exrecord` VALUES ('290', '6', '2019-06-01 16:40:47', '0');
INSERT INTO `exrecord` VALUES ('291', '6', '2019-06-01 16:41:05', '0');
INSERT INTO `exrecord` VALUES ('292', '6', '2019-06-01 16:41:14', '0');
INSERT INTO `exrecord` VALUES ('293', '6', '2019-06-01 16:41:45', '0');
INSERT INTO `exrecord` VALUES ('294', '6', '2019-06-01 16:41:51', '0');
INSERT INTO `exrecord` VALUES ('295', '6', '2019-06-01 16:42:24', '0');
INSERT INTO `exrecord` VALUES ('296', '6', '2019-06-01 16:42:36', '0');
INSERT INTO `exrecord` VALUES ('297', '6', '2019-06-01 16:42:43', '0');
INSERT INTO `exrecord` VALUES ('298', '6', '2019-06-01 16:42:55', '0');
INSERT INTO `exrecord` VALUES ('299', '6', '2019-06-01 16:43:04', '0');
INSERT INTO `exrecord` VALUES ('300', '6', '2019-06-01 16:44:08', '0');
INSERT INTO `exrecord` VALUES ('301', '6', '2019-06-01 16:44:32', '0');
INSERT INTO `exrecord` VALUES ('302', '6', '2019-06-01 16:44:50', '0');
INSERT INTO `exrecord` VALUES ('303', '6', '2019-06-01 16:45:06', '0');
INSERT INTO `exrecord` VALUES ('304', '6', '2019-06-01 17:22:12', '0');
INSERT INTO `exrecord` VALUES ('305', '6', '2019-06-01 17:22:19', '0');
INSERT INTO `exrecord` VALUES ('306', '8', '2019-06-01 17:22:29', '0');
INSERT INTO `exrecord` VALUES ('307', '8', '2019-06-01 17:22:48', '0');
INSERT INTO `exrecord` VALUES ('308', '8', '2019-06-01 17:23:06', '0');
INSERT INTO `exrecord` VALUES ('309', '6', '2019-06-01 17:23:13', '0');
INSERT INTO `exrecord` VALUES ('310', '6', '2019-06-01 17:23:16', '0');
INSERT INTO `exrecord` VALUES ('311', '8', '2019-06-01 17:23:21', '0');
INSERT INTO `exrecord` VALUES ('312', '8', '2019-06-01 17:24:19', '0');
INSERT INTO `exrecord` VALUES ('313', '6', '2019-06-01 17:24:29', '0');
INSERT INTO `exrecord` VALUES ('314', '8', '2019-06-01 17:24:37', '0');
INSERT INTO `exrecord` VALUES ('315', '6', '2019-06-01 17:25:02', '0');
INSERT INTO `exrecord` VALUES ('316', '6', '2019-06-01 17:25:33', '0');
INSERT INTO `exrecord` VALUES ('317', '8', '2019-06-01 17:25:50', '0');
INSERT INTO `exrecord` VALUES ('318', '6', '2019-06-01 17:26:06', '0');
INSERT INTO `exrecord` VALUES ('319', '8', '2019-06-01 17:26:14', '0');
INSERT INTO `exrecord` VALUES ('320', '6', '2019-06-01 17:26:15', '0');
INSERT INTO `exrecord` VALUES ('321', '8', '2019-06-01 17:26:26', '0');
INSERT INTO `exrecord` VALUES ('322', '6', '2019-06-01 17:26:37', '0');
INSERT INTO `exrecord` VALUES ('323', '6', '2019-06-01 17:26:46', '0');
INSERT INTO `exrecord` VALUES ('324', '8', '2019-06-01 17:26:48', '0');
INSERT INTO `exrecord` VALUES ('325', '6', '2019-06-01 17:28:25', '0');
INSERT INTO `exrecord` VALUES ('326', '6', '2019-06-01 17:28:34', '0');
INSERT INTO `exrecord` VALUES ('327', '6', '2019-06-01 17:28:52', '0');
INSERT INTO `exrecord` VALUES ('328', '6', '2019-06-01 17:29:13', '0');
INSERT INTO `exrecord` VALUES ('329', '6', '2019-06-01 17:29:16', '0');
INSERT INTO `exrecord` VALUES ('330', '6', '2019-06-01 17:29:22', '0');
INSERT INTO `exrecord` VALUES ('331', '6', '2019-06-01 17:29:47', '0');
INSERT INTO `exrecord` VALUES ('332', '6', '2019-06-01 17:30:20', '0');
INSERT INTO `exrecord` VALUES ('333', '6', '2019-06-01 17:30:23', '0');
INSERT INTO `exrecord` VALUES ('334', '6', '2019-06-01 17:31:21', '0');
INSERT INTO `exrecord` VALUES ('335', '6', '2019-06-01 17:31:57', '0');
INSERT INTO `exrecord` VALUES ('336', '6', '2019-06-01 17:32:00', '0');
INSERT INTO `exrecord` VALUES ('337', '6', '2019-06-01 17:32:03', '0');
INSERT INTO `exrecord` VALUES ('338', '6', '2019-06-01 17:32:40', '0');
INSERT INTO `exrecord` VALUES ('339', '6', '2019-06-01 17:32:49', '0');
INSERT INTO `exrecord` VALUES ('340', '6', '2019-06-01 17:33:04', '0');
INSERT INTO `exrecord` VALUES ('341', '6', '2019-06-01 17:33:07', '0');
INSERT INTO `exrecord` VALUES ('342', '6', '2019-06-01 17:33:10', '0');
INSERT INTO `exrecord` VALUES ('343', '6', '2019-06-01 17:33:13', '0');
INSERT INTO `exrecord` VALUES ('344', '6', '2019-06-01 17:33:16', '0');
INSERT INTO `exrecord` VALUES ('345', '6', '2019-06-05 17:33:37', '0');
INSERT INTO `exrecord` VALUES ('346', '6', '2019-06-05 17:33:43', '0');
INSERT INTO `exrecord` VALUES ('347', '6', '2019-06-05 17:34:26', '0');
INSERT INTO `exrecord` VALUES ('348', '6', '2019-06-05 17:34:29', '0');
INSERT INTO `exrecord` VALUES ('349', '6', '2019-06-05 17:34:41', '0');
INSERT INTO `exrecord` VALUES ('350', '6', '2019-06-05 17:35:15', '0');
INSERT INTO `exrecord` VALUES ('351', '6', '2019-06-05 17:35:36', '0');
INSERT INTO `exrecord` VALUES ('352', '6', '2019-06-05 17:35:48', '0');
INSERT INTO `exrecord` VALUES ('353', '6', '2019-06-05 17:36:15', '0');
INSERT INTO `exrecord` VALUES ('354', '6', '2019-06-05 17:36:25', '0');
INSERT INTO `exrecord` VALUES ('355', '6', '2019-06-05 17:37:37', '0');
INSERT INTO `exrecord` VALUES ('356', '6', '2019-06-05 17:37:40', '0');
INSERT INTO `exrecord` VALUES ('357', '6', '2019-06-05 17:38:11', '0');
INSERT INTO `exrecord` VALUES ('358', '6', '2019-06-05 17:38:32', '0');
INSERT INTO `exrecord` VALUES ('359', '6', '2019-06-05 17:38:47', '0');
INSERT INTO `exrecord` VALUES ('360', '6', '2019-06-05 17:38:59', '0');
INSERT INTO `exrecord` VALUES ('361', '6', '2019-06-05 17:39:06', '0');
INSERT INTO `exrecord` VALUES ('362', '6', '2019-06-05 17:39:15', '0');
INSERT INTO `exrecord` VALUES ('363', '6', '2019-06-05 17:39:18', '0');
INSERT INTO `exrecord` VALUES ('364', '6', '2019-06-05 17:39:51', '0');
INSERT INTO `exrecord` VALUES ('365', '6', '2019-06-05 17:39:57', '0');
INSERT INTO `exrecord` VALUES ('366', '6', '2019-06-06 17:40:00', '0');
INSERT INTO `exrecord` VALUES ('367', '6', '2019-06-06 17:40:10', '0');
INSERT INTO `exrecord` VALUES ('368', '6', '2019-06-06 17:41:04', '0');
INSERT INTO `exrecord` VALUES ('369', '6', '2019-06-06 17:41:29', '0');
INSERT INTO `exrecord` VALUES ('370', '6', '2019-06-06 17:42:33', '0');
INSERT INTO `exrecord` VALUES ('371', '6', '2019-06-06 17:42:54', '0');
INSERT INTO `exrecord` VALUES ('372', '6', '2019-06-06 17:43:40', '0');
INSERT INTO `exrecord` VALUES ('373', '6', '2019-06-06 17:43:46', '0');
INSERT INTO `exrecord` VALUES ('374', '6', '2019-06-06 17:43:58', '0');
INSERT INTO `exrecord` VALUES ('375', '6', '2019-06-06 17:44:01', '0');
INSERT INTO `exrecord` VALUES ('376', '6', '2019-06-06 17:44:10', '0');
INSERT INTO `exrecord` VALUES ('377', '6', '2019-06-06 17:44:44', '0');
INSERT INTO `exrecord` VALUES ('378', '6', '2019-06-06 17:44:50', '0');
INSERT INTO `exrecord` VALUES ('379', '6', '2019-06-06 17:45:05', '0');
INSERT INTO `exrecord` VALUES ('380', '6', '2019-06-06 17:45:26', '0');
INSERT INTO `exrecord` VALUES ('381', '6', '2019-06-07 17:45:48', '0');
INSERT INTO `exrecord` VALUES ('382', '6', '2019-06-07 17:46:09', '0');
INSERT INTO `exrecord` VALUES ('383', '6', '2019-06-07 17:46:39', '0');
INSERT INTO `exrecord` VALUES ('384', '6', '2019-06-07 17:47:01', '0');
INSERT INTO `exrecord` VALUES ('385', '6', '2019-06-07 17:47:13', '0');
INSERT INTO `exrecord` VALUES ('386', '6', '2019-06-07 17:47:16', '0');
INSERT INTO `exrecord` VALUES ('387', '6', '2019-06-07 17:49:08', '0');
INSERT INTO `exrecord` VALUES ('388', '6', '2019-06-07 17:49:18', '0');
INSERT INTO `exrecord` VALUES ('389', '6', '2019-06-07 17:49:39', '0');
INSERT INTO `exrecord` VALUES ('390', '6', '2019-06-07 17:49:51', '0');
INSERT INTO `exrecord` VALUES ('391', '6', '2019-06-07 17:50:06', '0');
INSERT INTO `exrecord` VALUES ('392', '6', '2019-06-07 17:50:12', '0');
INSERT INTO `exrecord` VALUES ('393', '6', '2019-06-07 17:50:30', '0');
INSERT INTO `exrecord` VALUES ('394', '6', '2019-06-07 17:50:37', '0');
INSERT INTO `exrecord` VALUES ('395', '6', '2019-06-07 17:50:43', '0');
INSERT INTO `exrecord` VALUES ('396', '6', '2019-06-07 17:50:52', '0');
INSERT INTO `exrecord` VALUES ('397', '6', '2019-06-07 17:50:58', '0');
INSERT INTO `exrecord` VALUES ('398', '6', '2019-06-07 17:51:04', '0');
INSERT INTO `exrecord` VALUES ('399', '6', '2019-06-07 17:51:13', '0');
INSERT INTO `exrecord` VALUES ('400', '6', '2019-06-07 17:51:31', '0');
INSERT INTO `exrecord` VALUES ('401', '6', '2019-06-07 17:51:50', '0');
INSERT INTO `exrecord` VALUES ('402', '6', '2019-06-07 17:52:08', '0');
INSERT INTO `exrecord` VALUES ('403', '6', '2019-06-07 17:52:47', '0');
INSERT INTO `exrecord` VALUES ('404', '6', '2019-06-07 17:53:09', '0');
INSERT INTO `exrecord` VALUES ('405', '6', '2019-06-07 17:53:27', '0');
INSERT INTO `exrecord` VALUES ('406', '6', '2019-06-07 17:53:30', '0');
INSERT INTO `exrecord` VALUES ('407', '6', '2019-06-07 17:53:39', '0');
INSERT INTO `exrecord` VALUES ('408', '6', '2019-06-07 17:53:57', '0');
INSERT INTO `exrecord` VALUES ('409', '6', '2019-06-07 17:54:13', '0');
INSERT INTO `exrecord` VALUES ('410', '6', '2019-06-07 17:55:01', '0');
INSERT INTO `exrecord` VALUES ('411', '6', '2019-06-07 17:55:23', '0');
INSERT INTO `exrecord` VALUES ('412', '6', '2019-06-07 17:55:35', '0');
INSERT INTO `exrecord` VALUES ('413', '6', '2019-06-07 17:56:05', '0');
INSERT INTO `exrecord` VALUES ('414', '6', '2019-06-07 17:56:14', '0');
INSERT INTO `exrecord` VALUES ('415', '6', '2019-06-07 17:56:29', '0');
INSERT INTO `exrecord` VALUES ('416', '6', '2019-06-07 17:56:39', '0');
INSERT INTO `exrecord` VALUES ('417', '6', '2019-06-07 17:56:54', '0');
INSERT INTO `exrecord` VALUES ('418', '6', '2019-06-07 17:57:55', '0');
INSERT INTO `exrecord` VALUES ('419', '6', '2019-06-07 17:58:31', '0');
INSERT INTO `exrecord` VALUES ('420', '6', '2019-06-07 17:58:34', '0');
INSERT INTO `exrecord` VALUES ('421', '6', '2019-06-07 17:58:56', '0');
INSERT INTO `exrecord` VALUES ('422', '6', '2019-06-07 17:59:02', '0');
INSERT INTO `exrecord` VALUES ('423', '6', '2019-06-07 17:59:08', '0');
INSERT INTO `exrecord` VALUES ('424', '6', '2019-06-07 17:59:29', '0');
INSERT INTO `exrecord` VALUES ('425', '6', '2019-06-07 18:00:03', '0');
INSERT INTO `exrecord` VALUES ('426', '6', '2019-06-07 18:00:21', '0');
INSERT INTO `exrecord` VALUES ('427', '6', '2019-06-07 18:00:36', '0');
INSERT INTO `exrecord` VALUES ('428', '6', '2019-06-07 18:00:39', '0');
INSERT INTO `exrecord` VALUES ('429', '6', '2019-06-07 18:00:45', '0');
INSERT INTO `exrecord` VALUES ('430', '6', '2019-06-07 18:01:13', '0');
INSERT INTO `exrecord` VALUES ('431', '6', '2019-06-08 10:54:09', '0');
INSERT INTO `exrecord` VALUES ('432', '6', '2019-06-08 10:54:43', '1');
INSERT INTO `exrecord` VALUES ('433', '6', '2019-06-08 10:55:41', '0');
INSERT INTO `exrecord` VALUES ('434', '6', '2019-06-08 10:56:05', '0');
INSERT INTO `exrecord` VALUES ('435', '6', '2019-06-08 10:56:11', '0');
INSERT INTO `exrecord` VALUES ('436', '6', '2019-06-08 10:56:20', '0');
INSERT INTO `exrecord` VALUES ('437', '6', '2019-06-08 10:56:29', '0');
INSERT INTO `exrecord` VALUES ('438', '6', '2019-06-08 10:57:24', '0');
INSERT INTO `exrecord` VALUES ('439', '6', '2019-06-08 10:57:27', '0');
INSERT INTO `exrecord` VALUES ('440', '6', '2019-06-08 10:57:54', '0');
INSERT INTO `exrecord` VALUES ('441', '6', '2019-06-08 10:57:57', '0');
INSERT INTO `exrecord` VALUES ('442', '6', '2019-06-08 10:58:10', '0');
INSERT INTO `exrecord` VALUES ('443', '6', '2019-06-08 10:58:13', '0');
INSERT INTO `exrecord` VALUES ('444', '6', '2019-06-08 10:58:16', '0');
INSERT INTO `exrecord` VALUES ('445', '6', '2019-06-08 10:58:43', '0');
INSERT INTO `exrecord` VALUES ('446', '6', '2019-06-08 10:59:01', '0');
INSERT INTO `exrecord` VALUES ('447', '6', '2019-06-08 10:59:07', '0');
INSERT INTO `exrecord` VALUES ('448', '6', '2019-06-08 10:59:26', '0');
INSERT INTO `exrecord` VALUES ('449', '6', '2019-06-08 10:59:29', '0');
INSERT INTO `exrecord` VALUES ('450', '6', '2019-06-08 10:59:47', '0');
INSERT INTO `exrecord` VALUES ('451', '6', '2019-06-08 11:01:18', '0');
INSERT INTO `exrecord` VALUES ('452', '6', '2019-06-08 11:01:33', '0');
INSERT INTO `exrecord` VALUES ('453', '6', '2019-06-08 11:02:28', '0');
INSERT INTO `exrecord` VALUES ('454', '6', '2019-06-08 11:02:34', '0');
INSERT INTO `exrecord` VALUES ('455', '6', '2019-06-08 11:02:37', '0');
INSERT INTO `exrecord` VALUES ('456', '6', '2019-06-08 11:02:40', '0');
INSERT INTO `exrecord` VALUES ('457', '6', '2019-06-08 11:03:19', '0');
INSERT INTO `exrecord` VALUES ('458', '6', '2019-06-08 11:03:43', '0');
INSERT INTO `exrecord` VALUES ('459', '6', '2019-06-08 11:04:23', '0');
INSERT INTO `exrecord` VALUES ('460', '6', '2019-06-11 10:41:07', '0');
INSERT INTO `exrecord` VALUES ('461', '6', '2019-06-11 10:41:22', '0');
INSERT INTO `exrecord` VALUES ('462', '6', '2019-06-11 14:55:41', '0');
INSERT INTO `exrecord` VALUES ('463', '6', '2019-06-11 14:55:50', '0');
INSERT INTO `exrecord` VALUES ('464', '6', '2019-06-11 14:56:11', '0');
INSERT INTO `exrecord` VALUES ('465', '6', '2019-06-11 14:56:27', '0');
INSERT INTO `exrecord` VALUES ('466', '6', '2019-06-11 14:56:42', '0');
INSERT INTO `exrecord` VALUES ('467', '6', '2019-06-11 14:57:22', '0');
INSERT INTO `exrecord` VALUES ('468', '6', '2019-06-11 14:58:41', '0');
INSERT INTO `exrecord` VALUES ('469', '6', '2019-06-11 14:58:44', '0');
INSERT INTO `exrecord` VALUES ('470', '6', '2019-06-11 14:59:05', '0');
INSERT INTO `exrecord` VALUES ('471', '6', '2019-06-11 14:59:14', '0');
INSERT INTO `exrecord` VALUES ('472', '6', '2019-06-11 14:59:33', '0');
INSERT INTO `exrecord` VALUES ('473', '6', '2019-06-12 15:25:16', '0');
INSERT INTO `exrecord` VALUES ('474', '6', '2019-06-12 15:26:26', '0');
INSERT INTO `exrecord` VALUES ('475', '6', '2019-06-12 15:26:38', '0');
INSERT INTO `exrecord` VALUES ('476', '6', '2019-06-12 15:26:44', '0');
INSERT INTO `exrecord` VALUES ('477', '6', '2019-06-12 15:26:54', '0');
INSERT INTO `exrecord` VALUES ('478', '6', '2019-06-12 15:27:39', '0');
INSERT INTO `exrecord` VALUES ('479', '6', '2019-06-12 15:27:49', '0');
INSERT INTO `exrecord` VALUES ('480', '6', '2019-06-12 15:28:01', '0');
INSERT INTO `exrecord` VALUES ('481', '6', '2019-06-12 15:28:59', '0');
INSERT INTO `exrecord` VALUES ('482', '6', '2019-06-12 15:29:33', '0');
INSERT INTO `exrecord` VALUES ('483', '6', '2019-06-12 15:29:42', '0');
INSERT INTO `exrecord` VALUES ('484', '6', '2019-06-12 15:29:57', '0');
INSERT INTO `exrecord` VALUES ('485', '6', '2019-06-12 15:30:55', '0');
INSERT INTO `exrecord` VALUES ('486', '6', '2019-06-12 15:31:13', '0');
INSERT INTO `exrecord` VALUES ('487', '6', '2019-06-12 15:32:45', '0');
INSERT INTO `exrecord` VALUES ('488', '6', '2019-06-12 15:33:28', '0');
INSERT INTO `exrecord` VALUES ('489', '6', '2019-06-12 15:33:34', '0');
INSERT INTO `exrecord` VALUES ('490', '6', '2019-06-12 15:34:10', '0');
INSERT INTO `exrecord` VALUES ('491', '6', '2019-06-12 15:34:35', '0');
INSERT INTO `exrecord` VALUES ('492', '6', '2019-06-12 15:34:47', '0');
INSERT INTO `exrecord` VALUES ('493', '6', '2019-06-12 15:34:50', '0');
INSERT INTO `exrecord` VALUES ('494', '6', '2019-06-12 15:35:14', '0');
INSERT INTO `exrecord` VALUES ('495', '6', '2019-06-12 15:35:48', '0');
INSERT INTO `exrecord` VALUES ('496', '6', '2019-06-12 15:36:06', '0');
INSERT INTO `exrecord` VALUES ('497', '6', '2019-06-12 15:36:24', '0');
INSERT INTO `exrecord` VALUES ('498', '6', '2019-06-12 15:36:43', '0');
INSERT INTO `exrecord` VALUES ('499', '6', '2019-06-12 15:36:55', '0');
INSERT INTO `exrecord` VALUES ('500', '6', '2019-06-12 15:37:01', '0');
INSERT INTO `exrecord` VALUES ('501', '6', '2019-06-12 15:37:07', '0');
INSERT INTO `exrecord` VALUES ('502', '6', '2019-06-12 15:37:19', '0');
INSERT INTO `exrecord` VALUES ('503', '6', '2019-06-12 15:37:35', '0');
INSERT INTO `exrecord` VALUES ('504', '6', '2019-06-12 15:38:02', '0');
INSERT INTO `exrecord` VALUES ('505', '6', '2019-06-12 15:38:17', '0');
INSERT INTO `exrecord` VALUES ('506', '6', '2019-06-12 15:39:03', '0');
INSERT INTO `exrecord` VALUES ('507', '6', '2019-06-12 15:39:21', '0');
INSERT INTO `exrecord` VALUES ('508', '6', '2019-06-12 15:41:11', '0');
INSERT INTO `exrecord` VALUES ('509', '6', '2019-06-12 15:41:20', '0');
INSERT INTO `exrecord` VALUES ('510', '6', '2019-06-12 15:42:18', '0');
INSERT INTO `exrecord` VALUES ('511', '6', '2019-06-12 15:42:24', '0');
INSERT INTO `exrecord` VALUES ('512', '6', '2019-06-12 15:42:49', '0');
INSERT INTO `exrecord` VALUES ('513', '6', '2019-06-12 15:42:58', '0');
INSERT INTO `exrecord` VALUES ('514', '6', '2019-06-12 15:43:44', '0');
INSERT INTO `exrecord` VALUES ('515', '6', '2019-06-12 15:43:56', '0');
INSERT INTO `exrecord` VALUES ('516', '6', '2019-06-12 15:44:11', '0');
INSERT INTO `exrecord` VALUES ('517', '6', '2019-06-12 15:44:23', '0');
INSERT INTO `exrecord` VALUES ('518', '6', '2019-06-12 15:44:38', '0');
INSERT INTO `exrecord` VALUES ('519', '6', '2019-06-12 15:45:39', '0');
INSERT INTO `exrecord` VALUES ('520', '6', '2019-06-12 15:45:52', '0');
INSERT INTO `exrecord` VALUES ('521', '6', '2019-06-12 15:45:58', '0');
INSERT INTO `exrecord` VALUES ('522', '6', '2019-06-12 15:46:07', '0');
INSERT INTO `exrecord` VALUES ('523', '6', '2019-06-12 15:46:37', '0');
INSERT INTO `exrecord` VALUES ('524', '6', '2019-06-12 15:46:53', '0');
INSERT INTO `exrecord` VALUES ('525', '6', '2019-06-12 15:46:56', '0');
INSERT INTO `exrecord` VALUES ('526', '6', '2019-06-12 15:46:59', '0');
INSERT INTO `exrecord` VALUES ('527', '6', '2019-06-12 15:47:08', '0');
INSERT INTO `exrecord` VALUES ('528', '6', '2019-06-12 15:47:17', '0');
INSERT INTO `exrecord` VALUES ('529', '6', '2019-06-12 15:47:35', '0');
INSERT INTO `exrecord` VALUES ('530', '6', '2019-06-12 15:48:06', '0');
INSERT INTO `exrecord` VALUES ('531', '6', '2019-06-12 15:48:58', '0');
INSERT INTO `exrecord` VALUES ('532', '6', '2019-06-12 15:49:13', '0');
INSERT INTO `exrecord` VALUES ('533', '6', '2019-06-12 15:49:46', '0');
INSERT INTO `exrecord` VALUES ('534', '6', '2019-06-12 15:49:50', '0');
INSERT INTO `exrecord` VALUES ('535', '6', '2019-06-12 15:50:05', '0');
INSERT INTO `exrecord` VALUES ('536', '6', '2019-06-12 15:50:29', '0');
INSERT INTO `exrecord` VALUES ('537', '6', '2019-06-12 15:51:03', '0');
INSERT INTO `exrecord` VALUES ('538', '6', '2019-06-12 15:51:30', '0');
INSERT INTO `exrecord` VALUES ('539', '6', '2019-06-12 15:51:45', '0');
INSERT INTO `exrecord` VALUES ('540', '6', '2019-06-12 15:52:19', '0');
INSERT INTO `exrecord` VALUES ('541', '6', '2019-06-12 15:52:22', '0');

-- ----------------------------
-- Table structure for exstatistic
-- ----------------------------
DROP TABLE IF EXISTS `exstatistic`;
CREATE TABLE `exstatistic` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `eid` int(11) DEFAULT NULL,
  `onset` int(2) DEFAULT NULL,
  `factor` int(2) DEFAULT NULL,
  `state` int(2) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `exstatistic_ibfk_1` (`eid`),
  CONSTRAINT `exstatistic_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `exrecord` (`eid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exstatistic
-- ----------------------------
INSERT INTO `exstatistic` VALUES ('4', '132', '0', '0', '0', '0');
INSERT INTO `exstatistic` VALUES ('15', '131', '0', '0', '0', '0');
INSERT INTO `exstatistic` VALUES ('23', '130', '0', '0', '0', '0');
INSERT INTO `exstatistic` VALUES ('24', '129', '0', '0', '0', '1');
INSERT INTO `exstatistic` VALUES ('25', '128', '0', '1', '0', '2');
INSERT INTO `exstatistic` VALUES ('26', '140', '1', '1', '1', '1');
INSERT INTO `exstatistic` VALUES ('27', '139', '0', '0', '1', '0');
INSERT INTO `exstatistic` VALUES ('28', '138', '0', '0', '1', '1');
INSERT INTO `exstatistic` VALUES ('29', '137', '1', '1', '0', '0');
INSERT INTO `exstatistic` VALUES ('30', '136', '2', '2', '0', '2');
INSERT INTO `exstatistic` VALUES ('31', '135', '0', '0', '1', '3');
INSERT INTO `exstatistic` VALUES ('32', '134', '3', '3', '0', '4');
INSERT INTO `exstatistic` VALUES ('33', '127', '0', '1', '1', '1');
INSERT INTO `exstatistic` VALUES ('34', '126', '3', '3', '1', '2');
INSERT INTO `exstatistic` VALUES ('35', '186', '1', '2', '1', '2');
INSERT INTO `exstatistic` VALUES ('36', '185', '1', '3', '1', '2');
INSERT INTO `exstatistic` VALUES ('37', '260', '1', '1', '0', '0');
INSERT INTO `exstatistic` VALUES ('38', '254', '1', '0', '1', '2');
INSERT INTO `exstatistic` VALUES ('39', '284', '1', '1', '1', '2');
INSERT INTO `exstatistic` VALUES ('40', '286', '2', '2', '0', '1');
INSERT INTO `exstatistic` VALUES ('41', '432', '0', '2', '1', '0');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `content` text,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`mid`),
  KEY `message_ibfk_1` (`uid`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('11', null, '2018-11-17 17:06:01', '陈', '18072210523', 'chen@163.com', '数据泄露', '0', '贵公司数据泄露', '0');
INSERT INTO `message` VALUES ('21', '6', '2019-03-12 22:43:42', null, null, null, '用户友好性', '0', '操作麻烦，不够方便', '0');
INSERT INTO `message` VALUES ('22', '6', '2019-03-22 15:48:22', null, null, null, '假药', '1', '微信上的奇方世家卖假药，西安奇方世家卖假药', '0');
INSERT INTO `message` VALUES ('23', null, '2019-03-24 16:40:34', '陈', '18072210523', 'honyochen@163.com', '申请医生账号', '0', '本人想体验系统，申请管理员开通医生账号', '0');
INSERT INTO `message` VALUES ('25', null, '2019-03-24 22:24:55', '边锦', '15769293449', 'bianjin@snnu.edu.cn', '病情解答', '0', '再次完善', '1');
INSERT INTO `message` VALUES ('27', '6', '2019-04-01 10:57:39', null, null, null, '挂号费用', '0', '建议可以提前预约挂号！费用不要太贵，一般人都可以负担的起', '0');

-- ----------------------------
-- Table structure for mrecord
-- ----------------------------
DROP TABLE IF EXISTS `mrecord`;
CREATE TABLE `mrecord` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `part` int(11) DEFAULT NULL,
  `description` text,
  `content` text,
  PRIMARY KEY (`rid`),
  KEY `mrecord_ibfk_1` (`pid`),
  KEY `mrecord_ibfk_2` (`did`),
  CONSTRAINT `mrecord_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `patient` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mrecord_ibfk_2` FOREIGN KEY (`did`) REFERENCES `doctor` (`did`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mrecord
-- ----------------------------
INSERT INTO `mrecord` VALUES ('5', '8', '20', '2018-11-10 09:25:18', '1', '耳鸣', '血管扩张药、钙离子拮抗剂、耳鸣抑制药、减轻耳鸣影响药物和神经营养药物等。');
INSERT INTO `mrecord` VALUES ('7', '4', '17', '2018-11-10 16:34:55', '0', '感冒头痛', '感冒灵颗粒');
INSERT INTO `mrecord` VALUES ('9', '9', '18', '2018-11-15 15:58:58', '7', '皮肤起疹子', '你好，你这个考虑是荨麻疹，由于皮肤受冷热刺激，接触过敏源引起的。\n可以口服西替利嗪和酮替酚，外用尤卓尔软膏，期间不要吃海鲜，不要用开水烫洗。');
INSERT INTO `mrecord` VALUES ('17', '6', '17', '2018-11-27 15:42:42', '6', '腰酸背痛', '换季节气，注意休息');

-- ----------------------------
-- Table structure for patient
-- ----------------------------
DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `pid` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `profession` varchar(30) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `signature` text,
  `cname` varchar(30) DEFAULT NULL,
  `crelation` varchar(30) DEFAULT NULL,
  `cphone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient
-- ----------------------------
INSERT INTO `patient` VALUES ('4', '章国政', '1', '2010-10-27', '学生', '陕西省西安市区', '710119', '买了佛冷', '陈', '同学', '18072210523');
INSERT INTO `patient` VALUES ('6', '边锦', '0', '1993-04-16', '学生', '陕西省西安市', '710119', '花开', '章国政', '同学', '18312898152');
INSERT INTO `patient` VALUES ('8', '李映乐', '1', '1993-08-04', '学生', '陕西省西安市长安区西长安街620号', '710119', 'C位出道', '王寒', '同学', '13892900811');
INSERT INTO `patient` VALUES ('9', '李洪星', '1', '1993-04-23', '学生', '陕西省西安市长安区西长安街620号', '710119', 'Hello', '章国政', '同学', '18291931795');
INSERT INTO `patient` VALUES ('13', '王寒', '1', '1994-01-06', '学生', '陕西省西安市长安区西长安街620号', '710119', '怕，你就输了一辈子', '李映乐', '同学', '13985693256');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `uuid` varchar(35) NOT NULL,
  `code` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'administrator', 'administrator', '2', 'honyochen@163.com', '18829287624', 'fa1fe9e5f2ce417f9b55c064abc6cf5e', '');
INSERT INTO `user` VALUES ('2', 'chenzhe', 'chenzhe', '2', '18072210523@189.cn', '18072210523', '1cb4864862434fa38568ae9760480259', null);
INSERT INTO `user` VALUES ('4', 'guozheng', 'guozheng', '0', 'guozheng@163.com', '18291931795', '91b2025f7e774af78f4dae2148254b78', null);
INSERT INTO `user` VALUES ('6', 'bianjin', 'bianjin', '0', 'bianjin@snnu.edu.cn', '15769293449', 'd871a1a84c284dde8af2a0a1ef239a9e', null);
INSERT INTO `user` VALUES ('8', 'liyingle', 'liyingle', '0', 'liyingle@snnu.edu.cn', '15529039108', 'b4e2024d7ebf48d892d193ba1360065e', null);
INSERT INTO `user` VALUES ('9', 'lihongxing', 'lihongxing', '0', 'lihongxing@snnu.edu.cn', '15769201101', 'e71e38c38a1f49d8b5ee4104b84c4ad5', null);
INSERT INTO `user` VALUES ('13', 'wanghan', 'wanghan', '0', 'wanghan@snnu.edu.cn', '13892900811', '7b5cf44a8f0840f0bd64160190f60efa', null);
INSERT INTO `user` VALUES ('17', 'lvzhongmin', 'lvzhongmin', '1', 'lvzhongmin@snnu.edu.cn', '13100000002', '676728c5bced4535849dd142bd9f7c4d', null);
INSERT INTO `user` VALUES ('18', 'sunxuegong', 'sunxuegong', '1', 'sunxuegong@snnu.edu.cn', '13100000003', '2baeb2b7deb8413f9651cb1d7d954553', null);
INSERT INTO `user` VALUES ('19', 'xieailing', 'xieailing', '1', 'xieailing@snnu.edu.cn', '13100000005', 'f8f190aa8fda4240a087cf7ac03765ed', null);
INSERT INTO `user` VALUES ('20', 'chenchanggen', 'chenchanggen', '1', 'chenchanggen@163.com', '13100000006', '4fa28657f06c4d12a7274d4b56a2d1fd', null);
INSERT INTO `user` VALUES ('21', 'wangyuping', 'wangyuping', '1', 'wangyuping@163.com', '13100000007', 'e6d76fcf615e4a08bbe18a197c775b00', null);
INSERT INTO `user` VALUES ('22', 'lipengcheng', 'lipengcheng', '1', 'lipengcheng@163.com', '13100000008', 'b6003f51ed684f6e967919a7421fd035', null);
INSERT INTO `user` VALUES ('23', 'xuejianping', 'xuejianping', '1', 'xuejianping@163.com', '13100000009', 'c05ece028ab14a40bddc1d60d944768b', null);
INSERT INTO `user` VALUES ('24', 'liuzhongyong', 'liuzhongyong', '1', 'liuzhongyong@qq.com', '13200000001', 'b4e29bba2f8d419f8f6a35586649a873', null);
INSERT INTO `user` VALUES ('25', 'tiandenghan', 'tiandenghan', '1', 'tiandenghan@163.com', '13100000010', 'b9851e740e8745a1b061694551e3c2a1', null);
INSERT INTO `user` VALUES ('26', 'zhangguicheng', 'zhangguicheng', '1', 'zhangguichang@163.com', '13200000002', '3da3973d5ce14f8bba21a19c573b0e06', null);
INSERT INTO `user` VALUES ('27', 'huangyufeng', 'huangyufeng', '1', 'huangyufeng@163.com', '13100000011', 'b97aa2c8698b4ea39eddc500611e30bc', null);
INSERT INTO `user` VALUES ('28', 'yuanyiming', 'yuanyiming', '1', 'yuanyiming@163.com', '13100000012', 'e8f473ea40384f738ef3cde4a15fc7a5', null);
INSERT INTO `user` VALUES ('29', 'zangjing', 'zangjing', '1', 'zangjing@qq.com', '13200000003', 'f89889def1cf45718e7cf4109831e7d5', null);
INSERT INTO `user` VALUES ('30', 'liangyongjie', 'liangyongjie', '1', 'liangyongjie@snnu.com', '13200000004', '4fd645c6e6144f0fbed53465fce0ee15', null);
INSERT INTO `user` VALUES ('31', 'fushiting', 'fushiting', '1', 'fushiting@163.com', '13100000013', 'ae80d016d9924c02b2c5f9caf982f2c7', null);
INSERT INTO `user` VALUES ('32', 'xurongqian', 'xurongqian', '1', 'xurongqian@163.com', '13100000014', '080bd5184cfa45e9ae8138c6b4c17956', null);
INSERT INTO `user` VALUES ('33', 'zhouzhaoping', 'zhouzhaoping', '1', 'zhouzhaoping@qq.com', '13200000005', '02e78bbbedfc40c0ac68cb55f716cc27', null);
INSERT INTO `user` VALUES ('34', 'caizhenrong', 'caizhenrong', '1', 'caizhenrong@163.com', '13200000006', 'b60510bce2274ceea21474e0fa43b23d', null);
INSERT INTO `user` VALUES ('35', 'shenkunling', 'shenkunling', '1', 'shenkunling@163.com', '13100000015', '69d76ab3807e41fe964a58d9b7ebb0a4', null);
INSERT INTO `user` VALUES ('36', 'zhangjingyuan', 'zhangjingyuan', '1', 'zhangjingyuan@qq.com', '13200000007', 'd28c76c5f2934282817b960c53a491c3', null);
INSERT INTO `user` VALUES ('37', 'wangenguang', 'wangenguang', '1', 'wangenguang@163.com', '13200000008', '58a42b8fdbb44091a707fcf3477cc892', null);
INSERT INTO `user` VALUES ('38', 'yangqun', 'yangqun', '1', 'yangqun@qq.com', '13200000009', '89bd383abe7b4dd9acc19af0ebaad9b2', null);
INSERT INTO `user` VALUES ('39', 'taolei', 'taolei', '1', 'taolei@163.com', '13100000016', '7c7b5314c78b436a8f5716a8b74a41c9', null);
INSERT INTO `user` VALUES ('40', 'hanchao', 'hanchao', '1', 'hanchao@163.com', '13100000017', '8b6c01b656124804b84bb37689721c04', null);
INSERT INTO `user` VALUES ('41', 'wangdehui', 'wangdehui', '1', 'wangdehui@163.com', '13100000018', '933a722c95be4d31b6efb2bb5f2666c2', null);
INSERT INTO `user` VALUES ('42', 'lizhouhai', 'lizhouhai', '1', 'lizhouhai@163.com', '13200000010', '3203081084be4d3eacc6aee3507fc624', null);
INSERT INTO `user` VALUES ('43', 'chenzeng', 'chenzeng', '1', 'chenzeng@qq.com', '13200000011', 'a8bce78806994bbe9b8515cd56553724', null);
INSERT INTO `user` VALUES ('44', 'shangguanfeng', 'shangguanfeng', '1', 'shangguanfeng@163.com', '13200000012', '4a90989172374773b0f6e1ae89fcef79', null);
INSERT INTO `user` VALUES ('45', 'huanggui', 'huanggui', '1', 'huanggui@snnu.com', '13200000013', 'f0fa4925933b49a591f74292d5df146d', null);
INSERT INTO `user` VALUES ('46', 'shenpeng', 'shenpeng', '1', 'shenpeng@163.com', '13100000019', 'e208685fbffe475c929da5730772e730', null);
INSERT INTO `user` VALUES ('47', 'fangweijia', 'fangweijia', '1', 'fangweijia@163.com', '13100000020', 'f9b060f2445d49878fc4d9af6f41f84d', null);
INSERT INTO `user` VALUES ('48', 'dengjing', 'dengjing', '1', 'dengjing@163.com', '13100000021', 'd41e64a8619545b8a7f52b89ef925380', null);
INSERT INTO `user` VALUES ('49', 'chenyanqing', 'chenyanqing', '1', 'chenyanqing@qq.com', '13200000014', 'b21ea6d77f434912991a91d9e3c402ea', null);
INSERT INTO `user` VALUES ('50', 'xunong', 'xunong', '1', 'xunong@163.com', '13100000022', 'ea173104ce92499fb428b402a9258bba', null);
INSERT INTO `user` VALUES ('51', 'guoxiangyang', 'guoxiangyang', '1', 'guoxiangyang@snnu.com', '13200000015', 'de095b6e2dd0418bacb1355409cf5a75', null);
INSERT INTO `user` VALUES ('52', 'liurongguo', 'liurongguo', '1', 'liurongguo@163.com', '13200000016', 'cd42001f8600476bbd59acc161c29620', null);
INSERT INTO `user` VALUES ('53', 'cuiyongwu', 'cuiyongwu', '1', 'cuiyongwu@qq.com', '13200000017', '8c1b4059cb1a43419bf72400742be0bc', null);
INSERT INTO `user` VALUES ('54', 'yangshumei', 'yangshumei', '1', 'yangshumei@163.com', '13100000023', '57c45e81ac944629aabb9992881c855c', null);
INSERT INTO `user` VALUES ('55', 'qianwenyan', 'qianwenyan', '1', 'qianwenyan@163.com', '13100000024', 'c67c1159e8dc45bb80202c5c91217176', null);
INSERT INTO `user` VALUES ('56', 'lichangheng', 'lichangheng', '1', 'lichangheng@163.com', '13100000025', '0e8eb23092214183a93940e50701cfba', null);
INSERT INTO `user` VALUES ('57', 'liuqing', 'liuqing', '1', 'liuqing@163.com', '13200000018', 'e13d4c00785042438e49debe1a68a1c5', null);
INSERT INTO `user` VALUES ('58', 'mengguolin', 'mengguolin', '1', 'mengguolin', '13200000019', 'efbbcb0653f2454592962b23cea69950', null);
INSERT INTO `user` VALUES ('59', 'yanglijie', 'yanglijie', '1', 'yanglijie@qq.com', '13200000020', 'ee5387597bbb4984bedd70aa92325dfa', null);
INSERT INTO `user` VALUES ('60', 'taohuiren', 'taohuiren', '1', 'taohuiren@163.com', '13200000021', 'd74987c6664e43e098d28ec749e37b3d', null);
INSERT INTO `user` VALUES ('61', 'liuyanchi', 'liuyanchi', '1', 'liuyanchi@163.com', '13100000026', 'c32fa56ae9eb4b7b89f0dd46a25c57ca', null);
INSERT INTO `user` VALUES ('62', 'yangshoude', 'yangshoude', '1', 'yangshoude@163.com', '13100000027', '16bcded1c9f846708121ddb15a848cdc', null);
INSERT INTO `user` VALUES ('63', 'gonglanfang', 'gonglanfang', '1', 'gonglanfang@163.com', '13100000028', 'a32297c807094dd3aa4356dfa8ef4355', null);
INSERT INTO `user` VALUES ('64', 'liuijngyuan', 'liujngyuan', '1', 'liuijngyuan@163.com', '13100000029', '39d49d865dad4c4ba32c3bd1ffd842af', null);
INSERT INTO `user` VALUES ('65', 'guanyang', 'guanyang', '1', 'guanyang@163.com', '13200000022', 'ac2f6f6cc5664570b0f51d40d65d02b5', null);
INSERT INTO `user` VALUES ('66', 'yangshunyu', 'yangshunyu', '1', 'yangshunyu@snnu.com', '13200000023', '6351ad2ad24a41a790ee655f0bc324d5', null);
INSERT INTO `user` VALUES ('67', 'liqing', 'liqing', '1', 'liqing@qq.com', '13200000024', '8f88f0e19b2b44598d99bc9d79d7580c', null);
INSERT INTO `user` VALUES ('68', 'xieqinghua', 'xieqinghua', '1', 'xieqinghua@snnu.com', '13200000025', 'ceb487461da54926a335253a7b762efb', null);
INSERT INTO `user` VALUES ('69', 'yangjufeng', 'yangjufeng', '1', 'yangjufeng@163.con', '13100000030', '44a431652ebf4867a37616d69f5a3a7f', null);
INSERT INTO `user` VALUES ('70', 'jiangweimin', 'jiangweimin', '1', 'jiangweimin@163.com', '13100000031', 'c582849a16434e9baf924ecbf5f2528a', null);
INSERT INTO `user` VALUES ('71', 'tanxiaofeng', 'tanxiaofeng', '1', 'tanxiaofeng@163.com', '13100000032', '06c14c8c05ac4ec3a619fb0dbc332a97', null);
INSERT INTO `user` VALUES ('72', 'panye', 'panye', '1', 'panye@163.com', '13100000033', 'ec4c03b131644f19b0b9765f810f571c', null);
INSERT INTO `user` VALUES ('73', 'wangyanbo', 'wangyanbo', '1', 'wangyanbo@163.com', '13200000026', 'f76ea6b340a842a2aebfef1645107b72', null);
INSERT INTO `user` VALUES ('74', 'wangzhipeng', 'wangzhipeng', '1', 'wangzhipeng@qq.com', '13200000027', 'f5616308a9614243bcc4bd8430ab4f12', null);
INSERT INTO `user` VALUES ('75', 'chenjin', 'chenjin', '1', 'chenjin@snnu.com', '13200000028', 'ee0be6b529e84989ab504dd4ef3d862e', null);
INSERT INTO `user` VALUES ('76', 'yinyan', 'yinyan', '1', 'yinyan@163.com', '13100000034', '6628c507dd01458cb5db622bd13a8dc4', null);
INSERT INTO `user` VALUES ('77', 'jiaoyumei', 'jiaoyumei', '1', 'jiaoyumei@163.com', '13100000035', '90e4495839114a83a1f160d5c8a083a5', null);
INSERT INTO `user` VALUES ('78', 'zhengyingjun', 'zhengyingjun', '1', 'zhengyingjun@163.com', '13100000036', '740c798bc81d4fe29fb745490dce2eb2', null);
INSERT INTO `user` VALUES ('79', 'shihuameng', 'shihuameng', '1', 'shihuameng@163.com', '13100000037', '6dfd3f0709b9400f87df2b80e10dc2ea', null);
INSERT INTO `user` VALUES ('81', 'gaoweisheng', 'gaoweisheng', '1', 'gaoweisheng@163.com', '13300000000', '5cbaadb08a814333a68d941b4840f6ed', null);

-- ----------------------------
-- Function structure for getChildLst
-- ----------------------------
DROP FUNCTION IF EXISTS `getChildLst`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getChildLst`(rootId INT, uid INT) RETURNS varchar(1000) CHARSET utf8
BEGIN 
        DECLARE sTemp VARCHAR(1000); 
        DECLARE sTempChd VARCHAR(1000); 
        SET sTemp = '^';
        SET sTempChd =cast(rootId as CHAR); 
        WHILE sTempChd is not null DO 
            SET sTemp = concat(sTemp,',',sTempChd); 
            SELECT group_concat(fid) INTO sTempChd FROM cfile where FIND_IN_SET(parentPath,sTempChd)>0 and did = uid and isDirectory = 1; 
        END WHILE; 
        RETURN sTemp; 
END
;;
DELIMITER ;
