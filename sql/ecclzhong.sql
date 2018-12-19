/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.5.49 : Database - ceping2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ceping2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ceping2`;

/*Table structure for table `result` */

DROP TABLE IF EXISTS `result`;

CREATE TABLE `result` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `depart` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `name` varchar(6) NOT NULL,
  `high_test` double(255,2) NOT NULL DEFAULT '0.00',
  `level_test` double(255,2) NOT NULL DEFAULT '0.00',
  `final_test` double(255,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `result` */

insert  into `result`(`id`,`depart`,`role`,`name`,`high_test`,`level_test`,`final_test`) values (1,'晨砻信息','技术顾问','张鹏起',0.00,0.00,0.00),(2,'业务咨询部','部门经理','杨超',0.00,0.00,0.00),(3,'业务咨询部','部门副经理','欧长伟',0.00,0.00,0.00),(4,'产品策划部','部门经理','刘芳',0.00,0.00,0.00),(5,'产品策划部','部门副经理','朱杰',0.00,0.00,0.00),(6,'营销部','部门经理','付平',0.00,0.00,0.00),(7,'营销部','部门副经理','张英锋',0.00,0.00,0.00),(8,'研发部','部门经理','高爽',0.00,0.00,0.00),(9,'研发部','部门副经理','卢温禾',0.00,0.00,0.00),(10,'实施部','部门经理','马志光',0.00,0.00,0.00),(11,'实施部','部门副经理','张国锋',0.00,0.00,0.00),(12,'实施部','部门副经理','付晨光',0.00,0.00,0.00),(13,'IT服务中心','部门经理','曹喜权',0.00,0.00,0.00),(14,'IT服务中心','部门副经理','李春玉',0.00,0.00,0.00),(15,'IT服务中心','部门副经理','刘通',0.00,0.00,0.00),(16,'IT服务中心','部门副经理','郝焕兰',0.00,0.00,0.00),(17,'电子商务部','部门副经理','黄湛',0.00,0.00,0.00),(18,'运营管理部','部门经理','曹新荷',0.00,0.00,0.00),(19,'财务部','部门副经理','李江丽',0.00,0.00,0.00),(20,'总经理工作部','部门经理','廉雪',0.00,0.00,0.00);

/*Table structure for table `test` */

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(6) NOT NULL,
  `high_name` varchar(6) NOT NULL,
  `yeji` double NOT NULL DEFAULT '10',
  `quanjv` double NOT NULL DEFAULT '10',
  `daituan` double NOT NULL DEFAULT '10',
  `shouquan` double NOT NULL DEFAULT '10',
  `zeren` double NOT NULL DEFAULT '10',
  `gongzuo` double NOT NULL DEFAULT '10',
  `xietiao` double NOT NULL DEFAULT '10',
  `yingbian` double NOT NULL DEFAULT '10',
  `zuzhi` double NOT NULL DEFAULT '10',
  `xuexi` double NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=363 DEFAULT CHARSET=utf8;

/*Data for the table `test` */

insert  into `test`(`id`,`name`,`high_name`,`yeji`,`quanjv`,`daituan`,`shouquan`,`zeren`,`gongzuo`,`xietiao`,`yingbian`,`zuzhi`,`xuexi`) values (343,'张鹏起','廉雪',0,0,0,0,0,0,0,0,0,0),(344,'杨超','廉雪',0,0,0,0,0,0,0,0,0,0),(345,'欧长伟','廉雪',0,0,0,0,0,0,0,0,0,0),(346,'刘芳','廉雪',0,0,0,0,0,0,0,0,0,0),(347,'朱杰','廉雪',0,0,0,0,0,0,0,0,0,0),(348,'付平','廉雪',0,0,0,0,0,0,0,0,0,0),(349,'张英锋','廉雪',0,0,0,0,0,0,0,0,0,0),(350,'高爽','廉雪',0,0,0,0,0,0,0,0,0,0),(351,'卢温禾','廉雪',0,0,0,0,0,0,0,0,0,0),(352,'马志光','廉雪',0,0,0,0,0,0,0,0,0,0),(353,'张国锋','廉雪',0,0,0,0,0,0,0,0,0,0),(354,'付晨光','廉雪',0,0,0,0,0,0,0,0,0,0),(355,'曹喜权','廉雪',0,0,0,0,0,0,0,0,0,0),(356,'李春玉','廉雪',0,0,0,0,0,0,0,0,0,0),(357,'刘通','廉雪',0,0,0,0,0,0,0,0,0,0),(358,'郝焕兰','廉雪',0,0,0,0,0,0,0,0,0,0),(359,'黄湛','廉雪',0,0,0,0,0,0,0,0,0,0),(360,'曹新荷','廉雪',0,0,0,0,0,0,0,0,0,0),(361,'李江丽','廉雪',0,0,0,0,0,0,0,0,0,0),(362,'廉雪','廉雪',0,0,0,0,0,0,0,0,0,0);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(6) NOT NULL,
  `depart` varchar(6) NOT NULL,
  `role` varchar(6) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`depart`,`role`,`username`,`password`) values (1,'张鹏起','晨砻信息','技术顾问','zhangpengqi','654321'),(2,'杨超','业务咨询部','部门经理','yangchao','654321'),(3,'欧长伟','业务咨询部','部门副经理','ouchangwei','654321'),(4,'刘芳','产品策划部','部门经理','liufang','654321'),(5,'朱杰','产品策划部','部门副经理','zhujie','654321'),(6,'付平','营销部','部门经理','fuping','654321'),(7,'张英锋','营销部','部门副经理','zhangyingfeng','654321'),(8,'高爽','研发部','部门经理','gaoshuang','654321'),(9,'卢温禾','研发部','部门副经理','luwenhe','654321'),(10,'马志光','实施部','部门经理','mazhiguang','654321'),(11,'张国锋','实施部','部门副经理','zhangguofeng','654321'),(12,'付晨光','实施部','部门副经理','fuchengguang','654321'),(13,'曹喜权','IT服务中心','部门经理','caoxiquan','654321'),(14,'李春玉','IT服务中心','部门副经理','lichunyu','654321'),(15,'刘通','IT服务中心','部门副经理','liutong','654321'),(16,'郝焕兰','IT服务中心','部门副经理','haohuanlan','654321'),(17,'黄湛','电子商务部','部门副经理','huangzhan','654321'),(18,'曹新荷','运营管理部','部门经理','caoxinhe','654321'),(19,'李江丽','财务部','部门副经理','lijiangli','654321'),(20,'廉雪','总经理工作部','部门经理','lianxue','654321'),(21,'瓮总','晨砻信息','领导','wengzhiguang','654321'),(22,'胡文胜','晨砻信息','领导','huwensheng','654321'),(23,'王英泽','晨砻信息','领导','wangyingze','654321'),(24,'谢玲玉','晨砻信息','领导','xielingyu','654321');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
