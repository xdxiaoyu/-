SET NAMES UTF8;
DROP DATABASE IF EXISTS movie;
CREATE DATABASE movie CHARSET=UTF8;
USE movie;
create table movielist (
	mid INT PRIMARY KEY AUTO_INCREMENT,
	mname varchar(100),
	mimgurl varchar(100),
	mcode DECIMAL(2,1),
	mstate varchar(50),
	mcontent varchar(100),
	mlm varchar(50)
);
					
insert into movielist (mid,mname,mimgurl,mcode,mstate,mcontent,mlm)
			values 
			(null,'杨贵妃','img/index/floor1_img1.jpg','7.8','爱情','大唐盛世一代宠妃','floor1'),
			(null,'越光宝盒','img/index/floor1_img2.jpg','5.9','喜剧','众星上阵恶搞大片','floor1'),
			(null,'大决战之辽沈战役','img/index/floor1_img3.jpg','6.7','战争','辽沈战役经典还原','floor1'),
			(null,'惊天动地','img/index/floor1_img4.jpg','7.9','惊悚','真实再现汶川地震','floor1'),
			(null,'匆匆那年','img/index/floor1_img5.jpg','5.9','爱情','于晏倪妮为爱撕扯','floor1'),
			(null,'木棉袈裟','img/index/floor1_img6.jpg','5.9','动作','于荣光变卧底和尚','floor1'),
			(null,'《让子弹飞》川话版','img/index/floor1_img7.jpg','5.9','剧情','三影帝爆笑飙方言','floor1'),
			(null,'斗牛','img/index/floor1_img8.jpg','9.0','喜剧','黄渤一人大战奶牛','floor1'),
			(null,'闪闪的红星','img/index/floor1_img9.jpg','6.0','剧情','经典演绎战争史诗','floor1'),
			(null,'战狼','img/index/floor1_img10.jpg','7.2','动作','犯我中华虽远必诛','floor1'),
			(null,'露水红颜','img/index/floor1_img11.jpg','7.7','爱情','刘亦菲痴情做模特','floor1'),
			(null,'向日葵','img/index/floor1_img12.jpg','6.7','剧情','胡同父子恩怨温情','floor1'),
			(null,'铁血娇娃','img/index/floor1_img13.jpg','6.9','动作','潘霜霜丛林秀魅力','floor1'),
			(null,'自古英雄出少年','img/index/floor1_img14.jpg','5.9','动作','少年面临生死逃亡','floor1'),
			(null,'妈妈出差的夏天','img/index/floor1_img15.jpg','5.9','剧情','大爱人间温暖心田','floor1'),
			(null,'大决战之平津战役','img/index/floor1_img16.jpg','6.0','战争','平津战役经典还原','floor1'),
			(null,'铁血大动脉','img/index/floor1_img17.jpg','5.9','剧情','抗美援朝伟大战役','floor1'),
			(null,'英雄儿女','img/index/floor1_img18.jpg','8.4','剧情','烽烟滚滚唱英雄','floor1'),

			(null,'影','img/index/2F_carsuo1.jpg','7.8','','张艺谋之匠心回归','floor2'),
			(null,'暮光·巴黎','img/index/2F_carsuo2.jpg','5.1','','魔幻爱情国际巨制','floor2'),
			(null,'擒贼先擒王','img/index/2F_carsuo3.jpg','7.0','','警匪对决斗智斗勇','floor2'),
			(null,'天籁梦想','img/index/2F_carsuo4.jpg','7.1','','藏族盲童为梦前行','floor2'),
			(null,'青年马克思','img/index/2F_carsuo5.jpg','8.7','','致敬伟大的思想家','floor2'),
			(null,'杀破狼·贪狼','img/index/2F_carsuo6.jpg','7.3','','古天乐深陷案中案','floor2'),
			(null,'金珠玛米','img/index/2F_carsuo7.jpg','7.1','','天高地阔好恶由心','floor2'),
			(null,'无问西东','img/index/2F_carsuo8.jpg','8.1','','坎坷人生青春史诗','floor2'),
			(null,'姽婳','img/index/2F_carsuo9.jpg','7.0','','恶灵画像见者必死','floor2'),
			(null,'河间圣手','img/index/2F_carsuo10.jpg','7.1','','名医卷入宫廷阴谋','floor2'),
			(null,'疯狂这一年','img/index/2F_carsuo11.jpg','7.0','','重温父爱嬉笑暖心','floor2'),
			(null,'谜巢','img/index/2F_carsuo12.jpg','7.0','','李冰冰古墓寻吴尊','floor2'),

			(null,'中国合伙人','img/index/floor3_img1.jpg','6.5','','互联网创业启示录','floor3'),
			(null,'一出好戏','img/index/floor3_img2.jpg','7.6','','黄渤艺兴荒岛求生','floor3'),
			(null,'来电狂响','img/index/floor3_img3.jpg','8.0','','话题喜剧爆笑贺岁','floor3'),
			(null,'我不是药神','img/index/floor3_img4.jpg','8.6','','警世良片神级演技','floor3'),

			(null,'反贪风暴2','img/index/floor4_img1.jpg','7.9','','周渝民为爱而牺牲','floor4'),
			(null,'消失的凶手','img/index/floor4_img2.jpg','5.9','','刘青云陷杀人游戏','floor4'),
			(null,'巴黎假期','img/index/floor4_img3.jpg','6.0','','古仔采洁巴黎相爱','floor4'),
			(null,'笑林足球','img/index/floor4_img4.jpg','7.0','','踢的沸腾笑的肺疼','floor4'),
			(null,'激战','img/index/floor4_img5.jpg','8.0','','彭于晏拜师张家辉','floor4'),
			(null,'血滴子','img/index/floor4_img6.jpg','7.3','','春春豪放变身杀手','floor4'),
			(null,'冲上云霄','img/index/floor4_img7.jpg','7.0','','张智霖饰帅气空少','floor4'),
			(null,'叶问2：宗师传','img/index/floor4_img8.jpg','6.0','','黄晓明苦学甄功夫','floor4'),

			(null,'烈日灼心','img/index/floor5_img1.jpg','5.9','','三大影帝虐心飙戏','floor5'),
			(null,'击战','img/index/floor5_img2.jpg','6.2','','关关出演清纯女神','floor5'),
			(null,'真相禁区','img/index/floor5_img3.jpg','6.7','','霍建华之复仇大计','floor5'),
			(null,'胡杨的夏天','img/index/floor5_img4.jpg','7.3','','陈佩斯朱时茂重聚','floor5'),
			(null,'寻龙诀','img/index/floor5_img5.jpg','5.9','','Baby变身古墓女神','floor5'),
			(null,'新娘大作战','img/index/floor5_img6.jpg','5.9','','杨颖倪妮高能开撕','floor5'),
			(null,'洛杉矶捣蛋计划','img/index/floor5_img7.jpg','7.6','','夏雨变身国际奶爸','floor5'),
			(null,'搜索','img/index/floor5_img8.jpg','6.0','','网络时代揭露人性','floor5'),

			(null,'成龙','img/index/6F_carsuo1.jpg','5.0','','','floor6'),
			(null,'建国大业','img/index/6F_carsuo2.jpg','5.9','','献礼建国六十周年','floor6'),
			(null,'寻找成龙','img/index/6F_carsuo3.jpg','5.9','','张一山不写寻成龙','floor6'),
			(null,'新警察故事','img/index/6F_carsuo4.jpg','6.0','','霍成龙大哥老戏新唱','floor6'),
			(null,'巩俐','img/index/6F_carsuo5.jpg','4.0','','','floor6'),
			(null,'秦昊','img/index/6F_carsuo6.jpg','5.0','','','floor6'),
			(null,'上海王','img/index/6F_carsuo7.jpg','7.8','','胡军余男江湖奇恋','floor6'),
			(null,'第一大总统','img/index/6F_carsuo8.jpg','7.1','','再现伟人平凡爱情','floor6'),
			(null,'幸福在哪里','img/index/6F_carsuo9.jpg','6.0','','误会连连阻碍幸福','floor6'),
			(null,'姚晨','img/index/6F_carsuo10.jpg','4.0','','','floor6'),
			(null,'武林外传','img/index/6F_carsuo11.jpg','8.8','','众侠重聚同福客栈','floor6'),
			(null,'我的长征','img/index/6F_carsuo12.jpg','5.9','','金鸡奖特别荣誉奖','floor6'),
			(null,'控制','img/index/6F_carsuo13.jpg','7.9','','吴彦祖情迷姚晨','floor6'),
			(null,'张译','img/index/6F_carsuo14.jpg','5.0','','','floor6'),
			(null,'越来越好之村','img/index/6F_carsuo15.jpg','5.9','','超强卡司牛逼贺岁','floor6'),
			(null,'山河故人','img/index/6F_carsuo16.jpg','8.4','','贾樟柯戛纳提名作','floor6'),
			(null,'红海行动','img/index/6F_carsuo17.jpg','8.9','','蛟龙出海扬我国威','floor6'),

			(null,'天梯：蔡国强的艺术','img/index/floor7_img1.jpg','5.9','','Baby变身古墓女神','floor7'),
			(null,'一句顶一万句','img/index/floor7_img2.jpg','7.0','','范伟刘蓓中年结婚','floor7'),
			(null,'清水里的刀子','img/index/floor7_img3.jpg','6.2','','清洁真我探寻人生','floor7'),
			(null,'无问西东','img/index/floor7_img4.jpg','8.1','','坎坷人生青春史诗','floor7'),

			(null,'海上新丝路','img/index/floor8_img1.jpg','','','发展海上丝绸之路','floor8'),
			(null,'豆腐味道','img/index/floor8_img2.jpg','','','青岩豆腐世代相传','floor8'),
			(null,'鹿精灵','img/index/floor8_img3.jpg','','','小鹿迪尔的成人礼','floor8'),
			(null,'似水流年','img/index/floor8_img4.jpg','','','记录神州大地巨变','floor8'),
			(null,'蚀','img/index/floor8_img5.jpg','','','欲望点燃利益驱使','floor8'),
			(null,'阿满的喜剧','img/index/floor8_img6.jpg','','','小学教师出差轶事','floor8'),

			(null,'建军大业','img/index/floor9_img1.jpg','','','张艺兴终圆军人梦','floor9'),
			(null,'大鱼海棠','img/index/floor9_img2.jpg','','','国产动漫惊世之作','floor9'),
			(null,'荡寇风云','img/index/floor9_img3.jpg','','','纵横无敌威震八方','floor9'),
			(null,'悟空传','img/index/floor9_img4.jpg','','','彭于晏版最帅悟空','floor9'),
			(null,'龙之战','img/index/floor9_img5.jpg','','','老戏骨刘佩琦加盟','floor9'),
			(null,'毛驴县令2','img/index/floor9_img6.jpg','','','边疆公主离家出走','floor9'),

			(null,'谁动了我的芭','img/index/movie_special/8.png','6.7','','','floor10'),
			(null,'善意的谎言','img/index/9.png','6.7','','诚实守信从我做起 善意谎言可以原谅','floor10'),
			(null,'梦','img/index/10.png','','','','floor10'),
			(null,'机变英盟8','img/index/11.png','','','','floor10'),
			(null,'奇怪的她','img/index/13.png','6.7','','神奇饮料穿过过去 挽救同学拯救生命','floor10'),
			(null,'机变英盟7','img/index/12.png','','','','floor10'),
			(null,'墨子籍之潜龙','img/index/7.png','6.7','','','floor10'),
			(null,'纪念长征胜利80周','img/index/1.png','','','','floor10'),
			(null,'魔性洗脑喜剧大片','img/index/2.png','','','','floor10'),
			(null,'大热大片献礼国庆','img/index/3.png','','','','floor10'),
			(null,'万恶毒品电影盘点','img/index/4.png','','','','floor10'),
			(null,'燃爆"爱国"血性','img/index/5.png','','','','floor10'),
			(null,'最丰富的抗日电影','img/index/6.png','','','','floor10'),

			(null,'喵星人','img/movie_page2/thumb_two1.jpg','7.3','','古天乐马丽遇猫记','flpage2'),
			(null,'喵星人','img/movie_page2/thumb_two1.jpg','7.3','','古天乐马丽遇猫记','flpage2'),
			(null,'喵星人','img/movie_page2/thumb_two1.jpg','7.3','','古天乐马丽遇猫记','flpage2'),
			(null,'喵星人','img/movie_page2/thumb_two1.jpg','7.3','','古天乐马丽遇猫记','flpage2'),
			(null,'喵星人','img/movie_page2/thumb_two1.jpg','7.3','','古天乐马丽遇猫记','flpage2'),
			(null,'喵星人','img/movie_page2/thumb_two1.jpg','7.3','','古天乐马丽遇猫记','flpage2'),
			(null,'喵星人','img/movie_page2/thumb_two1.jpg','7.3','','古天乐马丽遇猫记','flpage2'),
			(null,'喵星人','img/movie_page2/thumb_two1.jpg','7.3','','古天乐马丽遇猫记','flpage2')
			;

