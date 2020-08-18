/*
SQLyog Community Edition- MySQL GUI v8.03 
MySQL - 5.1.50-community : Database - scms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`scms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `scms`;

/*Table structure for table `batscore` */

DROP TABLE IF EXISTS `batscore`;

CREATE TABLE `batscore` (
  `matchname` varchar(45) NOT NULL,
  `teamname` varchar(45) NOT NULL,
  `playername` varchar(45) NOT NULL,
  `modeofdismissal` varchar(45) NOT NULL,
  `bowlname` varchar(45) NOT NULL,
  `run` varchar(45) NOT NULL,
  `event_id` int(10) unsigned NOT NULL,
  KEY `FK_batscore_1` (`event_id`),
  CONSTRAINT `FK_batscore_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `batscore` */

insert  into `batscore`(`matchname`,`teamname`,`playername`,`modeofdismissal`,`bowlname`,`run`,`event_id`) values ('qq','Under20, ','sachin','catch','magrath','20',1);

/*Table structure for table `booked` */

DROP TABLE IF EXISTS `booked`;

CREATE TABLE `booked` (
  `booked_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `stadiumname` varchar(45) DEFAULT NULL,
  `eventname` varchar(45) DEFAULT NULL,
  `teamname` varchar(45) DEFAULT NULL,
  `teamname1` varchar(45) DEFAULT NULL,
  `event_id` varchar(45) DEFAULT NULL,
  `state` int(10) DEFAULT NULL,
  PRIMARY KEY (`booked_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `booked` */

insert  into `booked`(`booked_id`,`startdate`,`enddate`,`stadiumname`,`eventname`,`teamname`,`teamname1`,`event_id`,`state`) values (1,'0000-00-00','0000-00-00','aasd',NULL,NULL,NULL,'1',1),(2,'0000-00-00','0000-00-00','indira',NULL,NULL,NULL,'2',1),(3,'0000-00-00','0000-00-00','war',NULL,NULL,NULL,'3',1),(4,'0000-00-00','0000-00-00','ambedkar',NULL,NULL,NULL,'',1),(5,'0000-00-00','0000-00-00','abc',NULL,NULL,NULL,'0',0),(6,NULL,NULL,'vart',NULL,NULL,NULL,NULL,1),(7,'2014-11-22','2014-11-28','aasd','ipl','Under20','Tamilnadu','1',0),(8,'2014-11-22','2014-11-28','war','wwww','Tamilnadu','Under20','2',0),(9,'2014-11-01','2014-11-09','ambedkar','werww','Under20','Tamilnadu','3',0),(10,'0000-00-00','0000-00-00','aqaer',NULL,NULL,NULL,'0',1),(11,'2014-11-01','2014-11-09','aqaer','werww','Under20','Tamilnadu','3',0);

/*Table structure for table `bowlscore` */

DROP TABLE IF EXISTS `bowlscore`;

CREATE TABLE `bowlscore` (
  `matchname` varchar(45) NOT NULL,
  `teamname` varchar(45) NOT NULL,
  `playername` varchar(45) NOT NULL,
  `totalovers` varchar(45) NOT NULL,
  `maidianover` varchar(45) NOT NULL,
  `wicket` varchar(45) NOT NULL,
  `noball` varchar(45) NOT NULL,
  `wide` varchar(45) NOT NULL,
  `run` varchar(45) NOT NULL,
  `event_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bowlscore` */

insert  into `bowlscore`(`matchname`,`teamname`,`playername`,`totalovers`,`maidianover`,`wicket`,`noball`,`wide`,`run`,`event_id`) values ('qq','Under20, Under20','ganguly','10','2','2','3','4','34','1');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `frm` varchar(50) DEFAULT NULL,
  `too` varchar(45) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chat` */

insert  into `chat`(`frm`,`too`,`message`,`status`) values ('user','team@','User : sdfsfasf','1'),('user','team@','User : zczczsdc','1'),('team@','user','Team@ : juyguyftvt','1'),('user','team@','User : vdjnfv','1'),('user','team@','User : dfgdfgdf','1'),('user','team@','User : ,n  bmvg','1'),('team@','user','Team@ : czczxc','1'),('team@','qw','Team@ : zczxc','0'),('user','team@','User : jgnhkm','1'),('user','qw','User : slfjibdlfkndfe.ld','1'),('team@','user','Team@ : slkfjslfsfbsfnsofnwf','1'),('user','team@','User : kiuhibbbni','1'),('team@','user','Team@ : jmhgbjn','1'),('user','team@','User : ,hnnmuouyhoi','1'),('user','team@','User : fghdgfd','1'),('user','team@','User : sedfsfs','1'),('user','team@','User : vvbsdjxbxbbxvxs','1'),('user','team@','User : ggggg','1'),('user','team@','User : s;odigjjslgesnf;lksdnl;ksdfpwe8hr;weoif','1'),('user','team@','User : asd','1'),('user','team@','User : awdawd','1'),('user','team@','User : asdasd','1'),('team@','user','Team@ : werweerwer','1'),('team@','user','Team@ : yyryr','1');

/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `event_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `matchname` varchar(45) NOT NULL,
  `eventname` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `team1` varchar(45) NOT NULL,
  `email1` varchar(45) NOT NULL,
  `team2` varchar(45) NOT NULL,
  `eamil2` varchar(45) NOT NULL,
  `eventtype` varchar(45) NOT NULL,
  `startdate` varchar(45) NOT NULL,
  `enddate` varchar(45) NOT NULL,
  `matchmode` varchar(45) NOT NULL,
  `stadiumname` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `totalseat` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL,
  `mainumpaire` varchar(45) NOT NULL,
  `legumpaire` varchar(45) NOT NULL,
  `theirdumpaire` varchar(45) NOT NULL,
  `matchtime` varchar(45) NOT NULL,
  `meettime` varchar(45) NOT NULL,
  `pitchtype` varchar(45) NOT NULL,
  `whether` varchar(45) NOT NULL,
  `temperature` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `win` varchar(45) NOT NULL,
  `winrun` varchar(45) NOT NULL,
  `fail` varchar(45) NOT NULL,
  `failrun` varchar(45) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `event` */

insert  into `event`(`event_id`,`matchname`,`eventname`,`location`,`team1`,`email1`,`team2`,`eamil2`,`eventtype`,`startdate`,`enddate`,`matchmode`,`stadiumname`,`address`,`totalseat`,`amount`,`mainumpaire`,`legumpaire`,`theirdumpaire`,`matchtime`,`meettime`,`pitchtype`,`whether`,`temperature`,`status`,`win`,`winrun`,`fail`,`failrun`) values (1,'qq','ipl','outdoor','Under20','sdasdas@df.com','Tamilnadu','ergrew@gdg.com','test','2014-11-22','2014-11-28','nnn','aasd','','','','w1r1','r1','tt4','3','2','','','','3','under20','120','Tamilnadu','111'),(2,'oopo','wwww','outdoor','Tamilnadu','sdasdas@df.com','Under20','ergrew@gdg.com','test','2014-11-22','2014-11-28','nnn','war','','','','sfui','lllllllllb','jb','9','3','','','','2','','','',''),(3,'aq','werww','indoor','Under20','seefe','Tamilnadu','efqwd','test','2014-11-01','2014-11-9','qqq','indira','','','','a1','b1','c1','1','6','','','','0','','','',''),(4,'aq1','sr','indoor','Tamilnadu','tn@yahoo.com','Under20','under@yahoo.com','test','2015-11-04','2015-11-20','day','','','','','','','','7:30','','','','','1','','','','');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`username`,`password`,`type`,`status`) values ('admin@adm.com','admin','CA','1'),('abdulrahim.uj@gmail.com','123','SM','1'),('abdulrahim.uj@gmail.com','123','SM','1'),('tour@','qqq','TM','1'),('team@','aaa','Team','1'),('user','user','Team','1'),('qw','qw','TM','1'),('qw','qw','TM','1'),('wer','wer','SM','1'),('user1@gmail.com','user','SM','1');

/*Table structure for table `online` */

DROP TABLE IF EXISTS `online`;

CREATE TABLE `online` (
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `online` */

insert  into `online`(`username`) values ('user'),('user'),('user'),('user'),('user'),('user'),('team@'),('team@'),('team@'),('user'),('team@'),('user'),('team@'),('user'),('user'),('team@'),('user'),('user'),('team@'),('team@'),('team@'),('team@'),('team@'),('team@'),('user'),('user'),('team@'),('user'),('team@'),('user'),('team@'),('user'),('user'),('user'),('user');

/*Table structure for table `player` */

DROP TABLE IF EXISTS `player`;

CREATE TABLE `player` (
  `player_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imagepath` varchar(450) NOT NULL,
  `playername` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `specify` varchar(45) NOT NULL,
  `batposition` varchar(45) NOT NULL,
  `style` varchar(45) NOT NULL,
  `hand` varchar(45) NOT NULL,
  `bowlstyle` varchar(45) NOT NULL,
  `mentality` varchar(45) NOT NULL,
  `fieldposition` varchar(45) NOT NULL,
  `imagename` varchar(450) NOT NULL,
  `ownername` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `player` */

insert  into `player`(`player_id`,`imagepath`,`playername`,`address`,`email`,`phone`,`country`,`gender`,`dob`,`specify`,`batposition`,`style`,`hand`,`bowlstyle`,`mentality`,`fieldposition`,`imagename`,`ownername`) values (2,'D:KITESAbdulRahimjuno check abdulrahim/SCMS/WebContent/TImage','RahulDravid','mumbaimjhfm','rahul@yahoo.com','4323444567','in','','Sat Dec 01 2001','spinbowler','loworder','defensive','left','leftarmfast','agresive','gully','c4.jpg','user'),(3,'D:KITESAbdulRahimjuno check abdulrahim/SCMS/WebContent/TImage','ganguly','elfkjahfjh','wefkljh','9809966231','kfjhgfh','male','Sat Dec 01 2001','bowler','midleorder','moderate','left','leftarmmedium','agresive','wk','c9.jpg','user'),(4,'D:KITESAbdulRahimjuno check abdulrahim/SCMS/WebContent/TImage','sachin','w;kljhw','wfilurf','1234567890','d,jhv','male','22','bowler','midleorder','moderate','left','leftarmmedium','agresive','wk','c3.jpg','user'),(5,'D:KITESAbdulRahimjuno check abdulrahim/SCMS/WebContent/TImage','joshy','.ksjbg;snh','sdljksh','0987654321','sd,jhg','male','22','bowler','midleorder','moderate','left','leftarmmedium','agresive','wk','c1.jpg','user'),(6,'D:KITESAbdulRahimjuno check abdulrahim/SCMS/WebContent/TImage','player1','sldjkh','player1@yahoo.com','1234567890','india','male','Mon Jan 01 2001','bowler','midleorder','moderate','left','leftarmmedium','agresive','wk','c1.jpg','user'),(7,'D:KITESAbdulRahimjuno check abdulrahim/SCMS/WebContent/TImage','player2','sldfjhksb','player2@yahoo.com','0987654321','india','male','Thu Feb 01 2001','spinbowler','loworder','defensive','right','rightarmmedium','moderate','slip','c2.jpg','user'),(8,'D:KITESAbdulRahimjuno check abdulrahim/SCMS/WebContent/TImage','player3','sdhil','player3@yahoo.com','0987654321','india','male','Thu Mar 01 2001','allroundsppinbowler','tailender','agresive','right','leftarmfm','defensive','squareleg','c3.jpg','user'),(9,'D:KITESAbdulRahimjuno check abdulrahim/SCMS/WebContent/TImage','player4','dlkjdbb','player4@yahoo.com','09834561','india','male','Sun Apr 01 2001','allroundsppinbowler','midleorder','moderate','left','leftarmmedium','agresive','outfielder','c4.jpg','user'),(10,'D:KITESAbdulRahimjuno check abdulrahim/SCMS/WebContent/TImage','player5','erlgkjebg','player5@yahoo.com','1234567890','india','male','Tue May 01 2001','spinbowler','midleorder','moderate','left','rightarmfm','agresive','cover','c5.jpg','user'),(11,'D:KITESAbdulRahimjuno check abdulrahim/SCMS/WebContent/TImage','player6','dlfjkdbg','player6@yahoo.com','0987654321','india','male','Fri Jun 01 2001','bowler','midleorder','moderate','left','leftarmmedium','agresive','wk','c6.jpg','team@'),(12,'D:KITESAbdulRahimjuno check abdulrahim/SCMS/WebContent/TImage','player7','sdgjkhdbgksdb','player7@yahoo.com','0987654321','india','male','Sun Jul 01 2001','bowler','midleorder','moderate','right','leftarmfm','defensive','cover','c7.jpg','team@'),(13,'D:KITESAbdulRahimjuno check abdulrahim/SCMS/WebContent/TImage','player8','sdjkdfbgbn','player8@yahoo.com','0987654321','india','male','Wed Aug 01 2001','allroundsppinbowler','midleorder','moderate','left','leftarmmedium','moderate','cover','c8.jpg','team@'),(14,'F:AbdulRahimMyProjectWorkSpace Luna/SCMS/WebContent/TImage','player10','smjfvsddmhjasvbm','player10@uahoo.com','1234567890','india','male','Sat Mar 21 2015','bowler','midleorder','moderate','left','leftarmmedium','agresive','wk','10534678_10152697656706967_1976711258645034503_n.png','team@'),(15,'F:AbdulRahimMyProjectWorkSpace Luna/SCMS/WebContent/TImage','player11','uuyfgfsb','player11@hjj.com','0987654321','india','male','Sat Nov 01 2014','bowler','midleorder','moderate','left','leftarmmedium','agresive','wk','thumb.jpg','team@');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `email` varchar(45) NOT NULL,
  `remail` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `repassword` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone` int(10) unsigned NOT NULL,
  `country` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `experiance` varchar(45) NOT NULL,
  `pg` varchar(45) NOT NULL,
  `ug` varchar(45) NOT NULL,
  `hss` varchar(45) NOT NULL,
  `sslc` varchar(45) NOT NULL,
  `working` varchar(45) NOT NULL,
  `activity` varchar(45) NOT NULL,
  `staff_id` int(45) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`email`,`remail`,`password`,`repassword`,`name`,`address`,`phone`,`country`,`type`,`gender`,`dob`,`experiance`,`pg`,`ug`,`hss`,`sslc`,`working`,`activity`,`staff_id`) values ('admin@adm.com','admin@adm.com','admin','admin','Admin','Kites',123,'india','CA','male','Sat Dec 01 2001','5 years','adm','adm','adm','adm','admin','admin',3),('abdulrahim.uj@gmail.com','abdulrahim.uj@gmail.com','123','123','AbdulRahim','Kattirithodi[H];\r\nMKV',82813692,'india','SM','male','27 6 1989','nill','MCA','BCA','Commerce','Kerala','sports','stadium manager',4),('team@','team@','aaa','aaa','Teammanager','dflijh',123123,'s;k','Team','female','Thu Mar 01 2001','','dfliubh','sd;j',';ojigh',';oihfg','edioh','s;oh10000',6),('user','user','user','user','user','df;gkj',1234567890,';ro','Team','male','Thu Feb 01 2001','','wroiu','ioruh','oiuhg','oihr','pio','pioh',7),('qw','qw','qw','qw','sklfhb','wsdfljhb',1234567890,'india','TM','male','Sat Dec 01 2001','sdf','wg','uogy','qeogyu','wqyug','fivestar','qweqw',8),('user1@gmail.com','user1@gmail.com','user','user','User','dfgkljdffgnlkdsgln',1234567890,'india','SM','male','Thu Nov 06 2014','','','','','','aq1','team1',9);

/*Table structure for table `stadium` */

DROP TABLE IF EXISTS `stadium`;

CREATE TABLE `stadium` (
  `stadium_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imagepath` varchar(450) NOT NULL,
  `location` varchar(45) NOT NULL,
  `stadiumname` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `pitchtype` varchar(45) NOT NULL,
  `whether` varchar(45) NOT NULL,
  `temprature` varchar(45) NOT NULL,
  `totalseats` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL,
  `imagename` varchar(450) NOT NULL,
  PRIMARY KEY (`stadium_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `stadium` */

insert  into `stadium`(`stadium_id`,`imagepath`,`location`,`stadiumname`,`address`,`pitchtype`,`whether`,`temprature`,`totalseats`,`amount`,`imagename`) values (2,'D:KITESAbdulRahimjuno check abdulrahim/SCMS/WebContent/SImage','Outdoor','aasd','dflgkjdhb','Dump','Overcast','Warm','1200','1000','c3.jpg'),(3,'D:KITESAbdulRahimjuno check abdulrahim/SCMS/WebContent/SImage','Indoor','indira','kjwhgwidfg`','Normal','Sunny','Cool','1200000','2000000','pakistani-mehndi-designs-68.jpg'),(4,'D:KITESAbdulRahimjuno check abdulrahim/SCMS/WebContent/SImage','Indoor','war','palakkad','Wet','Sunny','Cool','200000','120000','c9.jpg'),(5,'D:KITESAbdulRahimjuno check abdulrahim/SCMS/WebContent/SImage','Outdoor','ambedkar','dsfjkhsfwsab','Normal','Sunny','Cool','1200000','500000','c2.jpg'),(6,'D:KITESAbdulRahimjuno check abdulrahim/SCMS/WebContent/SImage','Outdoor','abc','dfbjm,dhgsh','Normal','Sunny','Cool','3000000','500002','c1.jpg'),(7,'D:KITESAbdulRahimjuno check abdulrahim/SCMS/WebContent/SImage','Indoor','vart','dvkxjv','Hard','Rainy','Warm','5009000`','2100000','c2.jpg'),(8,'F:AbdulRahimMyProjectWorkSpace Luna/SCMS/WebContent/SImage','Indoor','aqaer','kubhbh gkk','Wet','Sunny','Cool','120000','10000','c2.jpg'),(9,'F:AbdulRahimMyProjectWorkSpace Luna/SCMS/WebContent/SImage','Indoor','aqaer','kubhbh gkk','Wet','Sunny','Cool','120000','10000','c2.jpg'),(10,'F:AbdulRahimMyProjectWorkSpace Luna/SCMS/WebContent/SImage','Indoor','aqaer','kubhbh gkk','Wet','Sunny','Cool','120000','10000','c2.jpg'),(11,'F:AbdulRahimMyProjectWorkSpace Luna/SCMS/WebContent/SImage','Indoor','aqaer','kubhbh gkk','Wet','Sunny','Cool','120000','10000','c2.jpg');

/*Table structure for table `team` */

DROP TABLE IF EXISTS `team`;

CREATE TABLE `team` (
  `team_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clubname` varchar(45) DEFAULT NULL,
  `teamname` varchar(45) DEFAULT NULL,
  `captainname` varchar(45) DEFAULT NULL,
  `vicecaptainname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `noofplayersinside` varchar(45) DEFAULT NULL,
  `in1` varchar(45) DEFAULT NULL,
  `in2` varchar(45) DEFAULT NULL,
  `in3` varchar(45) DEFAULT NULL,
  `in4` varchar(45) DEFAULT NULL,
  `in5` varchar(45) DEFAULT NULL,
  `in6` varchar(45) DEFAULT NULL,
  `in7` varchar(45) DEFAULT NULL,
  `in8` varchar(45) DEFAULT NULL,
  `in9` varchar(45) DEFAULT NULL,
  `noofplayersreserve` varchar(45) DEFAULT NULL,
  `res1` varchar(45) DEFAULT NULL,
  `res2` varchar(45) DEFAULT NULL,
  `res3` varchar(45) DEFAULT NULL,
  `res4` varchar(45) DEFAULT NULL,
  `res5` varchar(45) DEFAULT NULL,
  `ownername` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `team` */

insert  into `team`(`team_id`,`clubname`,`teamname`,`captainname`,`vicecaptainname`,`email`,`phone`,`noofplayersinside`,`in1`,`in2`,`in3`,`in4`,`in5`,`in6`,`in7`,`in8`,`in9`,`noofplayersreserve`,`res1`,`res2`,`res3`,`res4`,`res5`,`ownername`) values (2,'FiveStar','Under20','sachin','ganguly','under2@yahoo.com','1234567890','9','player1','player2','player3','player4','player5','player6','player7','player8','player9','5','rp1','rp2','rp3','rp4','rp5','team@'),(3,'a1','Tamilnadu','RahulDravid','sachin','TAMIL@YAHOO.COM','1234567890','9','ganguly','joshy','player2','player4','player6','player7','player5','player1','player3','1','player8','','','','','user'),(4,'aqwert','Hydra','ganguly','player1','hydra@www.com','1234567890','9','RahulDravid','player5','player6','player7','player8','joshy','player2','player4','player3','1','sachin','','','','','user'),(6,'asdafsd','qwq1','ganguly','player4','fgsdg@ffvd.com','0987654321','9','player1','player5','player6','sachin','joshy','RahulDravid','player7','player8','player2','1','player3','','','','','team@');

/*Table structure for table `teamname` */

DROP TABLE IF EXISTS `teamname`;

/*!50001 DROP VIEW IF EXISTS `teamname` */;
/*!50001 DROP TABLE IF EXISTS `teamname` */;

/*!50001 CREATE TABLE `teamname` (
  `team1` varchar(45) NOT NULL,
  `team2` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 */;

/*View structure for view teamname */

/*!50001 DROP TABLE IF EXISTS `teamname` */;
/*!50001 DROP VIEW IF EXISTS `teamname` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `teamname` AS select `event`.`team1` AS `team1`,`event`.`team2` AS `team2` from `event` where (`event`.`status` = '3') */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
