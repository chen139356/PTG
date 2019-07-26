SET NAMES UTF8;
DROP DATABASE IF EXISTS pgt;
CREATE DATABASE pgt CHARSET=UTF8;
USE pgt;

/****/
CREATE TABLE pgt_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),   
  gender INT                  
);
/**用户信息**/
INSERT INTO pgt_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567', '1'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', '1'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569','1'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560','0');


/****首页图片****/
CREATE TABLE ipgt(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),	
  title VARCHAR(64),
  txt VARCHAR(64),
  href VARCHAR(128)
);
INSERT INTO ipgt VALUES
(NULL, 'images/g1.jpg','风景摄影','祖国的大好河山','index_img?lid=1'),
(NULL, 'images/g2.jpg','人物摄影','发现身边最好的ta','index_img?lid=2'),
(NULL, 'images/g3.jpg','青海','青海的美，具有原生态、多样性，不可替代的独特魅力','index_img?lid=3'),
(NULL, 'images/g4.jpg','四川','四川山川秀丽、旅游资源丰富','index_img?lid=4'),
(NULL, 'images/g5.jpg','云南','丽江地处滇西北高原，金沙江中游','index_img?lid=5'),
(NULL, 'images/g6.jpg','动物摄影','动物是人类最好的朋友','index_img?lid=6'),
(NULL, 'images/g7.jpg','摄影','除了美好的摄影和技能，我们更在意影像背后价值观的认同。','index_img?lid=7');

/*摄影天地*/

/*轮播*/
CREATE TABLE spgt(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),	
  href VARCHAR(128)
);
INSERT INTO spgt VALUES
/*小轮播*/
(NULL, 'img/bg-contact.jpg','s_img?lid=1'),
(NULL, 'img/bg-about.jpg','s_img?lid=2'),
(NULL, 'img/bg-gallery.jpg','s_img?lid=3'),
(NULL, 'img/bg-homepage.jpg','s_img?lid=4'),
(NULL, 'img/bg-services.jpg','s_img?lid=5'),
/*大轮播*/
(NULL, 'img/fenjin.jpg','s_img?lid=6'),
(NULL, 'img/jianzhu.jpg','s_img?lid=7'),
(NULL, 'img/renwu.jpg','s_img?lid=8'),
(NULL, 'img/dongwu.jpg','s_img?lid=9'),




/*尾页图片和内容*/
CREATE TABLE spgt1(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),	
  href VARCHAR(128),
  title VARCHAR(64),
  sub VARCHAR(128)
);
INSERT INTO spgt1 VALUES
(NULL,'img/shouji.jpg','s_img?lid=10','把生活拍成诗，一台手机就够了','你是不是也有这样的感受？每次点开朋友圈到处都是好看的图片这是别人的生活：轻松、惬意、明朗、诗意，仿佛他们每天都在旅行'),
(NULL,'img/shouji.jpg','s_img?lid=10','一图一故事','每幅影像都是一个故事故事里的街头巷尾,有人捕捉感动的瞬间,有人偏爱啼笑皆非的错位,亦有人专注艺与美的传承一片地域，一个民族的文化 在影像中，被娓娓道来无言的故事，复杂或简单 但终会成就一种感动');

