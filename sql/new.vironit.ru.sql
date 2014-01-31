
CREATE DATABASE IF NOT EXISTS `new.vironit` DEFAULT CHARACTER SET utf8;

USE `new.vironit`;

DROP TABLE IF EXISTS `vrnt_vironit_menus`;

CREATE TABLE `vrnt_vironit_menus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_title` char(255) DEFAULT NULL,
  `menu_title_rus` char(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `vrnt_vironit_menu_pages`;

CREATE TABLE `vrnt_vironit_menu_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vironit_menu_id` int(11) unsigned NOT NULL,
  `menu_page_title_rus` char(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
