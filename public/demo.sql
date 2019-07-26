SET NAMES UTF8;
DROP DATABASE IF EXISTS dl;
CREATE DATABASE dl CHARSET=UTF8;
USE dl;

CREATE TABLE lun(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  user VARCHAR(32), 
  cont VARCHAR(256), 
  myimg VARCHAR(32), 
  dtime VARCHAR(64),  
  conment VARCHAR(256)                
);

INSERT INTO lun VALUES
(NULL, '管理员', '欢迎来到PGT摄影平台，在这记录下属于你的瞬间吧！', '', '2019-7-20', '');

CREATE TABLE user(
     lid INT  PRIMARY KEY AUTO_INCREMENT,
     phone   VARCHAR(11) UNIQUE,
     upwd   VARCHAR(16),
     img   VARCHAR(64)
);
INSERT INTO user VALUES
(NULL,'root123','123456','img/01.jpg');