/*风景摄影图片*/
CREATE TABLE sights(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),	
  href VARCHAR(128)
);
INSERT INTO sights VALUES
/*头部轮播*/
(NULL, 'img/f1.jpg','sig_img?lid=1'),
(NULL, 'img/f2.jpg','sig_img?lid=2'),
(NULL, 'img/f3.jpg','sig_img?lid=3'),
(NULL, 'img/f4.jpg','sig_img?lid=4'),
(NULL, 'img/f5.jpg','sig_img?lid=5'),
(NULL, 'img/f6.jpg','sig_img?lid=6'),
(NULL, 'img/f7.jpg','sig_img?lid=7'),
(NULL, 'img/f8.jpg','sig_img?lid=8'),
(NULL, 'img/f9.jpg','sig_img?lid=9'),
(NULL, 'img/f10.jpg','sig_img?lid=10'),
/*佳片欣赏*/
(NULL, 'img/suiji1.jpg','sig_img?lid=11'),
(NULL, 'img/suiji2.jpg','sig_img?lid=12'),
(NULL, 'img/suiji3.jpg','sig_img?lid=13'),
(NULL, 'img/suiji4.jpg','sig_img?lid=14'),
(NULL, 'img/suiji5.jpg','sig_img?lid=15'),
(NULL, 'img/suiji6.jpg','sig_img?lid=16'),
(NULL, 'img/suiji7.jpg','sig_img?lid=17'),
(NULL, 'img/suiji8.jpg','sig_img?lid=18'),
(NULL, 'img/suiji9.jpg','sig_img?lid=19'),
/*建筑*/
(NULL, 'img/jianzhu01.jpg','sig_img?lid=20'),
(NULL, 'img/jianzhu02.jpg','sig_img?lid=21'),
(NULL, 'img/jianzhu03.jpg','sig_img?lid=22'),
(NULL, 'img/jianzhu04.jpg','sig_img?lid=23'),
(NULL, 'img/jianzhu05.jpg','sig_img?lid=24'),
(NULL, 'img/jianzhu06.jpg','sig_img?lid=25'),
/*四季如歌*/
(NULL, 'img/siji01.jpg','sig_img?lid=26'),
(NULL, 'img/siji02.jpg','sig_img?lid=27'),
(NULL, 'img/siji03.jpg','sig_img?lid=28'),
(NULL, 'img/siji04.jpg','sig_img?lid=29'),
(NULL, 'img/siji05.jpg','sig_img?lid=30'),
(NULL, 'img/siji06.jpg','sig_img?lid=31'),
/*自然风景*/
(NULL, 'img/ziran01.jpg','sig_img?lid=32'),
(NULL, 'img/ziran02.jpg','sig_img?lid=33'),
(NULL, 'img/ziran03.jpg','sig_img?lid=34'),
(NULL, 'img/ziran04.jpg','sig_img?lid=35'),
(NULL, 'img/ziran05.jpg','sig_img?lid=36'),
(NULL, 'img/ziran06.jpg','sig_img?lid=37'),
/*底部轮播*/
(NULL, 'img/p1.jpg','sig_img?lid=38'),
(NULL, 'img/p2.jpg','sig_img?lid=39'),
(NULL, 'img/p3.jpg','sig_img?lid=40'),
(NULL, 'img/p4.jpg','sig_img?lid=41'),
(NULL, 'img/p5.jpg','sig_img?lid=42'),
(NULL, 'img/p6.jpg','sig_img?lid=43'),
(NULL, 'img/p7.jpg','sig_img?lid=44'),
(NULL, 'img/p8.jpg','sig_img?lid=45'),
(NULL, 'img/p9.jpg','sig_img?lid=46'),
(NULL, 'img/p10.jpg','sig_img?lid=47');