create table ranklist (
	rankid varchar(50),
	rankname varchar(100),
	ranklm varchar(50)
);
insert into ranklist (rankid,rankname,ranklm) values 
				('1','我和姐姐','floor3'),
				('2','大王派我来巡山','floor3'),
				('3','地狱究竟有几层','floor3'),
				('4','力王','floor3'),
				('5','我愿意I Do','floor3'),
				('6','菊豆','floor3'),
				('7','潘金莲','floor3'),
				('8','杀生','floor3'),
				('9','毒液：致命守护者','floor3'),
				('10','狼兵吼','floor3'),

				('1','新警察故事','floor4'),
				('2','叶问2：宗师传奇','floor4'),
				('3','狼牙','floor4'),
				('4','新少林寺','floor4'),
				('5','双子神偷','floor4'),
				('6','神话','floor4'),
				('7','卧虎','floor4'),
				('8','千机变2-花都大战','floor4'),
				('9','龙在少林','floor4'),
				('10','红玫瑰白玫瑰','floor4'),

				('1','杨贵妃','floor5'),
				('2','斗牛','floor5'),
				('3','惊天动地','floor5'),
				('4','越光宝盒','floor5'),
				('5','《让子弹飞》川','floor5'),
				('6','大决战之辽沈战役','floor5'),
				('7','妈妈出差的夏天','floor5'),
				('8','小锅盖娶亲','floor5'),
				('9','自古英雄出少年','floor5'),
				('10','大决战之平津战役','floor5'),

				('1','二次曝光','floor7'),
				('2','一代宗师','floor7'),
				('3','那山 那人 那狗','floor7'),
				('4','《山楂树之恋》','floor7'),
				('5','面纱','floor7'),
				('6','伯爵夫人','floor7'),
				('7','青春派','floor7'),
				('8','红河','floor7'),
				('9','牛郎织女','floor7'),
				('10','钢的琴','floor7')

				;

