set charset utf8;
CREATE TABLE `w_dept` (
  `deptno` varchar(10) NOT NULL,
  `deptname` varchar(20) NOT NULL,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
insert into `w_dept`(`deptno`,`deptname`,`name`) values('A10','财务部','张三');
insert into `w_dept`(`deptno`,`deptname`,`name`) values('A20','研发部','李四');
insert into `w_dept`(`deptno`,`deptname`,`name`) values('A30','管理部','王五');
CREATE TABLE `w_emp` (
  `empno` int(11) NOT NULL AUTO_INCREMENT,
  `ename` varchar(10) NOT NULL,
  `deptno` varchar(10) NOT NULL,
  `hiredate` date DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`empno`),
  KEY `deptno` (`deptno`)
) ENGINE=MyISAM AUTO_INCREMENT=2130 DEFAULT CHARSET=utf8;
insert into `w_emp`(`empno`,`ename`,`deptno`,`hiredate`,`grade`) values('1601','马桑','A10','2001-12-17','2');
insert into `w_emp`(`empno`,`ename`,`deptno`,`hiredate`,`grade`) values('1606','万sir','A30','2014-05-01','1');
insert into `w_emp`(`empno`,`ename`,`deptno`,`hiredate`,`grade`) values('1629','健仔','A20','2010-11-17','3');
insert into `w_emp`(`empno`,`ename`,`deptno`,`hiredate`,`grade`) values('1623','惠惠','A30','2018-09-08','4');
insert into `w_emp`(`empno`,`ename`,`deptno`,`hiredate`,`grade`) values('1635','王尼玛','A20','2015-12-03','2');
insert into `w_emp`(`empno`,`ename`,`deptno`,`hiredate`,`grade`) values('1630','香香鸡','A30','2000-12-03','1');
CREATE TABLE `w_insign` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `empno` int(11) NOT NULL,
  `signdate` date DEFAULT NULL,
  `signtime` time NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empno` (`empno`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('27','1601','2019-06-27','07:50:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('26','1601','2019-06-26','07:50:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('24','1601','2019-06-24','07:50:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('25','1601','2019-06-25','07:50:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('1','1601','2019-06-01','07:50:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('2','1601','2019-06-02','07:50:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('3','1601','2019-06-03','07:50:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('4','1601','2019-06-04','08:02:00','迟到');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('5','1601','2019-06-05','08:02:00','迟到');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('6','1601','2019-06-06','08:02:00','迟到');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('7','1601','2019-06-07','07:50:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('8','1601','2019-06-08','07:50:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('9','1601','2019-06-09','07:50:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('10','1601','2019-06-10','08:20:00','旷工');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('11','1601','2019-06-11','07:50:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('12','1601','2019-06-12','07:50:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('13','1601','2019-06-13','07:50:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('14','1601','2019-06-14','07:50:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('15','1601','2019-06-15','07:50:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('16','1601','2019-06-16','07:50:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('17','1601','2019-06-17','07:53:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('18','1601','2019-06-18','07:53:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('19','1601','2019-06-19','07:53:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('20','1601','2019-06-20','07:53:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('21','1601','2019-06-21','07:53:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('22','1601','2019-06-22','07:53:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('23','1601','2019-06-23','07:53:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('28','1601','2019-06-28','07:50:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('29','1601','2019-06-29','07:50:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('30','1601','2019-06-30','07:50:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('60','1635','2019-06-30','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('59','1635','2019-06-29','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('58','1635','2019-06-28','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('57','1635','2019-06-27','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('56','1635','2019-06-26','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('55','1635','2019-06-25','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('54','1635','2019-06-24','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('53','1635','2019-06-23','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('52','1635','2019-06-22','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('51','1635','2019-06-21','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('50','1635','2019-06-20','08:15:00','旷工');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('49','1635','2019-06-19','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('48','1635','2019-06-18','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('47','1635','2019-06-17','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('46','1635','2019-06-16','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('45','1635','2019-06-15','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('44','1635','2019-06-14','08:03:00','迟到');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('43','1635','2019-06-13','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('42','1635','2019-06-12','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('41','1635','2019-06-11','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('40','1635','2019-06-10','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('39','1635','2019-06-09','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('38','1635','2019-06-08','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('37','1635','2019-06-07','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('36','1635','2019-06-06','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('35','1635','2019-06-05','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('34','1635','2019-06-04','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('33','1635','2019-06-03','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('31','1635','2019-06-01','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('32','1635','2019-06-02','07:45:00','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('78','1601','2021-09-17','17:57:35','旷工');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('79','1601','2021-09-18','00:19:26','到勤');
insert into `w_insign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('80','1601','2021-09-27','11:01:25','旷工');
CREATE TABLE `w_offsign` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `empno` int(11) NOT NULL,
  `signdate` date DEFAULT NULL,
  `signtime` time NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empno` (`empno`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('3','1601','2019-06-03','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('2','1601','2019-06-02','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('1','1601','2019-06-01','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('12','1601','2019-06-12','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('4','1601','2019-06-04','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('5','1601','2019-06-05','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('6','1601','2019-06-06','17:58:00','早退');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('7','1601','2019-06-07','17:58:00','早退');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('8','1601','2019-06-08','17:58:00','早退');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('9','1601','2019-06-09','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('10','1601','2019-06-10','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('11','1601','2019-06-11','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('13','1601','2019-06-13','17:10:00','旷工');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('14','1601','2019-06-14','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('15','1601','2019-06-15','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('16','1601','2019-06-16','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('17','1601','2019-06-17','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('18','1601','2019-06-18','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('19','1601','2019-06-19','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('20','1601','2019-06-20','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('21','1601','2019-06-21','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('22','1601','2019-06-22','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('23','1601','2019-06-23','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('24','1601','2019-06-24','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('25','1601','2019-06-25','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('26','1601','2019-06-26','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('27','1601','2019-06-27','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('28','1601','2019-06-28','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('29','1601','2019-06-29','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('30','1601','2019-06-30','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('60','1635','2019-06-30','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('59','1635','2019-06-29','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('58','1635','2019-06-28','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('57','1635','2019-06-27','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('56','1635','2019-06-26','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('55','1635','2019-06-25','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('54','1635','2019-06-24','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('53','1635','2019-06-23','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('52','1635','2019-06-22','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('51','1635','2019-06-21','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('50','1635','2019-06-20','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('49','1635','2019-06-19','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('48','1635','2019-06-18','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('47','1635','2019-06-17','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('46','1635','2019-06-16','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('45','1635','2019-06-15','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('44','1635','2019-06-14','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('43','1635','2019-06-13','17:10:00','旷工');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('42','1635','2019-06-12','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('41','1635','2019-06-11','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('40','1635','2019-06-10','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('39','1635','2019-06-09','17:58:00','早退');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('38','1635','2019-06-08','17:58:00','早退');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('37','1635','2019-06-07','17:58:00','早退');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('36','1635','2019-06-06','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('35','1635','2019-06-05','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('34','1635','2019-06-04','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('33','1635','2019-06-03','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('32','1635','2019-06-02','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('31','1635','2019-06-01','18:10:00','到勤');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('78','1601','2021-09-17','17:57:37','早退');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('79','1601','2021-09-18','00:19:27','旷工');
insert into `w_offsign`(`id`,`empno`,`signdate`,`signtime`,`status`) values('80','1601','2021-09-27','14:01:38','旷工');
CREATE TABLE `w_time` (
  `starttime` time NOT NULL,
  `offtime` time NOT NULL,
  PRIMARY KEY (`starttime`,`offtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into `w_time`(`starttime`,`offtime`) values('08:00:00','18:00:00');
CREATE TABLE `w_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_username` varchar(10) NOT NULL,
  `u_password` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_username` (`u_username`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
insert into `w_user`(`id`,`u_username`,`u_password`) values('1','admin','21232f297a57a5a743894a0e4a801fc3');