CREATE TABLE figure(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),	
  href VARCHAR(128)
);
INSERT INTO figure VALUES
/*头部旋转图片*/
(NULL, 'img/tplb10.jpg','fig_img?lid=1'),
(NULL, 'img/tplb2.jpg','fig_img?lid=2'),
(NULL, 'img/tplb3.jpg','fig_img?lid=3'),
(NULL, 'img/tplb4.jpg','fig_img?lid=4'),
(NULL, 'img/tplb5.jpg','fig_img?lid=5'),
(NULL, 'img/tplb6.jpg','fig_img?lid=6'),
(NULL, 'img/tplb7.jpg','fig_img?lid=7'),
(NULL, 'img/tplb8.jpg','fig_img?lid=8'),
(NULL, 'img/tplb9.jpg','fig_img?lid=9'),
/*头部轮播*/
(NULL, 'img/table_img7.jpg','fig_img?lid=10'),
(NULL, 'img/table_img8.jpg','fig_img?lid=11'),
(NULL, 'img/table_img9.jpg','fig_img?lid=12'),
(NULL, 'img/table_img10.jpg','fig_img?lid=13'),
(NULL, 'img/table_img11.jpg','fig_img?lid=14'),
(NULL, 'img/table_img12.jpg','fig_img?lid=15'),
(NULL, 'img/table_img13.jpg','fig_img?lid=16'),
(NULL, 'img/table_img14.jpg','fig_img?lid=17'),
(NULL, 'img/table_img15.jpg','fig_img?lid=18'),
(NULL, 'img/table_img18.jpg','fig_img?lid=19'),
/*底部图*/
(NULL, 'img/center_xpxs_img4.jpg','fig_img?lid=20'),
(NULL, 'img/center_xpxs_img3.jpg','fig_img?lid=21'),
(NULL, 'img/xpxs_top_img8.jpg','fig_img?lid=22'),
(NULL, 'img/lunbo5-men.jpg','fig_img?lid=23'),
(NULL, 'img/lunbo1-men.jpg','fig_img?lid=23');

/*动物摄影*/
CREATE TABLE animal(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),	
  href VARCHAR(128)
);
INSERT INTO animal VALUES
(NULL, 'img/1.jpg','fig_img?lid=1'),
(NULL, 'img/2.jpg','fig_img?lid=2'),
(NULL, 'img/3.jpg','fig_img?lid=3'),
(NULL, 'img/4.jpg','fig_img?lid=4'),
(NULL, 'img/5.jpg','fig_img?lid=5'),
(NULL, 'img/6.jpg','fig_img?lid=6'),
(NULL, 'img/6.jpg','fig_img?lid=7'),
(NULL, 'img/7.jpg','fig_img?lid=8'),
(NULL, 'img/8.jpg','fig_img?lid=9'),
(NULL, 'img/9.jpg','fig_img?lid=10'),
(NULL, 'img/10.jpg','fig_img?lid=11'),
(NULL, 'img/1.jpg','fig_img?lid=12'),
(NULL, 'img/13.jpg','fig_img?lid=13'),
(NULL, 'img/4.jpg','fig_img?lid=14'),
(NULL, 'img/5.jpg','fig_img?lid=12'),
(NULL, 'img/1.jpg','fig_img?lid=16'),
(NULL, 'img/7.jpg','fig_img?lid=17'),
(NULL, 'img/8.jpg','fig_img?lid=18'),
(NULL, 'img/eyu.jpg','fig_img?lid=19'),
(NULL, 'img/eyu2.jpg','fig_img?lid=20'),
(NULL, 'img/daxiang.jpg','fig_img?lid=21'),
(NULL, 'img/daxiang2.jpg','fig_img?lid=22'),
(NULL, 'img/shayu.jpg','fig_img?lid=23'),
(NULL, 'img/shayu2.jpg','fig_img?lid=24'),
(NULL, 'img/xiniu.jpg','fig_img?lid=25'),
(NULL, 'img/xiniu2.jpg','fig_img?lid=26'),
(NULL, 'img/baihu2.jpg','fig_img?lid=27'),
(NULL, 'img/baihu.jpg','fig_img?lid=28'),
(NULL, 'img/milu.jpg','fig_img?lid=29'),
(NULL, 'img/milu2.jpg','fig_img?lid=30');