create table star (
	smid varchar(50),
	smname varchar(100),
	smimgurl varchar(50),
	smtime varchar(50),
	smlm varchar(50)
);
insert into star (smid,smname,smimgurl,smtime,smlm) values 
				('1','飞龙计划之电鳗人','img/star/intro_img1.jpg','','intro'),
				('2','尖峰时刻4','img/star/intro_img2.jpg','','intro'),
				('3','狂怒沙暴','img/star/intro_img3.jpg','','intro'),
				('4','雁侠行','img/star/intro_img4.jpg','','intro'),
				('5','家园行动','img/star/intro_img5.jpg','','intro'),
				('6','曼哈顿','img/star/intro_img6.jpg','','intro'),

				('1','“神探蒲松龄”惊艳现身 成龙大哥古装片形象独家解析','img/star/video_img1.jpg','05:12','video'),
				('2','《死侍2》上映三天勇夺票房冠军 成龙古装片形象独家解析','img/star/video_img2.jpg','20:00','video'),
				('3','美国女演员艾米·亚当斯第六次“冲奥” 成龙现身圣丹斯电影节','img/star/video_img3.jpg','03:36','video'),
				('4','《英伦对决》预告片','img/star/video_img4.jpg','01:30','video'),

				('1','洪金宝','img/star/about_img1.jpg','18','about'),
				('2','元彪','img/star/about_img2.jpg','17','about'),
				('3','卢惠光','img/star/about_img3.jpg','16','about'),
				('4','田俊','img/star/about_img4.jpg','13','about'),
				('5','火星','img/star/about_img5.jpg','13','about'),
				('6','元华','img/star/about_img6.jpg','11','about'),
				('7','石天','img/star/about_img7.jpg','10','about'),
				('8','吴彦祖','img/star/about_img8.jpg','9','about'),
				('9','李文泰','img/star/about_img9.jpg','9','about'),
				('10','董骠','img/star/about_img10.jpg','8','about'),
				('11','午马','img/star/about_img11.jpg','8','about'),
				('12','冯克安','img/star/about_img12.jpg','8','about'),
				('13','元奎','img/star/about_img13.jpg','8','about'),
				('14','李冰冰','img/star/about_img14.jpg','7','about'),
				('15','林正英','img/star/about_img15.jpg','7','about')

				;

