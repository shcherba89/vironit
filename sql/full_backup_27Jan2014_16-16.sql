/*
SQLyog Ultimate v10.42 
MySQL - 5.5.27-log : Database - new_vironit
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`new_vironit` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `new_vironit`;

/*Table structure for table `vrnt_assets` */

DROP TABLE IF EXISTS `vrnt_assets`;

CREATE TABLE `vrnt_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_assets` */

insert  into `vrnt_assets`(`id`,`parent_id`,`lft`,`rgt`,`level`,`name`,`title`,`rules`) values (1,0,1,101,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,52,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,53,54,1,'com_cpanel','com_cpanel','{}'),(10,1,55,56,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,57,58,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,59,60,1,'com_login','com_login','{}'),(13,1,61,62,1,'com_mailto','com_mailto','{}'),(14,1,63,64,1,'com_massmail','com_massmail','{}'),(15,1,65,66,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,67,68,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,69,70,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,71,72,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,73,76,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,77,78,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,79,80,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,81,82,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,83,84,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,85,88,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":{\"6\":1}}'),(25,1,89,92,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(26,1,93,94,1,'com_wrapper','com_wrapper','{}'),(27,8,18,25,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,74,75,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(31,25,90,91,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,86,87,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,95,96,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,27,19,20,3,'com_content.article.1','Home Page Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(35,27,21,22,3,'com_content.article.2','About Us','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(36,8,26,45,2,'com_content.category.8','News','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(37,36,27,28,3,'com_content.article.3','Article 1 Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(38,36,29,30,3,'com_content.article.4','Article 2 Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(39,36,31,32,3,'com_content.article.5','Article 3 Title ','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(40,27,23,24,3,'com_content.article.6','Creating Your Site','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(41,1,97,98,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(42,8,46,47,2,'com_content.category.9','О компании','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(43,8,48,49,2,'com_content.category.10','Услуги','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(53,8,50,51,2,'com_content.category.11','main','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(54,36,33,34,3,'com_content.article.7','Домой','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(55,36,35,36,3,'com_content.article.8','О компании','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(56,36,37,38,3,'com_content.article.9','Услуги','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(57,36,39,40,3,'com_content.article.10','Процессы','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(58,36,41,42,3,'com_content.article.11','Карьера','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(59,36,43,44,3,'com_content.article.12','Контакты','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(68,1,99,100,1,'com_vironittouchstonecomponent','vironittouchstonecomponent','{}');

/*Table structure for table `vrnt_associations` */

DROP TABLE IF EXISTS `vrnt_associations`;

CREATE TABLE `vrnt_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_associations` */

/*Table structure for table `vrnt_banner_clients` */

DROP TABLE IF EXISTS `vrnt_banner_clients`;

CREATE TABLE `vrnt_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_banner_clients` */

/*Table structure for table `vrnt_banner_tracks` */

DROP TABLE IF EXISTS `vrnt_banner_tracks`;

CREATE TABLE `vrnt_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_banner_tracks` */

/*Table structure for table `vrnt_banners` */

DROP TABLE IF EXISTS `vrnt_banners`;

CREATE TABLE `vrnt_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_banners` */

/*Table structure for table `vrnt_categories` */

DROP TABLE IF EXISTS `vrnt_categories`;

CREATE TABLE `vrnt_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_categories` */

insert  into `vrnt_categories`(`id`,`asset_id`,`parent_id`,`lft`,`rgt`,`level`,`path`,`extension`,`title`,`alias`,`note`,`description`,`published`,`checked_out`,`checked_out_time`,`access`,`params`,`metadesc`,`metakey`,`metadata`,`created_user_id`,`created_time`,`modified_user_id`,`modified_time`,`hits`,`language`) values (1,0,0,0,21,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',647,'2009-10-18 16:07:09',0,'0000-00-00 00:00:00',0,'*'),(2,27,1,17,18,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',647,'2010-06-28 13:26:37',0,'0000-00-00 00:00:00',0,'*'),(3,28,1,1,2,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',647,'2010-06-28 13:27:35',0,'0000-00-00 00:00:00',0,'*'),(4,29,1,3,4,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',647,'2010-06-28 13:27:57',0,'0000-00-00 00:00:00',0,'*'),(5,30,1,5,6,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',647,'2010-06-28 13:28:15',0,'0000-00-00 00:00:00',0,'*'),(6,31,1,7,8,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',647,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*'),(7,32,1,9,10,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"target\":\"\",\"image\":\"\"}','','','{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}',647,'2010-06-28 13:28:33',0,'0000-00-00 00:00:00',0,'*'),(8,36,1,11,12,1,'news','com_content','News','news','','<p>This is the latest new from us.</p>\r\n<p>You can edit this description in the Content Category Manager.</p>\r\n<p>This will show the most recent article. You can easily change it to show more if you wish.</p>\r\n<p>The module on the left shows a list of older articles.</p>',0,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',647,'2012-01-04 03:09:08',42,'2012-01-04 04:32:05',0,'*'),(9,42,1,13,14,1,'about-company','com_content','О компании','about-company','','<p>О компании</p>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',647,'2013-12-17 09:16:48',0,'0000-00-00 00:00:00',0,'*'),(10,43,1,15,16,1,'services','com_content','Услуги','services','','<p>Услуги</p>',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',647,'2013-12-17 09:17:33',0,'0000-00-00 00:00:00',0,'*'),(11,53,1,19,20,1,'main','com_content','main','main','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',647,'2013-12-17 14:25:47',647,'2013-12-17 14:29:11',0,'*');

/*Table structure for table `vrnt_contact_details` */

DROP TABLE IF EXISTS `vrnt_contact_details`;

CREATE TABLE `vrnt_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_contact_details` */

insert  into `vrnt_contact_details`(`id`,`name`,`alias`,`con_position`,`address`,`suburb`,`state`,`country`,`postcode`,`telephone`,`fax`,`misc`,`image`,`imagepos`,`email_to`,`default_con`,`published`,`checked_out`,`checked_out_time`,`ordering`,`params`,`user_id`,`catid`,`access`,`mobile`,`webpage`,`sortname1`,`sortname2`,`sortname3`,`language`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`metakey`,`metadesc`,`metadata`,`featured`,`xreference`,`publish_up`,`publish_down`) values (1,'Your Name','your-name','','This is a contact form which you can edit in the contact manager.\r\n\r\nPut your address or other information here. \r\n\r\nThis can be a good place to put things like business hours too.\r\n\r\nDon\'t forget to put a real email address.\r\n\r\nYou also may want to enable Captcha in the global configuration\r\nto prevent spam submissions of contact forms. ','','','','','','','','',NULL,'email@email.com',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,4,1,'','','','','','*','2012-01-04 03:46:36',647,'','2012-01-17 15:03:45',42,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00');

/*Table structure for table `vrnt_content` */

DROP TABLE IF EXISTS `vrnt_content`;

CREATE TABLE `vrnt_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_content` */

insert  into `vrnt_content`(`id`,`asset_id`,`title`,`alias`,`title_alias`,`introtext`,`fulltext`,`state`,`sectionid`,`mask`,`catid`,`created`,`created_by`,`created_by_alias`,`modified`,`modified_by`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`images`,`urls`,`attribs`,`version`,`parentid`,`ordering`,`metakey`,`metadesc`,`access`,`hits`,`metadata`,`featured`,`language`,`xreference`) values (1,34,'Home Page Title','home','','<p>This will be the home page. </p>\r\n<p>Click on the login link at the top of the page and enter your username and password. Then you can edit the article to say what you want by clicking on the edit icon.</p>\r\n<p>Once you are logged in you will also see a link to your site administrator and a page that tells you some more about working with Joomla! to make the site you want.</p>','',1,0,0,2,'2012-01-04 02:38:10',647,'','2012-01-04 04:13:18',42,0,'0000-00-00 00:00:00','2012-01-04 02:38:10','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,2,'','',1,944,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,35,'About Us','about-us','','<p>Put more information on this page.</p>','',-2,0,0,2,'2012-01-04 03:06:07',647,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2012-01-04 03:06:07','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,1,'','',1,10,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,37,'Article 1 Title','article-1-title','','<p>Here is a news article.</p>','',0,0,0,8,'2012-01-04 03:10:06',647,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2012-01-04 03:10:06','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,6,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(4,38,'Article 2 Title','article-2-title','','<p>Here is another news article.</p>','',0,0,0,8,'2012-01-04 03:10:06',647,'','2012-01-04 03:11:14',42,0,'0000-00-00 00:00:00','2012-01-04 03:10:06','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,7,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(5,39,'Article 3 Title ','what-about','','<p>WHATT ABOUT article.</p>','',1,0,0,8,'2012-01-04 03:10:06',647,'','2013-12-17 09:01:49',647,0,'0000-00-00 00:00:00','2012-01-04 03:10:06','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',6,0,8,'','',1,32,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(6,40,'Creating Your Site','creating-your-site','','<p>Joomla! is all about allowing you to create a site that matches your vision. The possibilities are limitless; this sample site will just get you started.</p>\r\n<p>There are a few things you should know to get you started.</p>\r\n<p>First, every Joomla! site has two parts the Site (which is what your site visitors see) and the Administrator (which is where you will want to do a lot of the site management). You need to log in to the Administrator separately. There is a link to the administrator on the top menu. </p>\r\n<p>You can edit articles in the Site by clicking on the edit icon. You can create a new article by clicking on the Create Article link in the top menu.  </p>\r\n<p>To do other things, like edit the contact form, edit the modules or change the site name you need to log in to the administrator. </p>\r\n<p>Some quick tips for working in the Administrator:</p>\r\n<ul>\r\n<li>Change site name and tag line: Go to the Extensions, Template Manager and on the Styles tab click on Your Basic Template.</li>\r\n<li>To edit the Header Module: Go to Extensions, Module Manager and click on Header Module.</li>\r\n<li>To edit the Side Module: Go to Extensions, Module Manager and click on Side Module.</li>\r\n<li>To edit the Contact Form: Go to Components, Contacts. Click on Your Name. </li>\r\n</ul>\r\n<p> </p>\r\n<p>Once you have your basic site you may want to install your own template (that controls the overall design of your site) and then, perhaps additional extensions. </p>\r\n<p>There is a lot of help available for Joomla!. You can visit the <a href=\"http://forum.joomla.org\">Joomla! forums</a> and the<a href=\"http://docs.joomla.org\" target=\"_blank\"> Joomla! documentation site</a> to get started. </p>','',0,0,0,2,'2012-01-04 04:27:11',647,'','2012-01-04 04:40:05',42,0,'0000-00-00 00:00:00','2012-01-04 04:27:11','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,0,'','',1,6,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(7,54,'Домой','home-menu-item','','<p>home-menu-item</p>','',1,0,0,8,'2013-12-17 14:30:39',647,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-12-17 14:30:39','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,5,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(8,55,'О компании','about-company-menu-item','','<p>about-company-menu-item</p>','',1,0,0,8,'2013-12-17 14:32:58',647,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-12-17 14:32:58','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,4,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(9,56,'Услуги','services-menu-item','','<p>services-menu-item</p>','',1,0,0,8,'2013-12-17 14:33:27',647,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-12-17 14:33:27','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,3,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(10,57,'Процессы','procceses-menu-item','','<p>procceses-menu-item</p>','',1,0,0,8,'2013-12-17 14:34:13',647,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-12-17 14:34:13','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,2,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(11,58,'Карьера','carier-menu-item','','<p>carier-menu-item</p>','',1,0,0,8,'2013-12-17 14:34:38',647,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-12-17 14:34:38','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(12,59,'Контакты','contacts-menu-item','','<p>contacts-menu-item</p>','',1,0,0,8,'2013-12-17 14:34:59',647,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-12-17 14:34:59','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');

/*Table structure for table `vrnt_content_frontpage` */

DROP TABLE IF EXISTS `vrnt_content_frontpage`;

CREATE TABLE `vrnt_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_content_frontpage` */

/*Table structure for table `vrnt_content_rating` */

DROP TABLE IF EXISTS `vrnt_content_rating`;

CREATE TABLE `vrnt_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_content_rating` */

/*Table structure for table `vrnt_core_log_searches` */

DROP TABLE IF EXISTS `vrnt_core_log_searches`;

CREATE TABLE `vrnt_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_core_log_searches` */

/*Table structure for table `vrnt_extensions` */

DROP TABLE IF EXISTS `vrnt_extensions`;

CREATE TABLE `vrnt_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10066 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_extensions` */

insert  into `vrnt_extensions`(`extension_id`,`name`,`type`,`element`,`folder`,`client_id`,`enabled`,`access`,`protected`,`manifest_cache`,`params`,`custom_data`,`system_data`,`checked_out`,`checked_out_time`,`ordering`,`state`) values (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"legacy\":false,\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"legacy\":false,\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"useractivation\":\"1\",\"frontend_userparams\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"legacy\":false,\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"legacy\":false,\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/\",\"version\":\"5.2\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"11.4\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"legacy\":false,\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"legacy\":false,\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(405,'plg_content_geshi','plugin','geshi','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_geshi\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"qbnz.com\\/highlighter\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_GESHI_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"linenumbers\":\"0\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2013\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\\/\",\"version\":\"3.5.4.1\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"true\",\"resize_horizontal\":\"false\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,1,'{\"legacy\":false,\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"legacy\":false,\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"legacy\":false,\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"legacy\":false,\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',5,0),(500,'atomic','template','atomic','',0,1,1,0,'{\"legacy\":false,\"name\":\"atomic\",\"type\":\"template\",\"creationDate\":\"10\\/10\\/09\",\"author\":\"Ron Severdia\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"contact@kontentdesign.com\",\"authorUrl\":\"http:\\/\\/www.kontentdesign.com\",\"version\":\"2.5.0\",\"description\":\"TPL_ATOMIC_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(502,'bluestork','template','bluestork','',1,1,1,0,'{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(503,'beez_20','template','beez_20','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez_20\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ2_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"legacy\":false,\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"2.5.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(505,'beez5','template','beez5','',0,1,1,0,'{\"legacy\":false,\"name\":\"beez5\",\"type\":\"template\",\"creationDate\":\"21 May 2010\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"2.5.0\",\"description\":\"TPL_BEEZ5_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"html5\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.10\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.10\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"April 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.11\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(800,'PKG_JOOMLA','package','pkg_joomla','',0,1,1,1,'{\"legacy\":false,\"name\":\"PKG_JOOMLA\",\"type\":\"package\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PKG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,'vironit-touchstone','template','vironit-touchstone','',0,1,1,0,'{\"legacy\":false,\"name\":\"vironit-touchstone\",\"type\":\"template\",\"creationDate\":\"2013-12-12\",\"author\":\"Dmitriy Morozov\",\"copyright\":\"Dmitriy Morozov 2008\",\"authorEmail\":\"d.morozov@vironit.com\",\"authorUrl\":\"http:\\/\\/www.vk.com\\/id13245451\",\"version\":\"1.0.2\",\"description\":\"My New Template\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10019,'mod_contactsblock','module','mod_contactsblock','',0,1,0,0,'{\"legacy\":false,\"name\":\"mod_contactsblock\",\"type\":\"module\",\"creationDate\":\"18 December 2013\",\"author\":\"SomeBody\",\"copyright\":\"Copyright Info\",\"authorEmail\":\"email@example.org\",\"authorUrl\":\"http:\\/\\/vk.com\\/id13245451\",\"version\":\"0.0.1\",\"description\":\"Contacts Block for Vironit-TouchStone Template\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10031,'mod_featuretext','module','mod_featuretext','',0,0,0,0,'{\"legacy\":false,\"name\":\"mod_featuretext\",\"type\":\"module\",\"creationDate\":\"18 December 2013\",\"author\":\"Dm. Morozov\",\"copyright\":\"Copyright Info\",\"authorEmail\":\"castor_troy@tut.by\",\"authorUrl\":\"http:\\/\\/vk.com\\/id13245451\",\"version\":\"0.0.1\",\"description\":\"Feature Text for Vironit-TouchStone Template\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10036,'Module Project Rule for Vironit-TouchStone Template','module','mod_projectrule','',0,0,0,0,'{\"legacy\":false,\"name\":\"Module Project Rule for Vironit-TouchStone Template\",\"type\":\"module\",\"creationDate\":\"18 December 2013\",\"author\":\"Dm. Morozov\",\"copyright\":\"Copyright Info\",\"authorEmail\":\"castor_troy@tut.by\",\"authorUrl\":\"http:\\/\\/vk.com\\/id13245451\",\"version\":\"0.0.1\",\"description\":\"Project Rule for Vironit-TouchStone Template\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10038,'Module Cooperation Module for Vironit-TouchStone Template','module','mod_cooperationmodule','',0,0,0,0,'{\"legacy\":false,\"name\":\"Module Cooperation Module for Vironit-TouchStone Template\",\"type\":\"module\",\"creationDate\":\"18 December 2013\",\"author\":\"Dm. Morozov\",\"copyright\":\"Copyright Info\",\"authorEmail\":\"castor_troy@tut.by\",\"authorUrl\":\"http:\\/\\/vk.com\\/id13245451\",\"version\":\"0.0.1\",\"description\":\"Technologies for Vironit-TouchStone Template\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10040,'Module Technologies for Vironit-TouchStone Template','module','mod_technologies','',0,0,0,0,'{\"legacy\":false,\"name\":\"Module Technologies for Vironit-TouchStone Template\",\"type\":\"module\",\"creationDate\":\"18 December 2013\",\"author\":\"Dm. Morozov\",\"copyright\":\"Copyright Info\",\"authorEmail\":\"castor_troy@tut.by\",\"authorUrl\":\"http:\\/\\/vk.com\\/id13245451\",\"version\":\"0.0.1\",\"description\":\"Technologies for Vironit-TouchStone Template\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10041,'Module About Company for Vironit-TouchStone Template','module','mod_aboutcompany','',0,0,0,0,'{\"legacy\":false,\"name\":\"Module About Company for Vironit-TouchStone Template\",\"type\":\"module\",\"creationDate\":\"18 December 2013\",\"author\":\"Dm. Morozov\",\"copyright\":\"Copyright Info\",\"authorEmail\":\"castor_troy@tut.by\",\"authorUrl\":\"http:\\/\\/vk.com\\/id13245451\",\"version\":\"0.0.1\",\"description\":\"About Company for Vironit-TouchStone Template\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10043,'Module Jobs principle for Vironit-TouchStone Template','module','mod_jobsprinciple','',0,0,0,0,'{\"legacy\":false,\"name\":\"Module Jobs principle for Vironit-TouchStone Template\",\"type\":\"module\",\"creationDate\":\"18 December 2013\",\"author\":\"Dm. Morozov\",\"copyright\":\"Copyright Info\",\"authorEmail\":\"castor_troy@tut.by\",\"authorUrl\":\"http:\\/\\/vk.com\\/id13245451\",\"version\":\"0.0.1\",\"description\":\"Jobs Principle for Vironit-TouchStone Template\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10044,'Module Feature Box for Vironit-TouchStone Template','module','mod_featurebox','',0,0,0,0,'{\"legacy\":false,\"name\":\"Module Feature Box for Vironit-TouchStone Template\",\"type\":\"module\",\"creationDate\":\"18 December 2013\",\"author\":\"Dm. Morozov\",\"copyright\":\"Copyright Info\",\"authorEmail\":\"castor_troy@tut.by\",\"authorUrl\":\"http:\\/\\/vk.com\\/id13245451\",\"version\":\"0.0.1\",\"description\":\"Feature Box for Vironit-TouchStone Template\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10046,'Module Footer Portfolio for Vironit-TouchStone Template','module','mod_footerportfolio','',0,1,0,0,'{\"legacy\":false,\"name\":\"Module Footer Portfolio for Vironit-TouchStone Template\",\"type\":\"module\",\"creationDate\":\"18 December 2013\",\"author\":\"Dm. Morozov\",\"copyright\":\"Copyright Info\",\"authorEmail\":\"castor_troy@tut.by\",\"authorUrl\":\"http:\\/\\/vk.com\\/id13245451\",\"version\":\"0.0.1\",\"description\":\"Footer Portfolio for Vironit-TouchStone Template\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10047,'Module Footer Directorship for Vironit-TouchStone Template','module','mod_footerdirectorship','',0,1,0,0,'{\"legacy\":false,\"name\":\"Module Footer Directorship for Vironit-TouchStone Template\",\"type\":\"module\",\"creationDate\":\"18 December 2013\",\"author\":\"Dm. Morozov\",\"copyright\":\"Copyright Info\",\"authorEmail\":\"castor_troy@tut.by\",\"authorUrl\":\"http:\\/\\/vk.com\\/id13245451\",\"version\":\"0.0.1\",\"description\":\"Footer Directorship for Vironit-TouchStone Template\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10048,'Module Footer Contacts for Vironit-TouchStone Template','module','mod_footercontacts','',0,1,0,0,'{\"legacy\":false,\"name\":\"Module Footer Contacts for Vironit-TouchStone Template\",\"type\":\"module\",\"creationDate\":\"18 December 2013\",\"author\":\"Dm. Morozov\",\"copyright\":\"Copyright Info\",\"authorEmail\":\"castor_troy@tut.by\",\"authorUrl\":\"http:\\/\\/vk.com\\/id13245451\",\"version\":\"0.0.1\",\"description\":\"Footer Contacts for Vironit-TouchStone Template\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10049,'Module Footer Get Subscription for Vironit-TouchStone Template','module','mod_footergetsubscription','',0,1,0,0,'{\"legacy\":false,\"name\":\"Module Footer Get Subscription for Vironit-TouchStone Template\",\"type\":\"module\",\"creationDate\":\"18 December 2013\",\"author\":\"Dm. Morozov\",\"copyright\":\"Copyright Info\",\"authorEmail\":\"castor_troy@tut.by\",\"authorUrl\":\"http:\\/\\/vk.com\\/id13245451\",\"version\":\"0.0.1\",\"description\":\"Footer Get Subscription for Vironit-TouchStone Template\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10050,'Module Footer Bottom Block for Vironit-TouchStone Template','module','mod_footerbottomblock','',0,1,0,0,'{\"legacy\":false,\"name\":\"Module Footer Bottom Block for Vironit-TouchStone Template\",\"type\":\"module\",\"creationDate\":\"18 December 2013\",\"author\":\"Dm. Morozov\",\"copyright\":\"Copyright Info\",\"authorEmail\":\"castor_troy@tut.by\",\"authorUrl\":\"http:\\/\\/vk.com\\/id13245451\",\"version\":\"0.0.1\",\"description\":\"Footer Bottom Block for Vironit-TouchStone Template\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10051,'Module Top Menu for Vironit-TouchStone Template','module','mod_topmenu','',0,1,0,0,'{\"legacy\":false,\"name\":\"Module Top Menu for Vironit-TouchStone Template\",\"type\":\"module\",\"creationDate\":\"18 December 2013\",\"author\":\"Dm. Morozov\",\"copyright\":\"Copyright Info\",\"authorEmail\":\"castor_troy@tut.by\",\"authorUrl\":\"http:\\/\\/vk.com\\/id13245451\",\"version\":\"0.0.1\",\"description\":\"Top Menu for Vironit-TouchStone Template\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10052,'Module Orbit Slider for Vironit-TouchStone Template','module','mod_orbitslider','',0,1,0,0,'{\"legacy\":false,\"name\":\"Module Orbit Slider for Vironit-TouchStone Template\",\"type\":\"module\",\"creationDate\":\"18 December 2013\",\"author\":\"Dm. Morozov\",\"copyright\":\"Copyright Info\",\"authorEmail\":\"castor_troy@tut.by\",\"authorUrl\":\"http:\\/\\/vk.com\\/id13245451\",\"version\":\"0.0.1\",\"description\":\"Orbit Slider for Vironit-TouchStone Template\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10061,'vironittouchstonecomponent','component','com_vironittouchstonecomponent','',1,1,0,0,'{\"legacy\":false,\"name\":\"Vironit Touchstone Component\",\"type\":\"component\",\"creationDate\":\"27 December 2013\",\"author\":\"Dm Morozov\",\"copyright\":\"Copyright Info\",\"authorEmail\":\"castor_troy@tut.by\",\"authorUrl\":\"http:\\/\\/vk.com\\/xdoctordog\",\"version\":\"0.0.0.1\",\"description\":\"Description of the Vironit Touchstone Component S3 v.0.0.0.1 component ...\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10064,'Module Main Content Block for Vironit-TouchStone Template','module','mod_maincontentblock','',0,1,0,0,'{\"legacy\":false,\"name\":\"Module Main Content Block for Vironit-TouchStone Template\",\"type\":\"module\",\"creationDate\":\"4 January 2014\",\"author\":\"Dm. Morozov\",\"copyright\":\"Copyright Info\",\"authorEmail\":\"castor_troy@tut.by\",\"authorUrl\":\"http:\\/\\/vk.com\\/id13245451\",\"version\":\"0.0.1\",\"description\":\"Main Content Block for Vironit-TouchStone Template\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10065,'Module Left Panel for Vironit-TouchStone Template','module','mod_leftpanel','',0,1,0,0,'{\"legacy\":false,\"name\":\"Module Left Panel for Vironit-TouchStone Template\",\"type\":\"module\",\"creationDate\":\"4 January 2014\",\"author\":\"Dm. Morozov\",\"copyright\":\"Copyright Info\",\"authorEmail\":\"castor_troy@tut.by\",\"authorUrl\":\"http:\\/\\/vk.com\\/id13245451\",\"version\":\"0.0.1\",\"description\":\"Left Panel for Vironit-TouchStone Template\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);

/*Table structure for table `vrnt_finder_filters` */

DROP TABLE IF EXISTS `vrnt_finder_filters`;

CREATE TABLE `vrnt_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_filters` */

/*Table structure for table `vrnt_finder_links` */

DROP TABLE IF EXISTS `vrnt_finder_links`;

CREATE TABLE `vrnt_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_links` */

/*Table structure for table `vrnt_finder_links_terms0` */

DROP TABLE IF EXISTS `vrnt_finder_links_terms0`;

CREATE TABLE `vrnt_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_links_terms0` */

/*Table structure for table `vrnt_finder_links_terms1` */

DROP TABLE IF EXISTS `vrnt_finder_links_terms1`;

CREATE TABLE `vrnt_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_links_terms1` */

/*Table structure for table `vrnt_finder_links_terms2` */

DROP TABLE IF EXISTS `vrnt_finder_links_terms2`;

CREATE TABLE `vrnt_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_links_terms2` */

/*Table structure for table `vrnt_finder_links_terms3` */

DROP TABLE IF EXISTS `vrnt_finder_links_terms3`;

CREATE TABLE `vrnt_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_links_terms3` */

/*Table structure for table `vrnt_finder_links_terms4` */

DROP TABLE IF EXISTS `vrnt_finder_links_terms4`;

CREATE TABLE `vrnt_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_links_terms4` */

/*Table structure for table `vrnt_finder_links_terms5` */

DROP TABLE IF EXISTS `vrnt_finder_links_terms5`;

CREATE TABLE `vrnt_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_links_terms5` */

/*Table structure for table `vrnt_finder_links_terms6` */

DROP TABLE IF EXISTS `vrnt_finder_links_terms6`;

CREATE TABLE `vrnt_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_links_terms6` */

/*Table structure for table `vrnt_finder_links_terms7` */

DROP TABLE IF EXISTS `vrnt_finder_links_terms7`;

CREATE TABLE `vrnt_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_links_terms7` */

/*Table structure for table `vrnt_finder_links_terms8` */

DROP TABLE IF EXISTS `vrnt_finder_links_terms8`;

CREATE TABLE `vrnt_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_links_terms8` */

/*Table structure for table `vrnt_finder_links_terms9` */

DROP TABLE IF EXISTS `vrnt_finder_links_terms9`;

CREATE TABLE `vrnt_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_links_terms9` */

/*Table structure for table `vrnt_finder_links_termsa` */

DROP TABLE IF EXISTS `vrnt_finder_links_termsa`;

CREATE TABLE `vrnt_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_links_termsa` */

/*Table structure for table `vrnt_finder_links_termsb` */

DROP TABLE IF EXISTS `vrnt_finder_links_termsb`;

CREATE TABLE `vrnt_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_links_termsb` */

/*Table structure for table `vrnt_finder_links_termsc` */

DROP TABLE IF EXISTS `vrnt_finder_links_termsc`;

CREATE TABLE `vrnt_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_links_termsc` */

/*Table structure for table `vrnt_finder_links_termsd` */

DROP TABLE IF EXISTS `vrnt_finder_links_termsd`;

CREATE TABLE `vrnt_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_links_termsd` */

/*Table structure for table `vrnt_finder_links_termse` */

DROP TABLE IF EXISTS `vrnt_finder_links_termse`;

CREATE TABLE `vrnt_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_links_termse` */

/*Table structure for table `vrnt_finder_links_termsf` */

DROP TABLE IF EXISTS `vrnt_finder_links_termsf`;

CREATE TABLE `vrnt_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_links_termsf` */

/*Table structure for table `vrnt_finder_taxonomy` */

DROP TABLE IF EXISTS `vrnt_finder_taxonomy`;

CREATE TABLE `vrnt_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_taxonomy` */

insert  into `vrnt_finder_taxonomy`(`id`,`parent_id`,`title`,`state`,`access`,`ordering`) values (1,0,'ROOT',0,0,0);

/*Table structure for table `vrnt_finder_taxonomy_map` */

DROP TABLE IF EXISTS `vrnt_finder_taxonomy_map`;

CREATE TABLE `vrnt_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_taxonomy_map` */

/*Table structure for table `vrnt_finder_terms` */

DROP TABLE IF EXISTS `vrnt_finder_terms`;

CREATE TABLE `vrnt_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_terms` */

/*Table structure for table `vrnt_finder_terms_common` */

DROP TABLE IF EXISTS `vrnt_finder_terms_common`;

CREATE TABLE `vrnt_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_terms_common` */

insert  into `vrnt_finder_terms_common`(`term`,`language`) values ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');

/*Table structure for table `vrnt_finder_tokens` */

DROP TABLE IF EXISTS `vrnt_finder_tokens`;

CREATE TABLE `vrnt_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_tokens` */

/*Table structure for table `vrnt_finder_tokens_aggregate` */

DROP TABLE IF EXISTS `vrnt_finder_tokens_aggregate`;

CREATE TABLE `vrnt_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_tokens_aggregate` */

/*Table structure for table `vrnt_finder_types` */

DROP TABLE IF EXISTS `vrnt_finder_types`;

CREATE TABLE `vrnt_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_finder_types` */

/*Table structure for table `vrnt_languages` */

DROP TABLE IF EXISTS `vrnt_languages`;

CREATE TABLE `vrnt_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_languages` */

insert  into `vrnt_languages`(`lang_id`,`lang_code`,`title`,`title_native`,`sef`,`image`,`description`,`metakey`,`metadesc`,`sitename`,`published`,`access`,`ordering`) values (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,0,1);

/*Table structure for table `vrnt_menu` */

DROP TABLE IF EXISTS `vrnt_menu`;

CREATE TABLE `vrnt_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_menu` */

insert  into `vrnt_menu`(`id`,`menutype`,`title`,`alias`,`note`,`path`,`link`,`type`,`published`,`parent_id`,`level`,`component_id`,`ordering`,`checked_out`,`checked_out_time`,`browserNav`,`access`,`img`,`template_style_id`,`params`,`lft`,`rgt`,`home`,`language`,`client_id`) values (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,89,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',15,24,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',16,17,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',18,19,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',20,21,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',22,23,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',25,30,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',26,27,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',28,29,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',31,36,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',32,33,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',34,35,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',37,42,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',38,39,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',40,41,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',55,56,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',47,48,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',49,54,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',50,51,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',52,53,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',45,46,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',0,1,1,28,0,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',43,44,0,'*',1),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',1,2,1,'*',0),(102,'mainmenu','About Us','about-us','','about-us','index.php?option=com_content&view=article&id=2','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',3,4,0,'*',0),(103,'mainmenu','News','news','','news','index.php?option=com_content&view=category&layout=blog&id=8','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"1\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"0\",\"num_columns\":\"1\",\"num_links\":\"0\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"published\",\"show_pagination\":\"0\",\"show_pagination_results\":\"0\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',5,6,0,'*',0),(104,'mainmenu','Login','login','','login','index.php?option=com_users&view=login','component',1,1,1,25,0,0,'0000-00-00 00:00:00',0,4,'',0,'{\"login_redirect_url\":\"\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logout_redirect_url\":\"\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',9,10,0,'*',0),(105,'mainmenu','Edit Profile','edit-profile','','edit-profile','index.php?option=com_users&view=profile&layout=edit','component',1,1,1,25,0,0,'0000-00-00 00:00:00',0,2,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',11,12,0,'*',0),(106,'mainmenu','Contact Us','contact-us','','contact-us','index.php?option=com_contact&view=contact&id=1','component',1,1,1,8,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"presentation_style\":\"\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',7,8,0,'*',0),(107,'mainmenu','Administrator','2012-01-04-04-05-24','','2012-01-04-04-05-24','administrator','url',1,1,1,0,0,0,'0000-00-00 00:00:00',1,3,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',57,58,0,'*',0),(108,'mainmenu','Creating Your Site','creating-your-site','','creating-your-site','index.php?option=com_content&view=article&id=6','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,3,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',59,60,0,'*',0),(109,'mainmenu','Create an Article','create-an-article','','create-an-article','index.php?option=com_content&view=form&layout=edit','component',1,1,1,22,0,0,'0000-00-00 00:00:00',0,3,'',0,'{\"enable_category\":\"0\",\"catid\":\"2\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',13,14,0,'*',0),(110,'mainmenu','Top-title','top-title','Top-title','top-title','index.php?option=com_weblinks&view=categories&id=0','component',0,1,1,21,0,0,'0000-00-00 00:00:00',0,1,'',7,'{\"show_base_description\":\"\",\"categories_description\":\"\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"\",\"show_subcat_desc_cat\":\"\",\"show_cat_num_links_cat\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_links\":\"\",\"show_pagination_limit\":\"\",\"show_headings\":\"\",\"show_link_description\":\"\",\"show_link_hits\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',61,62,0,'*',0),(111,'top-title','Home','home-menu-item','','home-menu-item','index.php?option=com_weblinks&view=form&layout=edit','component',-2,1,1,21,0,0,'0000-00-00 00:00:00',0,1,'',7,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',63,64,0,'*',0),(112,'top-title','About','about-company','','about-company','index.php?option=com_weblinks&view=form&layout=edit','component',-2,1,1,21,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',65,66,0,'*',0),(113,'top-title','Услуги','services','','services','index.php?option=com_weblinks&view=form&layout=edit','component',-2,1,1,21,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',67,68,0,'*',0),(114,'top-title','Процессы','proccesses','','proccesses','index.php?option=com_weblinks&view=form&layout=edit','component',-2,1,1,21,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',69,70,0,'*',0),(115,'top-title','Карьера','career','','career','index.php?option=com_weblinks&view=form&layout=edit','component',-2,1,1,21,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',71,72,0,'*',0),(116,'top-title','Контакты','contacts','','contacts','index.php?option=com_weblinks&view=form&layout=edit','component',-2,1,1,21,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',73,74,0,'*',0),(128,'top-title','Домой','2013-12-17-15-16-34','','2013-12-17-15-16-34','index.php?option=com_content&view=article&id=1','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',75,76,0,'*',0),(129,'top-title','О компании','2013-12-17-15-17-05','','2013-12-17-15-17-05','index.php?option=com_content&view=article&id=2','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',7,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',77,78,0,'*',0),(130,'top-title','Услуги','2013-12-17-15-22-55','','2013-12-17-15-22-55','index.php?option=com_content&view=article&id=3','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',79,80,0,'*',0),(131,'top-title','Процессы','2013-12-17-15-23-49','','2013-12-17-15-23-49','index.php?option=com_content&view=article&id=4','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',81,82,0,'*',0),(132,'top-title','Карьера','2013-12-17-15-24-09','','2013-12-17-15-24-09','index.php?option=com_content&view=article&id=5','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',83,84,0,'*',0),(133,'top-title','Контакты','2013-12-17-15-24-35','','2013-12-17-15-24-35','index.php?option=com_content&view=article&id=6','url',1,1,1,0,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',85,86,0,'*',0),(142,'main','vironittouchstonecomponent','vironittouchstonecomponent','','vironittouchstonecomponent','index.php?option=com_vironittouchstonecomponent','component',0,1,1,10061,0,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',87,88,0,'',1);

/*Table structure for table `vrnt_menu_types` */

DROP TABLE IF EXISTS `vrnt_menu_types`;

CREATE TABLE `vrnt_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_menu_types` */

insert  into `vrnt_menu_types`(`id`,`menutype`,`title`,`description`) values (1,'mainmenu','Main Menu','The main menu for the site'),(2,'top-title','top-title','top-title');

/*Table structure for table `vrnt_messages` */

DROP TABLE IF EXISTS `vrnt_messages`;

CREATE TABLE `vrnt_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_messages` */

/*Table structure for table `vrnt_messages_cfg` */

DROP TABLE IF EXISTS `vrnt_messages_cfg`;

CREATE TABLE `vrnt_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_messages_cfg` */

/*Table structure for table `vrnt_modules` */

DROP TABLE IF EXISTS `vrnt_modules`;

CREATE TABLE `vrnt_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_modules` */

insert  into `vrnt_modules`(`id`,`title`,`note`,`content`,`ordering`,`position`,`checked_out`,`checked_out_time`,`publish_up`,`publish_down`,`published`,`module`,`access`,`showtitle`,`params`,`client_id`,`language`) values (1,'Main Menu','','',1,'position-7',647,'2013-12-18 07:58:52','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(2,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,'Login Form','','',7,'position-7',647,'2013-12-18 07:59:01','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,'Breadcrumbs','','',1,'position-2',647,'2013-12-20 12:45:34','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"Home\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(79,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(80,'Search','','',0,'position-0',647,'2014-01-21 06:43:34','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_search',1,0,'{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"button_pos\":\"right\",\"imagebutton\":\"\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(81,'Header Image','','<div style=\"margin-left: 10px;\">\r\n<p>This is the Header module. You can edit in the the Module Manager in your Administrator.</p>\r\n<p>Put a large image here. if you make an image that is about 1050 px wide  by  180 px high it will fit nicely. You could put text or a mix of images and text if you prefer.</p>\r\n</div>',1,'position-15',42,'2012-01-17 15:07:56','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(82,'Other News','','',1,'position-7',647,'2013-12-18 07:58:55','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_news',1,1,'{\"catid\":[\"8\"],\"image\":\"0\",\"item_title\":\"1\",\"link_titles\":\"1\",\"item_heading\":\"h4\",\"showLastSeparator\":\"0\",\"readmore\":\"0\",\"count\":\"5\",\"ordering\":\"a.publish_up\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(83,'Side Module','','<p>This is a module where you might want to add some more information or an image,  a link to your social media presence, or whatever makes sense for your site.  </p>\r\n<p>You can edit this module in the module manager. Look for the Side Module.</p>',1,'position-7',647,'2013-12-18 07:58:59','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}',0,'*'),(86,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,'Top-menu','','',1,'position-12',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_menu',1,1,'{\"menutype\":\"top-title\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(88,'Top-menu (copy)','','',1,'position-15',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_menu',1,0,'{\"menutype\":\"mainmenu\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(96,'mod_contactsblock','','',2,'atomic-topmenu',647,'2013-12-18 09:00:44','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_contactsblock',1,1,'',0,'*'),(108,'mod_featuretext','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_featuretext',1,1,'',0,'*'),(113,'Module Project Rule for Vironit-TouchStone Template','','',2,'position-10',647,'2013-12-20 12:33:45','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_projectrule',1,1,'',0,'*'),(115,'Module Cooperation Module for Vironit-TouchStone Template','','',3,'position-10',647,'2013-12-20 12:33:46','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_cooperationmodule',1,1,'',0,'*'),(117,'Module Technologies for Vironit-TouchStone Template','','',1,'position-10',647,'2013-12-20 13:15:12','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_technologies',1,1,'',0,'*'),(118,'Module About Company for Vironit-TouchStone Template','','',1,'position-11',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_aboutcompany',1,1,'',0,'*'),(120,'Module Jobs principle for Vironit-TouchStone Template','','',1,'position-11',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_jobsprinciple',1,1,'',0,'*'),(121,'Module Feature Box for Vironit-TouchStone Template','','',1,'position-13',647,'2013-12-20 13:33:44','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_featurebox',1,1,'',0,'*'),(123,'Module Footer Portfolio for Vironit-TouchStone Template','','',1,'position-14',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_footerportfolio',1,1,'',0,'*'),(124,'Module Footer Directorship for Vironit-TouchStone Template','','',2,'position-14',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_footerdirectorship',1,1,'',0,'*'),(125,'Module Footer Contacts for Vironit-TouchStone Template','','',3,'position-14',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_footercontacts',1,1,'',0,'*'),(126,'Module Footer Get Subscription for Vironit-TouchStone Template','','',4,'position-14',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_footergetsubscription',1,1,'',0,'*'),(127,'Module Footer Bottom Block for Vironit-TouchStone Template','','',1,'atomic-bottommiddle',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_footerbottomblock',1,1,'',0,'*'),(128,'Module Top Menu for Vironit-TouchStone Template','','',1,'position-12',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_topmenu',1,1,'',0,'*'),(129,'Module Orbit Slider for Vironit-TouchStone Template','','',1,'position-12',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_orbitslider',1,1,'',0,'*'),(132,'Module Main Content Block for Vironit-TouchStone Template','','',1,'position-11',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_maincontentblock',1,1,'',0,'*'),(133,'Module Left Panel for Vironit-TouchStone Template','','',1,'position-10',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_leftpanel',1,1,'',0,'*');

/*Table structure for table `vrnt_modules_menu` */

DROP TABLE IF EXISTS `vrnt_modules_menu`;

CREATE TABLE `vrnt_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_modules_menu` */

insert  into `vrnt_modules_menu`(`moduleid`,`menuid`) values (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(80,0),(81,0),(82,103),(83,0),(85,0),(86,0),(87,0),(88,0),(96,0),(108,0),(113,0),(115,0),(117,0),(118,0),(120,0),(121,0),(123,0),(124,0),(125,0),(126,0),(127,0),(128,0),(129,0),(132,0),(133,0);

/*Table structure for table `vrnt_newsfeeds` */

DROP TABLE IF EXISTS `vrnt_newsfeeds`;

CREATE TABLE `vrnt_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_newsfeeds` */

/*Table structure for table `vrnt_overrider` */

DROP TABLE IF EXISTS `vrnt_overrider`;

CREATE TABLE `vrnt_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_overrider` */

/*Table structure for table `vrnt_redirect_links` */

DROP TABLE IF EXISTS `vrnt_redirect_links`;

CREATE TABLE `vrnt_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_redirect_links` */

insert  into `vrnt_redirect_links`(`id`,`old_url`,`new_url`,`referer`,`comment`,`hits`,`published`,`created_date`,`modified_date`) values (1,'http://new.vironit.loc/index.php/what-about','','','',4,0,'2013-12-17 08:33:34','0000-00-00 00:00:00'),(2,'http://new.vironit.loc/','','','',29,0,'2013-12-17 09:27:54','0000-00-00 00:00:00'),(3,'http://new.vironit.loc/index.php','','http://new.vironit.loc/','',44,0,'2013-12-17 09:49:06','0000-00-00 00:00:00'),(4,'http://new.vironit.loc/index.php?option=com_vironittouchstonecomponent0','','','',1,0,'2014-01-04 08:15:46','0000-00-00 00:00:00');

/*Table structure for table `vrnt_schemas` */

DROP TABLE IF EXISTS `vrnt_schemas`;

CREATE TABLE `vrnt_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_schemas` */

insert  into `vrnt_schemas`(`extension_id`,`version_id`) values (700,'2.5.11'),(10061,'0.0.1');

/*Table structure for table `vrnt_session` */

DROP TABLE IF EXISTS `vrnt_session`;

CREATE TABLE `vrnt_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_session` */

insert  into `vrnt_session`(`session_id`,`client_id`,`guest`,`time`,`data`,`userid`,`username`,`usertype`) values ('d15afbed126ebed1c7ff79693f44dab0',0,1,'1390832080','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1390832079;s:18:\"session.timer.last\";i:1390832079;s:17:\"session.timer.now\";i:1390832079;s:22:\"session.client.browser\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:16:\"com_mailto.links\";a:1:{s:40:\"f33717b60a403f1df47a13126f66e3204fb7c643\";O:8:\"stdClass\":2:{s:4:\"link\";s:23:\"http://new.vironit.loc/\";s:6:\"expiry\";i:1390832079;}}}',0,'',''),('eolbkuedaqm9bkh89ngllbkcg6',1,0,'1390832208','__default|a:8:{s:15:\"session.counter\";i:5;s:19:\"session.timer.start\";i:1390832196;s:18:\"session.timer.last\";i:1390832206;s:17:\"session.timer.now\";i:1390832208;s:22:\"session.client.browser\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/32.0.1700.76 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":2:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}s:13:\"com_installer\";O:8:\"stdClass\":2:{s:7:\"message\";s:0:\"\";s:17:\"extension_message\";s:0:\"\";}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\0*\0isRoot\";b:1;s:2:\"id\";s:3:\"647\";s:4:\"name\";s:10:\"Super User\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:21:\"d.morozov@vironit.com\";s:8:\"password\";s:65:\"14828ea21ada5dac8003f60fe2602f46:16z0ky1VobDYsEdnbPKHQUJyuaR4Wyjo\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:10:\"deprecated\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2013-12-12 13:00:28\";s:13:\"lastvisitDate\";s:19:\"2014-01-27 14:16:35\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:92:\"{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":6:{s:11:\"admin_style\";s:0:\"\";s:14:\"admin_language\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"editor\";s:0:\"\";s:8:\"helpsite\";s:0:\"\";s:8:\"timezone\";s:0:\"\";}}s:14:\"\0*\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\0*\0_authLevels\";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"31ac11456c242dacdc23758271b89be6\";}',647,'admin','');

/*Table structure for table `vrnt_template_styles` */

DROP TABLE IF EXISTS `vrnt_template_styles`;

CREATE TABLE `vrnt_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_template_styles` */

insert  into `vrnt_template_styles`(`id`,`template`,`client_id`,`home`,`title`,`params`) values (2,'bluestork',1,'1','Bluestork - Default','{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}'),(3,'atomic',0,'0','Atomic - Default','{}'),(4,'beez_20',0,'0','Beez2 - Default','{\"wrapperSmall\":53,\"wrapperLarge\":72,\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(6,'beez5',0,'0','Your Basic Template','{\"wrapperSmall\":53,\"wrapperLarge\":72,\"logo\":\"\",\"sitetitle\":\"Your site name or image\",\"sitedescription\":\"Your tag line for the top of every page\",\"navposition\":\"left\",\"html5\":1}'),(7,'vironit-touchstone',0,'1','vironit-touchstone - Default','{}');

/*Table structure for table `vrnt_update_categories` */

DROP TABLE IF EXISTS `vrnt_update_categories`;

CREATE TABLE `vrnt_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories';

/*Data for the table `vrnt_update_categories` */

/*Table structure for table `vrnt_update_sites` */

DROP TABLE IF EXISTS `vrnt_update_sites`;

CREATE TABLE `vrnt_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Update Sites';

/*Data for the table `vrnt_update_sites` */

insert  into `vrnt_update_sites`(`update_site_id`,`name`,`type`,`location`,`enabled`,`last_check_timestamp`) values (1,'Joomla Core','collection','http://update.joomla.org/core/list.xml',1,1390832176),(2,'Joomla Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1390832176),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist.xml',1,1390832176);

/*Table structure for table `vrnt_update_sites_extensions` */

DROP TABLE IF EXISTS `vrnt_update_sites_extensions`;

CREATE TABLE `vrnt_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

/*Data for the table `vrnt_update_sites_extensions` */

insert  into `vrnt_update_sites_extensions`(`update_site_id`,`extension_id`) values (1,700),(2,700),(3,600);

/*Table structure for table `vrnt_updates` */

DROP TABLE IF EXISTS `vrnt_updates`;

CREATE TABLE `vrnt_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=553 DEFAULT CHARSET=utf8 COMMENT='Available Updates';

/*Data for the table `vrnt_updates` */

insert  into `vrnt_updates`(`update_id`,`update_site_id`,`extension_id`,`categoryid`,`name`,`description`,`element`,`type`,`folder`,`client_id`,`version`,`data`,`detailsurl`,`infourl`) values (1,1,700,0,'Joomla','','joomla','file','',0,'2.5.16','','http://update.joomla.org/core/extension.xml',''),(2,3,0,0,'Armenian','','pkg_hy-AM','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/hy-AM_details.xml',''),(3,3,0,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/id-ID_details.xml',''),(4,3,0,0,'Danish','','pkg_da-DK','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/da-DK_details.xml',''),(5,3,0,0,'Khmer','','pkg_km-KH','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/km-KH_details.xml',''),(6,3,0,0,'Swedish','','pkg_sv-SE','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sv-SE_details.xml',''),(7,3,0,0,'Hungarian','','pkg_hu-HU','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/hu-HU_details.xml',''),(8,3,0,0,'Bulgarian','','pkg_bg-BG','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/bg-BG_details.xml',''),(9,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.16.2','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(10,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.15.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(11,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(12,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(13,3,0,0,'Turkish','','pkg_tr-TR','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/tr-TR_details.xml',''),(14,3,0,0,'Ukrainian','','pkg_uk-UA','package','',0,'2.5.13.11','','http://update.joomla.org/language/details/uk-UA_details.xml',''),(15,3,0,0,'Slovak','','pkg_sk-SK','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sk-SK_details.xml',''),(16,3,0,0,'Belarusian','','pkg_be-BY','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/be-BY_details.xml',''),(17,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(18,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(19,3,0,0,'Romanian','','pkg_ro-RO','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ro-RO_details.xml',''),(20,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(21,3,0,0,'Macedonian','','pkg_mk-MK','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/mk-MK_details.xml',''),(22,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(23,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(24,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.16.2','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(25,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(26,3,0,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/nb-NO_details.xml',''),(27,3,0,0,'English AU','','pkg_en-AU','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/en-AU_details.xml',''),(28,3,0,0,'English US','','pkg_en-US','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/en-US_details.xml',''),(29,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(30,3,0,0,'Lithuanian','','pkg_lt-LT','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/lt-LT_details.xml',''),(31,3,0,0,'Albanian','','pkg_sq-AL','package','',0,'2.5.1.5','','http://update.joomla.org/language/details/sq-AL_details.xml',''),(32,3,0,0,'Czech','','pkg_cs-CZ','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/cs-CZ_details.xml',''),(33,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(34,3,0,0,'Galician','','pkg_gl-ES','package','',0,'2.5.7.4','','http://update.joomla.org/language/details/gl-ES_details.xml',''),(35,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.16.2','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(36,3,0,0,'Syriac','','pkg_sy-IQ','package','',0,'2.5.10.1','','http://update.joomla.org/language/details/sy-IQ_details.xml',''),(37,3,0,0,'Portuguese','','pkg_pt-PT','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/pt-PT_details.xml',''),(38,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(39,3,0,0,'Hebrew','','pkg_he-IL','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/he-IL_details.xml',''),(40,3,0,0,'Catalan','','pkg_ca-ES','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ca-ES_details.xml',''),(41,3,0,0,'Laotian','','pkg_lo-LA','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/lo-LA_details.xml',''),(42,3,0,0,'Afrikaans','','pkg_af-ZA','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/af-ZA_details.xml',''),(43,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.14.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(44,3,0,0,'Greek','','pkg_el-GR','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/el-GR_details.xml',''),(45,3,0,0,'Esperanto','','pkg_eo-XX','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/eo-XX_details.xml',''),(46,3,0,0,'Finnish','','pkg_fi-FI','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/fi-FI_details.xml',''),(47,3,0,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/pt-BR_details.xml',''),(48,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(49,3,0,0,'Vietnamese','','pkg_vi-VN','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/vi-VN_details.xml',''),(50,3,0,0,'Kurdish Sorani','','pkg_ckb-IQ','package','',0,'2.5.9.1','','http://update.joomla.org/language/details/ckb-IQ_details.xml',''),(51,3,0,0,'Bosnian','','pkg_bs-BA','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/bs-BA_details.xml',''),(52,3,0,0,'Croatian','','pkg_hr-HR','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/hr-HR_details.xml',''),(53,3,0,0,'Azeri','','pkg_az-AZ','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/az-AZ_details.xml',''),(54,3,0,0,'Norwegian Nynorsk','','pkg_nn-NO','package','',0,'2.5.8.1','','http://update.joomla.org/language/details/nn-NO_details.xml',''),(55,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(56,3,0,0,'Scottish Gaelic','','pkg_gd-GB','package','',0,'2.5.7.1','','http://update.joomla.org/language/details/gd-GB_details.xml',''),(57,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.13.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(58,3,0,0,'Basque','','pkg_eu-ES','package','',0,'1.7.0.1','','http://update.joomla.org/language/details/eu-ES_details.xml',''),(59,3,0,0,'Uyghur','','pkg_ug-CN','package','',0,'2.5.7.2','','http://update.joomla.org/language/details/ug-CN_details.xml',''),(60,3,0,0,'Korean','','pkg_ko-KR','package','',0,'2.5.11.1','','http://update.joomla.org/language/details/ko-KR_details.xml',''),(61,3,0,0,'Hindi','','pkg_hi-IN','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/hi-IN_details.xml',''),(62,3,0,0,'Welsh','','pkg_cy-GB','package','',0,'2.5.6.1','','http://update.joomla.org/language/details/cy-GB_details.xml',''),(63,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.16.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(64,1,0,0,'Joomla','','joomla','file','',0,'2.5.17','','http://update.joomla.org/core/extension.xml',''),(65,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(66,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/it-IT_details.xml',''),(67,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(68,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(69,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(70,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(71,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(72,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(73,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(74,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(75,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(76,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(77,1,0,0,'Joomla','','joomla','file','',0,'2.5.17','','http://update.joomla.org/core/extension.xml',''),(78,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(79,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(80,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(81,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(82,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(83,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(84,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(85,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(86,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(87,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(88,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(89,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(90,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(91,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(92,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(93,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(94,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(95,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(96,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(97,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(98,1,0,0,'Joomla','','joomla','file','',0,'2.5.17','','http://update.joomla.org/core/extension.xml',''),(99,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(100,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(101,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(102,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(103,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(104,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(105,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(106,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(107,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(108,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(109,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(110,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(111,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(112,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(113,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(114,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(115,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(116,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(117,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(118,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(119,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(120,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(121,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(122,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(123,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(124,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(125,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(126,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(127,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(128,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(129,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(130,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(131,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(132,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(133,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(134,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(135,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(136,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(137,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(138,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(139,1,0,0,'Joomla','','joomla','file','',0,'2.5.17','','http://update.joomla.org/core/extension.xml',''),(140,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(141,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(142,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(143,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(144,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(145,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(146,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(147,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(148,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(149,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(150,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(151,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(152,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(153,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(154,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(155,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(156,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(157,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(158,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(159,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(160,1,0,0,'Joomla','','joomla','file','',0,'2.5.17','','http://update.joomla.org/core/extension.xml',''),(161,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(162,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(163,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(164,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(165,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(166,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(167,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(168,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(169,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(170,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(171,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(172,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(173,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(174,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(175,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(176,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(177,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(178,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(179,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(180,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(181,1,0,0,'Joomla','','joomla','file','',0,'2.5.17','','http://update.joomla.org/core/extension.xml',''),(182,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(183,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(184,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(185,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(186,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(187,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(188,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(189,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(190,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(191,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(192,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(193,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(194,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(195,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(196,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(197,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(198,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(199,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(200,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(201,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(202,1,0,0,'Joomla','','joomla','file','',0,'2.5.17','','http://update.joomla.org/core/extension.xml',''),(203,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(204,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(205,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(206,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(207,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(208,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(209,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(210,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(211,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(212,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(213,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(214,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(215,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(216,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(217,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(218,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(219,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(220,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(221,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(222,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(223,1,0,0,'Joomla','','joomla','file','',0,'2.5.17','','http://update.joomla.org/core/extension.xml',''),(224,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(225,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(226,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(227,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(228,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(229,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(230,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(231,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(232,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(233,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(234,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(235,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(236,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(237,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(238,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(239,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(240,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(241,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(242,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(243,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(244,1,0,0,'Joomla','','joomla','file','',0,'2.5.17','','http://update.joomla.org/core/extension.xml',''),(245,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(246,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(247,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(248,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(249,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(250,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(251,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(252,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(253,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(254,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(255,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(256,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(257,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(258,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(259,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(260,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(261,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(262,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(263,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(264,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(265,1,0,0,'Joomla','','joomla','file','',0,'2.5.17','','http://update.joomla.org/core/extension.xml',''),(266,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(267,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(268,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(269,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(270,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(271,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(272,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(273,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(274,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(275,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(276,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(277,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(278,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(279,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(280,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(281,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(282,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(283,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(284,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(285,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(286,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(287,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(288,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(289,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(290,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(291,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(292,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(293,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(294,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(295,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(296,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(297,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(298,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(299,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(300,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(301,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(302,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(303,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(304,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(305,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(306,1,0,0,'Joomla','','joomla','file','',0,'2.5.17','','http://update.joomla.org/core/extension.xml',''),(307,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(308,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(309,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(310,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(311,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(312,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(313,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(314,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(315,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(316,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(317,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(318,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(319,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(320,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(321,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(322,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(323,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(324,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(325,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(326,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(327,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(328,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(329,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(330,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(331,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(332,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(333,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(334,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(335,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(336,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(337,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(338,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(339,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(340,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(341,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(342,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(343,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(344,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(345,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(346,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(347,1,0,0,'Joomla','','joomla','file','',0,'2.5.17','','http://update.joomla.org/core/extension.xml',''),(348,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(349,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(350,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(351,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(352,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(353,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(354,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(355,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(356,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(357,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(358,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(359,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(360,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(361,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(362,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(363,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(364,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(365,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(366,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(367,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(368,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(369,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(370,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(371,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(372,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(373,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(374,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(375,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(376,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(377,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(378,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(379,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(380,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(381,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(382,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(383,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(384,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(385,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(386,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(387,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(388,1,0,0,'Joomla','','joomla','file','',0,'2.5.17','','http://update.joomla.org/core/extension.xml',''),(389,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(390,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(391,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(392,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(393,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(394,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(395,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(396,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(397,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(398,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(399,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(400,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(401,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(402,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(403,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(404,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(405,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(406,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(407,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(408,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(409,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(410,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(411,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(412,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(413,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(414,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(415,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(416,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(417,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(418,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(419,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(420,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(421,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(422,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(423,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(424,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(425,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(426,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(427,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(428,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(429,1,0,0,'Joomla','','joomla','file','',0,'2.5.17','','http://update.joomla.org/core/extension.xml',''),(430,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(431,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(432,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(433,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(434,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(435,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(436,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(437,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(438,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(439,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(440,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(441,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(442,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(443,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(444,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(445,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(446,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(447,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(448,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(449,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(450,1,0,0,'Joomla','','joomla','file','',0,'2.5.17','','http://update.joomla.org/core/extension.xml',''),(451,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(452,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(453,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(454,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(455,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(456,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(457,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(458,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(459,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(460,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(461,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(462,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(463,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(464,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(465,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(466,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(467,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(468,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(469,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(470,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(471,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(472,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(473,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(474,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(475,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(476,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(477,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(478,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(479,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(480,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(481,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(482,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(483,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(484,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(485,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(486,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(487,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(488,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(489,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(490,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(491,1,0,0,'Joomla','','joomla','file','',0,'2.5.17','','http://update.joomla.org/core/extension.xml',''),(492,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(493,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(494,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(495,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(496,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(497,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(498,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(499,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(500,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(501,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(502,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(503,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(504,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(505,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(506,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(507,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(508,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(509,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(510,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(511,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(512,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(513,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(514,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(515,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(516,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(517,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(518,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(519,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(520,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(521,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(522,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(523,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(524,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(525,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(526,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(527,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(528,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(529,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(530,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(531,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml',''),(532,1,0,0,'Joomla','','joomla','file','',0,'2.5.17','','http://update.joomla.org/core/extension.xml',''),(533,3,0,0,'French','','pkg_fr-FR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fr-FR_details.xml',''),(534,3,0,0,'Italian','','pkg_it-IT','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/it-IT_details.xml',''),(535,3,0,0,'Spanish','','pkg_es-ES','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/es-ES_details.xml',''),(536,3,0,0,'Dutch','','pkg_nl-NL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-NL_details.xml',''),(537,3,0,0,'Latvian','','pkg_lv-LV','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/lv-LV_details.xml',''),(538,3,0,0,'Estonian','','pkg_et-EE','package','',0,'2-5-17.1','','http://update.joomla.org/language/details/et-EE_details.xml',''),(539,3,0,0,'Flemish','','pkg_nl-BE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/nl-BE_details.xml',''),(540,3,0,0,'Japanese','','pkg_ja-JP','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ja-JP_details.xml',''),(541,3,0,0,'Serbian Latin','','pkg_sr-YU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-YU_details.xml',''),(542,3,0,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ar-AA_details.xml',''),(543,3,0,0,'German','','pkg_de-DE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/de-DE_details.xml',''),(544,3,0,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sr-RS_details.xml',''),(545,3,0,0,'Persian','','pkg_fa-IR','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/fa-IR_details.xml',''),(546,3,0,0,'Polish','','pkg_pl-PL','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/pl-PL_details.xml',''),(547,3,0,0,'Russian','','pkg_ru-RU','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/ru-RU_details.xml',''),(548,3,0,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-CN_details.xml',''),(549,3,0,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/zh-TW_details.xml',''),(550,3,0,0,'Tamil India','','pkg_ta-IN','package','',0,'2.5.17.2','','http://update.joomla.org/language/details/ta-IN_details.xml',''),(551,3,0,0,'Thai','','pkg_th-TH','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/th-TH_details.xml',''),(552,3,0,0,'Swahili','','pkg_sw-KE','package','',0,'2.5.17.1','','http://update.joomla.org/language/details/sw-KE_details.xml','');

/*Table structure for table `vrnt_user_notes` */

DROP TABLE IF EXISTS `vrnt_user_notes`;

CREATE TABLE `vrnt_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_user_notes` */

/*Table structure for table `vrnt_user_profiles` */

DROP TABLE IF EXISTS `vrnt_user_profiles`;

CREATE TABLE `vrnt_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

/*Data for the table `vrnt_user_profiles` */

/*Table structure for table `vrnt_user_usergroup_map` */

DROP TABLE IF EXISTS `vrnt_user_usergroup_map`;

CREATE TABLE `vrnt_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_user_usergroup_map` */

insert  into `vrnt_user_usergroup_map`(`user_id`,`group_id`) values (647,8);

/*Table structure for table `vrnt_usergroups` */

DROP TABLE IF EXISTS `vrnt_usergroups`;

CREATE TABLE `vrnt_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_usergroups` */

insert  into `vrnt_usergroups`(`id`,`parent_id`,`lft`,`rgt`,`title`) values (1,0,1,20,'Public'),(2,1,6,17,'Registered'),(3,2,7,14,'Author'),(4,3,8,11,'Editor'),(5,4,9,10,'Publisher'),(6,1,2,5,'Manager'),(7,6,3,4,'Administrator'),(8,1,18,19,'Super Users');

/*Table structure for table `vrnt_users` */

DROP TABLE IF EXISTS `vrnt_users`;

CREATE TABLE `vrnt_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=648 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_users` */

insert  into `vrnt_users`(`id`,`name`,`username`,`email`,`password`,`usertype`,`block`,`sendEmail`,`registerDate`,`lastvisitDate`,`activation`,`params`,`lastResetTime`,`resetCount`) values (647,'Super User','admin','d.morozov@vironit.com','14828ea21ada5dac8003f60fe2602f46:16z0ky1VobDYsEdnbPKHQUJyuaR4Wyjo','deprecated',0,1,'2013-12-12 13:00:28','2014-01-27 14:16:43','0','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0);

/*Table structure for table `vrnt_viewlevels` */

DROP TABLE IF EXISTS `vrnt_viewlevels`;

CREATE TABLE `vrnt_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_viewlevels` */

insert  into `vrnt_viewlevels`(`id`,`title`,`ordering`,`rules`) values (1,'Public',0,'[1]'),(2,'Registered',1,'[6,2,8]'),(3,'Special',2,'[6,3,8]');

/*Table structure for table `vrnt_vironit_entity_leftmenublock` */

DROP TABLE IF EXISTS `vrnt_vironit_entity_leftmenublock`;

CREATE TABLE `vrnt_vironit_entity_leftmenublock` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('page','category','main_page') DEFAULT NULL,
  `id_entity` int(11) DEFAULT NULL,
  `id_left_menu_block` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=259 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_vironit_entity_leftmenublock` */

insert  into `vrnt_vironit_entity_leftmenublock`(`id`,`type`,`id_entity`,`id_left_menu_block`) values (180,'category',6,27),(175,'page',16,28),(201,'category',1,28),(200,'category',1,16),(199,'category',1,6),(198,'category',1,3),(197,'category',1,2),(196,'category',1,1),(31,'category',29,16),(258,'page',4,34),(256,'page',2,34),(255,'page',2,33),(254,'page',1,34),(253,'page',1,33),(250,'page',31,37),(249,'page',31,35),(248,'page',31,34),(247,'page',31,33),(246,'page',24,37),(245,'page',24,35),(244,'page',24,34),(243,'page',24,33),(252,'category',3,35),(227,'page',3,33),(226,'page',20,35),(225,'page',20,34),(202,'category',1,32),(224,'page',20,33),(189,'page',18,30),(236,'category',2,35),(235,'category',2,34),(257,'page',4,33),(181,'category',6,28),(179,'category',6,26),(234,'category',2,33),(251,'category',3,34),(219,'main_page',0,22),(218,'main_page',0,17),(174,'page',16,22);

/*Table structure for table `vrnt_vironit_entity_lefttextentity` */

DROP TABLE IF EXISTS `vrnt_vironit_entity_lefttextentity`;

CREATE TABLE `vrnt_vironit_entity_lefttextentity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('page','category','main_page') DEFAULT NULL,
  `id_entity` int(11) DEFAULT NULL,
  `id_textentity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_vironit_entity_lefttextentity` */

insert  into `vrnt_vironit_entity_lefttextentity`(`id`,`type`,`id_entity`,`id_textentity`) values (7,'main_page',0,2),(6,'main_page',0,1),(8,'category',1,1),(9,'category',1,2);

/*Table structure for table `vrnt_vironit_left_menu_block_items` */

DROP TABLE IF EXISTS `vrnt_vironit_left_menu_block_items`;

CREATE TABLE `vrnt_vironit_left_menu_block_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `left_menu_block_id` int(11) DEFAULT NULL,
  `left_menu_block_item_name_rus` char(255) DEFAULT NULL,
  `left_menu_block_item_link` char(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_vironit_left_menu_block_items` */

insert  into `vrnt_vironit_left_menu_block_items`(`id`,`left_menu_block_id`,`left_menu_block_item_name_rus`,`left_menu_block_item_link`,`order`) values (1,14,'fgfd','fgdfs',NULL),(2,14,'0.05442167026922107','0.32848963467404246',NULL),(3,14,'0.7274567361455411','0.6823376866523176',NULL),(4,14,'0.8234853968024254','0.09977519838139415',NULL),(5,15,'gsdfgsd','fgdfg',NULL),(6,15,'0.8546898290514946','0.935774733312428',NULL),(7,15,'0.2216981837991625','0.24707376025617123',NULL),(8,15,'0.7776389261707664','0.7400942586828023',NULL),(9,15,'0.6736881609540433','0.4309477796778083',NULL),(10,16,'0.8213604954071343','0.9561722401995212',0),(11,16,'rtwer','tertert',1),(12,16,'0.5635823826305568','0.7939414181746542',2),(13,16,'0.30280853156000376','0.3698017909191549',3),(14,16,'0.4334334693849087','0.7749731671065092',4),(15,17,'цкеук','еук',0),(16,17,'0.6811534878797829','0.6812124941498041',1),(17,17,'0.22317434754222631','0.8493984006345272',2),(18,17,'0.7631761855445802','0.30420295684598386',3),(19,17,'0.6889547978062183','0.3423401457257569',4),(20,18,'','',0),(21,19,'','',0),(22,20,'','',0),(23,21,'0.7605787056963891','0.31405919464305043',0),(24,21,'0.45991627988405526','0.1005750650074333',1),(25,21,'0.8803778723813593','0.9505206884350628',2),(188,22,'0.8679638239555061','0.16548060881905258',5),(187,22,'0.48624304425902665','0.9874248001724482',4),(186,22,'0.003392845159396529','0.01177574205212295',3),(185,22,'0.7799917433876544','0.40471373102627695',2),(184,22,'0.1612802492454648','0.763562103966251',1),(183,22,'FIRST','?address=1',0),(32,23,'0.25474981451407075','0.2503514066338539',0),(33,23,'0.05442167026922107','0.32848963467404246',1),(34,23,'0.7274567361455411','0.6823376866523176',2),(35,23,'0.8234853968024254','0.09977519838139415',3),(36,23,'0.05474294675514102','0.33617588062770665',4),(37,23,'fgfd','fgdfs',5),(38,24,'0.8346234741620719','0.09214648557826877',0),(39,24,'0.4923117363359779','0.6787900382187217',1),(40,25,'0.014755032723769546','0.5494683827273548',0),(41,25,'0.6722064786590636','0.680399535689503',1),(42,25,'0.02481030556373298','0.7208285753149539',2),(43,25,'0.006314626196399331','0.9370297309942544',3),(145,28,'0.2670460168737918','0.9998782309703529',4),(144,28,'fdhjklj','0.7360103391110897',3),(143,28,'0.9455882697366178','0.9399758162908256',2),(119,27,'0.9419764489866793','0.9592949461657554',3),(118,27,'0.2827556747943163','0.18745416053570807',2),(117,27,'23423','4234',1),(116,27,'0.4144003433175385','0.6454962051939219',0),(111,1,'8','0.6317623676732183',8),(110,1,'7','0.3039136715233326',7),(109,1,'6','0.511949292384088',6),(108,1,'5','0.14757158397696912',5),(107,1,'4','0.2835582608822733',4),(106,1,'3','0.32760787988081574',3),(105,1,'2','0.058690902311354876',2),(104,1,'9','0.9955839039757848',1),(103,1,'1','0.9695170854683965',0),(142,28,'ase','esra',1),(141,28,'0.6427157623693347','0.9131905098911375',0),(146,29,'0.9055808284319937','0.028179252753034234',0),(147,29,'asdfsad','asdfasdf',1),(148,29,'0.04104364337399602','0.5299898793455213',2),(149,29,'0.34269967884756625','0.1662444097455591',3),(150,29,'0.6128175933845341','0.9344057943671942',4),(151,29,'0.7812380807008594','0.7341429216321558',5),(181,31,'','',0),(180,30,'Сотрудники','?address=2&page=18',3),(179,30,'Тестирование','0.5681851133704185',2),(178,30,'Разработка','0.6925737573765218',1),(177,30,'Консалтинг','фываыва',0),(182,32,'','',0),(204,33,'Разработка вэб-приложений','123',3),(203,33,'Разработка мобильных приложений','123123',2),(202,33,'Бизнес-приложения','123',1),(201,33,'IT-консалтинг','123',0),(193,34,'Проектное управление','123',0),(194,34,'Технологии','123',1),(195,34,'Модели сотрудничества','123',2),(196,35,'Наша команда','123',0),(197,35,'Вакансии','123',1),(198,36,'О компании','гпщнг',0),(199,36,'Руководство','нпегне',1),(200,36,'Партнеры','нане',2),(205,37,'О компании','впвы',0),(206,37,'Руководство','саивап',1),(207,37,'Партнеры','паирв',2);

/*Table structure for table `vrnt_vironit_left_menu_blocks` */

DROP TABLE IF EXISTS `vrnt_vironit_left_menu_blocks`;

CREATE TABLE `vrnt_vironit_left_menu_blocks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `left_menu_block_name_rus` char(255) DEFAULT NULL,
  `textarea` text,
  `textarea_name` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_vironit_left_menu_blocks` */

insert  into `vrnt_vironit_left_menu_blocks`(`id`,`left_menu_block_name_rus`,`textarea`,`textarea_name`) values (33,'Услуги','',''),(34,'Процессы','',''),(35,'Карьера','',''),(37,'','','');

/*Table structure for table `vrnt_vironit_left_menu_textentities` */

DROP TABLE IF EXISTS `vrnt_vironit_left_menu_textentities`;

CREATE TABLE `vrnt_vironit_left_menu_textentities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `textentity_name` char(255) DEFAULT NULL,
  `textentity_content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_vironit_left_menu_textentities` */

insert  into `vrnt_vironit_left_menu_textentities`(`id`,`textentity_name`,`textentity_content`) values (1,'ТЕКСТОВАЯ ОБЛАСТЬ','sfgdsfgdsfg sdf\r\ng\r\ndsf \r\ngsd\r\n f\r\ndsf \r\ngd\r\nsf'),(2,'ЛЕВЫЙ БЛОК','1 \r\n 1 \r\n3 3 \r\n3');

/*Table structure for table `vrnt_vironit_menu_pages` */

DROP TABLE IF EXISTS `vrnt_vironit_menu_pages`;

CREATE TABLE `vrnt_vironit_menu_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vironit_menu_id` int(11) unsigned NOT NULL,
  `menu_page_title_rus` char(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `show_on_topmenu` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_vironit_menu_pages` */

insert  into `vrnt_vironit_menu_pages`(`id`,`vironit_menu_id`,`menu_page_title_rus`,`active`,`show_on_topmenu`) values (1,3,'IT-консалтинг',1,1),(2,3,'Бизнесс-приложения',1,1),(3,3,'Разработка мобильных приложений',1,1),(4,3,'Разработка WEB приложений',1,1),(5,4,'Проектное управление',1,0),(6,4,'Технологии',1,0),(7,4,'Модель сотрудничества',1,0),(8,5,'Наша команда',1,0),(9,5,'Вакансии',1,0),(10,20,'fsdgfsd',1,0),(24,2,'О компании',1,1),(31,2,'Руководство',1,1),(32,2,'Партнеры',1,1);

/*Table structure for table `vrnt_vironit_menus` */

DROP TABLE IF EXISTS `vrnt_vironit_menus`;

CREATE TABLE `vrnt_vironit_menus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_title` char(255) DEFAULT NULL,
  `menu_title_rus` char(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_vironit_menus` */

insert  into `vrnt_vironit_menus`(`id`,`menu_title`,`menu_title_rus`,`active`) values (1,'home','Домой',0),(2,'about','О компании',1),(3,'services','Услуги',1),(4,'proccess','Процессы',1),(5,'career','Карьера',1),(6,'contacts','Контакты',1),(7,'private_page','Личная страница',0),(29,NULL,'Категория_новая',0);

/*Table structure for table `vrnt_weblinks` */

DROP TABLE IF EXISTS `vrnt_weblinks`;

CREATE TABLE `vrnt_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vrnt_weblinks` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