CREATE TABLE animals(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  sub VARCHAR(128),
  href VARCHAR(128)
);
INSERT INTO animals VALUES
(NULL, 'img/brdw1.jpg','狮子','学名：Panthera leo；英文名：Lion，简称狮，中国古称狻猊。
是一种生存在非洲与亚洲的大型猫科动物，是现存平均体重最大的猫科动物，也是在世界上唯一一种雌雄两态的猫科动物。','fig_img?lid=31'),
(NULL, 'img/brdw2.jpg','斑马','斑马（英文名称：zebra）：是现存的奇蹄目马科马属3种兽类的通称。
因身上有起保护作用的斑纹而得名。没有任何动物比斑马的皮毛更与众不同。斑马周身的条纹和人类的指纹一样——没有任何两头完全相同。','fig_img?lid=32'),
(NULL, 'img/brdw2.jpg','长劲鹿','长颈鹿（学名：Giraffa camelopardalis）是一种反刍偶蹄动物，拉丁文名字的意思是“长着豹纹的骆驼” 。它们是世界上现存最高的陆生动物。站立时由头至脚可达6-8米，体重约700千克','fig_img?lid=33');

/*旅游摄影*/
CREATE TABLE travel(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),	
  href VARCHAR(128)
);
INSERT INTO travel VALUES
/*qinhai*/
(NULL, 'img/img/qh-1.jpg','tra_img?lid=1'),
(NULL, 'img/img/qh-3.jpg','tra_img?lid=2'),
(NULL, 'img/img/qh-4jpg','tra_img?lid=3'),
(NULL, 'img/img/qh-5.jpg','tra_img?lid=4'),
(NULL, 'qhjs2-mt-1','tra_img?lid=4'),
(NULL, 'img/img/qh-5.jpg','tra_img?lid=4'),

/*sichuan*/
(NULL, 'img/素材3/daoc1.jpg ','tra_img?lid=5'),
(NULL, 'img/素材3/daoc2.jpg ','tra_img?lid=6'),
(NULL, 'img/素材3/daoc3.jpg ','tra_img?lid=7'),
(NULL, 'img/素材3/doujy1.jpg ','tra_img?lid=8'),
(NULL, 'img/素材3/doujy3.jpg ','tra_img?lid=9'),
(NULL, 'img/素材3/doujy5.jpg ','tra_img?lid=10'),
(NULL, 'img/素材3/jiuzg1.jpg ','tra_img?lid=11'),
(NULL, 'img/素材3/jiuzg2.jpg ','tra_img?lid=12'),
(NULL, 'img/素材3/jiuzg4.jpg ','tra_img?lid=13'),
(NULL, 'img/素材3/ruoeg1.jpg ','tra_img?lid=14'),
(NULL, 'img/素材3/ruoeg7.jpeg','tra_img?lid=15'),
(NULL, 'img/素材3/ruoeg4.jpeg','tra_img?lid=16'),
(NULL, 'img/素材3/daoc1.jpg','tra_img?lid=17'),
(NULL, 'img/素材3/daoc2.jpg','tra_img?lid=18'),
(NULL, 'img/素材4/sim.jpg','tra_img?lid=19'),
(NULL, 'img/素材4/sim2.jpg','tra_img?lid=20'),
(NULL, 'img/素材4/sim3.jpg','tra_img?lid=21'),
(NULL, 'img/素材4/sim4.jpg','tra_img?lid=22'),
(NULL, 'img/素材4/sim5.jpg','tra_img?lid=23'),
(NULL, 'img/素材4/sim7.jpg','tra_img?lid=14'),
(NULL, 'img/素材4/sim4.jpg','tra_img?lid=25'),
(NULL, 'img/素材5/mis9.jpg','tra_img?lid=26'),
(NULL, 'img/素材5/mis15.jpg','tra_img?lid=27'),
(NULL, 'img/素材5/mis14.jpg','tra_img?lid=28'),
(NULL, 'img/素材5/mis13.jpg','tra_img?lid=29'),
(NULL, 'img/素材5/mis11.jpg','tra_img?lid=30'),
(NULL, 'img/素材5/mis12.JPEG','tra_img?lid=31'),
(NULL, 'img/素材5/mis10.jpg','tra_img?lid=32'),
 /*yunnan*/
 (NULL, 'img/yunnan/yn2.jpg','tra_img?lid=33'),
 (NULL, 'img/yunnan/lj10.jpg','tra_img?lid=34'),
 (NULL, 'img/yunnan/lj11.jpg','tra_img?lid=35'),
 (NULL, 'img/yunnan/lj8.jpg','tra_img?lid=36'),
 (NULL, 'img/yunnan/lj3.jpg','tra_img?lid=37'),
 (NULL, 'img/yunnan/lj6.jpg','tra_img?lid=38'),
 (NULL, 'img/yunnan/lj7.jpg','tra_img?lid=39'),
 (NULL, 'img/yunnan/lj2.jpg','tra_img?lid=40'),
 (NULL, 'img/yunnan/lj5.jpg','tra_img?lid=41'),
 (NULL, 'img/yunnan/lj9.jpg','tra_img?lid=42'),
 (NULL, 'img/yunnan/lj12.jpg','tra_img?lid=43'),

 (NULL, 'img/yunnan/xgll-1.jpg','tra_img?lid=44'),
 (NULL, 'img/yunnan/xgll-2.jpg','tra_img?lid=45'),
 (NULL, 'img/yunnan/xgll-3.jpg','tra_img?lid=46'),
 (NULL, 'img/yunnan/xgll-4.jpg','tra_img?lid=47'),
 (NULL, 'img/yunnan/xgll-5.jpg','tra_img?lid=48'),
 (NULL, 'img/yunnan/xgll-6.jpg','tra_img?lid=49'),
 (NULL, 'img/yunnan/xgll-7.jpg','tra_img?lid=50'),
 (NULL, 'img/yunnan/xgll-8.jpg','tra_img?lid=51'),
 (NULL, 'img/yunnan/xgll-9.jpg','tra_img?lid=52'),
 (NULL, 'img/yunnan/xgll-10.jpg','tra_img?lid=53'),

 (NULL, 'img/yunnan/dl-10.jpg','tra_img?lid=54'),
 (NULL, 'img/yunnan/dl-11.jpg','tra_img?lid=55'),
 (NULL, 'img/yunnan/dl-2.jpg','tra_img?lid=56'),
 (NULL, 'img/yunnan/dl-14.jpg','tra_img?lid=57'),
 (NULL, 'img/yunnan/dl-4.jpg','tra_img?lid=58'),
 (NULL, 'img/yunnan/dl-7a.jpg','tra_img?lid=59'),
 (NULL, 'img/yunnan/dl-8.jpg','tra_img?lid=60'),
 (NULL, 'img/yunnan/dl-9.jpg','tra_img?lid=61'),
 (NULL, 'img/yunnan/dl-13.jpg','tra_img?lid=62'),
 (NULL, 'img/yunnan/dl-5.jpg','tra_img?lid=63'),

 (NULL, 'img/yunnan/lj1.jpg','tra_img?lid=64'),
 (NULL, 'img/yunnan/lj4.jpg','tra_img?lid=65'),
 (NULL, 'img/yunnan/lj8.jpg','tra_img?lid=66'),
 (NULL, 'img/yunnan/lj13.jpg','tra_img?lid=67'),

 (NULL, 'img/yunnan/dl-1.jpg','tra_img?lid=68'),
 (NULL, 'img/yunnan/dl-12.jpg','tra_img?lid=69'),
 (NULL, 'img/yunnan/dl-6.jpg','tra_img?lid=70'),
 (NULL, 'img/yunnan/dl-3.jpg','tra_img?lid=71'),

 (NULL, 'img/yunnan/xgll-11.jpg','tra_img?lid=72'),
 (NULL, 'img/yunnan/xgll-12.jpg','tra_img?lid=73'),
 (NULL, 'img/yunnan/xgll-13.jpg','tra_img?lid=74'),
 (NULL, 'img/yunnan/xgll-14.jpg','tra_img?lid=75');