create table movie (m_id varchar(50), m_name varchar(100),m_imgurl varchar(100),
				m_code varchar(30),
				m_state varchar(50), m_content varchar(100), m_lm varchar(50),
				m_type varchar(50), m_local varchar(50), m_plot varchar(50)
				);
									
insert into movie (m_id,m_name,m_imgurl,m_code,m_state,m_content,m_lm,m_type,m_local,m_plot) values
				('1000014','刑警队','1.png','6.4','最热','银行抢劫连环犯罪','内地','全部','全部','全部'),
				('1000015','陆小凤传奇之','2.png','6.1','最热','张智霖破假钞大案','内地','全部','全部','全部'),
				('1000016','青苹果','3.png','7.0','最热','海清青涩电影作品','内地','全部','全部','全部'),
				('1000017','医痴叶天士','4.png','5.9','最热','高超艺术享誉苏杭','内地','全部','全部','全部'),
				('1000018','少女','5.png','6.8','最热','高傲少女青涩初恋','内地','内地','全部','全部'),
				('1000019','陆小凤传奇之','6.png','6.0','最热','侠女出招恩将仇报','内地','全部','全部','全部'),
				('1000020','宗师卜六','7.png','5.9','最热','吴樾化身搏击大师','内地','全部','全部','全部'),
				('1000008','镖行天下之龙','8.png','5.9','最热','武林高手巅峰对决','独家','全部','全部','全部'),
				('1000009','刺杀吉川','9.png','6.1','最热','深入打击敌军内部','内地','独家','全部','全部'),
				('1000010','生死密电','10.png','5.9','最热','风尘女子饱受蹂躏','内地','独家','全部','全部'),
				('1000011','萧锋血战陈庄','11.png','5.9','最热','设伏歼灭敌奋力作战','独家','全部','全部','全部'),
				('1000012','杨门女将穆桂','12.png','5.9','最热','桂英挂帅杨门女将','独家','全部','全部','全部'),
				('1000013','杨门女将再战','13.png','6.9','最热','女将终极大乱军心','独家','全部','全部','全部');

CREATE TABLE userlist(
				id INT PRIMARY KEY AUTO_INCREMENT,
				uname VARCHAR(25),
				upass VARCHAR(32)
				);
INSERT INTO userlist VALUES
				(null,'tom',md5('tomsroots')),
				(null,'jerry',md5('235t4wregew5t')),
				(null,'luccy',md5('463eyhredg45')),
				(null,'lora',md5('3qtrfewsgwe')),
				(null,'lissa',md5('be56ty45egfdg')),
				(null,'anndy',md5('adgvoskago')),
				(null,'ywa',md5('6yrhgdfg')),
				(null,'joe',md5('n65rhyngf')),
				(null,'tom',md5('123')
				);