/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.36-0ubuntu0.18.04.1 : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mybatisboot` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mybatisboot`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group` varchar(20) DEFAULT NULL COMMENT '配置组',
  `key` bigint(20) DEFAULT NULL COMMENT '键值',
  `title` varchar(20) DEFAULT NULL COMMENT '标题',
  `order` int(11) DEFAULT '0' COMMENT 'order 排序',
  `int_value` int(11) DEFAULT NULL COMMENT 'int 值',
  `double_value` double DEFAULT NULL COMMENT 'double 值',
  `string_value` varchar(1024) DEFAULT NULL COMMENT 'String 值',
  `json_value` text COMMENT 'Json 值',
  `description` varchar(512) DEFAULT NULL COMMENT '描述',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `status` tinyint(4) DEFAULT '0' COMMENT '状态',
  `logic_delete` tinyint(4) DEFAULT '0' COMMENT '逻辑删除标志',
  `operator` bigint(20) DEFAULT NULL COMMENT '操作人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `config` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
