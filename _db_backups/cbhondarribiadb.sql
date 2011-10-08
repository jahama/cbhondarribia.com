-- MySQL dump 10.11
--
-- Host: n1grid50mysql19.secureserver.net    Database: cbhondarribiadb
-- ------------------------------------------------------
-- Server version	5.0.91-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `jos_banner`
--

DROP TABLE IF EXISTS `jos_banner`;
CREATE TABLE `jos_banner` (
  `bid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` varchar(30) NOT NULL default 'banner',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `imageurl` varchar(100) NOT NULL default '',
  `clickurl` varchar(200) NOT NULL default '',
  `date` datetime default NULL,
  `showBanner` tinyint(1) NOT NULL default '0',
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_banner`
--

LOCK TABLES `jos_banner` WRITE;
/*!40000 ALTER TABLE `jos_banner` DISABLE KEYS */;
INSERT INTO `jos_banner` VALUES (1,1,'banner','OSM 1','osm-1',0,43,0,'osmbanner1.png','http://www.opensourcematters.org','2004-07-07 15:31:29',0,0,'0000-00-00 00:00:00','','',13,'',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00','',''),(2,1,'banner','OSM 2','osm-2',0,49,0,'osmbanner2.png','http://www.opensourcematters.org','2004-07-07 15:31:29',0,0,'0000-00-00 00:00:00','','',13,'',0,2,'0000-00-00 00:00:00','0000-00-00 00:00:00','',''),(3,1,'','Joomla!','joomla',0,42,0,'','http://www.joomla.org','2006-05-29 14:21:28',0,0,'0000-00-00 00:00:00','','<a href=\"{CLICKURL}\" target=\"_blank\">{NAME}</a>\r\n<br/>\r\nJoomla! The most popular and widely used Open Source CMS Project in the world.',14,'',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00','',''),(4,1,'','JoomlaCode','joomlacode',0,42,0,'','http://joomlacode.org','2006-05-29 14:19:26',0,0,'0000-00-00 00:00:00','','<a href=\"{CLICKURL}\" target=\"_blank\">{NAME}</a>\r\n<br/>\r\nJoomlaCode, development and distribution made easy.',14,'',0,2,'0000-00-00 00:00:00','0000-00-00 00:00:00','',''),(5,1,'','Joomla! Extensions','joomla-extensions',0,37,0,'','http://extensions.joomla.org','2006-05-29 14:23:21',0,0,'0000-00-00 00:00:00','','<a href=\"{CLICKURL}\" target=\"_blank\">{NAME}</a>\r\n<br/>\r\nJoomla! Components, Modules, Plugins and Languages by the bucket load.',14,'',0,3,'0000-00-00 00:00:00','0000-00-00 00:00:00','',''),(6,1,'','Joomla! Shop','joomla-shop',0,37,0,'','http://shop.joomla.org','2006-05-29 14:23:21',0,0,'0000-00-00 00:00:00','','<a href=\"{CLICKURL}\" target=\"_blank\">{NAME}</a>\r\n<br/>\r\nFor all your Joomla! merchandise.',14,'',0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00','',''),(7,1,'','Joomla! Promo Shop','joomla-promo-shop',0,33,1,'shop-ad.jpg','http://shop.joomla.org','2007-09-19 17:26:24',0,0,'0000-00-00 00:00:00','','',33,'',0,3,'0000-00-00 00:00:00','0000-00-00 00:00:00','',''),(8,1,'','Joomla! Promo Books','joomla-promo-books',0,24,0,'shop-ad-books.jpg','http://shop.joomla.org/index.php?option=com_wrapper&Itemid=8','2007-09-19 17:28:01',0,0,'0000-00-00 00:00:00','','',33,'',0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00','',''),(9,2,'','Web Empresa Hosting Joomla!','web-empresa',0,42,1,'','http://www.webempresa.com/','2008-07-09 01:15:06',0,0,'0000-00-00 00:00:00','','<a href=\"{CLICKURL}\" target=\"_blank\">{NAME}</a>\r\n<br/>\r\nServicios Profesionales para Joomla:\r\nHosting, Servicio Técnico, Formación y JoomlaFácil.',14,'',0,5,'0000-00-00 00:00:00','0000-00-00 00:00:00','',''),(10,3,'','CompluSoft','complusoft',0,43,1,'','http://www.complusoft.es/','2009-11-05 15:43:19',0,0,'0000-00-00 00:00:00','','<a href=\"{CLICKURL}\" target=\"_blank\">{NAME}</a>\r\n<br/>\r\nEmpresa de informática situada en la zona este de la Comunidad de Madrid presta sus servicios en las más importantes consultoras y clientes finales.',14,'',0,6,'0000-00-00 00:00:00','0000-00-00 00:00:00','',''),(11,4,'','La bacaladera','la-bacaladera',0,6592,13,'labacaladera.gif','http://www.bacaladera.com/','2010-10-14 15:55:42',1,0,'0000-00-00 00:00:00','','',41,'',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00','','width=0\nheight=0'),(12,5,'','Ayuntamiento de Hondarribia','ayuntamiento-de-hondarribia',0,6589,10,'ayuntamiento-hondarribia_35p.gif','http://www.hondarribia.org/','2010-10-14 16:12:59',1,0,'0000-00-00 00:00:00','','',41,'',0,2,'0000-00-00 00:00:00','0000-00-00 00:00:00','','width=123\nheight=179'),(13,6,'','Martiarena electricidad','martiarena-electricidad',0,6578,0,'martiarena_50.jpg','','2010-10-14 16:09:49',1,0,'0000-00-00 00:00:00','','',41,'',0,3,'0000-00-00 00:00:00','0000-00-00 00:00:00','','width=180\nheight=50'),(14,8,'','Cabecera Patrocinadores','cabecera-patrocinadores',0,6566,0,'','','2010-10-14 16:19:21',1,0,'0000-00-00 00:00:00','','',41,'',0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00','','width=10\nheight=10'),(15,9,'','Pastelería Hawaii','pasteleria-hawaii',0,3289,0,'hawaii.jpg','','2010-10-23 12:38:26',1,0,'0000-00-00 00:00:00','','',41,'',0,5,'0000-00-00 00:00:00','0000-00-00 00:00:00','','width=166\nheight=100'),(16,10,'','Centro Medico Bidasoa','centro-medico-bidasoa',0,3287,0,'centro-medico-bidasoa.gif','','2010-10-23 13:01:37',1,0,'0000-00-00 00:00:00','','',41,'',0,6,'0000-00-00 00:00:00','0000-00-00 00:00:00','','width=190\nheight=64'),(17,11,'','CSVP','csvp',0,713,0,'CSVP-80p.jpg','','2010-11-01 20:47:53',1,0,'0000-00-00 00:00:00','','',41,'',0,7,'0000-00-00 00:00:00','0000-00-00 00:00:00','','width=0\nheight=0'),(18,12,'','grs','grs',0,673,1,'grs-60p.png','http://www.grs-sl.com/','2010-11-01 22:17:27',1,0,'0000-00-00 00:00:00','','',41,'',0,8,'0000-00-00 00:00:00','0000-00-00 00:00:00','','width=0\nheight=0');
/*!40000 ALTER TABLE `jos_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bannerclient`
--

DROP TABLE IF EXISTS `jos_bannerclient`;
CREATE TABLE `jos_bannerclient` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` time default NULL,
  `editor` varchar(50) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bannerclient`
--

LOCK TABLES `jos_bannerclient` WRITE;
/*!40000 ALTER TABLE `jos_bannerclient` DISABLE KEYS */;
INSERT INTO `jos_bannerclient` VALUES (1,'Open Source Matters','Administrator','admin@opensourcematters.org','',0,'00:00:00',NULL),(2,'Web Empresa','Web Empresa','info@webempresa.com','Patrocinador Joomla! Spanish',0,'00:00:00',''),(3,'CompluSoft','CompluSoft','info@complusoft.es','Patrocinador Joomla! Spanish',0,'00:00:00',''),(4,'La bacaladera','labacaladera','info@labacaladera.com','',0,'00:00:00',''),(5,'Ayuntamiento de Hondarribia','Ayuntamiento de Hondarribia','info@hondarribia.com','',0,'00:00:00',''),(6,'Martiarena','martiarena','txispass@telefonica.net','',0,'00:00:00',''),(8,'Cabecera Patrocinadores','Cabecera Patrocinadores','info@patrocinadores.com','',0,'00:00:00',''),(9,'Pastelería Hawaii','Pastelería Hawaii','info@hawaii.com','',0,'00:00:00',''),(10,'Centro Medico Bidasoa','Centro Medico Bidasoa','info@cmb.com','',0,'00:00:00',''),(11,'CSVP','CSVP','info@csvp.com','',0,'00:00:00',''),(12,'grs','grs','info@grs.com','',0,'00:00:00','');
/*!40000 ALTER TABLE `jos_bannerclient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bannertrack`
--

DROP TABLE IF EXISTS `jos_bannertrack`;
CREATE TABLE `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bannertrack`
--

LOCK TABLES `jos_bannertrack` WRITE;
/*!40000 ALTER TABLE `jos_bannertrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_bannertrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_assign_photos`
--

DROP TABLE IF EXISTS `jos_bl_assign_photos`;
CREATE TABLE `jos_bl_assign_photos` (
  `photo_id` int(11) NOT NULL default '0',
  `cat_id` int(11) NOT NULL default '0',
  `cat_type` int(11) NOT NULL default '0',
  PRIMARY KEY  (`photo_id`,`cat_id`,`cat_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_assign_photos`
--

LOCK TABLES `jos_bl_assign_photos` WRITE;
/*!40000 ALTER TABLE `jos_bl_assign_photos` DISABLE KEYS */;
INSERT INTO `jos_bl_assign_photos` VALUES (3,9,2),(4,9,2),(5,9,2),(6,9,1),(7,9,1),(9,13,1),(10,16,1),(11,10,1),(12,18,1),(13,17,1),(14,7,1),(15,11,1),(16,14,1),(17,5,1),(18,8,1),(19,23,1),(20,24,1),(21,25,1),(22,26,1),(23,27,1),(24,28,1),(25,29,1),(26,30,1),(27,31,1),(28,32,1),(29,33,1),(30,34,1),(31,35,1),(32,36,1),(33,3,1),(34,15,2),(36,16,2),(37,37,1),(38,38,1),(39,39,1),(40,40,1),(41,41,1),(42,42,1),(43,43,1),(44,44,1),(45,45,1),(46,46,1),(47,47,1),(48,48,1),(49,49,1),(50,50,1),(51,51,1),(52,52,1);
/*!40000 ALTER TABLE `jos_bl_assign_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_config`
--

DROP TABLE IF EXISTS `jos_bl_config`;
CREATE TABLE `jos_bl_config` (
  `cfg_name` varchar(255) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_config`
--

LOCK TABLES `jos_bl_config` WRITE;
/*!40000 ALTER TABLE `jos_bl_config` DISABLE KEYS */;
INSERT INTO `jos_bl_config` VALUES ('date_format','d-m-Y H:i'),('yteam_color','#FFFFFF');
/*!40000 ALTER TABLE `jos_bl_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_events`
--

DROP TABLE IF EXISTS `jos_bl_events`;
CREATE TABLE `jos_bl_events` (
  `id` int(11) NOT NULL auto_increment,
  `e_name` varchar(255) NOT NULL default '',
  `e_img` varchar(255) NOT NULL default '',
  `e_descr` text NOT NULL,
  `player_event` char(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_events`
--

LOCK TABLES `jos_bl_events` WRITE;
/*!40000 ALTER TABLE `jos_bl_events` DISABLE KEYS */;
INSERT INTO `jos_bl_events` VALUES (1,'Goles','','','1');
/*!40000 ALTER TABLE `jos_bl_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_extra_filds`
--

DROP TABLE IF EXISTS `jos_bl_extra_filds`;
CREATE TABLE `jos_bl_extra_filds` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `published` char(1) NOT NULL default '1',
  `type` char(1) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `e_table_view` varchar(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_extra_filds`
--

LOCK TABLES `jos_bl_extra_filds` WRITE;
/*!40000 ALTER TABLE `jos_bl_extra_filds` DISABLE KEYS */;
INSERT INTO `jos_bl_extra_filds` VALUES (1,'GOL','1','0',0,'0');
/*!40000 ALTER TABLE `jos_bl_extra_filds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_extra_values`
--

DROP TABLE IF EXISTS `jos_bl_extra_values`;
CREATE TABLE `jos_bl_extra_values` (
  `f_id` int(11) NOT NULL default '0',
  `uid` int(11) NOT NULL default '0',
  `fvalue` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`f_id`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_extra_values`
--

LOCK TABLES `jos_bl_extra_values` WRITE;
/*!40000 ALTER TABLE `jos_bl_extra_values` DISABLE KEYS */;
INSERT INTO `jos_bl_extra_values` VALUES (1,20,''),(1,21,''),(1,22,''),(1,9,''),(1,16,''),(1,13,''),(1,10,''),(1,18,''),(1,17,''),(1,7,''),(1,11,''),(1,14,''),(1,5,''),(1,8,''),(1,23,''),(1,24,''),(1,25,''),(1,26,''),(1,27,''),(1,28,''),(1,29,''),(1,30,''),(1,31,''),(1,32,''),(1,33,''),(1,34,''),(1,35,''),(1,36,''),(1,3,''),(1,37,''),(1,38,''),(1,39,''),(1,40,''),(1,41,''),(1,42,''),(1,43,''),(1,44,''),(1,45,''),(1,46,''),(1,47,''),(1,48,''),(1,49,''),(1,50,''),(1,51,''),(1,52,'');
/*!40000 ALTER TABLE `jos_bl_extra_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_feadmins`
--

DROP TABLE IF EXISTS `jos_bl_feadmins`;
CREATE TABLE `jos_bl_feadmins` (
  `user_id` int(11) NOT NULL default '0',
  `season_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`user_id`,`season_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_feadmins`
--

LOCK TABLES `jos_bl_feadmins` WRITE;
/*!40000 ALTER TABLE `jos_bl_feadmins` DISABLE KEYS */;
INSERT INTO `jos_bl_feadmins` VALUES (62,1),(62,2),(62,3);
/*!40000 ALTER TABLE `jos_bl_feadmins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_groups`
--

DROP TABLE IF EXISTS `jos_bl_groups`;
CREATE TABLE `jos_bl_groups` (
  `id` int(11) NOT NULL auto_increment,
  `group_name` varchar(255) NOT NULL default '',
  `s_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_groups`
--

LOCK TABLES `jos_bl_groups` WRITE;
/*!40000 ALTER TABLE `jos_bl_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_bl_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_grteams`
--

DROP TABLE IF EXISTS `jos_bl_grteams`;
CREATE TABLE `jos_bl_grteams` (
  `g_id` int(11) NOT NULL default '0',
  `t_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`g_id`,`t_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_grteams`
--

LOCK TABLES `jos_bl_grteams` WRITE;
/*!40000 ALTER TABLE `jos_bl_grteams` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_bl_grteams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_languages`
--

DROP TABLE IF EXISTS `jos_bl_languages`;
CREATE TABLE `jos_bl_languages` (
  `id` int(11) NOT NULL auto_increment,
  `lang_file` varchar(255) NOT NULL default '',
  `is_default` char(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_languages`
--

LOCK TABLES `jos_bl_languages` WRITE;
/*!40000 ALTER TABLE `jos_bl_languages` DISABLE KEYS */;
INSERT INTO `jos_bl_languages` VALUES (1,'default','0'),(4,'Castellano','1');
/*!40000 ALTER TABLE `jos_bl_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_match`
--

DROP TABLE IF EXISTS `jos_bl_match`;
CREATE TABLE `jos_bl_match` (
  `id` int(11) NOT NULL auto_increment,
  `m_id` int(11) NOT NULL default '0',
  `team1_id` int(11) NOT NULL default '0',
  `team2_id` int(11) NOT NULL default '0',
  `score1` int(11) NOT NULL default '0',
  `score2` int(11) NOT NULL default '0',
  `match_descr` text NOT NULL,
  `published` char(1) NOT NULL default '0',
  `is_extra` char(1) NOT NULL default '0',
  `m_played` char(1) NOT NULL default '0',
  `m_date` date NOT NULL default '0000-00-00',
  `m_time` varchar(10) NOT NULL default '',
  `m_location` varchar(255) NOT NULL,
  `bonus1` decimal(10,2) NOT NULL default '0.00',
  `bonus2` decimal(10,2) NOT NULL default '0.00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_match`
--

LOCK TABLES `jos_bl_match` WRITE;
/*!40000 ALTER TABLE `jos_bl_match` DISABLE KEYS */;
INSERT INTO `jos_bl_match` VALUES (5,1,14,7,27,34,'','1','0','1','2010-10-02','18:00 ','OIARDO KIROLDEGIA (C) USURBIL','0.00','0.00'),(2,1,1,3,24,16,'','1','0','1','2010-10-03','18:00 ','POLID GOBELA (C) LAS ARENAS','0.00','0.00'),(4,1,11,6,19,22,'','1','0','1','2010-10-02','18:00 ','POLID. DIVINO MAESTRO (C) GASTEIZ','0.00','0.00'),(6,1,10,2,20,25,'','1','0','1','2010-10-02','17:00 ','LABEGARAIETA KIROLDEGIA (C) BERGARA','0.00','0.00'),(7,1,8,5,24,25,'','1','0','1','2010-10-02','18:00 ','POLID. ARTUNDUAGA (C) BASAURI','0.00','0.00'),(8,1,12,9,26,25,'','1','0','1','2010-10-02','16:30 ','POLID. JESUITAS (C) BILBAO','0.00','0.00'),(9,1,13,4,23,26,'','1','0','1','2010-10-02','18:00 ','POLID. ISPILLA (C) ZUMARRAGA ','0.00','0.00'),(10,2,3,13,33,24,'','1','0','1','2010-10-09','18:00 ','POLID. IPARRALDE-URDULIZ URDULIZ ','0.00','0.00'),(11,2,6,1,22,21,'','1','0','1','2010-10-10','00:00 ','','0.00','0.00'),(13,2,2,14,28,26,'','1','0','1','2010-10-09','19:30 ','POLID. ZUBI-ALDE PORTUGALETE ','0.00','0.00'),(14,2,5,10,34,31,'','1','0','1','2010-10-09','16:30 ','COLEGIO MARIANISTAS  GASTEIZ ','0.00','0.00'),(15,2,9,8,29,20,'','1','0','1','2010-10-10','12:00 ','POLID. HONDARTZA  HONDARRIBIA','0.00','0.00'),(16,2,4,12,30,24,'','1','0','1','2010-10-09','18:00 ','COLEGIO CORAZONISTAS GASTEIZ','0.00','0.00'),(17,3,3,6,23,26,'','1','0','1','2010-10-17','00:00 ','','0.00','0.00'),(18,3,1,7,29,34,'','1','0','1','2010-10-17','00:00 ','','0.00','0.00'),(19,3,11,2,34,27,'','1','0','1','2010-10-17','00:00 ','','0.00','0.00'),(20,3,14,5,28,30,'','1','0','1','2010-10-17','00:00 ','','0.00','0.00'),(21,3,10,9,27,32,'','1','0','1','2010-10-17','00:00 ','','0.00','0.00'),(22,3,8,4,19,22,'','1','0','1','2010-10-17','00:00 ','','0.00','0.00'),(23,3,13,12,39,32,'','1','0','1','2010-10-17','00:00 ','','0.00','0.00'),(24,2,11,7,31,28,'','1','0','1','2010-10-10','00:00 ','','0.00','0.00'),(25,4,7,3,27,22,'','1','0','1','2010-10-23','16:30 ','POLID. ITURRIPE ARRASATE','0.00','0.00'),(26,4,5,11,29,25,'','1','0','1','2010-10-23','16:30 ','COLEGIO MARIANISTAS  GASTEIZ','0.00','0.00'),(27,4,2,1,22,28,'','1','0','1','2010-10-23','17:30 ','POLID. ZUBI-ALDE  PORTUGALETE','0.00','0.00'),(28,4,4,10,34,17,'','1','0','1','2010-10-23','18:45 ','COLEGIO CORAZONISTAS GASTEIZ ','0.00','0.00'),(29,4,6,13,30,24,'','1','0','1','2010-10-23','20:00 ','POLID. ASKARTZA LEIOA','0.00','0.00'),(30,4,12,8,0,0,'','1','0','0','2010-10-24','10:30 ','POLID. JESUITAS  BILBAO','0.00','0.00'),(31,4,9,14,27,26,'','1','0','1','2010-10-24','12:00 ','POLID. HONDARTZA HONDARRIBIA','0.00','0.00'),(32,5,6,7,34,34,'','1','0','1','2010-10-30','20:00 ','POLID. ASKARTZA  LEIOA','0.00','0.00'),(33,5,3,2,24,23,'','1','0','1','2010-10-30','18:00 ','POLID. IPARRALDE-URDULIZ  URDULIZ','0.00','0.00'),(34,5,1,5,26,20,'','1','0','1','2010-10-30','18:00 ','POLID GOBELA. LAS ARENAS','0.00','0.00'),(35,5,11,9,30,31,'','1','0','1','2010-10-30','17:00 ','POLID. DIVINO MAESTRO (C) GASTEIZ','0.00','0.00'),(36,5,14,4,17,30,'','1','0','1','2010-10-30','19:00 ','OIARDO KIROLDEGIA. USURBI','0.00','0.00'),(37,5,10,12,32,31,'','1','0','1','2010-10-30','18:00 ','LABEGARAIETA KIROLDEGIA . BERGARA','0.00','0.00'),(38,5,13,8,25,23,'','1','0','1','2010-10-30','18:00 ','POLID. ISPILLA  ZUMARRAGA','0.00','0.00'),(39,6,7,13,0,0,'','1','0','0','2010-11-06','00:00 ','','0.00','0.00'),(40,6,2,6,0,0,'','1','0','0','2010-11-06','00:00 ','','0.00','0.00'),(41,6,5,3,0,0,'','1','0','0','2010-11-06','00:00 ','','0.00','0.00'),(42,6,4,11,0,0,'','1','0','0','2010-11-06','00:00 ','','0.00','0.00'),(43,6,12,14,0,0,'','1','0','0','2010-11-06','00:00 ','','0.00','0.00'),(44,6,8,10,0,0,'','1','0','0','2010-11-06','00:00 ','','0.00','0.00'),(45,6,7,1,0,0,'','1','0','0','2010-11-06','00:00 ','','0.00','0.00'),(46,7,7,2,0,0,'','1','0','0','2010-11-13','00:00 ','','0.00','0.00'),(47,7,6,5,0,0,'','1','0','0','2010-11-13','00:00 ','','0.00','0.00'),(48,7,3,9,0,0,'','1','0','0','2010-11-13','00:00 ','','0.00','0.00'),(49,7,1,4,0,0,'','1','0','0','2010-11-13','00:00 ','','0.00','0.00'),(50,7,12,11,0,0,'','1','0','0','2010-11-13','00:00 ','','0.00','0.00'),(51,7,14,8,0,0,'','1','0','0','2010-11-13','00:00 ','','0.00','0.00'),(52,7,13,10,0,0,'','1','0','0','2010-11-13','00:00 ','','0.00','0.00');
/*!40000 ALTER TABLE `jos_bl_match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_match_events`
--

DROP TABLE IF EXISTS `jos_bl_match_events`;
CREATE TABLE `jos_bl_match_events` (
  `e_id` int(11) NOT NULL default '0',
  `player_id` int(11) NOT NULL default '0',
  `match_id` int(11) NOT NULL default '0',
  `ecount` int(11) NOT NULL default '0',
  `minutes` varchar(255) NOT NULL default '',
  `t_id` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_match_events`
--

LOCK TABLES `jos_bl_match_events` WRITE;
/*!40000 ALTER TABLE `jos_bl_match_events` DISABLE KEYS */;
INSERT INTO `jos_bl_match_events` VALUES (1,17,15,0,'0',9,22),(1,22,8,3,'0',12,19),(1,9,15,2,'0',9,4),(1,16,15,3,'0',9,5),(1,21,8,1,'0',12,18),(1,18,15,1,'0',9,21),(1,16,8,5,'0',9,7),(1,10,15,2,'0',9,20),(1,6,8,5,'0',9,9),(1,10,8,1,'0',9,10),(1,18,8,2,'0',9,11),(1,7,8,2,'0',9,12),(1,13,8,3,'0',9,13),(1,11,8,1,'0',9,14),(1,5,8,3,'0',9,15),(1,8,8,2,'0',9,16),(1,12,8,1,'0',9,17),(1,7,15,2,'0',9,23),(1,13,15,8,'0',9,24),(1,11,15,1,'0',9,25),(1,5,15,3,'0',9,26),(1,8,15,1,'0',9,27),(1,2,15,0,'0',9,28),(1,12,15,2,'0',9,29),(1,14,15,4,'0',9,30),(1,16,21,8,'0',9,31),(1,9,21,5,'0',9,32),(1,15,21,1,'0',9,33),(1,6,21,0,'0',9,34),(1,10,21,2,'0',9,35),(1,18,21,0,'0',9,36),(1,17,21,0,'0',9,37),(1,13,21,10,'0',9,38),(1,11,21,0,'0',9,39),(1,5,21,2,'0',9,40),(1,8,21,0,'0',9,41),(1,12,21,4,'0',9,42),(1,9,31,0,'0',9,43),(1,16,31,5,'0',9,44),(1,15,31,0,'0',9,45),(1,10,31,2,'0',9,46),(1,18,31,3,'0',9,47),(1,17,31,0,'0',9,48),(1,7,31,2,'0',9,49),(1,13,31,2,'0',9,50),(1,11,31,9,'0',9,51),(1,14,31,2,'0',9,52),(1,8,31,2,'0',9,53),(1,2,31,0,'0',9,54),(1,12,31,0,'0',9,55);
/*!40000 ALTER TABLE `jos_bl_match_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_matchday`
--

DROP TABLE IF EXISTS `jos_bl_matchday`;
CREATE TABLE `jos_bl_matchday` (
  `id` int(11) NOT NULL auto_increment,
  `m_name` varchar(255) NOT NULL default '',
  `m_descr` text NOT NULL,
  `s_id` int(11) NOT NULL default '0',
  `is_playoff` char(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `t_id` (`s_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_matchday`
--

LOCK TABLES `jos_bl_matchday` WRITE;
/*!40000 ALTER TABLE `jos_bl_matchday` DISABLE KEYS */;
INSERT INTO `jos_bl_matchday` VALUES (1,'Jornada 1','',1,'0'),(2,'Jornada 2 ','',1,'0'),(3,'Jornada 3','',1,'0'),(4,'Jornada 4','',1,'0'),(5,'Jornada 5','',1,'0'),(6,'Jornada 6','',1,'0'),(7,'Jornada 7','',1,'0');
/*!40000 ALTER TABLE `jos_bl_matchday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_moders`
--

DROP TABLE IF EXISTS `jos_bl_moders`;
CREATE TABLE `jos_bl_moders` (
  `uid` int(11) NOT NULL default '0',
  `tid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`uid`,`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_moders`
--

LOCK TABLES `jos_bl_moders` WRITE;
/*!40000 ALTER TABLE `jos_bl_moders` DISABLE KEYS */;
INSERT INTO `jos_bl_moders` VALUES (62,9);
/*!40000 ALTER TABLE `jos_bl_moders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_photos`
--

DROP TABLE IF EXISTS `jos_bl_photos`;
CREATE TABLE `jos_bl_photos` (
  `id` int(11) NOT NULL auto_increment,
  `ph_name` varchar(255) NOT NULL default '',
  `ph_filename` varchar(255) NOT NULL default '',
  `ph_descr` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_photos`
--

LOCK TABLES `jos_bl_photos` WRITE;
/*!40000 ALTER TABLE `jos_bl_photos` DISABLE KEYS */;
INSERT INTO `jos_bl_photos` VALUES (1,'','bl12867292201605.jpg',''),(2,'','bl12867292782768.jpg',''),(3,'','bl12867310842520.jpg',''),(4,'','bl1286731084966.jpg',''),(5,'','bl12867312711320.jpg',''),(6,'','bl12867323081455.jpg',''),(7,'','bl12867323082264.jpg',''),(8,'','bl1286733660728.jpg',''),(9,'','bl12867337062117.jpg',''),(10,'','bl12867411662136.jpg',''),(11,'','bl12867412342011.JPG',''),(12,'','bl12867412822047.jpg',''),(13,'','bl12867413291001.jpg',''),(14,'','bl12867413442216.jpg',''),(15,'','bl12867413801671.jpg',''),(16,'','bl12867414041906.jpg',''),(17,'','bl12867414251946.jpg',''),(18,'','bl12867414502340.jpg',''),(19,'','bl12875252798.jpg',''),(20,'','bl12875256462524.jpg',''),(21,'cbhondarribia - Axel Schnitger','bl12875257432723.jpg',''),(22,'cbhodarribia - Iñigo Amezketa','bl12875258052284.jpg',''),(23,'','bl12875258361764.jpg',''),(24,'cbhondarribia - Marcos Gil','bl12875259042871.jpg',''),(25,'','bl12875259341505.jpg',''),(26,'cbhondarribia - Joseba Gordo','bl1287525973798.jpg',''),(27,'','bl12875260071566.jpg',''),(28,'','bl12875260351.jpg',''),(29,'cbhondarribia - Mikel Etxebeste','bl12875261131664.jpg',''),(30,'','bl12875261541532.jpg',''),(31,'','bl1287526185952.jpg',''),(32,'','bl12875262292621.jpg',''),(33,'','bl12875262471087.jpg',''),(34,'','bl12875265712122.jpg',''),(35,'','bl1287526744310.jpg',''),(36,'','bl1287526849793.jpg',''),(37,'','bl1287526929500.jpg',''),(38,'','bl12875269711998.jpg',''),(39,'','bl12875270201259.jpg',''),(40,'','bl12875270471535.jpg',''),(41,'','bl12875270662232.jpg',''),(42,'','bl1287527093444.jpg',''),(43,'','bl1287527117524.jpg',''),(44,'','bl1287527171667.jpg',''),(45,'','bl12875271902104.jpg',''),(46,'','bl12875272242151.jpg',''),(47,'','bl1287527256103.jpg',''),(48,'','bl12875272882120.jpg',''),(49,'','bl12875273172733.jpg',''),(50,'','bl12875273391278.jpg',''),(51,'','bl12875273642436.jpg',''),(52,'','bl12875273831191.jpg','');
/*!40000 ALTER TABLE `jos_bl_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_players`
--

DROP TABLE IF EXISTS `jos_bl_players`;
CREATE TABLE `jos_bl_players` (
  `id` int(11) NOT NULL auto_increment,
  `first_name` varchar(255) NOT NULL default '',
  `last_name` varchar(255) NOT NULL default '',
  `nick` varchar(255) NOT NULL default '',
  `about` text NOT NULL,
  `position_id` int(11) NOT NULL default '0',
  `def_img` int(11) NOT NULL default '0',
  `team_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_players`
--

LOCK TABLES `jos_bl_players` WRITE;
/*!40000 ALTER TABLE `jos_bl_players` DISABLE KEYS */;
INSERT INTO `jos_bl_players` VALUES (1,'Erik','Diez','Erik','',3,0,9),(2,'Valentin','Leon ','Valen','',3,0,9),(3,'Luis','Montoya','','',8,0,15),(4,'Miguel Angel','Izquierdo','Miguel','',8,0,16),(5,'Oihan','Aldanondo','','',7,0,9),(6,'Iker ','Mateos','','',9,0,9),(7,'Ion','Berges','berges','',7,0,9),(8,'Unai','Tello','Tello','',6,0,9),(9,'Ander','Lozano','Lozano','',6,7,9),(10,'Iñaki','Martinez','Totxo','',6,0,9),(11,'Jon','Olazabal','Olazabal','',4,0,9),(12,'Xabi','Velasco','Xabi','',4,0,9),(13,'Ion','Vazquez','Ion','',4,0,9),(14,'Mikel','Vazquez','Vazquez','',4,0,9),(15,'Eneko','Sagarzazu','Eneko','',5,0,9),(16,'Antton','Extxeberria','Antton','',5,0,9),(17,'Iñigo','Guevara','Moñi','',5,0,9),(18,'Iñigo','Gomez','Iñigo','',7,0,9),(19,'Javi','de la Haza','','',8,0,9),(20,'Javier ','Hoyos','','',0,0,12),(21,'Jon','Perez','','',0,0,12),(22,'Javier','Diaz','','',0,0,12),(23,'Iurgi','Urbina','','',7,0,15),(24,'Antton','Babaze','','',6,0,15),(25,'Axel','Schnitger','','',4,0,15),(26,'Iñigo','Amezketa ','','',9,0,15),(27,'Samuel','Garnika','','',4,0,15),(28,'Marcos','Gil','','',3,0,15),(29,'-','-','','',6,0,15),(30,'Joseba','Gordo','','',7,0,15),(31,'-','-','','',6,0,15),(32,'-','-','','',4,0,15),(33,'Mikel','Etxebeste','','',9,0,15),(34,'-','-','','',5,0,15),(35,'-','-','','',7,0,15),(36,'Joseba','Zabala','','',3,0,15),(37,'-','-','','',0,0,16),(38,'-','-','','',0,0,16),(39,'-','-','','',0,0,16),(40,'-','-','','',0,0,16),(41,'-','-','','',0,0,16),(42,'-','-','','',0,0,16),(43,'-','-','','',0,0,16),(44,'-','-','','',0,0,16),(45,'-','-','','',0,0,16),(46,'-','-','','',0,0,16),(47,'-','-','','',0,0,16),(48,'-','-','','',0,0,16),(49,'-','-','','',0,0,16),(50,'-','-','','',0,0,16),(51,'-','-','','',0,0,16),(52,'-','-','','',0,0,16);
/*!40000 ALTER TABLE `jos_bl_players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_positions`
--

DROP TABLE IF EXISTS `jos_bl_positions`;
CREATE TABLE `jos_bl_positions` (
  `p_id` int(11) NOT NULL auto_increment,
  `p_name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`p_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_positions`
--

LOCK TABLES `jos_bl_positions` WRITE;
/*!40000 ALTER TABLE `jos_bl_positions` DISABLE KEYS */;
INSERT INTO `jos_bl_positions` VALUES (3,'Portero'),(4,'Lateral'),(5,'Central'),(6,'Pivote'),(7,'Extremo'),(8,'Entrenador'),(9,'Central - Extremo');
/*!40000 ALTER TABLE `jos_bl_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_ranksort`
--

DROP TABLE IF EXISTS `jos_bl_ranksort`;
CREATE TABLE `jos_bl_ranksort` (
  `seasonid` int(11) NOT NULL,
  `sort_field` varchar(255) NOT NULL,
  `sort_way` varchar(1) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_ranksort`
--

LOCK TABLES `jos_bl_ranksort` WRITE;
/*!40000 ALTER TABLE `jos_bl_ranksort` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_bl_ranksort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_season_option`
--

DROP TABLE IF EXISTS `jos_bl_season_option`;
CREATE TABLE `jos_bl_season_option` (
  `s_id` int(11) NOT NULL default '0',
  `opt_name` varchar(255) NOT NULL default '',
  `opt_value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`s_id`,`opt_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_season_option`
--

LOCK TABLES `jos_bl_season_option` WRITE;
/*!40000 ALTER TABLE `jos_bl_season_option` DISABLE KEYS */;
INSERT INTO `jos_bl_season_option` VALUES (1,'emblem_chk','1'),(1,'played_chk','1'),(1,'equalpts_chk','1'),(1,'percent_chk','0'),(1,'point_chk','1'),(1,'gd_chk','0'),(1,'diff_chk','0'),(1,'otlost_chk','1'),(1,'otwin_chk','1'),(1,'draw_chk','1'),(1,'lost_chk','1'),(1,'win_chk','1'),(2,'win_chk','0'),(2,'lost_chk','0'),(2,'draw_chk','0'),(2,'otwin_chk','0'),(2,'otlost_chk','0'),(2,'diff_chk','0'),(2,'gd_chk','0'),(2,'point_chk','0'),(2,'percent_chk','0'),(2,'equalpts_chk','0'),(2,'played_chk','0'),(2,'emblem_chk','0'),(3,'equalpts_chk','0'),(3,'percent_chk','0'),(3,'point_chk','0'),(3,'gd_chk','0'),(3,'diff_chk','0'),(3,'otlost_chk','0'),(3,'otwin_chk','0'),(3,'draw_chk','0'),(3,'lost_chk','0'),(3,'win_chk','0'),(3,'played_chk','0'),(3,'emblem_chk','0');
/*!40000 ALTER TABLE `jos_bl_season_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_season_teams`
--

DROP TABLE IF EXISTS `jos_bl_season_teams`;
CREATE TABLE `jos_bl_season_teams` (
  `season_id` int(11) NOT NULL default '0',
  `team_id` int(11) NOT NULL default '0',
  `bonus_point` decimal(10,2) NOT NULL default '0.00',
  PRIMARY KEY  (`season_id`,`team_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_season_teams`
--

LOCK TABLES `jos_bl_season_teams` WRITE;
/*!40000 ALTER TABLE `jos_bl_season_teams` DISABLE KEYS */;
INSERT INTO `jos_bl_season_teams` VALUES (1,14,'0.00'),(1,13,'0.00'),(1,11,'0.00'),(1,10,'0.00'),(1,9,'0.00'),(2,0,'0.00'),(3,16,'0.00'),(1,7,'0.00'),(1,5,'0.00'),(1,4,'0.00'),(1,3,'0.00'),(1,2,'0.00'),(1,1,'0.00'),(1,12,'0.00'),(1,6,'0.00'),(1,8,'0.00');
/*!40000 ALTER TABLE `jos_bl_season_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_seasons`
--

DROP TABLE IF EXISTS `jos_bl_seasons`;
CREATE TABLE `jos_bl_seasons` (
  `s_id` int(11) NOT NULL auto_increment,
  `s_name` varchar(255) NOT NULL default '',
  `s_descr` text NOT NULL,
  `s_rounds` int(11) NOT NULL default '1',
  `t_id` int(11) NOT NULL default '0',
  `published` char(1) NOT NULL default '0',
  `s_win_point` decimal(10,2) NOT NULL default '0.00',
  `s_lost_point` decimal(10,2) NOT NULL default '0.00',
  `s_enbl_extra` int(11) NOT NULL default '0',
  `s_extra_win` decimal(10,2) NOT NULL default '0.00',
  `s_extra_lost` decimal(10,2) NOT NULL default '0.00',
  `s_draw_point` decimal(10,2) NOT NULL default '0.00',
  `s_groups` int(11) NOT NULL default '0',
  `s_win_away` decimal(10,2) NOT NULL default '0.00',
  `s_draw_away` decimal(10,2) NOT NULL default '0.00',
  `s_lost_away` decimal(10,2) NOT NULL default '0.00',
  PRIMARY KEY  (`s_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_seasons`
--

LOCK TABLES `jos_bl_seasons` WRITE;
/*!40000 ALTER TABLE `jos_bl_seasons` DISABLE KEYS */;
INSERT INTO `jos_bl_seasons` VALUES (1,'2010/2011','<p>Liga vasca senior masculino, temporada 2010/2011</p>',1,1,'1','2.00','0.00',0,'0.00','0.00','1.00',0,'2.00','1.00','0.00'),(2,'2010/2011','',1,2,'1','0.00','0.00',0,'0.00','0.00','0.00',1,'0.00','0.00','0.00'),(3,'2010/2011','',1,3,'1','0.00','0.00',0,'0.00','0.00','0.00',1,'0.00','0.00','0.00');
/*!40000 ALTER TABLE `jos_bl_seasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_squard`
--

DROP TABLE IF EXISTS `jos_bl_squard`;
CREATE TABLE `jos_bl_squard` (
  `match_id` int(11) NOT NULL default '0',
  `team_id` int(11) NOT NULL default '0',
  `player_id` int(11) NOT NULL default '0',
  `mainsquard` char(1) NOT NULL default '1',
  PRIMARY KEY  (`match_id`,`team_id`,`player_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_squard`
--

LOCK TABLES `jos_bl_squard` WRITE;
/*!40000 ALTER TABLE `jos_bl_squard` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_bl_squard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_tblcolors`
--

DROP TABLE IF EXISTS `jos_bl_tblcolors`;
CREATE TABLE `jos_bl_tblcolors` (
  `s_id` int(11) NOT NULL default '0',
  `place` varchar(35) NOT NULL,
  `color` varchar(10) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_tblcolors`
--

LOCK TABLES `jos_bl_tblcolors` WRITE;
/*!40000 ALTER TABLE `jos_bl_tblcolors` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_bl_tblcolors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_teams`
--

DROP TABLE IF EXISTS `jos_bl_teams`;
CREATE TABLE `jos_bl_teams` (
  `id` int(11) NOT NULL auto_increment,
  `t_name` varchar(255) NOT NULL default '',
  `t_descr` text NOT NULL,
  `t_yteam` char(1) NOT NULL default '0',
  `def_img` int(11) NOT NULL default '0',
  `t_emblem` varchar(255) NOT NULL default '',
  `t_city` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_teams`
--

LOCK TABLES `jos_bl_teams` WRITE;
/*!40000 ALTER TABLE `jos_bl_teams` DISABLE KEYS */;
INSERT INTO `jos_bl_teams` VALUES (1,'BALONMANO ROMO INDUPIME','<p><strong>Equipo BALONMANO ROMO INDUPIME</strong></p>','0',0,'','Romo'),(2,'C.B. PORTUGALETE  ','<p>Equipo <strong>C.B. PORTUGALETE</strong></p>','0',0,'','Portugalete'),(3,'CLUB BALONMANO URDULIZ','<p>Equipo                                                                                                                                            <strong>CLUB BALONMANO URDULIZ</strong></p>','0',0,'','Urduliz'),(4,'CORAZONISTAS BM','<p>Equipo <strong>CORAZONISTAS BM</strong></p>','0',0,'','Vitoria'),(5,'ESTUDIOS GIS EL PILAR','<p>Equipo <strong>ESTUDIOS GIS EL PILAR</strong></p>','0',0,'','Vitoria'),(6,' QUIRON ASKARTZA','<p>Equipo  <strong>QUIRON ASKARTZA</strong></p>','0',0,'','Askartza'),(7,'FORD MUGARRI ARRASATE ','<p>Equpo <strong>FORD MUGARRI ARRASATE</strong></p>','0',0,'',''),(8,' INDUPIME BASAURI','<p>Equpo  <strong>INDUPIME BASAURI</strong></p>','0',0,'',''),(9,'LA BACALADERA HONDARRIBIA','<p> </p>\r\n<p>Equipo <strong>LA BACALADERA HONDARRIBIA</strong></p>','1',5,'','Hondarribia'),(10,'SORALUCE BKE','<p>Equpo  <strong>SORALUCE BKE</strong></p>','0',0,'',''),(11,'SUCESORES DE AGUIRRE- GURE','<p>Equipo <strong>SUCESORES DE AGUIRRE- GURE</strong></p>','0',0,'','Vitoria'),(12,' UNIVERSIDAD DE DEUSTO-LOYOLA','<p>Equipo  <strong>UNIVERSIDAD DE DEUSTO-LOYOLA</strong></p>','0',0,'',''),(13,'UROLA LAZTI ','<p>Equipo <strong>UROLA LAZTI</strong></p>','0',0,'','Zumarraga'),(14,'USURBIL K.E.','<p>Equipo <strong>USURBIL K.E.</strong></p>','0',0,'','Usurbil'),(15,'LA BACALADERA HONDARRIBIA - Juvenil','','0',0,'','Hondarribia'),(16,'LA BACALADERA HONDARRIBIA - Cadete','<p>Equipo cadete de la Bacaladera Hondarribia</p>','0',0,'','Hondarribia');
/*!40000 ALTER TABLE `jos_bl_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bl_tournament`
--

DROP TABLE IF EXISTS `jos_bl_tournament`;
CREATE TABLE `jos_bl_tournament` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `descr` text NOT NULL,
  `published` char(1) NOT NULL default '0',
  `logo` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bl_tournament`
--

LOCK TABLES `jos_bl_tournament` WRITE;
/*!40000 ALTER TABLE `jos_bl_tournament` DISABLE KEYS */;
INSERT INTO `jos_bl_tournament` VALUES (1,'2ª Nacional','<p>Liga Vasca Senior Masculino</p>','1',''),(2,'Campeonato Guipuzcoa Juvenil','','1',''),(3,'Campeonato Guipuzcoa Cadete','','1','');
/*!40000 ALTER TABLE `jos_bl_tournament` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_categories`
--

DROP TABLE IF EXISTS `jos_categories`;
CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` varchar(255) NOT NULL default '',
  `section` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_categories`
--

LOCK TABLES `jos_categories` WRITE;
/*!40000 ALTER TABLE `jos_categories` DISABLE KEYS */;
INSERT INTO `jos_categories` VALUES (1,0,'Últimas noticias','','latest-news','taking_notes.jpg','1','left','Las últimas noticias del equipo de Joomla!',1,0,'0000-00-00 00:00:00','',1,0,1,''),(2,0,'Joomla! enlaces específicos','','joomla-specific-links','clock.jpg','com_weblinks','left','Una selección de enlaces relacionados con el proyecto de Joomla!.',0,0,'0000-00-00 00:00:00',NULL,1,0,0,''),(3,0,'Destacado','','newsflash','','1','left','',1,0,'0000-00-00 00:00:00','',2,0,0,''),(4,0,'Joomla!','','joomla','','com_newsfeeds','left','',1,0,'0000-00-00 00:00:00',NULL,2,0,0,''),(5,0,'Negocios: General','','business-general','','com_newsfeeds','left','',1,0,'0000-00-00 00:00:00',NULL,1,0,0,''),(6,0,'Linux','','linux','','com_newsfeeds','left','',1,0,'0000-00-00 00:00:00',NULL,6,0,0,''),(7,0,'Internet','','internet','','com_newsfeeds','left','',1,0,'0000-00-00 00:00:00',NULL,7,0,0,''),(12,0,'Contactos','','contacts','','com_contact_details','left','Detalles de contacto para este sitio web',1,0,'0000-00-00 00:00:00',NULL,0,0,0,''),(13,0,'Joomla','','joomla','','com_banner','left','',0,0,'0000-00-00 00:00:00',NULL,0,0,0,''),(14,0,'Anuncios','','text-ads','','com_banner','left','',0,0,'0000-00-00 00:00:00',NULL,0,0,0,''),(15,0,'Características','','features','','com_content','left','',0,0,'0000-00-00 00:00:00',NULL,6,0,0,''),(17,0,'Beneficios','','benefits','','com_content','left','',0,0,'0000-00-00 00:00:00',NULL,4,0,0,''),(18,0,'Plataformas','','platforms','','com_content','left','',0,0,'0000-00-00 00:00:00',NULL,3,0,0,''),(19,0,'Otros recursos','','other-resources','','com_weblinks','left','',0,0,'0000-00-00 00:00:00',NULL,2,0,0,''),(29,0,'El CMS','','the-cms','','4','left','Información sobre el CMS<br />',0,0,'0000-00-00 00:00:00',NULL,2,0,0,''),(28,0,'Usuarios','','current-users','','3','left','Preguntas que a los usuarios que migran a Joomla! 1.5 les podría gustar conocer<br />',1,0,'0000-00-00 00:00:00',NULL,2,0,0,''),(25,0,'El proyecto','','the-project','','4','left','Hechos en general sobre Joomla!<br />',1,0,'0000-00-00 00:00:00',NULL,1,0,0,''),(27,0,'Novedades en Joomla!','','new-to-joomla','','3','left','Preguntas para los nuevos usuarios de Joomla!',0,0,'0000-00-00 00:00:00',NULL,3,0,0,''),(30,0,'La comunidad','','the-community','','4','left','Sobre los millones de usuarios de  Joomla! y sitios web<br />',1,0,'0000-00-00 00:00:00',NULL,3,0,0,''),(31,0,'General','','general','','3','left','Preguntas generales sobre el CMS',1,62,'2010-08-25 21:58:26',NULL,1,0,0,''),(32,0,'Idiomas','','languages','','3','left','Cuestiones relacionadas con los idiomas',1,0,'0000-00-00 00:00:00',NULL,4,0,0,''),(33,0,'Joomla! Promoción','','joomla-promo','','com_banner','left','',0,0,'0000-00-00 00:00:00',NULL,1,0,0,''),(34,0,'Joomla! Spanish','','joomla-spanish','','com_newsfeeds','left','Grupo Joomla! Spanish y patrocinadores expertos en Joomla!',1,0,'0000-00-00 00:00:00',NULL,8,0,0,''),(35,0,'Asobal','','asobal','','com_weblinks','left','<p>Desde aqui podra acceder a las web\'s de los equipos de la liga Asobal</p>',1,0,'0000-00-00 00:00:00',NULL,3,0,0,''),(36,0,'Toyota Handball Bundesliga','','toyotahandaballbundesliga','','com_weblinks','left','',1,0,'0000-00-00 00:00:00',NULL,4,0,0,''),(37,0,'Senior','','senior','','7','left','<p>Categoria - Equipos de La Bacaladera Hondarribia</p>',1,0,'0000-00-00 00:00:00',NULL,1,0,0,''),(38,0,'Juvenil','','juvenil','','7','left','',1,0,'0000-00-00 00:00:00',NULL,2,0,0,''),(39,0,'Irungo Gaztiak','','irungo-gaztiak','','1','left','<p>Noticias sobre los equipos de Irungo Gaztiak.</p>',1,0,'0000-00-00 00:00:00',NULL,3,0,0,''),(40,0,'Juego Colectivo Ofensivo','','juego-colectivo-ofensivo','','9','left','<p>Articulos sobre Juego Colectivo Ofensivo</p>',1,0,'0000-00-00 00:00:00',NULL,1,0,0,''),(41,0,'Patrocinadores 2010/2011','','patrocinadores-20102011','','com_banner','right','',1,0,'0000-00-00 00:00:00',NULL,2,0,0,'');
/*!40000 ALTER TABLE `jos_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_components`
--

DROP TABLE IF EXISTS `jos_components`;
CREATE TABLE `jos_components` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `menuid` int(11) unsigned NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `admin_menu_link` varchar(255) NOT NULL default '',
  `admin_menu_alt` varchar(255) NOT NULL default '',
  `option` varchar(50) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `admin_menu_img` varchar(255) NOT NULL default '',
  `iscore` tinyint(4) NOT NULL default '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_components`
--

LOCK TABLES `jos_components` WRITE;
/*!40000 ALTER TABLE `jos_components` DISABLE KEYS */;
INSERT INTO `jos_components` VALUES (1,'Banners','',0,0,'','Banner Management','com_banners',0,'js/ThemeOffice/component.png',0,'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n',1),(2,'Banners','',0,1,'option=com_banners','Active Banners','com_banners',1,'js/ThemeOffice/edit.png',0,'',1),(3,'Clientes','',0,1,'option=com_banners&c=client','Manage Clients','com_banners',2,'js/ThemeOffice/categories.png',0,'',1),(4,'Enlaces Web','option=com_weblinks',0,0,'','Manage Weblinks','com_weblinks',0,'js/ThemeOffice/component.png',0,'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n',1),(5,'Enlaces','',0,4,'option=com_weblinks','View existing weblinks','com_weblinks',1,'js/ThemeOffice/edit.png',0,'',1),(6,'Categorías','',0,4,'option=com_categories&section=com_weblinks','Manage weblink categories','',2,'js/ThemeOffice/categories.png',0,'',1),(7,'Contactos','option=com_contact',0,0,'','Edit contact details','com_contact',0,'js/ThemeOffice/component.png',1,'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',1),(8,'Contactos','',0,7,'option=com_contact','Edit contact details','com_contact',0,'js/ThemeOffice/edit.png',1,'',1),(9,'Categorías','',0,7,'option=com_categories&section=com_contact_details','Manage contact categories','',2,'js/ThemeOffice/categories.png',1,'',1),(10,'Encuesta','option=com_poll',0,0,'option=com_poll','Manage Polls','com_poll',0,'js/ThemeOffice/component.png',0,'',1),(11,'News Feeds','option=com_newsfeeds',0,0,'','News Feeds Management','com_newsfeeds',0,'js/ThemeOffice/component.png',0,'',1),(12,'Feeds','',0,11,'option=com_newsfeeds','Manage News Feeds','com_newsfeeds',1,'js/ThemeOffice/edit.png',0,'',1),(13,'Categorías','',0,11,'option=com_categories&section=com_newsfeeds','Manage Categories','',2,'js/ThemeOffice/categories.png',0,'',1),(14,'Usuario','option=com_user',0,0,'','','com_user',0,'',1,'',1),(15,'Buscar','option=com_search',0,0,'option=com_search','Search Statistics','com_search',0,'js/ThemeOffice/component.png',1,'enabled=0\n\n',1),(16,'Categorías','',0,1,'option=com_categories&section=com_banner','Categories','',3,'',1,'',1),(17,'Wrapper','option=com_wrapper',0,0,'','Wrapper','com_wrapper',0,'',1,'',1),(18,'Mail para','',0,0,'','','com_mailto',0,'',1,'',1),(19,'Administrador Media','',0,0,'option=com_media','Media Manager','com_media',0,'',1,'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n',1),(20,'Artículos','option=com_content',0,0,'','','com_content',0,'',1,'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n',1),(21,'Administrar Configuración','',0,0,'','Configuration','com_config',0,'',1,'',1),(22,'Administrar Instalaciones','',0,0,'','Installer','com_installer',0,'',1,'',1),(23,'Gestor de idiomas','',0,0,'','Idiomas','com_languages',0,'',1,'administrator=es-ES\nsite=es-ES',1),(24,'Mail masivo','',0,0,'','Mass Mail','com_massmail',0,'',1,'mailSubjectPrefix=\nmailBodySuffix=\n\n',1),(25,'Menú del editor','',0,0,'','Menu Editor','com_menus',0,'',1,'',1),(27,'Mensajes','',0,0,'','Messages','com_messages',0,'',1,'',1),(28,'Administrar modulos','',0,0,'','Modules','com_modules',0,'',1,'',1),(29,'Administrar Plugin','',0,0,'','Plugins','com_plugins',0,'',1,'',1),(30,'Administrar plantilla','',0,0,'','Templates','com_templates',0,'',1,'',1),(31,'Administrar usuarios','',0,0,'','Users','com_users',0,'',1,'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n',1),(32,'Administrar la caché','',0,0,'','Cache','com_cache',0,'',1,'',1),(33,'Panel de Control','',0,0,'','Control Panel','com_cpanel',0,'',1,'',1),(34,'Administrador de Traducciones','option=com_translationsmanager',0,0,'option=com_translationsmanager','Administrador de Traducciones','com_translationsmanager',0,'class:language',0,'',1),(35,'JoomSport','option=com_joomsport',0,0,'option=com_joomsport','JoomSport','com_joomsport',0,'../administrator/components/com_joomsport/img/beardev.gif',0,'',1),(36,'Tournament','',0,35,'option=com_joomsport&task=tour_list','Tournament','com_joomsport',0,'../administrator/components/com_joomsport/img/tournament.png',0,'',1),(37,'Season','',0,35,'option=com_joomsport&task=season_list','Season','com_joomsport',1,'../administrator/components/com_joomsport/img/blleg.png',0,'',1),(38,'Teams','',0,35,'option=com_joomsport&task=team_list','Teams','com_joomsport',2,'../administrator/components/com_joomsport/img/teams.png',0,'',1),(39,'Match Day','',0,35,'option=com_joomsport&task=matchday_list','Match Day','com_joomsport',3,'../administrator/components/com_joomsport/img/matchday.png',0,'',1),(40,'Players','',0,35,'option=com_joomsport&task=player_list','Players','com_joomsport',4,'../administrator/components/com_joomsport/img/players.png',0,'',1),(41,'Positions','',0,35,'option=com_joomsport&task=pos_list','Positions','com_joomsport',5,'../administrator/components/com_joomsport/img/positions.png',0,'',1),(42,'Events','',0,35,'option=com_joomsport&task=event_list','Events','com_joomsport',6,'../administrator/components/com_joomsport/img/events.png',0,'',1),(43,'Groups','',0,35,'option=com_joomsport&task=group_list','Groups','com_joomsport',7,'../administrator/components/com_joomsport/img/blleg.png',0,'',1),(44,'Extra fields','',0,35,'option=com_joomsport&task=fields_list','Extra fields','com_joomsport',8,'../administrator/components/com_joomsport/img/blleg.png',0,'',1),(45,'Languages','',0,35,'option=com_joomsport&task=languages','Languages','com_joomsport',9,'../includes/js/ThemeOffice/language.png',0,'',1),(46,'Configuration','',0,35,'option=com_joomsport&task=config','Configuration','com_joomsport',10,'js/ThemeOffice/config.png',0,'',1),(47,'Team Captains','',0,35,'option=com_joomsport&task=moder_list','Team Captains','com_joomsport',11,'../administrator/components/com_joomsport/img/blleg.png',0,'',1),(48,'Help','',0,35,'option=com_joomsport&task=help','Help','com_joomsport',12,'../includes/js/ThemeOffice/help.png',0,'',1),(49,'About','',0,35,'option=com_joomsport&task=about','About','com_joomsport',13,'../includes/js/ThemeOffice/info.png',0,'',1),(50,'JoomGallery','option=com_joomgallery',0,0,'option=com_joomgallery','JoomGallery','com_joomgallery',0,'components/com_joomgallery/assets/images/joom_main.png',0,'',1),(51,'Category Manager','',0,50,'option=com_joomgallery&controller=categories','Category Manager','com_joomgallery',0,'components/com_joomgallery/assets/images/joom_categories.png',0,'',1),(52,'Picture Manager','',0,50,'option=com_joomgallery&controller=images','Picture Manager','com_joomgallery',1,'components/com_joomgallery/assets/images/joom_pictures.png',0,'',1),(53,'Comments Manager','',0,50,'option=com_joomgallery&controller=comments','Comments Manager','com_joomgallery',2,'components/com_joomgallery/assets/images/joom_comments.png',0,'',1),(54,'Picture Upload','',0,50,'option=com_joomgallery&controller=upload','Picture Upload','com_joomgallery',3,'components/com_joomgallery/assets/images/joom_pictureupload.png',0,'',1),(55,'Batch Upload','',0,50,'option=com_joomgallery&controller=batchupload','Batch Upload','com_joomgallery',4,'components/com_joomgallery/assets/images/joom_batchupload.png',0,'',1),(56,'FTP Upload','',0,50,'option=com_joomgallery&controller=ftpupload','FTP Upload','com_joomgallery',5,'components/com_joomgallery/assets/images/joom_ftpupload.png',0,'',1),(57,'Java Upload','',0,50,'option=com_joomgallery&controller=jupload','Java Upload','com_joomgallery',6,'components/com_joomgallery/assets/images/joom_jupload.png',0,'',1),(58,'Configuration Manager','',0,50,'option=com_joomgallery&controller=config','Configuration Manager','com_joomgallery',7,'components/com_joomgallery/assets/images/joom_config.png',0,'',1),(59,'Customize CSS','',0,50,'option=com_joomgallery&controller=cssedit','Customize CSS','com_joomgallery',8,'components/com_joomgallery/assets/images/joom_css.png',0,'',1),(60,'Migration Manager','',0,50,'option=com_joomgallery&controller=migration','Migration Manager','com_joomgallery',9,'components/com_joomgallery/assets/images/joom_migration.png',0,'',1),(61,'Maintenance Manager','',0,50,'option=com_joomgallery&controller=maintenance','Maintenance Manager','com_joomgallery',10,'components/com_joomgallery/assets/images/joom_maintenance.png',0,'',1),(62,'Help','',0,50,'option=com_joomgallery&controller=help','Help','com_joomgallery',11,'components/com_joomgallery/assets/images/joom_information.png',0,'',1),(63,'K2','option=com_k2',0,0,'option=com_k2','K2','com_k2',0,'components/com_k2/images/system/k2-icon.png',0,'enable_css=1\nimagesQuality=100\nitemImageXS=100\nitemImageS=200\nitemImageM=400\nitemImageL=600\nitemImageXL=900\nitemImageGeneric=300\ncatImageWidth=100\ncatImageDefault=1\nuserImageWidth=100\nuserImageDefault=1\ncommenterImgWidth=48\nuserName=1\nuserImage=1\nuserDescription=1\nuserURL=1\nuserFeed=1\nuserItemCount=10\nuserItemTitle=1\nuserItemTitleLinked=1\nuserItemDateCreated=1\nuserItemImage=1\nuserItemIntroText=1\nuserItemCategory=1\nuserItemTags=1\nuserItemCommentsAnchor=1\nuserItemReadMore=1\nuserItemK2Plugins=1\ngenericItemCount=10\ngenericItemTitle=1\ngenericItemTitleLinked=1\ngenericItemDateCreated=1\ngenericItemImage=1\ngenericItemIntroText=1\ngenericItemCategory=1\ngenericItemReadMore=1\ncomments=1\ncommentsOrdering=DESC\ncommentsLimit=10\ncommentsFormPosition=below\ncommentsPublishing=1\ngravatar=1\nrecaptcha_theme=clean\ncommentsFormNotes=1\ncommentsFormNotesText=Make sure you enter the (*) required information where indicated.<br />Basic HTML code is allowed.\ntinyURL=1\nfeedLimit=10\nfeedItemImage=1\nfeedImgSize=S\nfeedItemIntroText=1\nfeedItemFullText=1\nlinkPopupWidth=900\nlinkPopupHeight=600\nfrontendEditing=1\nshowImageTab=1\nshowImageGalleryTab=1\nshowVideoTab=1\nshowExtraFieldsTab=1\nshowAttachmentsTab=1\nshowK2Plugins=1\nmergeEditors=1\nsideBarDisplay=1\ntaggingSystem=1\ngoogleSearchContainer=k2Container\nK2UserProfile=1\nadminSearch=simple\nshowItemsCounterAdmin=1\nshowChildCatItems=1\nmetaDescLimit=150\nsh404SefLabelUser=blog\nsh404SefLabelItem=2\n',1),(64,'JCE','option=com_jce',0,0,'option=com_jce','JCE','com_jce',0,'components/com_jce/img/logo.png',0,'\npackage=1',1),(65,'JCE MENU CPANEL','',0,64,'option=com_jce','JCE MENU CPANEL','com_jce',0,'templates/khepri/images/menu/icon-16-cpanel.png',0,'',1),(66,'JCE MENU CONFIG','',0,64,'option=com_jce&type=config','JCE MENU CONFIG','com_jce',1,'templates/khepri/images/menu/icon-16-config.png',0,'',1),(67,'JCE MENU GROUPS','',0,64,'option=com_jce&type=group','JCE MENU GROUPS','com_jce',2,'templates/khepri/images/menu/icon-16-user.png',0,'',1),(68,'JCE MENU PLUGINS','',0,64,'option=com_jce&type=plugin','JCE MENU PLUGINS','com_jce',3,'templates/khepri/images/menu/icon-16-plugin.png',0,'',1),(69,'JCE MENU INSTALL','',0,64,'option=com_jce&type=install','JCE MENU INSTALL','com_jce',4,'templates/khepri/images/menu/icon-16-install.png',0,'',1);
/*!40000 ALTER TABLE `jos_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_contact_details`
--

DROP TABLE IF EXISTS `jos_contact_details`;
CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `con_position` varchar(255) default NULL,
  `address` text,
  `suburb` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `postcode` varchar(100) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_contact_details`
--

LOCK TABLES `jos_contact_details` WRITE;
/*!40000 ALTER TABLE `jos_contact_details` DISABLE KEYS */;
INSERT INTO `jos_contact_details` VALUES (1,'Contacto','contacto','Position','Street','Suburb','State','Country','Zip Code','Telephone','Fax','Miscellanous info','','top','email@email.com',0,1,0,'0000-00-00 00:00:00',1,'show_name=0\nshow_position=0\nshow_email=0\nshow_street_address=0\nshow_suburb=0\nshow_state=0\nshow_postcode=0\nshow_country=0\nshow_telephone=0\nshow_mobile=0\nshow_fax=0\nshow_webpage=0\nshow_misc=0\nshow_image=0\nallow_vcard=0\ncontact_icons=2\nicon_address=blank.png\nicon_email=blank.png\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=1\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=',62,12,0,'','');
/*!40000 ALTER TABLE `jos_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content`
--

DROP TABLE IF EXISTS `jos_content`;
CREATE TABLE `jos_content` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `title_alias` varchar(255) NOT NULL default '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(11) unsigned NOT NULL default '0',
  `mask` int(11) unsigned NOT NULL default '0',
  `catid` int(11) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL default '1',
  `parentid` int(11) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_content`
--

LOCK TABLES `jos_content` WRITE;
/*!40000 ALTER TABLE `jos_content` DISABLE KEYS */;
INSERT INTO `jos_content` VALUES (1,'Bienvenido a Joomla!','bienvenido-a-joomla','','<div align=\"left\"><strong>Joomla! es un manejador de contenidos de código abierto diseñado para una creación rápida de sitios multi-idioma de calidad, comunidades online, portales multimedia, blogs, y aplicaciones de comercio electrónico. <br /></strong></div><p><strong><br /></strong><img src=\"images/stories/powered_by.png\" border=\"0\" alt=\"Joomla! Logo\" title=\"Example Caption\" hspace=\"6\" vspace=\"0\" width=\"165\" height=\"68\" align=\"left\" />Joomla! proporciona una interfáz fácil de usar que simplifica la administración y publicación de grandes volúmenes de contenido incluyendo HTML, documentos, y multimedia.  Joomla! es usado por organizaciones de todas las clases para sitios web públicos, infranets, extranets y con soporte de una comunidad con miles de usuarios. </p>','Con una librería de documentación completa de recursos de desarrollo, Joomla! permite la personalización de cada uno de los aspectos de un sitio web, incluyendo presentación, diseño, administración, y una rápida integración de extensiones de terceros.<p>Joomla! tiene una rica herencia y ha sido coronado como el CMS Rey en varias ocasiones.  Ahora con más poder bajo la espesura del bosque, Joomla! está cambiando el mecanismo y proporciona poder de desarrollo al tiempo que hace toda la experiencia de usuario más amigable.  Por eso, para quien siempre quiso incrementar la extensibilidad, Joomla! 1.5 lo hace posible.</p><p>Un nuevo entorno de trabajo, la refactorización del sistema, y una alta actividad del equipo de desarrollo aportan para ti la excitación de \'La próxima generación del CMS\'.  Tanto si eres un arquitecto de sistemas como un completo \'novato\' Joomla! puede facilitarte el próximo nivel de contenido. \'Más que un CMS\' es algo que hemos acotado como una característica destacable porque la nueva API de Joomla! es increíblemente poderosa y flexible. Te sentirás libre de tomar cualquier dirección a la que tu creatibidad te conduzca, porque Joomla! te puede ayudar a ponerla en práctica con una  mucha mayor facilidad y como nunca se ha visto anteriormente.</p><p>¿Pensando en la publicación web? Piensa en Joomla!</p>',0,1,0,1,'2006-10-12 10:00:00',62,'','2007-11-08 12:06:35',62,0,'0000-00-00 00:00:00','2006-01-03 01:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',29,0,17,'','',0,92,'robots=\nauthor='),(2,'Newsflash 1','newsflash-1','','<p>Joomla! hace fácil lanzar sitios web de cualquier clase. Tanto si quieres un sitio sencillo como si estás construyendo una gran comunidad online, Joomla! te permite levantar un sitio en minutos y agregarle las funcionalidades extra que necesites. Los cientos de extensiones disponibles pueden ayudarte a expander tu sitio y a pensar en la posibilidad de ofrecer nuevos servicios desde internet.</p>','',0,1,0,3,'2004-08-10 06:30:34',62,'','2007-11-08 12:19:35',62,0,'0000-00-00 00:00:00','2004-08-09 10:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',7,0,3,'','',0,1,'robots=\nauthor='),(3,'Newsflash 2','newsflash-2','','<p>Una cosa sobre los sitios web es que siempre cambian!. Joomla! hace fácil agregar artículos, contenido, imágenes, videos, y mucho más. Los administradores del sitio pueden editar y gestionar contendido \'desde ahí mismo\' haciendo clic en el enlace a \'Editar\'. Los administradores también pueden editar el contenido a través de un panel de control gráfico que da la capacidad de tomar el control completo sobre el sitio.</p>','',0,1,0,3,'2004-08-09 22:30:34',62,'','2007-11-08 12:20:41',62,0,'0000-00-00 00:00:00','2004-08-09 06:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',6,0,4,'','',0,0,'robots=\nauthor='),(4,'Newsflash 3','newsflash-3','','<p>Con una librería de cientos de  <a href=\"http://extensions.joomla.org\" title=\"Extensiones para Joomla!\">Extensiones</a>, podrás agregar lo que necesites a tu sitio. No esperes, pega una ojeada en  <a href=\"http://extensions.joomla.org/\" target=\"_blank\">Extensiones para Joomla!</a>. </p>','',0,1,0,3,'2004-08-10 06:30:34',62,'','2007-11-08 12:21:51',62,0,'0000-00-00 00:00:00','2004-08-09 10:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',7,0,5,'','',0,1,'robots=\nauthor='),(5,'Joomla! referencia de la Licencia','joomla-license-guidelines','joomla-license-guidelines','<p>Este sitio está potenciado por <a href=\"http://www.joomla.org/\">Joomla!</a>  el software y plantillas predeterminadas sobre él están con Copyright 2005-2007 <a href=\"http://www.opensourcematters.org/\">Open Source Matters</a>.  Cualquier otro contenido y datos, incluyendo los datos introducidos en este sitio web tras la instalación, están con copyright de sus respectivos autores.</p><p>Si quieres distribuir, copiar o modificar Joomla!, eres bienvenido a hacerlo bajo los términos de la <a href=\"http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC1\">GNU General Public License</a>.  Si no estás familiarizado con esta licencia, también puedes revisar <a href=\"http://www.gnu.org/licenses/old-licenses/gpl-2.0.html#SEC4\">\'How To Apply These Terms To Your Program\'</a> y la <a href=\"http://www.gnu.org/licenses/old-licenses/gpl-2.0-faq.html\">\'GNU General Public License FAQ\'</a>.</p><p>La documentación de Joomla! está liberada bajo los términos de  <a href=\"http://creativecommons.org/licenses/by-nc-sa/2.5/\" title=\"Creative Commons \">Creative Commons Attribution-Non-Commercial-Share-Alike License 2.5</a> o bajo la licencia específica de sus respectivos propietarios.</p><p>La licencia de Joomla! siempre será GPL.</p>','',0,4,0,25,'2004-08-20 10:11:07',62,'','2007-11-04 23:02:47',62,0,'0000-00-00 00:00:00','2004-08-19 06:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',7,0,2,'','',0,98,'robots=\nauthor='),(6,'Somos voluntarios','somos-voluntarios','','<p>El equipo de Joomla! consiste en un grupo de desarrolladores voluntarios, así como diseñadores, administradores y gestores que, siendo dedicados miembros de la comunidad, juntos y con una larga andadura en el grupo de trabajo, han llevado a  Joomla! a nuevas alturas dentro de su relativamente breve período de vida. Esta bien engrasada máquina es a menudo copiada pero nunca superada.  Joomla! tiene a gente maravillosa y con talento llevando los conceptos del código abierto al mundo de la industria estándar.  Joomla! 1.5 es la mayor y más excitante liberación en la historia del proyecto. </p>','<p>El proyecto tiene un bonito balance de desarrollo heredado de bien conocidos programadores como pueda ser Andrew Eddie o algunos chicos jóvenes como Johan Janssens y Louis Landry.  Este trio dinámico ha sido el encargado en el proyecto de aportar una combinación exitosa de talentos.</p>',0,1,0,1,'2004-07-07 09:54:06',62,'','2007-11-08 12:10:35',62,0,'0000-00-00 00:00:00','2004-07-06 22:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',9,0,18,'','',0,54,'robots=\nauthor='),(7,'Sobre el inicio del código!','stick-to-the-code','','Para asegurar esta liberación de código, Wilco Jansen solo tuvo que enviarle ron a Johan Janssens (el cual siente especial inclinación por esta bebida desde que vio la película \"Los piratas del caribe\").. el cual picó el anzuelo mezclándolo con coca cola, y aquí estamos con nuestra última liberación de la 1.5. Parece que el charlar al estilo pirata va a ser determinante en el futuro desarrollo de Joomla! :P ','<strong><br />Translation for you real pirates:<br /></strong> <br />First Mate Wilco resorted t\' sendin\' rum t\' joint Capt\'n Johan. Johan, who\'s had a penchant for rum ever since t\' first \"Pirate\'s o\' t\' Caribbean\" movie screened, took t\' bait, mixed it with molasses, and here we be with our latest 1.5 release. It looks like pirate talk will figure quite a lot in future Joomla! development!',0,1,0,1,'2004-07-07 12:00:00',62,'','2007-11-25 22:37:55',62,0,'0000-00-00 00:00:00','2004-07-07 11:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=',13,0,19,'','',0,55,'robots=\nauthor='),(8,'La leyenda de Buca di Beppo','the-legend-of-buca-di-beppo','','<p>La leyenda de Buca di Beppo implica una reunión encubierta de los principales desarrolladores en un restaurante al estilo de la mafia en de los Estados Unidos.  \'Bucas\' ha sido en más de una ocasión el catalizador para la clave (y en algunos casos considerado insuperable) del desarrollo y \'humps\' se mueve por encima.</p><p>Con cantidades copiosas de comida y vino fluyendo, los jugos creativos de código parecen funcionar con claridad, rápido y con los problemas solucionados. Louis Landry famosamente establecida que vive cerca de Bucas podría conducir a un ciclo de desarrolo más rápido.</p><p>Mmmm. Un restaurante con fotos de películas de la mafia como <em>El padrino</em> y fundas de violín apoyados en las cabinas.  Hace que te preguntes cosas ¿cierto?  </p><p>Si Joomla! fuera una aventura comercial, estamos seguros de bucas podría considerar actualmente la construcción de una oficina dentro del edificio!</p>','',0,1,0,1,'2004-04-12 09:54:06',62,'','2007-11-08 12:14:09',62,0,'0000-00-00 00:00:00','2004-07-06 22:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',6,0,20,'','',0,13,'robots=\nauthor='),(9,'1 millón de sonrisas','1-million-smiles','','<p>El equipo de Joomla! tiene alrededor de un millón de buenas razones para sonreir cuando se trata de Joomla! 1.5. En este momento el paquete se ha descargado más de un millón de veces, tomando un nivel de popularidad sin precedentes.  El nuevo código base es una completa refactorización del antiguo código base. La experiencia de usuario está extremadamente lograda y para los desarrolladores, su API, es un sueño.  Un apropiado marco de trabajo para arquitectos reales de PHP buscando lo mejor de lo mejor.</p><p>Si eres un usuario con formación sobre Mambo o las series  1.0 de Joomla!, la 1.5 es el futuro de los CMSs por un número de razones:  Es más poderoso, flexible, seguro e intuitivo.  Nuestros desarrolladores y diseñadores de la interfaz, han trabajado durante incontables horas para ofrecer la más excitante liberación en manejadores de contenido de todo el planeta.</p><p>Vamos ... toma tu copia GRATUITA de Joomla! ahora y fomenta por todo el mundo el uso de este proyecto de referencia. </p>','',0,1,0,1,'2004-07-07 09:54:06',62,'','2007-11-08 12:16:19',62,0,'0000-00-00 00:00:00','2004-07-06 22:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',5,0,21,'','',0,23,'robots=\nauthor='),(10,'¿Como ver Joomla! en mi idioma?','how-do-i-localise-joomla-to-my-language','','<h4>General<br /></h4><p>En Joomla! 1.5 todas las interfaces de usuario pueden ser vistas en el idioma local. Esto incluye la instalación, el panel de control de la administración y la parte frontal del sitio.</p><p>Las liberaciones del núcleo de Joomla! 1.5 están proveidas con la posibilidad de seleccionar multiples idiomas de instalación; pero, para la administración o para el sitio, los otros lenguajes que no sean el inglés (el idioma predeterminado), necesitan de la instalación de su correspondiente paquete tras la instalación del CMS. El enlace a otros paquetes del idioma se encuentra más abajo.</p>','<p>Los equipos de traducción para Joomla! 1.5 también pueden liberar instalaciones completas del CMS donde el idioma local de la administración, la parte frontal y los datos de ejemplo, ya estén integrados y habilitados en el paquete. Estos paquetes pueden encontrarse en los proyectos específicos de cada equipo en el <a href=\"http://joomlacode.org\" title=\"Repositorio de Joomla!\">JoomlaCode</a>.</p><h4>¿Cómo instalar paquetes del idioma?</h4><ul><li>Primero, descarga los paquetes del idioma (ambos: el del admin y el del sitio) que necesites.</li><li>Instala cada paquete por separado desde el menú Extensions-&gt;Install/Uninstall, seleccionando la utilidad para subir paquetes.</li><li>Ve al Gestor de idiomas y asegúrate de seleccionar tu idioma como predeterminado tanto en el sitio como en la administración.</li></ul><h4>¿Cómo seleccionar idiomas?</h4><ul><li>Los archivos del idioma se pueden asignar independientemente para el sitio o para la administración</li><li>Adicionalmente, los usuarios también pueden seleccionar su idioma preferido (también independientemente). Esto hace efecto trás loguearse</li><li>Mientras se está logueado en la administración, el idioma también puede seleccionarse para una sesión en particular.</li></ul><h4>¿Dónde puedo encontrar paquetes del idioma?</h4><p><em>Por favor, nota que Joomla! 1.5 es nuevo y los paquetes del idioma para esta liberación pueden no estar disponibles aún.</em> </p><ul><li><a href=\"http://joomlacode.org/gf/project/jtranslation/\" target=\"_blank\" title=\"Traductores acreditados\">Los traductores acreditados del proyecto Joomla!</a>  - Esto es un repositorio para paquetes del idioma que hemos desarrollado por equipos que son miembros del equipo de traducción de Joomla!</li><li><a href=\"http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1837/Itemid,35/\" target=\"_blank\" title=\"Traducciones\">El sitio de extensiones de Joomla! - Traducciones</a>  </li><li><a href=\"http://dev.joomla.org/content/view/42/66/\" target=\"_blank\" title=\"Equipos de traducción\">Lista de los sitios de equipos traductores asociados para Joomla! 1.5</a> </li></ul>',1,3,0,32,'2006-09-30 14:06:37',62,'','2007-11-08 11:55:56',62,0,'0000-00-00 00:00:00','2006-09-29 10:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',9,0,5,'','',0,9,'robots=\nauthor='),(11,'¿Cómo migrar a Joomla! 1.5 ?','how-do-i-upgrade-to-joomla-15','','<p>Joomla! 1.5 no proporciona un actualizador automático y compatible con versiones anteriores de Joomla! Convertir un sitio antiguo a Joomla! 1.5 requiere de la creación de un nuevo y vacio sitio usando Joomla! 1.5 y luego introducir el contenido del antiguo sitio en el nuevo. Esta migración del contenido no es un proceso automatizado al cien por cien e implica conversiones y modificaciones en el volcado del contenido.</p> <p>Hay dos vias para llevar a cabo la migración:</p>',' <div id=\"post_content-107\"><li>Un método automático de migración que se ha proporcionado por medio del uso de un componente de migración para ayudarnos en la creación del volcado de salida de datos del sitio antiguo (superior a Mambo 4.5.x hasta Joomla! 1.0.x) y también proporcionando la facilidad en la importación de ese volcado desde  el proceso de instalación en Joomla! 1.5 y que llevará a cabo las conversiones y modificaciones requeridas durante el proceso de instalación.</li> <li>La migración puede llevarse a cabo manualmente. Esto implica la exportación de las tablas requeridas, llevar a cabo manualmente las conversiones y modificaciones requeridas y la importación del contenido al nuevo sitio después de su instalación.</li>  <p><!--more--></p> <h2><strong> Migración automatizada</strong></h2>  <p>Consiste en un proceso de dos fases usando dos herramientas. La primera herramienta es el componente <font face=\"courier new,courier\">com_migrator</font>. Este componente ha sido contribuido por Harald Baer y está basado en el componente <strong>eBackup </strong>. El migrador necesita ser instalado en el sitio antiguo y cuando está activado prepara el volcado de exportación requerido con los datos del sitio antiguo. La segunda herramienta está dentro del proceso de instalación de  Joomla! 1.5. El contenido exportado del sitio antiguo se carga dentro del nuevo sitio y todas las conversiones y modificaciones se hacen al vuelo.</p> <h3><u> Paso 1 - Usando el com_migrator para exportar los datos desde el sitio antiguo:</u></h3> <li>Instala el componente <font face=\"courier new,courier\">com_migrator</font> en el sitio <u><strong>antiguo</strong></u>. Lo puedes encontrar en <a href=\"http://joomlacode.org/gf/project/pasamioprojects/frs/\" target=\"_blank\">JoomlaCode developers forge</a>.</li> <li>Selecciona el componente desde el menú de componentes del panel de control.</li> <li>Haz clic sobre el icono <strong>Dump it</strong>. Se crearán tres exportaciones <em>comprimidas</em>. El primero es un respaldo completo del sitio antiguo. El segundo es la migración de todo el contenido de todos los elementos del núcleo que serán importados al sitio nuevo. El tercero es un respaldo de todas las tablas de los componentes pertenecientes a extensiones de terceros.</li> <li>Haz clic sobre el icono de download de las exportaciones que particularmente necesitas y almacénalas localmente.</li> <li>Se pueden crear muchas configuraciones de exportación.</li> <li>La exportación de datos no se modifica de ningún modo y la codificación original se preserva. Ésto hace al componente <font face=\"courier new,courier\">com_migrator</font> una herramienta recomendable para usar como  migrador manual.</li> <h3><u> Paso 2 - Usando la utilidad de importar y convertir los datos durante el proceso de instalación de Joomla! 1.5:</u></h3><p>Nota: esto necesita el uso de la función de PHP <em><font face=\"courier new,courier\">iconv </font></em>para convertir codificaciones. Si no se encuentra a la función <em><font face=\"courier new,courier\">iconv </font></em>recibirás una advertencia.</p> <li>En el paso 6 - Configuración, selecciona la opción \'Cargar el script de migración\' en la sección de la página \'Cargar datos de ejemplo, Restaurar o Migrar el contenido respaldado\'.</li> <li>Introduce el prefijo usado en el volcado de contenido, por ejemplo: \'jos_\' o \'site2_\' son valores aceptables.</li> <li>Selecciona la codificación del volcado del contenido desde la lista desplegable. Esto debe ser la codificación de caracteres usada en el sitio antiguo. (Como el que hay definido en la variable _ISO en el archivo del idioma o como se ve en la información de la página del navegador en el apartado codificación)</li> <li>Navega con el explorador de archivos hasta el archivo de migración previamente exportado y haz clic sobre él <strong>Subir y ejecutar</strong></li> <li>Un mensaje de éxito debe aparecer o alternativamnete deben mostrarse los errores en la base de datos</li> <li>Completa los otros campos requeridos en ese paso de la configuración como pueda ser el nombre del sitio, detalles del Admin y avanza hasta el paso final de la instalación. (Los detalles del Admin serán ignorados porque tienen prioridad los importados del sitio antiguo, por favor, acuerdate de usar los datos del superusuario y contraseña del sitio antiguo\n)</li> <p><u><br /></u></p></div>',1,3,0,28,'2006-09-30 20:27:52',62,'','2007-11-08 11:01:01',62,0,'0000-00-00 00:00:00','2006-09-29 12:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',10,0,3,'','',0,13,'robots=\nauthor='),(12,'¿Por qué usa Joomla! 1.5 la codificación utf-8?','why-does-joomla-15-use-utf-8-encoding','','<p>Bueno... ¿que te parece no tener la necesidad de liarte nunca más con la configuración de la codificación de los caracteres de tu sitio?</p><p>Siempre que necesites mostrar más de un idioma en la página o en el sitio esta codificación lo facilita.</p><p>Con utf-8 (una variante de Unicode), básicamente, pueden mostrarse todos los idiomas con un simple parámetro de configuración de la codificación. </p>','',1,3,0,31,'2006-10-05 01:11:29',62,'','2007-11-08 11:39:51',62,0,'0000-00-00 00:00:00','2006-10-03 10:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',8,0,8,'','',0,28,'robots=\nauthor='),(13,'¿Qué pasa con la configuración local?','what-happened-to-the-locale-setting','','Ésto ahora se define en el arcchivo xml del idioma desde la configuración de metadatos [<em>lang</em>]. Si tienes problemas con el idioma, como por ejemplo, las fechas no aparecen en tu idioma, necesitas revisar las entradas en tu etiqueta local. Nota que puedes asignar multiples cadenas y el hospedaje aceptará a la primera que reconozca.','',1,3,0,28,'2006-10-06 16:47:35',62,'','2007-11-04 23:12:30',62,0,'0000-00-00 00:00:00','2006-10-05 14:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',7,0,2,'','',0,10,'robots=\nauthor='),(14,'¿Para qué es la capa FTP?','what-is-the-ftp-layer-for','','<p>La capa FTP permite operaciones de archivo (como instalar extensiones o actualizar el archivo de configuración global) sin tener que hacer todos los archivos y carpetas del espacio web escribibles. Esto es un tema que ha venido afectando a los usuarios de Linux u otras plataformas basadas en Unix debido a los permisos chmod de archivos y carpetas. La capa FTP hace la vida al administrador del sitio mucho más fácil e incrementa la funcionalidad y la seguridad del sitio, ya que no se deberán otorgar permisos chmod 777 al espacio web para conseguir escribir los archivos.</p><p>Puedes revisar el estado de las carpetas relevantes yendo a  \'\'Ayuda-&gt;Info del sistema\" y luego en la pestaña \"Permisos de directorios\". Con la capa FTP habilitada, si todos los directorios están en rojo, Joomla! podrá seguir operando sin problemas porque no opera a través del espacio web sino desde el FTP.</p><p>NOTA: La capa FTP no es necesaria en hospedajes/servidores Windows. </p>','',0,3,0,31,'2006-10-06 21:27:49',62,'','2007-05-03 09:39:48',62,0,'0000-00-00 00:00:00','2006-10-05 16:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=',6,0,6,'','',0,22,'robots=\nauthor='),(15,'¿Puede Joomla! 1.5 operar con el Safe Mode On?','can-joomla-15-operate-with-php-safe-mode-on','','<p>Sí, Puede! Se trata de una importante mejora de seguridad.</p><p>El <em>safe mode</em> limita a PHP para solo ser capaz de llevar a cabo acciones en archivos/carpetas de las cuales el propietario es el mismo a quien actualmente está ejecutando el proceso (normalmente es apache y los archivos en el espacio web están con otro propietario). Como los archivos normalmente están creados por la aplicación de Joomla! o por el FTP, la combinación de acciones de archivos de PHP y  la capa FTP permiten a Joomla! operar incluso con el safe mode habilitado.</p>','',0,3,0,31,'2006-10-06 19:28:35',62,'','2007-11-08 11:26:51',62,0,'0000-00-00 00:00:00','2006-10-05 14:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',7,0,4,'','',0,7,'robots=\nauthor='),(16,'Solo hay una ventana de edición! ¿Cómo puedo crear un \'Leer más...\'?','only-one-edit-window-how-do-i-create-read-more','','<p>Esto ahora se implementa insertando una etiqueta  <strong>leer más...</strong> (El botón está ubicado por debajo del área de edición). Aparece una línea de puntos en el cuadro de texto mostrando el punto donde se corta el texto con un  <em>Leer más....</em> Un nuevo plugin se encargar del resto.</p><p>Solo mencionar que esto no tiene efecto negativo sobre el contenido migrado de sitios antiguos. La nueva implementación es completamente compatible con versiones anteriores.</p>','',0,3,0,28,'2006-10-06 19:29:28',62,'','2007-11-08 11:03:30',62,0,'0000-00-00 00:00:00','2006-10-05 14:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',7,0,4,'','',0,19,'robots=\nauthor='),(17,'Mi base de datos MySQL no soporta UTF-8. ¿hay algún problema?','my-mysql-database-does-not-support-utf-8-do-i-have-a-problem','','No, ninguno. Las versiones anteriores a la 4.1  de  MySQL no ofrecen soporte para utf-8. Como siempre, Jomla! 1.5 ha realizado previsiones para dar compatibilidad y es capaz de usar utf-8 sobre bases de datos antiguas. Deja encargarse al instalador y no habrá necesidad de realizar ningún cambio en la base de datos (charset, collation, o cualquier otro).','',1,3,0,31,'2006-10-07 09:30:37',62,'','2007-11-08 11:39:01',62,0,'0000-00-00 00:00:00','2006-10-05 20:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',10,0,7,'','',0,8,'robots=\nauthor='),(18,'Características de Joomla!','joomla-features','','<h4><font color=\"#ff6600\">Características de Joomla!:</font></h4> <ul><li>Sitio completamente conducido por los motores de la base de datos </li><li>Noticias, productos, o secciones de servicios completamente editables y manejables</li><li>Secciones de temas agregables por contrubiciones de autores </li><li>Presentaciones completamente personalizables incluyendo <em>left</em>, <em>center</em>, y <em>right </em>Cajas de menús </li><li>Subida de imágenes en tu propia librería para poder usarlas en cualquier lugar del sitio </li><li>Foro dinámico/Encuestas/Votación </li><li>Funciona sobre Linux, FreeBSD, MacOSX server, Solaris, y AIX','  </li></ul> <h4>Administración extensible:</h4> <ul><li>Cambia el orden de los objetos incluyendo, noticias, FAQs, Artículos, etc. </li><li>Generador de noticias aleatorio </li><li>Módulo de envío remoto para autores de noticias, artículos, FAQs y enlaces </li><li>Jerarquía de objetos - con tantas secciones, departamentos, divisiones y páginas como quieras </li><li>Librería de imágenes - almacena todos tus  PNGs, PDFs, DOCs, XLSs, GIFs, y JPEGs online para un uso fácil </li><li>Localizador de ruta automático. Coloca una imágen y deja a Joomla! fijar el enlace </li><li>Gestor de noticias feeds. Elije sobre mas de 360 servidores de noticias alrededor del mundo </li><li>Recomendación por correo a un amigo y formato imprimible disponible por cada historia o artículo </li><li>Editor de texto en línea similar a cualquier procesador de texto básico </li><li>Perfil de usuario editable </li><li>Encuestas/Votaciones - Ahora puedes poner una encuesta distinta en cada página </li><li>Módulos por página personalizables. Descarga módulos personalizados para destacar tu sitio </li><li>Gestor de plantillas. Descarga plantillas e implementalas en tu sitio en unos segundos </li><li>Vista previa de la presentación. Mira como queda tu trabajo antes de publicarlo </li><li>Gestor de anuncios. Haz dinero con anuncios publicitarios ajenos a  tu sitio</li></ul>',0,4,0,29,'2006-10-08 23:32:45',62,'','2007-11-04 16:38:53',62,0,'0000-00-00 00:00:00','2006-10-07 06:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',11,0,4,'','',0,59,'robots=\nauthor='),(19,'Visión general Joomla!','joomla-overview','','<p>Si eres nuevo en los sistemas de publicación, puedes encontrar que Joomla! proporciona soluciones sofisticadas a tus necesidades online. Joomla! puede entregar sitios robustos, poderosos y extensibles para tus necesidades de publicación. Es más, es a menudo el sistema elegido para pequeños negocios o por usuarios domésticos que quieren un sitio con aspecto profesional y de uso simple. <em>Nosotros lo hacemos posible</em>.<br /> </p><p>Pero ¿Cual es el precio? ¿Cuanto cuesta este sistema?</p><p> Bueno, hay buenas noticias ... y muy buenas noticias!! Joomla! 1.5 es gratuito, está liberado bajo una licencia de código abierto - the GNU/General Public License v 2.0. Si has investigado sobre otras altenrnativas comerciales, es posible que las encuentres, pero aparte de la inversion de pagar ese software, por cada agregado que necesites, tendrás que volver a pagar!</p><p>Joomla! cambia todo eso ... <br />Joomla! es diferente a los modelos normales de CMS. Para empezar, no es complicado. Joomla! ha sido desarrollado para que todo el mundo lo pueda usar y todo el mundo pueda participar en desarrollos futuros. Está diseñado para trabajar (primariamente) con otro software de código abierto, gratis, como PHP, MySQL y Apache. </p><p>Es fácil de instalar y administrar. </p><p>Joomla! no siempre requiere de que el usuario o administrador sepa de HTML para poder operar y funcionar.</p><p>Para obtener el sitio web perfecto, con todas las funcionalidades  y las aplicaciones en particular que  necesites puede requerir mucho esfuerzo, pero con Joomla!, su comunidad de soporte y las extensiones de terceros puedes lograrlo con relativa facilidad . </p>','',0,4,0,29,'2006-10-09 07:49:20',62,'','2007-11-04 15:50:34',62,0,'0000-00-00 00:00:00','2006-10-07 10:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',13,0,2,'','',0,148,'robots=\nauthor='),(20,'Soporte y documentación','support and documentation','','<h1>Soporte </h1><p>El soporte para el CMS Joomla! puede encontrarse en varios lugares. El mejor lugar es empezar por el sitio oficial <a href=\"http://help.joomla.org/\" target=\"_blank\">Sitio de ayuda</a>. Aquí puedes ayudarte con la información que regularmente se va publicando y actualizando. </p><p>Por supuesto, no olvides el propio sistema de ayuda que incluidoo el CMS. En el <em>Menú superior </em>dentro del panel de control de la administración se encuentra el botón de ayuda que puede proveerte de un montón de información adicional sobre las características. </p><p>Otro gran lugar, por supuesto, puede ser el <a href=\"http://www.joomlaspanish.org/foros/\" target=\"_blank\">Foro de Joomla! Spanish</a> . En el foro de Joomla! puedes encontrar ayuda y soporte por parte de los miembros de la comunidad. El foro contiene un montón de información, FAQ\'s, acerca de cualquier cosa que estés buscado en términos de soporte.</p><p>Dos recursos más para soporte son la  <a href=\"http://dev.joomla.org/\" target=\"_blank\">Red de desarroladores de Joomla!</a>  (JDN) y el  <a href=\"http://extensions.joomla.org/\" target=\"_blank\">Directorio de extensiones para Joomla!</a> (JED). El primero, por ejemplo, te provee con grandes cantidades de información técnica para el desarrollo y el segundo, provee de extensiones para Joomla!</p><p>Los miembros del núcleo de Joomla! publican regularmente en sus blogs sobre temas varios, como técnicas de programación, seguridad, eventos, etc. Tu puedes suscribirte cuando quieras y se te notificarán por correo las nuevas publicaciones </p><h1>Documentación </h1><p>La documentación de Joomla! puede encontrarse en el  <a href=\"http://help.joomla.org/\" target=\"_blank\">Sitio de ayuda</a>. Ahí puedes encontrar información como la guía de instalación, manual de usuario y del administrador, FAQ y mucho más. El equipo de documentación es el guardián de la documentación que relata un uso práctico de Joomla!. El equipo de documentación de desarrollo, es el encargado de detallar como funciona  Joomla! por dentro para que así tú puedas ser capaz, por ejemplo, de crear tus propias extensiones, templates, etc.</p><p>Otra de la documentación proporcionada por los grupos de trabajo en documentación de Joomla! son libros escritos sobre Joomla!. Puedes encontrar una lista de los mismos en <a href=\"http://help.joomla.org/content/section/44/254/\" target=\"_blank\">Libros sobre Joomla!</a> </p><h1>¿Quieres ayudar? </h1><p>Si quieres ayudar en el proyecto de documentación para Joomla! emvía tus detalles al <a href=\"http://forum.joomla.org/index.php/board,62.0.html\" title=\"Foro de documentación\">Foro de documentación de usuario</a> o al <a href=\"http://forum.joomla.org/index.php/board,60.0.html\" title=\"Foro de documentación de desarrolladores\">Foro de documentación de desarrolladores</a> </p><p><a class=\"urlextern\" href=\"http://forum.joomla.org/index.php/board,391.0.html\" target=\"_blank\" title=\"http://forum.joomla.org/index.php/board,59.0.html\" onclick=\"return svchk()\"><br /></a></p>','',0,4,0,25,'2006-10-09 08:33:57',62,'','2007-11-04 18:49:37',62,0,'0000-00-00 00:00:00','2006-10-07 10:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',13,0,1,'','',0,6,'robots=\nauthor='),(21,'Hechos sobre Joomla!','joomla-facts','','<p>Aquí hay unos cuantos hechos interesantes sobre Joomla!</p><ul><li><span>Más de 140,000 usuarios registrados activos en  <a href=\"http://forums.joomla.org\">el foro oficial de la comunidad de Joomla!</a> y más sobre los sitios de las muchas comunidades internacionales.</span><ul><li><span>Más de 1,000,000 de posts en 200,000 temas</span></li><li>Más de 1,200 posts por día</li><li>incremento de 150 nuevos participantes por día!</li></ul></li><li><span>1168 Proyectos en el JoomlaCode (<a href=\"http://joomlacode.org/\">joomlacode.org</a> ). Todo para añadidos extra de código abierto por parte de desarrolladores de extensiones.</span><ul><li><span>Cerca de 1,900,000 de descargas del CMS Joomla!<br /></span></li></ul></li><li><span>Más de 2200 Extensiones para Joomla! han sido registradas en <a href=\"http://extensions.joomla.org\" title=\"http://extensions.joomla.org\">Extensiones para Joomla!</a>  </span></li><li><span>Joomla.org excede los 2 TB de tráfico cada mes!</span></li><li><span>Informe de Alexa [Noviembre del 2007]: Joomla.org está en la posición 690 del ranking mundial.</span></li></ul>','',0,4,0,30,'2006-10-09 16:46:37',62,'','2007-11-04 18:24:09',62,0,'0000-00-00 00:00:00','2006-10-07 14:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',13,0,2,'','',0,50,'robots=\nauthor='),(22,'¿Qué novedades trae la 1.5?','whats-new-in-15','','<p>Como en las liberaciones previas de Joomla!, se proporciona un entorno de trabajo unificado y fácil de usar para proveer contenido para sitios web de todos los estilos. Para soportar el cambio natural de internet y las tecnologías web emergentes, Joomla! requiere de una reestructuración sustancial de su funcionalidad del núcleo y también hemos usado ese esfuerzo para simplificar muchas cosas en el interior de la interfaz actual. Joomla! 1.5 tiene muchas características nuevas.</p>','<p>&nbsp;</p><p style=\"margin-bottom: 0in\">   Las metas para Joomla! 1.5 son: </p>    <ul><li>     <p style=\"margin-bottom: 0in\">       Sustancial mejora en la usabilidad, manejabilidad y escalabilidad.     </p>   </li><li>     <p style=\"margin-bottom: 0in\"> Expandir la accesibilidad al soporte internacional, caracteres de doble-byte y soporte para la escritura de derecha a izquierda para los idiomas árabe, farsi y hebreo entre otros. </p>   </li><li>     <p style=\"margin-bottom: 0in\"> Extender la integración de aplicaciones externas a través de servicios web y autentificación remota como el Lightweight Directory Access Protocol (LDAP). </p>   </li><li>     <p style=\"margin-bottom: 0in\"> Mejorar la entrega de contenido, plantilla y presentación para soportar los estándares de accesibilidad y entrega de contenido en cualquier destino. </p>   </li><li>     <p style=\"margin-bottom: 0in\">       Lograr un marco de trabajo más flexible y sostenible para componentes y desarrolladores de extensiones.     </p>   </li><li>     <p style=\"margin-bottom: 0in\">       Prever la compatibilidad hacia atrás con versiones previas de componentes, plantillas, módulos y otras extensiones.</p></li></ul><p>&nbsp;</p>',0,4,0,29,'2006-10-11 22:13:58',62,'','2007-11-04 15:39:15',62,0,'0000-00-00 00:00:00','2006-10-10 18:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',8,0,1,'','',0,88,'robots=\nauthor='),(23,'Plataformas y estándares abiertos','platforms-and-open-standards','','<p class=\"MsoNormal\">Joomla! funciona sobre cualquier plataforma incluyendo Windows, la mayoría de Linux, varias versiones de Unix, y la plataforma de Apple OS/X.  Joomla! depende de PHP y la base de datos MySQL para entregar el contenido dinámico.  </p>            <p class=\"MsoNormal\">Los requisitos mínimos son:</p>      <ul><li>Apache 1.x, 2.x y superior</li><li>PHP 4.3 y superior</li><li>MySQL 3.23 y superior</li></ul>También puede funcionar sobre plataformas de servidor alternativas como Windows IIS - proveyendo soporte PHP y MySQL - pero eso requiere de configuraciones adicionales para que el paquete de Joomla! se instale con éxito y sea operativo.','',0,4,0,25,'2006-10-11 04:22:14',62,'','2007-11-04 23:07:08',62,0,'0000-00-00 00:00:00','2006-10-10 08:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',7,0,3,'','',0,11,'robots=\nauthor='),(24,'Presentaciones del contenido','content-layouts','','<p>Joomla! provee la plenitud de flexibilidad cuando quieras mostrar tu contenido web. Aunque estés usando Joomla! para un blog, noticias o un sitio web para una compañia, encontrarás uno o más estilos para mostrar las informaciónes. También puedes cambiar el estilo dinámicamente dependiendo de tus preferencias. Joomla! llama a como se mostrará la página la <strong>Presentación (layout)</strong>. Usa la guía de más abajo para comprender lo que hay disponible y como puedes usarlo. </p> <h2>Contenido </h2> <p>Joomla! hace extremadamente fácil el agregar y mostrar contenido. Todo el contenido se ubica cuando se localiza a la etiqueta mainbody en el template. Hay tres tipos de presentaciones (layouts) disponibles en Joomla! y todas ellas pueden personalizarse usando los parámetros de configuración. El modo de mostrarse y los parámetors están asignados en el ítem del menú usado para mostrar el contenido sobre el que estás trabajando.</p> <h3>Presentación blog<br /> </h3> <p>La presentación  blog mostrará una lista de todos los artículos del tipo de blog seleccionado (Sección o Categoría) en la posición mainbody de tu template. Esto te dará un título estándar y un texto de introcucción de cada artículo que esté dentro una sección/categoría en particular. Puedes personalizar este modo de presentanción desde los apartados preferéncias y parámetros, (revisa el artículo parámetros) esto se hace desde el menú, no desde el gestor de sesiones!</p> <h3>Presentación Blog de Archivo<br /> </h3> <p>La presentación blog de archivo puede darte una salida en pantalla similar a la de artículos, pero añade en la parte superior dos listas de selección desplegable y un botón de búsqueda para que el usuario pueda realizar búsquedas específicas por meses y por años, dentro de los artículos archivados.</p> <h3>Presentación lista<br /> </h3> <p>La presentación en lista simplemente de da un <em>Listado de </em>tablas<em> </em>de todos los títulos que pueda haber dentro de una sección o categoría en particular. Sin texto de introducción, solo los títulos. Puedes configurar la cantidad de títulos a mostrar en esa tabla a  través de los parámetros. La presentación de la tabla también puede facilitar filtros por sección para que los usuarios puedan reordenar, filtrar y asignar cuantos títulos se listarán por página (por encima de 50)</p> <h2>Wrapper</h2> <p>Los Wrappers o envolturas permiten alojar dentro de Joomla! aplicaciones independientes. El contenido dentro de la envoltura aparece dentro del área primaria definida por la etiqueta \'mainbody\' y te permite mostrar su contenido como a una parte de nuestro propio sitio. Un Wrapper alojará un IFRAME dentro de la sección de contenido en tu sitio y lo envolverá alrededor con la plantilla estandar que estés usando, de un mismo modo  que cuando, por ejemplo, se trata de un artículo.</p> <h2>Parámetros de contenido</h2> <p>Los parámetros para cada tipo de presentación puede encontrarse a mano derecha de las cajas del editor que hay dentro de la pantalla de configuración del ítem del menú. La disposición o cantidad de los parámetros dependen del tipo de presentación que estés configurando.</p>','',0,4,0,29,'2006-10-12 22:33:10',62,'','2007-11-04 16:58:35',62,62,'2010-08-19 22:24:55','2006-10-11 06:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',11,0,5,'','',0,69,'robots=\nauthor='),(25,'¿Requisitos necesarios para que Joomla! 1.5 funcione?','what-are-the-requirements-to-run-joomla-15','','<p>Joomla! funciona sobre pre-procesador de PHP. PHP se instala de diferentes formas, dependiendo de los sistemas operativos y del tipo de configuración deseada. Junto PHP necesitarás un servidor web, la mayoría de las veces se utiliza Apache, pero también puede funcionar sobre otros servidores web como Microsoft IIS (con algunos retoques). Además, Joomla! también necesita tener acceso a una base de datos, actualmente sólo se puede usar MySQL. </p>La mayoría de las personas saben por su propia experiencia que no es fácil instalar un servidor web Apache y que llega a resultar duro si se quiere añadir MySQL, PHP y Perl. La distribución XAMPP es una vía fácil para instalar un servidor Apache que contenga MySQL, PHP y Perl. XAMPP es realmente muy fácil de instalar y de usar. Descárgalo, descomprímelo y empieza. Incluso puedes instalarlo localmente en su ordenador con Windows XP. Los requisitos mínimos son:<br /><ul><li>Apache 1.x o 2.x</li><li>PHP 4.3 o superior</li><li>MySQL 3.23 o superior</li></ul>Para más detalles sobre los requisitos mínimos visita  <a href=\"http://help.joomla.org\" title=\"Joomla! sitio de ayuda\">Joomla! sitio de ayuda</a> y <a href=\"http://www.joomlaspanish.org/foros/\" title=\"Comunidad de Joomla! Spanish\">Los foros de Joomla! Spanish</a>','',0,3,0,31,'2006-10-11 00:42:31',62,'','2007-11-08 11:36:52',62,0,'0000-00-00 00:00:00','2006-10-10 06:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',6,0,5,'','',0,23,'robots=\nauthor='),(26,'Extensiones','extensions','','<p>Fuera del núcleo de Joomla! se hace un gran trabajo de gestión para cubrir las necesidades de contenido que permitan hacer los sitios más personalizables. Para mucha gente el auténtico poder de Joomla! reside en aplicaciones para el entorno de trabajo llamadas <strong>Extensiones</strong>. Una extensión se usa para agregar una capacitación a Joomla! que, por defecto y en su código báse, no están disponibles. Aquí hay unos ejemplos de las cientos de extensiones que hay disponibles:</p> <ul>   <li>Contructores dinámicos de formularios</li>   <li>Negocios u organizaciones</li>   <li>Gestión de documentos</li>   <li>Galerías de imágen y multimedia</li>   <li>Comercio electrónico y carritos de compra</li>   <li>Foros y chat</li>   <li>Calendarios</li>   <li>Correo</li>   <li>Datos y herramientas de informe</li>   <li>Sistemas de anuncios</li>   <li>Sistemas de suscripción a servicios</li>   <li>y mucho, mucho más</li> </ul> <p>Puedes encontrar más ejemplos en <a href=\"http://extensions.joomla.org\" target=\"_blank\" title=\"Joomla! Extensiones\">Joomla! - Extensiones</a>. Prepárate para asombrarte sobre el excitante trabajo que produce nuestra comunidad de desarrolladores!</p><p>Una guía útil de las extensiones del sitio la puedes encontrar en:<br /><a href=\"http://extensions.joomla.org/content/view/15/63/%20\" target=\"_blank\" title=\"Guia de las extensiones para Joomla!\">http://extensions.joomla.org/content/view/15/63/ </a> </p> <h3>Tipos de extensión </h3><p>Hay cinco tipos de extensiones:</p> <ul>   <li>Componentes</li>   <li>Módulos</li>   <li>Plantillas</li>   <li>Plugins</li>   <li>Idiomas</li> </ul> <p>Puedes informarte mejor sobre sus especificaciones usando el enlace que hay dentro de este artículo del Índice - tabla de contenidos - al principio a la derecha o haciendo clic en el <strong>Siguiente </strong>enlace.<br /> </p> <hr title=\"Componentes\" class=\"system-pagebreak\" /> <h3><img src=\"images/stories/ext_com.png\" border=\"0\" alt=\"Componentes - Joomla!\" title=\"Component - Joomla! Extension Directory\" width=\"17\" height=\"17\" /> Componentes</h3> <p>Un componente es el más largo y complejo de los tipos de extensión que hay.  Los componentes, son como mini-aplicaciones que renderizan el cuerpo principal de la página. Una analogía sencilla de entender podría ser como si Joomla! se tratase de un libro y todos los componentes son capítulos de ese libro. El componente del núcleo para artículos (<font face=\"courier new,courier\">com_content</font>), por ejemplo, es la mini-aplicación del nucleo que maneja la renderización de los artículos así como el componente del núcleo para registros (<font face=\"courier new,courier\">com_user</font>) es la mini-aplicación que maneja el registro de usuarios.</p> <p>Muchas características del nucleo de Joomla! se incluyen por defecto por medio de componentes como:</p> <ul>   <li>Contactos</li>   <li>Página de inicio</li>   <li>Servidor de noticias</li>   <li>Anuncios</li>   <li>Correo masivo</li>   <li>Encuestas</li></ul><p>Un componente puede manejar datos, mostrar configuraciones, proveer funciones, y en general puede llevar a cabo cualquier operación no contemplada por las funciones generales del código del núcleo</p> <p>Los componentes trabajan mano a mano con módulos y plugins para proveer de una rica variedad en la funcionalidad y modo de mostrar las cosas. Ellos hacen posible que se pueda transformar completamente Joomla! expandiendo ampliamente su capacitación y flexibilidad.</p>  <hr title=\"Módulos\" class=\"system-pagebreak\" /> <h3><img src=\"images/stories/ext_mod.png\" border=\"0\" alt=\"Módulo - Joomla! Extensiones\" title=\"Módulos - Joomla!\" width=\"17\" height=\"17\" /> Módulos</h3> <p>Una más ligera y flexible extensión usada para la renderización de páginas son los módulos. Los módulos se usan para pequeñas partes de la página y generalmente son menos complejos y capaces de verse a través de los distintos componentes. Continuando con nuestra analogía del libro, un módulo podría verse como un pié de página o bloque del encabezado, o quizá como una imagen/leyenda del libro que puede ser renderizado sobre algunas páginas en particular. Obviamente, puedes tener una nota al pié de página, pero no todas las páginas lo tienen. La nota al pie de página también podrían aparecer recordándote que capítulo estás leyendo o el componente que tienes cargado.</p> <p>Los módulos son como mini-utilidades que pueden ubicarse en cualquier lugar de tu sitio. Los módulos a veces funcionan en conjunción con algún componente y otras veces son independientes.</p> <p>Los módulos se pueden asignar a una posición de módulo la cual haya sido definida en la plantilla y también dentro de la administración, usando el gestor de módulos y de posiciones disponibles. Por ejemplo, \'left\' y \'right\' son posiciones comunes para presentaciones a tres columnas. </p> <h4>Mostrando módulos</h4> <p>A cada módulo se le asigna una posición en el sitio. Si quieres mostrar en dos localizaciones distintas a un mismo módulo debes copiar el módulo y asignar a la copia de ese módulo la nueva posición. También puedes asignarlos sobre ítems de menú (y páginas). Puedes seleccionar todos los menús o seleccionarlos de uno en uno, eligiéndolos con clic izquierdo mientras mantienes pulsada la tecla ctrl (pantalla de Editar)</p> <p>Nota: Tu menú principal es un módulo! cuando creas un menú nuevo estás copiando el código del módulo del menú principal (<font face=\"courier new,courier\">mod_mainmenu</font>) y dándole nombre para tu nuevo menú. Cuando copias un módulo, no copias todos sus parámetros, simplemente, permites a Joomla! usar el mismo código con distintos e independientes parámetros de configuración.</p> <h4>Ejemplo Newsflash</h4> <p>Newsflash es un módulo que muestra artículos desde tu sito dentro de una posición de módulo asignable. Éste puede usarse y configurarse para mostrar una categoría, todos los artículos, o mostrar un número de articulos elegidos aleatóriamente. Puede mostrar tantos artículos como hayas configurado y puede mostrar un enlace <em>Leer más...</em> para permitir al usuario acceder al texto completo de un artículo.</p> <p>El componente Newsflash es particularmente muy útil para cosas como las noticias del sitio o para mostrar un artículo agregado últimamnete a tu web.</p>  <hr title=\"Plugins\" class=\"system-pagebreak\" /> <h3><img src=\"images/stories/ext_plugin.png\" border=\"0\" alt=\"Plugin - Joomla! Extension Directory\" title=\"Plugin - Joomla! Extensiones\" width=\"17\" height=\"17\" /> Plugins</h3> <p>Una de las extensiones más avanzadas para Joomla! es el Plugin. En las versiones anteriores a Joomla! se los conocia como Mambots. Aparte de cabiársele el nombre, también se ha expandido su funcionalidad. Un plugin es una sección de código que corre cuando ocurre algún evento predefinido dentro de Joomla!. Por ejemplo, los editores son plugins que se ejecutan cuando sucede un evento <font face=\"courier new,courier\">onGetEditorArea</font>. Usar un plugin permite al desarrollador decidir la manera en que su código se comporta dependiendo de los plugins que haya instalados para reaccionar a los eventos.</p>  <hr title=\"Idiomas\" class=\"system-pagebreak\" /> <h3><img src=\"images/stories/ext_lang.png\" border=\"0\" alt=\"Idioma - Joomla! Extensions Directory\" title=\"Idioma - Joomla! Extensiones\" width=\"17\" height=\"17\" /> Idiomas</h3> <p>En el nuevo Joomla! 1.5 quizá las más básicas y críticas extensiones son un idioma. Joomla! se libera con multitud de idiomas de instalación, pero el sitio y la administración están empaquetados en un solo idioma <strong>en-GB</strong> - el inglés. El intentar incluir todos los idiomas disponibles actualmente podría hacer al paquete inmanejable a efectos del peso que alcanzaría para subirlo a un servidor. Los archivos del idioma habilitan todas las interfaces de usuario tanto para el front como para el backend de manera predeterminada en nuestro idioma local preferido. Nota que estos paquetes no tienen ningún impacto sobre el contenido actual como puedan ser los artículos. </p> <p>Para más información sobre los idiomas disponibles visita: Paquetes del idioma y liberaciones localizadas<br />   <a href=\"http://help.joomla.org/content/view/1651/243/\" target=\"_blank\" title=\"Joomla! - Sitio de ayuda: Paquetes del idioma\">http://help.joomla.org/content/view/1651/243/</a></p>','',0,4,0,29,'2006-10-11 06:00:00',62,'','2007-11-08 14:49:48',62,0,'0000-00-00 00:00:00','2006-10-10 22:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',24,0,3,'About Joomla!, General, Extensions','',0,100,'robots=\nauthor='),(27,'La comunidad Joomla!','the-joomla-community','','<p><strong>¿Tienes preguntas? </strong>con más de 40,000 miembros en su comunidad, el foro en línea de <a href=\"http://www.joomlaspanish.org/foros/\" target=\"_blank\">Foros de Joomla!Spanish</a>  es un gran recurso tanto para usuarios noveles como experimentados. Pásate por ahí, la comunidad se alegrará de poder ver tus trabajos con Joomla! así como tus aportes, dudas o comentarios sobre esta materia.</p>','',0,4,0,30,'2006-10-12 16:50:48',62,'','2007-11-04 18:29:55',62,0,'0000-00-00 00:00:00','2006-10-11 02:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',11,0,3,'','',0,51,'robots=\nauthor='),(28,'¿Como instalar Joomla! 1.5?','how-do-i-install-joomla-15','','<p>La instalación de Joomla! 1.5 es muy fácil. Partimos de la base que tienes configurado el servidor con los requisitos mínimos y que es accesible con el navegador. Descarga Joomla! 1.5, descomprímelo y coloca los ficheros en el directorio al que apuntará el sitio web, ejecuta el navegador y dirígete a la página del sitio, y se inicializará la instalación. Sigue los pasos del instalador (vienen acompañados con textos informativos) o remítete a la Guía de Instalación del Centro de Ayuda Joomla! Spanish para obtener más información.</p>','',0,3,0,31,'2006-10-11 01:10:59',62,'','2007-11-08 11:22:14',62,62,'2010-08-22 21:21:29','2006-10-10 06:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',5,0,3,'','',0,4,'robots=\nauthor='),(29,'¿Cuál es el propósito de la selección de colación en la pantalla de instalación?','what-is-the-purpose-of-the-collation-selection-in-the-installation-screen','','La opción colación (collate) determina el modo en que se realiza la ordenación en la base de datos. En lenguajes que usan caracteres especiales, como por ejemplo el Umlaut Alemán, la colación de la base de datos determina el tipo de ordenación. Si no sabes el tipo de colación que necesitas, selecciona \'utf8_general_ci\', ya que la mayoría de lenguajes usan esta. Las otras colaciones listadas son excepciones en relación con la colación general. Si tu lenguaje no aparece en la lista de colaciones, lo más probable es que el \'utf8_general_ci\' sea el más adecuado.','',1,3,0,32,'2006-10-11 03:11:38',62,'','2007-05-03 09:40:32',62,0,'0000-00-00 00:00:00','2006-10-10 08:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=',4,0,4,'','',0,6,'robots=\nauthor='),(30,'¿Qué lenguajes soporta Joomla! 1.5?','what-languages-are-supported-by-joomla-15','','En el instalador encontrarás una amplia colección de lenguajes. Actualmente, el instalador soporta los siguientes lenguajes: Alemán, Árabe, Búlgaro, Bengalí, Checo, Croata , Español, Griego, Inglés, Finlandés, Francés, Hebreo, Holandés, Húngaro (Magyar), Indio (Devaganari), Italiano, Malayo, Noruego (bokmal), Portugués (Brasil), Portugués (Portugal), Rumano, Ruso, Serbio, Sueco, Tailandés y otros que están siendo añadidos. Joomla! 1.5, ofrece el lenguaje Inglés como predeterminado para el Administrador (Back-end) y el Sitio (Front-end). Próximamente Joomla! Spanish ofrecerá el paquete integramente en español.','',1,3,0,32,'2006-10-11 01:12:18',62,'','2007-11-08 11:45:40',62,0,'0000-00-00 00:00:00','2006-10-10 06:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',5,0,2,'','',0,7,'robots=\nauthor='),(31,'¿Es útil instalar los datos de ejemplo?','is-it-useful-to-install-the-sample-data','','Esto depende de lo que quieras realizar. Si eres nuevo en Joomla! y no tienes nociones sobre como está preparado, instala los datos de ejemplo. Si no quieres los ejemplos en Español porque, por ejemplo, tu idioma es otro o ya los conoces, entonces no los instales.','',1,3,0,27,'2006-10-11 09:12:55',62,'','2007-11-08 12:03:24',62,0,'0000-00-00 00:00:00','2006-10-10 10:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',6,0,3,'','',0,2,'robots=\nauthor='),(32,'¿Dónde está el ítem del contenido estático?','where-is-the-static-content','','<p>El las versiones anteriores a Joomla! 1.5 había procesos separados para la creación de contenido estático y la creación de contenido normal. Ahora los procesos han sido combinados  y ambos tipos son renombrados como artículos de contenido y artículos sin categoría para los artículos de contenido estático. </p><p>Si quieres crear un ítem estático, crea un nuevo artículo del mismo modo que para contenido estándar  y luego, dentro de una sección o categoría, simplemente selecciona <span style=\"font-style: italic\">Sin clasificar</span> como opción dentro de los campos de selección desplegables.</p>','',0,3,0,28,'2006-10-10 23:13:33',62,'','2007-11-08 11:23:56',62,0,'0000-00-00 00:00:00','2006-10-10 04:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',6,0,6,'','',0,4,'robots=\nauthor='),(33,'¿Qué es un artículo sin clasificar?','what-is-uncategorised-article','','<p>La mayoría de los artículos deben estar asignados a una sección y categoría. En algunos casos, podrías no estar seguro sobre el lugar donde te gustaría que apareciera y es entonces cuando puedes elegir la opción <em>Sin clasificar </em> en la Sección/Categoría. Los artículos marcados como  <em>Sin clasificar </em>son manejados como contenido estático.</p>','',0,3,0,31,'2006-10-11 15:14:11',62,'','2010-08-22 21:15:34',62,0,'0000-00-00 00:00:00','2006-10-10 12:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',9,0,2,'','',1,6,'robots=\nauthor='),(34,'¿Puede el icono PDF renderizar imágenes y carácteres especiales?','does-the-pdf-icon-render-pictures-and-special-characters','','Sí! antes de Joomla! 1.5, solo los textos de un artículo y solo para codificaciones ISO-8859-1 estaban permitidos en la renderización de PDFs. Con la nueva librería PDF, el artículo completo, incluyendo las imágenes, está renderizado y se ve aplicado sobre el PDF. El generador de PDF también maneja los textos UTF-8 en cualquier idioma. Las fuentes apropiadas deben estar instaladas pero eso se hace automáticamente durante el proceso de instalación del paquete del idioma.','',1,3,0,32,'2006-10-11 17:14:57',62,'','2007-11-08 11:46:29',62,0,'0000-00-00 00:00:00','2006-10-10 14:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',7,0,3,'','',0,5,'robots=\nauthor='),(35,'¿Es posible cambiar el tipo de un ítem del menú?','is-it-possible-to-change-the-types-of-menu-entries','','<p>Si lo necesitas puedes cambiarlo cuando quieras, siempre después de que se haya creado. </p><p>Si, por ejemplo, quieres cambiar una presentación del tipo blog de un enlace del menú, ve al Panel de control -&gt;Menús Menú-&gt;[nombredelmenu]-&gt;Gestor de items del menú y edita el ítem del menú. Selecciona el botón <strong>Cambiar tipo</strong> y elige el nuevo estilo disponible desde la lista para ese ítem del menú. Tras ello, selecciona los detalles y parámentros de configuración que necesites.</p>','',0,3,0,31,'2006-10-10 23:15:36',62,'','2007-11-08 11:25:01',62,0,'0000-00-00 00:00:00','2006-10-10 04:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',6,0,1,'','',0,18,'robots=\nauthor='),(36,'¿Dónde está el instalador?','where-did-the-installer-go','','El instalador puede encontrarse dentro del menú extensiones. Con las versiones anteriores a Joomla! 1.5 necesitabas seleccionar un tipo de instalador de extensiones específico cuando querias instalar algo. Con Joomla! 1.5 solo necesitas indicar la extensión que quieres instalar y hacer clic en instalar. El instalador hará todo el trabajo duro por ti.','',1,3,0,28,'2006-10-10 23:16:20',62,'','2007-11-04 23:10:18',62,0,'0000-00-00 00:00:00','2006-10-10 04:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',6,0,1,'','',0,3,'robots=\nauthor='),(37,'¿Dónde han ido los Mambots?','where-did-the-mambots-go','','<p>Los mambots han sido renombrados a plugins. </p><p>En Joomla! 1.5, los plugins tienen muchas más capacitaciones que los mambots. Los plugins son capaces de extender las funcionalidades del marco de trabajo.</p>','',0,3,0,28,'2006-10-11 09:17:00',62,'','2007-11-08 11:04:30',62,0,'0000-00-00 00:00:00','2006-10-10 10:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',6,0,5,'','',0,3,'robots=\nauthor='),(38,'He instalado mi propio idioma pero la administración sigue en inglés','i-installed-with-my-own-language-but-the-back-end-is-still-in-english','','<p>Hay gran cantidad de idiomas disponibles para la administración, pero por defecto, ésta está en inglés. Si quieres usar una traducción en tu idioma debes instalarlo usando el instalador de extensiones. Después de esto ve al gestor de idiomas para hacer tu idioma el predeterminado y tu administración será traducida inmediatamente.</p><p>Los usuarios que tienen permiso para acceder a la administración pueden seleccionar su idioma preferido desde los parámetros personales de su perfil. Esto es lo mismo para el idioma de la parte frontal.</p><p> Un buen sitio para descargar idiomas está en  <a href=\"http://help.joomla.org/content/view/1651/62/\" target=\"blank_\" title=\"Sitio de ayuda\">Sitio de ayuda</a>.</p>','',0,3,0,32,'2006-10-11 17:18:14',62,'','2007-11-08 11:42:43',62,0,'0000-00-00 00:00:00','2006-10-10 14:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',7,0,1,'','',0,6,'robots=\nauthor='),(39,'¿Cómo elimino un artículo?','how-do-i-remove-an-article','','<p>Para eliminar completamente un artículo, selecciona los artículos que desdear eliminar y muévelos a la papelera. Luego, elimínalos de la papelera de artículos. Tras esto último los artículos seleccionados se habrán eliminado completamente y no habrá posibilidad de deshacer la operación.  </p>','',1,3,0,27,'2006-10-11 09:19:01',62,'','2007-11-08 12:01:26',62,0,'0000-00-00 00:00:00','2006-10-10 10:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',6,0,2,'','',0,3,'robots=\nauthor='),(40,'¿Cuál es la diferencia entre archivar y mover artículos a la papelera? ','what-is-the-difference-between-archiving-and-trashing-an-article','','<p>Cuando <em>Archivas </em>un artículo, el contenido se pone dentro de un estado en el que no aparecerá como contenido publicado dentro de tu sitio. El artículo aún está disponible desde el panel de control y puede ser <em>recuperado </em>para propósitos de edición o republicación. Los artículos en la papelera, están solo a un paso de ser eliminados completamente pero aún están disponibles mientras no sean eliminados completamente. Puedes usar el archivo si consideras que un artículo es importante pero no es actual. La papelera puede usarse cuando quieres eliminar contenido.  </p>','',1,3,0,27,'2006-10-11 05:19:43',62,'','2007-11-08 12:02:40',62,0,'0000-00-00 00:00:00','2006-10-10 06:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',8,0,1,'','',0,4,'robots=\nauthor='),(41,'Newsflash 5','newsflash-5','','Joomla! 1.5 - \'Experimenta la libertad\'!. Nunca fué tan fácil crear tu propio sitio web con contenido dinámico. Gestiona todo tu contenido desde la mejor interface y en cualquier idioma que hables.','',0,1,0,3,'2006-10-12 00:17:31',62,'','2007-11-08 12:17:53',62,0,'0000-00-00 00:00:00','2006-10-11 06:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',5,0,2,'','',0,4,'robots=\nauthor='),(42,'Newsflash 4','newsflash-4','','Ayer todos los servidores en U.S. apostaron por ofrecer más RAM y mejores CPUs. Una persona habló sobre las necesidades de incrementar los recursos para que en el futuro los buses de salida en las placas madre den optimos resultados.','',0,1,0,3,'2006-10-12 00:25:50',62,'','2007-11-08 12:17:20',62,0,'0000-00-00 00:00:00','2006-10-11 06:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',5,0,1,'','',0,5,'robots=\nauthor='),(43,'Páginas de ejemplo y menú de enlaces','example-pages-and-menu-links','','<p>Esta página es un ejemplo de contenido que está <em>Sin clasificar</em>; eso es, sin ninguna sección o categoría asignada. Puedes ver que es un nuevo menú en tu columna izquierda. Muestra enlaces a un mismo contenido desde cuatro presentaciones distintas.</p><ul><li>Blog de Sección</li><li>Tabla de Sección</li><li> Blog de Categoría</li><li>Tabla de Categoría</li></ul><p>Sigue los enlaces en la <strong>Página de ejemplo</strong> Menú para ver las opciones de presentación para los diferentes tipos de contenido incluidos dentro de la instalación predeterminada de Joomla!.</p><p>Esto incluye componentes y artículos individuales. Esos enlaces o tipos de ítem de menú están controlados desde el  <strong><font face=\"courier new,courier\">Gestor de menús-&gt;[nombremenu]-&gt;Gestor de items del menú</font></strong>. </p>','',0,0,0,0,'2006-10-12 09:26:52',62,'','2007-11-04 15:36:15',62,0,'0000-00-00 00:00:00','2006-10-11 10:00:00','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',7,0,5,'Uncategorized, Uncategorized, Example Pages and Menu Links','',0,43,'robots=\nauthor='),(44,'Comienzo temporada 2010/2011','comienzo-temporada-20102011','','<div>Los 6 equipos de Balonmano en categoria masculina correspondientes a La Bcaladera Hondarribia e Irungo Gaztiak La Bacaladera HTG Express comienzan su preparación en vistas a la nueva temporada con:</div>\r\n<ul>\r\n<li>1 equipo senior en Campeonato de Euskadi-2ª Nacional</li>\r\n<li>1 equipo senior en Campeonato de Gipuzkoa-Liga Territorial</li>\r\n<li>1 equipo juvenil en Campeonato de Gipuzkoa-Liga Territorial</li>\r\n<li>3 equipos cadetes en Campeonato de Gipuzkoa-Liga Territorial</li>\r\n</ul>\r\n<div>Los <span style=\"text-decoration: underline;\"><em><strong>seniors </strong></em></span>de los 2 equipos conjuntamente desde el pasado martes 17/08 a las 19.30 h y durante todos los dias a las ordenes del entrenador de categoria Nacional Javier de la Haza ( 617342708 ) han comenzado la pretemporada en el Polideportivo Hondartza de Hondarribia hasta la composición defininitiva de cada uno de los equipos.</div>\r\n<div>Los <span style=\"text-decoration: underline;\"><em><strong>juveniles </strong></em></span>lo harán el próximo lunes en el Polideportivo Hondartza de Hondarribia a las 18 h a las órdenes del entrenador Luis Montoya.</div>\r\n<div>Los <span style=\"text-decoration: underline;\"><em><strong>cadetes </strong></em></span>en su totalidad están convocados el lunes 23/08 a las 16.30 h en el Frontón Uranzu de Irun a las órdenes de los entrenadores de categoria Nacional:<br />Pedro Salcedo y Miguel Angel Izquierdo</div>\r\n<div>Os agradecemos su difusión por si todavia a algún jugador despistado no ha recibido ninguna comunicación por encontrarse de vacaciones o el motivo que fuera.</div>\r\n<div>Como el pasado año estamos preparando la documentación pertinente para presentar ante Notario en la próxima semana para porrogar el actual convenio de filialidad deportiva.</div>\r\n<div>Ramón Aranburu</div>\r\n<div>Bm Hondarribia &amp; Irungo Gaztiak E.K.E</div>\r\n<p> </p>','',1,1,0,1,'2010-08-19 12:06:34',62,'','2010-09-19 23:33:41',62,0,'0000-00-00 00:00:00','2010-08-19 12:06:34','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',3,0,16,'','',0,24,'robots=\nauthor='),(45,'El Club','elclub','','<p>el club</p>','',1,4,0,30,'2010-08-19 22:57:12',62,'','0000-00-00 00:00:00',0,62,'2010-08-19 23:06:43','2010-08-19 22:57:12','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',1,0,1,'','',0,24,'robots=\nauthor='),(46,'El Club','elclub','','<p>Informacion sobre el club</p>','',1,0,0,0,'2010-08-25 22:21:09',62,'','0000-00-00 00:00:00',0,62,'2010-11-01 23:38:07','2010-08-25 22:21:09','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',1,0,4,'','',0,275,'robots=\nauthor='),(47,'Historia','historia','','<p> </p>\r\n<p>El Club Balonmano Hondarribia comenzó su andadura el día primero de Noviembre de 1978, en cuya fecha se hizo la presentación jugando un encuentro contra otro histórico del balonmano gípuzkoano, el Allerru de Lezo, ganando los locales por 27-19 teniendo como testigo al emblemático polideportivo \"Jostaldi\".</p>\r\n<p><img src=\"images/stories/historia/histiria6-50p.png\" border=\"0\" /></p>\r\n<p>El Club fue creado por un grupo de amigos y aficionados al balonmano, habituales en los corrillos que se formaban por aquellos años en la Alameda, lugar de encuentro y esparcimiento de nuestros antepasados.</p>\r\n<p>El balonmano recaló en Hondarríbia de la mano del popular Jaime Lizaso hombre popular allá donde los hubiera y bien conocido entre la población hondarríbitarra, ya que regentaba el Bar Alameda. El fue quien rodeado de los incondicionales amigos con ganas de trabajar para el deporte, inscribió al Club en la categoría de 3.a Provincial, teniendo como primer entrenador a Antxón Goíkoetxea, guíen contaba con una sólida plantilla entre los que se encontraban: José Angel Sodupe, actual Presidente del Club Deportivo Bidasoa, Ignacio Elzo, lmanol Garmendia, José Luis Barandiarán, Eugenio Arretxe, José Antonio Gaztelumendi, Carlos Amezqueta, José Antonio Pérez y un largo etc., que hicieron posible el ascenso a la 2.a División Nacional en el transcurso de la temporada 1980/81, permaneciendo en ésta hasta la campaña 1985/86, en que teniendo de presidente a Marcelino Morán y como entrenador a un exjugador Eugenio Arretxe, se consiguió el ansiado ascenso a la 1ª División Nacional.</p>\r\n<p>Como mandatarios en el Club, han prestado sus servicios además de los ya citados, Atanasío Vídaurreta, Ignacio Elzo, Ricardo Fernández, firme pilar de la fusión durante cuatro años con el C. D. Bidasoa, figurando el conjunto hondarríbitarra como filial a todos los efectos del conjunto lrunés. Esta unión quedó rota en el año 2003, retomando la dirección del Club Francisco Martín asistido por personas involucradas en el deporte del balonmano con el fin de evitar la desaparición del Club ante la nueva situación creada.</p>\r\n<p>En el transcurso de sus 28 años de existencia el Club ha tenido que bregar y luchar contra todo tipo de situaciones, en ocasiones muy amargas, sobre todo ante la carencia de medíos económicos, pero que con el apoyo incondicional de sus casas comerciales como Palmera, Yarza-Tajbot, Norica, ITE y La Bacaladera,  sin olvidarnos del Excmo, Ayuntamiento de Hondarribia.</p>\r\n<p>Entre los muchas anécdotas que le ocurrían al Club, fue el año en que por designación oficial y dentro de la misma temporada tuvimos que desplazarnos en cinco ocasiones a la región Gallega, Lalín, Cangos de Morrazo, Vigo, Pontevedra, Redondela, para lo cual contábamos con Autocares Ceberio, cuyo propietario el Sr. José, desmontaba prácticamente el autobús para darnos el mayor confort posible instalándonos en \"cómodas colchonetas\".</p>\r\n<p>Volviendo al terreno deportivo el Club ha contado además de con el equipo en categoría Nacional, con conjuntos en categorías Territorial, Juvenil y cadete, además de femenino, apuesta por la que el Club pujó con fuerza en la campaña 2005/06 pero que por motivos ajenos a su voluntad ha tenido de renunciar.</p>\r\n<p>Independientemente de la alegría vivida en el Club por el ascenso de categoría, uno de los momentos que no olvidará el Club será en el instante que éste recibió de manos del Presidente de la Federación Española el Trofeo Nacional a la Deportividad en el año 1989, en el Hotel \"Toro\" de Pamplona.</p>\r\n<p> </p>','',1,0,0,0,'2010-08-25 22:25:56',62,'','2010-11-01 23:12:08',62,62,'2010-11-04 00:06:43','2010-08-25 22:25:56','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',8,0,1,'','',0,20,'robots=\nauthor='),(48,'Senior','senior','','<p>Equipo Senior de La Bacaladera Hondarribia</p>','',1,0,0,0,'2010-08-25 23:44:03',62,'','2010-08-25 23:54:51',62,0,'0000-00-00 00:00:00','2010-08-25 23:44:03','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',2,0,3,'','',0,20,'robots=\nauthor='),(49,'Juvenil','juvenil','','<p>Equipo Juvenil de La Bacaladera Hondarribia</p>','',1,0,0,0,'2010-08-25 23:45:16',62,'','2010-08-25 23:55:31',62,0,'0000-00-00 00:00:00','2010-08-25 23:45:16','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',3,0,2,'','',0,16,'robots=\nauthor='),(50,'Primer amistoso equipo senior Irungo Gaztiak La Bacaladera-HTG Express','primer-amistoso-equipo-senior-irungo-gaztiak-la-bacaladera-htg-express','','<p>Partido amistoso del Irungo Gaztiak el sábado dia 18 de Septiembre en el Polideportivo Municipal Aritzbatalde de Zarautz.</p>\r\n<p><em><strong><span style=\"text-decoration: underline;\">Resultado</span>:  26-27</strong></em><br /><br />Primer partido de pretemporada de los chavales dirigidos por Iñaki  Olalla, nuevo entrenador del equipo, el cual afronta este reto  con ilusion la temporada 2010/2011.<br />Un  encuentro   bastante disputado , en el cual el  Irungo fue dominando el marcador durante buena parte del mismo , con varios goles de renta , pero unas carencias y falta de ritmo, hicieron que se llegara al descanso un solo gol de diferencia.</p>\r\n<p><br />\r\n','\r\nYa en la segunda mitad, los chavales del Irungo volvieron a dar esa intensidad que pedia su entrenador y volvieron a distanciarse en el marcador, pero llegando al final del encuentro,  algun error producido por ellos mismos y alguna diferencia con el arbitro, hicieron que se llegara cion igualdad en el marcador a falta de un minuto. <br />Finalmente un gol a falta de pocos segundos para el termino del encuentro, hizo que el Irungo Gaztia La Bacaldera HTG Express se llevara su primera victoria en esta temporada.</p>',1,1,0,1,'2010-09-19 23:25:02',62,'','2010-10-08 22:01:14',62,0,'0000-00-00 00:00:00','2010-09-19 23:25:02','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',2,0,15,'','',0,19,'robots=\nauthor='),(51,'Útimo fin de semana de amistosos de los equipos de Balonmano de La Bacaladera HTG Express','utimo-fin-de-semana-de-amistosos-de-los-equipos-de-balonmano-de-la-bacaladera-htg-express','','<div>Ültimo fin de semana de amistosos previo al inicio los dias 02/03 de Octubre de los diversos campeonatos en la Liga Nacional o territoriales de los equipos que componen los Clubs filiales del Bm Hondarribia e Irungo Gaztiak.</div>\r\n<div>Los 2 seniors de La Bacaladera Hondarribia e Irungo Gaztiak La Bacaladera HTG Express se desplazarán el sábado 25.09 a Doneztebe/Santesteban (Nafarroa) para disputar 2 encuentros a partir de las 16.30 h en el Polideportivo de la localidad Navarra en el valle de Malderreka contra dos equipos locales de la misma categoria.</div>\r\n<div>\r\n','\r\n</div>\r\n<div>Por otro lado los equipos cadete y juvenil de La Bacaladera Hondarribia jugarán este sábado sendos partidos amistosos en Errenteria, frente al equipo local Ereintza de Liga Vasca en horario de 10:30 cadetes, y 12:00 juveniles.</div>\r\n<div>Destacar la intensidad como van desarrollándose los entrenamientos de los pupilos de Viki de la Haza, Iñaki Olalla, Luis Montoya, Miguel Angel Izquierdo, Unai Salvador, Odei Rodriguez y Eneko Cuesta apurando al máximo la puesta a punto de cada uno de los equipos.</div>\r\n<div>Ramón Aranburu</div>\r\n<p>Bm Hondarribia e Irungo Gaztiak E.K.E</p>',1,1,0,1,'2010-09-22 23:01:27',62,'','2010-10-08 22:01:05',62,0,'0000-00-00 00:00:00','2010-09-22 23:01:27','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',2,0,13,'','',0,7,'robots=\nauthor='),(52,'ERREKA B  22-  22  IRUNGO GAZTIAK La Bacaladera-HTG Express','erreka-b-22-22-irungo-gaztiak-la-bacaladera-htg-express','','<p>Último partido amistoso para Irungo Gaztiak-La Bacaladera-HTG Express  ante el Erreka (Doneztebe) , un rival duro y correoso, para los chavales del Irungo, el cual han dominado la primera parte con bastante intensidad pero no se ha visto del todo reflejado en el marcador ganando al descanso 10-12 el equipo Irundarra.<br />\r\n','\r\n<br />Ya en la segunda mitad, nuevamente la falta de intensidad, y la agresividad defensiva del equipo contrario, hicieron que diese un vuelco el resultado de 2 y hasta de 3 goles en contra.Pero ya en la recta final del encuentro el Irungo supo aprovechar sus oportunidades y conseguir el empate a pocos segundos  del final.<br /> <br />En resumen la semana proxima , ya en serio comenzará la temporada y el equipo tendra que ir acoplándose para preparar el primera partido fuera de Irun contra Elgoibar equipo gallito y serio aspirante al ascenso de categoria. Si bien en todas las quinielas aparece Irungo Gaztiak como perdedor en la contienda, los chavales de Iñaki Olalla haran lo imposible para romper todos los pronósticos.</p>',1,1,0,1,'2010-09-27 22:39:08',62,'','2010-10-08 22:00:58',62,0,'0000-00-00 00:00:00','2010-09-27 22:39:08','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',4,0,14,'Irungo Gatiak, La Bacaladera, HTG Express, balonmano','',0,10,'robots=\nauthor='),(53,'PROGRESIONES SUCESIVAS:Concepto y objetivo.','progresiones-sucesivasconcepto-y-objetivo','','<p>La progresión sucesiva es uno de los medios básicos tácticos colectivos más<br />característicos y utilizados del ataque en posición contra cualquier disposición en<br />zona defensiva y nace como consecuencia del cumplimiento en ataque de los<br />principios tácticos individuales de base:<br />·  Movilizar en anchura o profundidad a nuestro oponente defensivo directo.<br />·  Llamar la atención del defensor impar (1x2).<br />·  Atacar al intervalo defensivo entre ambos.<br />Además de ser aplicado como un medio instrumental del juego de ataque colectivo,<br />puede en el transcurso del juego constituirse el punto de partida para enlazar el<br />juego de procedimientos tácticos del equipo encadenando con otros medios tácticos<br />colectivos básicos.</p>\r\n<p><img src=\"images/stories/progresiones1.png\" border=\"0\" width=\"437\" height=\"286\" /></p>\r\n<p>Por lo tanto, el jugador con balón trata de movilizar a su defensor o penetrar por los<br />intervalos defensivos con el objetivo de conseguir éxito ( gol ), esta intención de<br />eludir el marcaje de su oponente o de fijarlo y a ser posible llamar la atención a otro<br />oponente no directo, permite responder escalonadamente a su compañero<br />colindante hacia el espacio libre para recibir el balón en mejores condiciones de<br />progresar-penetrar, lanzar, pasar,... se incrementan en la medida en que otros<br />atacantes sin balón a partir de dicha acción, empiezan a atacar y a amenazar<br />sucesivamente a la portería, la respuesta de los compañeros será aprovechar en el</p>\r\n<p>tiempo y en el espacio adecuado su actuación a través, de una trayectoria de<br />ocupación del pasillo de penetración creado.</p>','',1,9,0,40,'2010-09-27 23:05:37',62,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2010-09-27 23:05:37','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',1,0,2,'','',0,18,'robots=\nauthor='),(54,'PROGRESIONES SUCESIVAS:Fundamentos','progresiones-sucesivasfundamentos','','<p>Los rasgos mas característicos de la progresión sucesiva son: jugador con balón y otro sin balón atacan sucesiva y escalonadamente hacia la portería buscando el<br />espacio libre entre los defensas con trayectorias que tienen cierta similitud y paralelismo (2x2).<br />Como conclusión practica, la progresión sucesiva, es un instrumento de táctica colectiva que se asienta en la realización de dos o más trayectorias por parte de los<br />atacantes dirigidas a los intervalos de los defensores, llevando el primero de ellos la posesión del balón, con la intención de penetrar y encontrar espacio de lanzamiento<br />optimo, el segundo jugador sin balón ocupa el espacio libre adecuado, garantizando la continuidad del juego, el resultado es que cualquiera de los dos jugadores que<br />intervienen en el medio táctico, pueden encontrar penetración o espacio de lanzamiento adecuado.<br />Por lo tanto, en nuestro análisis, para ser considerada una acción de colaboración táctica colectiva entre dos ( 2x2) o más jugadores (3x3, 4x4..) como progresión<br />sucesiva, exigimos que se cumpla la intención del jugador iniciador con balón de penetrar entre los defensores ( defensor par y su colindante), y la<br />intervención sucesiva de su compañero próximo que recibe el pase y finaliza en lanzamiento, o en penetración.</p>\r\n<p><br /><img src=\"images/stories/progresiones2.png\" border=\"0\" /></p>\r\n<p>Aunque la unidad básica 2de trabajo como medio táctico es el juego del dos contra dos, y el éxito en forma de penetración o lanzamiento en condiciones de ventaja<br />puede obtenerse de forma inmediata, en la práctica, dentro del juego global seis contra seis, siendo frecuente que intervengan más jugadores, puesto que la fijación<br />absoluta del defensor no directo del iniciador es difícil conseguirla en una sola acción y, aunque esta fijación se produjera, una defensa que actúe en bloque defensivo<br />compacto reaccionará basculando inmediatamente y cerrando los sucesivos espacios creados. La continuidad en la actividad del juego, puede llevarse con<br />frecuencia desde un extremo a otro, con lo que las ventajas parciales adquiridas en cada intervención sucesiva durante el proceso pueden crear al final un beneficio<br />espacial auténticamente significativo y claramente rentable, e incluso se puede llegar a acabar en la zona donde se inició el medio táctico, a través de un cambio de<br />dirección de un jugador que rompe de nuevo esa basculación defensiva, y cambia el sentido de la circulación de balón.</p>\r\n<p>No debemos confundir la acción táctica básica colectiva de progresión sucesiva con la acción individual de desmarque de un jugador que, utilizando un desplazamiento<br />sin balón supera a su adversario directo adquiriendo por ello una situación de ventaja, pudiendo recibir el balón del compañero en ése momento y crear una<br />situación con cierta ventaja para la finalización de la construcción del ataque mediante un lanzamiento o penetración a portería.</p>','',1,9,0,40,'2010-09-27 23:15:38',62,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2010-09-27 23:15:38','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',1,0,1,'','',0,29,'robots=\nauthor='),(55,'Empieza la liga','empieza-la-liga','','<p>Comienza la liga. Primera jornada para los diferentes equipos de La Bacaladera Hondarribia y Irungo Gaztiak La Bacaladera-HTG Express.</p>\r\n<p>El sábado, a las cuatro y media de la tarde, el equipo de La Bacaladera Hondarribia de Segunda Nacional se enfrenta en el Polideportivo Jesuitas de Bilbao al recién ascendido Universidad Deusto-Loiola. El equipo llega cargado de moral tras la victorias de la pretemporada, la ultima el sábado pasado ante el Erreka en Doneztebe.</p>\r\n<p>\r\n','\r\n</p>\r\n<p>Un poco mas tarde, a las siete, el Irungo Gaztiak La Bacaladera-HTG Express rinde visita en Olaizaga Kiroldegia al Alcorta Forging Group Elgoibar en el primer partido de Primera Territorial. Los de Iñaki Olalla, el nuevo entrenador del equipo y que afronta este reto para la temporada 2010/2011, tras una victoria y un empate en pretemporada, visitan Elgoibar querrán llevarse el gato al agua y sumar los primeros puntos en su casillero.</p>\r\n<p>Los cadetes también debutan este sábado, al mediodía, La Bacaladera Hondarribia visita Zarautzko Udal Kiroldegian para enfrentarse al Amenabar B ZKE; por su parte, los chavales del Irungo Gaztiak La Bacaladera-HTG Express B reciben en el Uranzu a las cuatro de la tarde Urola A. Aranzadi SL; mientras que, el otro equipo Cadete, Irungo Gaztiak La Bacaladera-HTG Express A visita Ispilla Kiroldegia, a las cuatro y cuarto de la tarde, para intentar sumar ante el Urola Premank.</p>\r\n<p>El fin de semana se cierra el domingo con el partido del Juvenil de La Bacaladera Hondarribia que, a las diez de la mañana, visita en Majori Kiroldegia, al Ordizia Rotula Estudio.</p>\r\n<p> </p>',1,1,0,1,'2010-10-04 07:04:51',62,'','2010-10-08 22:00:47',62,0,'0000-00-00 00:00:00','2010-10-04 07:04:51','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',2,0,12,'','',0,6,'robots=\nauthor='),(56,'La Bacaladera Hondarribia no pudo con el Universidad de Deusto (26-25)','la-bacaladera-hondarribia-no-pudo-con-el-universidad-de-deusto-26-25','','<div id=\"story-texto\" class=\"p\">\r\n<div class=\"p\">La Bacaladera Hondarribia comenzó el fin de semana una nueva andadura en Segunda Nacional. Los hondarribitarras, después de la complicada temporada que vivieron el curso pasado, lucharán por conseguir la permanencia de una manera más aseada. El primer paso para alcanzar la meta fue en falso, ya que el equipo entrenado por \'Viky\' de la Haza salió derrotada en su visita al Universidad de Deusto-Loyola.</div>\r\n<div class=\"p\">\r\n','\r\n</div>\r\n<div class=\"p\">No empezaron bien las cosas para el joven equipo hondarribiarra, en el que la media de edad de sus jugadores no llega a los veintiún años. Las imprecisiones en ataque y la endeblez defensiva hizo que los de verde fueran siempre por detrás, aunque al descanso se llegó con el empate a trece en el marcador.</div>\r\n<div class=\"p\">La segunda mitad fue algo mejor y La Bacaladera llegó a tener hasta dos goles de renta, pero varios fallos desde los seis metros permitieron al equipo local darle la vuelta al resultado. Los de Hondarribia tuvieron una última posesión para empatar el partido, pero no pudieron marcar y el resultado final fue 26-25.</div>\r\n<div class=\"p\">Alineación: Valentín León y Ion Calvo; Ion Bergés (2 goles), Iñigo Gómez (2), Oihan Aldanondo (3), Iker Mateos (5), Unai Tello (2), Ander Lozano, Iñaki Martínez (1), Jon Olazabal (1), Xabi Velasco (1), Ion Vázquez (3), Eneko Sagarzazu y Antton Etxebarria (5).</div>\r\n<div class=\"p\">El próximo partido para La Bacaladera Hondarribia se disputará este domingo a las doce del mediodía en Hondartza. El rival será el Basauri, que en la primera jornada perdió en casa contra el Estudios GIS El Pilar.</div>\r\n<div class=\"p\"><a href=\"http://www.diariovasco.com/v/20101006/bidasoa/bacaladera-hondarribia-pudo-universidad-20101006.html\">Fuente: Diario Vasco</a></div>\r\n</div>',1,1,0,1,'2010-10-06 09:39:16',62,'','2010-10-08 22:00:00',62,0,'0000-00-00 00:00:00','2010-10-06 09:39:16','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',5,0,11,'La Bacaladera, Hondarribia, La Bacaladera Hondarribia, balonmano','',0,10,'robots=\nauthor='),(57,'Empezar a sumar','empezar-a-sumar','','<p>Segunda jornada liguera para los diferentes equipos de La Bacaladera Hondarribia y Irungo Gaztiak La Bacaladera-HTG Express.</p>\r\n<p>Los primeros en entrar en liza esete fin de semana son los Cadetes. Así, a las diez de la mañana el Irungo Gaztiak La Bacaladera HTG Express recibe en Artaleku al Amenabar B ZKE Zarautz. Dos horas después, visita a Majori (Ordizia) del Irungo Gaztiak La Bacaladera-HTG Express donde se medirá al Ordizia Hirurena. El tercer equipo cadete, La Bacaladera Hondarribia, al igual que el equipo juvenil, descansa este fin de semana.</p>\r\n<p>\r\n','\r\n</p>\r\n<p>A las cinco de la tarde, será el equipo senior de I Territorial, el Irungo Gaztiak La Bacaladera-HTG Express el que visitara el campo de la Universidad Laboral Eibar para medirse al Gorosabel Group Eibarko Haritza. Los de Iñaki Olalla trataran de quitarse el mal sabor de boca de la derrota del sábado pasado en Elgoibar y empezar a sumar.</p>\r\n<p>El domingo, la cita es al mediodía en Hondartza. El equipo sénior de La Bacaladera Hondarribia recibe al Inupime Basauri. Los de Javi de la Haza quieren agradar en el debut ante su publico y que mejor que empezar ganando, tras la derrota por la mínima del fin de semana en el Polideportivo Jesuitas, ante el Polideportivo Jesuitas.</p>\r\n<p>Fuente: <a href=\"http://www.bidasoaldia.com/2010/10/07/empezar-a-sumar/\">Bidasoaldia.com</a></p>',1,1,0,1,'2010-10-07 21:31:40',62,'','2010-10-08 21:59:08',62,0,'0000-00-00 00:00:00','2010-10-07 21:31:40','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',4,0,10,'La Bacaladera Hondarribia, la bacaladera, bacaladera, Hondarribia','',0,15,'robots=\nauthor='),(58,'Enfrentamientos de Balonmano (La Bacaladera - HTG Express)','enfrentamientos-de-balonmano-la-bacaladera-htg-express','','<div><span style=\"text-decoration: underline;\">Euskadiko Txapelketa Gizonak / Campeonato de Euskadi Senior Masculino <strong>2 Nazionala</strong></span></div>\r\n<div>16.10 18.00 Bergara Labegarietako Polikiroldegia<br />Soraluce BKE Bergara - La Bacaladera Hondarribia</div>\r\n<div><span style=\"text-decoration: underline;\">Gipuzkoako Txapelketa Gizonak / Campeonato de Gipuzkoa Senior Masculino <strong>Lurraldeko 1go/1 Territorial</strong></span></div>\r\n<div>16.10 17.45 Artaleku Kiroldegia</div>\r\n<div>Irungo Gaztiak La Bacaladera-HTG Express - Amenabar ZKE Zarautz</div>\r\n<div>\r\n','\r\n</div>\r\n<div><span style=\"text-decoration: underline;\">Gipuzkoako Txapelketa jubenil mailan / Campeonato Gipuzkoa juvenil </span></div>\r\n<div>17.10 12.00 Hondartza Kiroldegia</div>\r\n<div>La Bacaladera Hondarribia- Beristain Banaketa Elgoibar</div>\r\n<div><span style=\"text-decoration: underline;\">Gipuzkoako Txapelketa kadete mailan / Campeonato Gipuzkoa cadete</span></div>\r\n<div>17.10 10.00 Hondartza Kiroldegia</div>\r\n<div>La Bacaladera Hondarribia - Irungo Gaztiak La Bacaladera HTG Express A</div>\r\n<div>16.10 16.00 Artaleku Kiroldegia</div>\r\n<div>Irungo Gaztiak La Bacaladera-HTG Express B - Berezao Aloña Mendi</div>\r\n<div>\r\n<hr />\r\n</div>\r\n<div><img src=\"images/stories/equipo_15.jpg\" border=\"0\" alt=\"C.B. Hondarribia - Equipo de La Bacaladera Hondarribia\" width=\"600\" height=\"423\" style=\"border: 0; margin-top: 10px; margin-bottom: 10px;\" /></div>',1,1,0,1,'2010-10-12 09:03:05',62,'','2010-10-12 09:15:21',62,0,'0000-00-00 00:00:00','2010-10-12 09:03:05','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',8,0,9,'La Bacaladera Hondarribia, La Bacaladera, Hondarribia, cbhondarribia, HTG Express, HTG, Irungo Gaztiak','',0,18,'robots=\nauthor='),(59,'Los tópicos se quedan cortos','los-topicos-se-quedan-cortos','','<p><img src=\"images/stories/imgp1172_267w.jpg\" border=\"0\" alt=\"C.B. Hondarribia - Equipo de La Bacaladera Hondarribia\" title=\"C.B. Hondarribia - Equipo de La Bacaladera Hondarribia\" style=\"border: 1px solid black; float: right; margin: 5px;\" /></p>\r\n<p>Llegaba La Bacaladera Hondarribia a Hondartza con ganas de agradar en el debut ante su publico, maxime tras la derrota por la mínima del fin de semana anterior en el Polideportivo Jesuitas, ante el recién ascendido Universidad Deusto-Loiola, y el Inupime Basauri pago los platos rotos.</p>\r\n','\r\n<p> Podriamos caer en los tópicos de que el resultado es corto para lo que se vio en Hondarribia o que solo hubo un equipo o incluso que los de Javi de la Haza pasaron como una apisonadora por encima de los vizcaínos. Nos quedaríamos cortos. Seis goles de diferencia al descanso y una renta que llego a ser de doce goles a pocos minutos del final, dan buena cuenta de ello. El 29-25 final solo es fruto de la relajación de un equipo muy superior.</p>\r\n<p>Si se lo creen, si juegan como el domingo, La Bacaladera Hondarribia nos va a dar grandes alegrías esta temporada.</p>\r\n<p> <img src=\"images/stories/imgp1181_.jpg\" border=\"0\" alt=\"C.B. Hondarribia - Equipo de La Bacaladera Hondarribia\" title=\"C.B. Hondarribia - Equipo de La Bacaladera Hondarribia\" /></p>',1,1,0,1,'2010-10-13 09:56:20',62,'','2010-10-13 10:20:04',62,0,'0000-00-00 00:00:00','2010-10-13 09:56:20','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',10,0,8,'','',0,10,'robots=\nauthor='),(60,'Clara victoria de La bacaladera-Hondarribia','clara-victoria-de-la-bacaladera-hondarribia','','<div class=\"p\" id=\"story-texto\">\r\n<div class=\"p\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">Tras arrancar la liga con derrota por la mínima, en la  segunda jornada llegó el primer triunfo para La Bacaladera-Hondarribia, y  de manera rotunda, además.</span></div>\r\n<div class=\"p\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">Los hondarribitarras recibieron en Hondartza al Indupime  Basauri, logrando la victoria por 29-20. El resultado no deja lugar a  dudas y no sólo los de \'Viki\' De la Haza ganaron el partido, sino que  además conocieron sensaciones mucho más positivas que las vividas en el  debut.          \r\n','\r\n</span></div>\r\n<div class=\"p\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">La Bacaladera-Hondarribia cobró pronto sus primeras  ventajas y ya para el descanso ganaba por seis goles. Esa renta fue  creciendo en la reanudación hasta llegar a una cota máxima de doce goles  a falta de un cuarto de hora (27 - 15).</span></div>\r\n<div class=\"p\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">Alineación: Valentín León, Ion Bergés (2 goles), Iñigo  Gómez (1), Oihan Aldanondo (3), Unai Tello (1), Ander Lozano (2), Iñaki  Martínez (2), Jon Olazabal (1), Xabi Velasco (2), Ion Vázquez (8), Mikel  Vázquez (4), Antton Etxebarria (3) e Iñigo Guevara.</span></div>\r\n<div class=\"p\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">Parciales: 3-1, 5-3, 8-5, 10-6, 11-9, 16-10 (descanso); 20-12, 22-13, 26-15, 27-15, 28-18 y 29-20.</span></div>\r\n<div class=\"p\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">Los hondarribitarras visitarán el sábado al Soraluze, que ha perdido sus dos primeros partidos.</span></div>\r\n<br />\r\n<div class=\"p\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\"><img border=\"0\" src=\"images/stories/imgp1172_267w.jpg\" /></span></div>\r\n<br />\r\n<div class=\"p\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\"><span style=\"text-decoration: underline;\"> <em><strong>Fuente:</strong></em></span> <a target=\"_blank\" href=\"http://www.diariovasco.com/v/20101014/bidasoa/clara-victoria-bacaladera-hondarribia-20101014.html\">Diario Vasco</a></span></div>\r\n</div>',1,1,0,1,'2010-10-14 09:49:36',62,'','2010-11-04 00:13:50',62,0,'0000-00-00 00:00:00','2010-10-14 09:49:36','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',7,0,7,'La bacaladera-Hondarribia, La bacaladera, Hondarribia, balonmano, cbhondarribia, bmhondarribia','',0,32,'robots=\nauthor='),(61,'La Bacaladera Hondarribia venció cómodamente al Soraluce BKE Bergara','la-bacaladera-hondarribia-vencio-comodamente-al-soraluce-bke-bergara','','<p><span style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; line-height: 18px; font-size: 14px;\">\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\">Terminábamos la crónica hace una semana diciendo si se lo creen, si juegan así, La Bacaladera Hondarribia nos va a dar grandes alegrías esta temporada. Dicho y hecho. Tercera jornada, segunda victoria consecutiva, con merito añadido por producirse esta nueva victoria fuera de casa.\r\n','\r\n</p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\">Era el segundo desplazamiento de la temporada, tras el partido de infausto recuerdo del inicio liguero contra el Universidad Deusto-Loiola, que se perdió por la mínima. Esta vez se jugaba contra otro recién ascendido, el Soraluce BKE Bergara y, desde el principio, quedo claro que los de Javi de la Haza son un rival temible. Un ataque fluido suponía una facilidad pasmosa a la hora de hacer goles. Fiel reflejo de ello es el 15-21, seis goles de ventaja, al descanso.</p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\">A la vuelta de vestuarios, en el Polideportivo de Bergara, el partido siguió con la misma tónica, después de corregir algunos errores en defensa, los hondarribitarras llegaron a ponernos nueve goles arriba. Todo parecía visto para sentencia, cuando la falta de concentración, traducida en unos minutos de precipitaciones y malos lanzamientos en ataque, hizo que el Soraluce BKE Bergara creyera en la remontada, aunque La Bacaladera Hondarribia es mucho equipo y los de Bergara, aun con el viento a favor, solo consiguieron acercarse a tres tantos.</p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\">Carácter. Concentración al máximo y cinco goles de diferencia finales, 27-32. Resultado corto para lo visto en Bergara. El siguiente rival será el Atez ate Usurbil que visitara el fin de semana próximo Hondartza.</p>\r\n</span></p>',1,1,0,1,'2010-10-22 20:44:14',62,'','0000-00-00 00:00:00',0,62,'2010-10-22 21:08:30','2010-10-22 20:44:14','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',1,0,6,'La Bacaladera Hondarribia, La Bacaladera, Hondarribia, cbhondarribia, balonmano','',0,8,'robots=\nauthor='),(62,'Tres días de balonmano','tres-dias-de-balonmano','','<p><span style=\"color: #000000; line-height: 18px; font-family: verdana, geneva; font-size: 10pt;\"> </span></p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">Se presenta intenso el fin de semana para los equipos de La Bacaladera Hondarribia y Irungo Gaztiak La Bacaladera-HTG Express.</span></p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">Los primeros y los últimos en entrar en juego es el equipo de Irungo Gaztiak La Bacaladera-HTG Express hoy viernes a las ocho y cuarto de la tarde en el Polideportivo Usabal para enfrentarse al Tolosa C.F. Un partido en el que los de Iñaki Olalla van a querer quitarse la espina de la derrota en casa del fin de semana pasado por ocho goles de diferencia, un muy mal partido de los irundarras que no demostraron en ningún momento su nivel, ante el Amenabar ZKE Zarautz (18-26). Y no va a ser el único partido que disputen ya que el domingo al mediodía jugaran en Artaleku el partido del Campeonato de Gipuzkoa Senior Masculino de Primera Territorial, ante el Eibarko Haritza que hubo de suspenderse hace dos semanas por falta de designación arbitral.</span></p>\r\n<span style=\"font-family: verdana, geneva; font-size: 10pt;\"> \r\n','\r\n</span>\r\n<p><span style=\"font-family: verdana, geneva; font-size: 10pt;\">El sábado, el equipo Juvenil viaja a Zumaia para enfrentarse al Pulpo, tras la fácil victoria por ocho tantos de diferencia del fin de semana ante el Beristain Banaketa Elgoibar (24-16). No son los únicos en jugar el sábado, ya que los cadetes del Irungo Gaztiak La Bacaladera HTG Express B juegan a las seis y cuarto de la tarde en Usurbil, tras la notable mejoría, pese a la derrota del fin de semana ante el Berezao Aloña Mendi (19-21) y en el que los entrenados por Odei Rodriguez y Eneko Cuesta estuvieron a punto de dar la sorpresa.</span></p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\"><img border=\"0\" src=\"images/stories/imgp1169_10p.jpg\" /></span></p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">El domingo el equipo cadete de La Bacaladera Hondarribia se enfrenta en el Polideportivo Usabal al Tolosa C.F. Todo esto tras la abultada victoria en el derby casero del fin de semana pasado ante el Irungo Gaztiak La Bacaladera HTG Express A, que descansa este fin de semana. Un resultado engañoso el del fin de semana pasado ya que resulto un partido mas disputado de lo que refleja el marcador por los jugadores entrenados por Miguel Angel Izquierdo y Unai Salvador respectivamente, en el que, sin embargo, los rápidos contraataques del equipo hondarribitarra en el segundo periodo sentenciaron el partido.</span></p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">El domingo también juega La Bacaladera Hondarribia, que recibe en Hondartza a partir del mediodía, al Atez Ate Usurbil tras su comoda victoria del pasado fin de semana ante el Soraluce BKE Bergara que les ha situado en tercera posición de Segunda Nacional, demostrando que este equipo va a dar mucha guerra.</span></p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\"><br /><span style=\"font-family: verdana, geneva; font-size: 10pt;\"><strong><em><span style=\"text-decoration: underline;\">Fuente: </span></em></strong><a href=\"http://www.bidasoaldia.com/2010/10/22/tres-dias-de-balonmano/\">bidasoaldia.com</a></span></p>\r\n<p> </p>',1,1,0,1,'2010-10-22 20:47:45',62,'','2010-11-04 00:12:46',62,0,'0000-00-00 00:00:00','2010-10-22 20:47:45','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',6,0,4,'La Bacaladera Hondarribia, La Bacaladera, Hondarribia, balonmano, cbhondarribia, Irungo Gaztiak, HTG Express, HTG','',0,23,'robots=\nauthor='),(63,'La Bacaladera Hondarribia está en la buena senda','la-bacaladera-hondarribia-esta-en-la-buena-senda','','<p><span style=\"color: #666666; line-height: 18px; font-family: verdana, geneva; font-size: 10pt;\"> </span></p>\r\n<div style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; line-height: 18px; margin: 0px;\" class=\"p\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">Buen arranque de temporada de La Bacaladera-Hondarribia, que suma cuatro puntos de seis posibles. En la tercera jornada, los de \'Viki\' De la Haza se impusieron por 27-32 en la cancha del Soraluce, completando un buen partido. Un ataque fluido y conseguir goles con facilidad llevaron a los hondarribitarras a un 15-21 en el descanso. Corrigiendo la defensa, en la reanudación la renta llegó a ser de nueve goles, pero los locales reaccionaron y se colocaron a tres, pero no peligró la victoria.    \r\n','\r\n</span></div>\r\n<div style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; line-height: 18px; margin: 0px;\" class=\"p\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">Alineación: León y Calvo; Gómez, Aldanondo (2), Mateos, Tello, Lozano (5), Martínez (2), Olazabal, Velasco (4), Ion Vázquez (10), Sagarzazu (1), Etxebarria (8) y Guevara.</span></div>\r\n<div style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; line-height: 18px; margin: 0px;\" class=\"p\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">El domingo, a las doce, La Bacaladera-Hondarribia recibirá al Usurbil, que tiene cero puntos.</span></div>\r\n<p><span style=\"font-family: verdana, geneva; font-size: 10pt;\"><span style=\"text-decoration: underline;\"><em><strong>Fuente:</strong></em></span> <a style=\"color: #0000cc; text-decoration: underline; font-weight: normal;\" target=\"_blank\" href=\"http://www.diariovasco.com/v/20101021/bidasoa/bacaladera-hondarribia-esta-buena-20101021.html\">Diario Vasco</a></span></p>',1,1,0,1,'2010-10-22 21:05:17',62,'','2010-11-04 00:13:23',62,0,'0000-00-00 00:00:00','2010-10-22 21:05:17','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',4,0,5,'La Bacaladera-Hondarribia, La Bacaladera, Hondarribia, cbhondarribia, balonmano','',0,5,'robots=\nauthor='),(64,'La Bacaladera Hondarribia busca en Gasteiz su tercera victoria consecutiva','la-bacaladera-hondarribia-busca-en-gasteiz-su-tercera-victoria-consecutiva','','<p><span style=\"color: #666666; line-height: 18px; font-family: verdana, geneva; font-size: 10pt;\"> </span></p>\r\n<div style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; line-height: 18px; margin: 0px;\" class=\"p\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">La Bacaladera-Hondarribia buscará hoy en Gasteiz (17.00) una tercera victoria consecutiva para seguir asentándose en la zona noble de la clasificación. No será fácil, pues los de Viki De la Haza visitan al Sucesores de Aguirre, equipo que tienen dos puntos por detrás.</span></div>\r\n<div style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; line-height: 18px; margin: 0px;\" class=\"p\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">En la jornada anterior, los hondarribitarras ganaron 27-26 al Usurbil, remontando los seis goles de desventaja que llegaron a tener en el arranque del segundo tiempo.</span></div>\r\n<div style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; line-height: 18px; margin: 0px;\" class=\"p\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">Alineación: Valentín León, Ion Calvo, Ion Bergés (2), Iñigo Gómez (3), Unai Tello (2), Ander Lozano, Iñaki Martínez (2), Jon Olazabal (9), Xabi Velasco, Ion Vázquez (2), Mikel Vázquez (2), Eneko Sagarzazu, Antton Etxebarria (5) e Iñigo Guevara.</span></div>\r\n<p> </p>','',1,1,0,1,'2010-11-01 20:58:03',62,'','2010-11-04 00:12:29',62,0,'0000-00-00 00:00:00','2010-11-01 20:58:03','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',3,0,3,'La Bacaladera-Hondarribia, La Bacaladera, Hondarribia, cbhondarribia, bmhondarribia, cb Hondarribia, bm Hondarribia','',0,0,'robots=\nauthor='),(65,'Victoria clave y cuatro derrotas en un sábado para olvidar','victoria-clave-y-cuatro-derrotas-en-un-sabado-para-olvidar','','<p><span style=\"color: #000000; line-height: 18px; font-family: verdana, geneva; font-size: 10pt;\"> </span></p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">Hasta cinco partidos disputaban este sábado los equipos de La Bacaladera Hondarribia y Irungo Gaztiak La Bacaladera-HTG Express. Una victoria importantísima para el equipo de Segunda Nacional que se pone tercero en la clasificación y cuatro derrotas.</span></p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\"> </p>\r\n<span style=\"font-family: verdana, geneva; font-size: 10pt;\">\r\n','\r\n</span>\r\n<p> </p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\"><img border=\"0\" src=\"images/stories/imgp1181_.jpg\" /></span></p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">El primero en entrar en liza era el equipo Juvenil para recibir en Hondartza, al Tolosa CF Eskubaloia. Mal resultado para empezar la jornada, ya que después de dos victorias holgadas consecutivas, los chavales de La Bacaladera Hondarribia perdían su partido por seis goles frente a los tolosarras.</span></p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">Tambien en Hondartza, el equipo cadete de La Bacaladera Hondarribia recibía en la mañana del sábado al Egia IGOA Lehioak, sufriendo una dolorosa derrota por nada menos que diez goles, aunque la mejora de los cadetes es cada día mas evidente y hay que felicitar a Miguel Angel Izquierdo por el trabajo que esta realizando con los chavales.</span></p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">Por la tarde tres partidos más. El equipo de Segunda Nacional se desplaza a Vitoria para enfrentarse al Sucesores de Aguirre-Gure, donde se imponían por la mínima, 30-31. Dos puntos importantísimos para los de Javi de la Haza que colocan a La Bacaladera Hondarribia en tercera posición a tan solo un punto del segundo y a dos del líder. Ahora llega la hora de la verdad con los enfrentamientos con los gallitos de la categoría que va a calibrar las posibilidades reales del equipo. Desde aquí, vemos que tiene hechuras para lograr el ansiado ascenso.</span></p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">En un Uranzu que recordaba al de principios de los ochenta, con un lleno absoluto, el Irungo Gaztiak La Bacaladera-HTG Express de Primera Territorial recibía la visita del Egia Eskubaloia. No pudo ser. Al final derrota por tres goles, 27-30, aunque no podemos olvidar que los donostirarras son uno de los colíderes de la categoría. Partido muy cuesta arriba desde el principio, llegado la diferencia hasta las seis goles al descanso, 10-16, incluso aumentando a siete al comienzo de la reanudación. Un tiempo muerto puso las pilas a los de Iñaki Olalla que salieron a morir, reduciendo la diferencia a un solo gol a cinco minutos del final, pero las exclusiones locales en los minutos finales pesaron como una losa a un equipo, el mas joven en media de edad de la categoría, y los puntos volaron hacia Egia. Les falta serenidad y les falta un poco de suerte. Este equipo va a dar muchas tardes de gloria.</span></p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">El ultimo partido, ya que el equipo cadete, Irungo Gaztiak La Bacaladera-HTG Express B, lo jugaba el Irungo Gaztiak La Bacaladera-HTG Express A. Formidable ambiente, aunque con final aciago para los de Unai Salvador. Son chavales muy jóvenes, de primer año enfrentándose a jugadores de segundo año que son superiores en todo, juego, físico, velocidad… y se nota. En cualquier caso, a estas edades un resultado 16-37 es simplemente anecdótico. Lo importante es el trabajo de cantera que se esta realizando por los clubs. Los resultados ya llegaran.</span></p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\"><strong style=\"outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;\">Agradecimiento a Sponsors</strong></span></p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">Desde los Clubs Balonmano Hondarribia como Irungo Gaztiak Eskubaloi Kirol Elkartea quieren mostrar su mas sincero agradecimiento a los sponsor que posibilitan que ambos clubes sigan adelante. Citar en primer lugar a Hondarribiako Udaletxea, Hondartza Kiroldegia y a Irungo Kirol Udal Patronatoa, sin olvidarse de los patrocinadores comunes de ambos clubes: La Bacaladera, Centro Médico Bidasoa y Centro Sanitario Virgen del Pilar.</span></p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">Ademas de estos a los sponsors particulares de cada equipo: En el caso del Balonmano Hondarribia, Electrecidad Martiarena y GRS Coordinadora de Gremios, a los que se ha sumado esta temporada, Pasteleria Hawai; y en el caso de Irungo Gaztiak Eskubaloi Kirol Elkartea, HTG Express Hirutrans Garraioak al que se ha sumado esta temporada, Suministros Goser SL.</span></p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">Todos ellos permiten llevar el nombre de las dos ciudades, Hondarribia e Irun, con orgullo a todos los desplazamientos, manteniendo esta temporada seis equipos.</span></p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\"><strong style=\"outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; padding: 0px; margin: 0px; border: 0px initial initial;\">Lotería de navidad</strong></span></p>\r\n<p style=\"padding-top: 0px; padding-right: 0px; padding-bottom: 15px; padding-left: 0px; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 14px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; margin: 0px; border: 0px initial initial;\"><span style=\"font-family: verdana, geneva; font-size: 10pt;\">los Clubs Balonmano Hondarribia e Irungo Gaztiak EKE han puesto en venta mediante los jugadores o, como otros años, en los lugares habituales, la lotería de navidad. Este año los números jugados son 00281 y 82123. El precio es de cinco euros por participación, jugándose dos euros en cada numero y un euro para donativo a los clubes. Además, se sortea un lote de productos de La Bacaladera mas 300 euros en metálico en combinación con las cuatro últimas cifras del primer premio de la Lotería de Navidad.</span></p>\r\n<p> </p>',1,1,0,1,'2010-11-01 21:03:29',62,'','2010-11-04 00:10:23',62,0,'0000-00-00 00:00:00','2010-11-01 21:03:29','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',4,0,2,'La Bacaladera Hondarribia, La Bacaladera, Hondarribia, balonmano, cbbalonmano, bnbalonmano, cb balonmano, bm balonmano','',0,16,'robots=\nauthor='),(66,'Balonmano partidos fin de semana / Eskubaloia hurrengo astebukaerako norgehiagokak','balonmano-partidos-fin-de-semana-eskubaloia-hurrengo-astebukaerako-norgehiagokak','','<p><span style=\"color: #000000; line-height: normal; border-collapse: collapse; font-size: 10pt; font-family: verdana, geneva;\"> </span></p>\r\n<p><span style=\"color: #000000; line-height: normal; border-collapse: collapse; font-size: 10pt; font-family: verdana, geneva;\"> </span></p>\r\n<div><span style=\"font-size: 10pt; font-family: verdana, geneva;\">Hauexek dira hurrengo Azaroak 6/7 ean gure taldeak jokatuko duten norgehiagokak:</span></div>\r\n<div><span style=\"font-size: 10pt; font-family: verdana, geneva;\"><br /></span></div>\r\n<div><span style=\"font-size: 10pt; font-family: verdana, geneva;\"><strong><span style=\"text-decoration: underline;\">2 Nacional 2. Nazionala</span></strong></span></div>\r\n<div><span style=\"font-size: 10pt; font-family: verdana, geneva;\"><strong><span style=\"text-decoration: underline;\"><br /></span></strong></span></div>\r\n<div><span style=\"font-size: 10pt; font-family: verdana, geneva;\">07.11 Hondartza 12.00 La Bacaladera Hondarribia - Balonmano Romo Indupime</span></div>\r\n<div><span style=\"font-size: 10pt; font-family: verdana, geneva;\"><br /></span></div>\r\n<div><span style=\"font-size: 10pt; font-family: verdana, geneva;\"><strong><span style=\"text-decoration: underline;\">1 Territorial - Lurraldeko 1.</span></strong></span></div>\r\n<div><span style=\"font-size: 10pt; font-family: verdana, geneva;\"><strong><span style=\"text-decoration: underline;\"><br /></span></strong></span></div>\r\n<div><span style=\"font-size: 10pt; font-family: verdana, geneva;\">06.11 Lubaki 16.30&nbsp;Decotena Pulpo - Irungo Gaztiak La Bacaladera/HTG Express</span></div>\r\n<div><span style=\"font-size: 10pt; font-family: verdana, geneva;\"><br /></span></div>\r\n<div><span style=\"font-size: 10pt; font-family: verdana, geneva;\"><strong><span style=\"text-decoration: underline;\">Juvenil territorial - Lurraldeko jubenila</span></strong></span></div>\r\n<div><span style=\"font-size: 10pt; font-family: verdana, geneva;\"><strong><span style=\"text-decoration: underline;\"><br /></span></strong></span></div>\r\n<div><span style=\"font-size: 10pt; font-family: verdana, geneva;\">06.11 Ipurua 18.30 Jd Arrate - La Bacaladera Hondarribia</span></div>\r\n<div><span style=\"font-size: 10pt; font-family: verdana, geneva;\"><br /></span></div>\r\n<div><span style=\"font-size: 10pt; font-family: verdana, geneva;\"><strong><span style=\"text-decoration: underline;\">Cadetes territoriales - Lurraldeko Kadeteak</span></strong></span></div>\r\n<div><span style=\"font-size: 10pt; font-family: verdana, geneva;\"><strong><span style=\"text-decoration: underline;\"><br /></span></strong></span></div>\r\n<div><span style=\"font-size: 10pt; font-family: verdana, geneva;\">07.11 Labegaraietako&nbsp; 10.00 Soraluce&nbsp;Bergara - La Bacaladera Hondarribia</span></div>\r\n<div><span style=\"font-size: 10pt; font-family: verdana, geneva;\">06.11 Egia 17.00 Egia IGOA Lehioak - Irungo Gaztiak La Bacaladera/HTG Express A</span></div>\r\n<div><span style=\"font-size: 10pt; font-family: verdana, geneva;\">07.11 Uranzu 10.00 Irungo Gaztiak La Bacaladera/HTG Express B - Pulpo Ke Zumaia.Net</span></div>','',1,1,0,1,'2010-11-03 00:15:15',62,'','2010-11-04 00:11:16',62,0,'0000-00-00 00:00:00','2010-11-03 00:15:15','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',11,0,1,'La Bacaladera Hondarribia, La Bacaladera, Hondarribia, cbhondarribia, bmhondarribia, CB Hondarribia, BM Hondarribia','',0,0,'robots=\nauthor=');
/*!40000 ALTER TABLE `jos_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content_frontpage`
--

DROP TABLE IF EXISTS `jos_content_frontpage`;
CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_content_frontpage`
--

LOCK TABLES `jos_content_frontpage` WRITE;
/*!40000 ALTER TABLE `jos_content_frontpage` DISABLE KEYS */;
INSERT INTO `jos_content_frontpage` VALUES (51,12),(14,21),(52,11),(50,13),(16,22),(44,20),(35,19),(25,18),(15,17),(28,16),(33,15),(43,14),(56,9),(55,10),(57,8),(58,7),(59,6),(60,5),(61,4),(62,3),(65,2),(66,1);
/*!40000 ALTER TABLE `jos_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content_rating`
--

DROP TABLE IF EXISTS `jos_content_rating`;
CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(11) unsigned NOT NULL default '0',
  `rating_count` int(11) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_content_rating`
--

LOCK TABLES `jos_content_rating` WRITE;
/*!40000 ALTER TABLE `jos_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro`
--

DROP TABLE IF EXISTS `jos_core_acl_aro`;
CREATE TABLE `jos_core_acl_aro` (
  `id` int(11) NOT NULL auto_increment,
  `section_value` varchar(240) NOT NULL default '0',
  `value` varchar(240) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_aro`
--

LOCK TABLES `jos_core_acl_aro` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro` VALUES (10,'users','62',0,'Administrator',0),(11,'users','63',0,'Ramon Aranmburu',0),(12,'users','64',0,'Iker Mateos',0),(13,'users','65',0,'Aitor Mateos',0),(14,'users','66',0,'Blogs interesantes',0);
/*!40000 ALTER TABLE `jos_core_acl_aro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_groups`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_groups`;
CREATE TABLE `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_aro_groups`
--

LOCK TABLES `jos_core_acl_aro_groups` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_groups` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro_groups` VALUES (17,0,'ROOT',1,22,'ROOT'),(28,17,'USERS',2,21,'USERS'),(29,28,'Public Frontend',3,12,'Public Frontend'),(18,29,'Registered',4,11,'Registered'),(19,18,'Author',5,10,'Author'),(20,19,'Editor',6,9,'Editor'),(21,20,'Publisher',7,8,'Publisher'),(30,28,'Public Backend',13,20,'Public Backend'),(23,30,'Manager',14,19,'Manager'),(24,23,'Administrator',15,18,'Administrator'),(25,24,'Super Administrator',16,17,'Super Administrator');
/*!40000 ALTER TABLE `jos_core_acl_aro_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_map`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_map`;
CREATE TABLE `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL default '0',
  `section_value` varchar(230) NOT NULL default '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY  (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_aro_map`
--

LOCK TABLES `jos_core_acl_aro_map` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_acl_aro_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_sections`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_sections`;
CREATE TABLE `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL auto_increment,
  `value` varchar(230) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(230) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_aro_sections`
--

LOCK TABLES `jos_core_acl_aro_sections` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_sections` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro_sections` VALUES (10,'users',1,'Users',0);
/*!40000 ALTER TABLE `jos_core_acl_aro_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_groups_aro_map`
--

DROP TABLE IF EXISTS `jos_core_acl_groups_aro_map`;
CREATE TABLE `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL default '0',
  `section_value` varchar(240) NOT NULL default '',
  `aro_id` int(11) NOT NULL default '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_groups_aro_map`
--

LOCK TABLES `jos_core_acl_groups_aro_map` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_groups_aro_map` DISABLE KEYS */;
INSERT INTO `jos_core_acl_groups_aro_map` VALUES (18,'',12),(18,'',13),(18,'',14),(23,'',11),(25,'',10);
/*!40000 ALTER TABLE `jos_core_acl_groups_aro_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_log_items`
--

DROP TABLE IF EXISTS `jos_core_log_items`;
CREATE TABLE `jos_core_log_items` (
  `time_stamp` date NOT NULL default '0000-00-00',
  `item_table` varchar(50) NOT NULL default '',
  `item_id` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_log_items`
--

LOCK TABLES `jos_core_log_items` WRITE;
/*!40000 ALTER TABLE `jos_core_log_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_log_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_log_searches`
--

DROP TABLE IF EXISTS `jos_core_log_searches`;
CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_log_searches`
--

LOCK TABLES `jos_core_log_searches` WRITE;
/*!40000 ALTER TABLE `jos_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_groups`
--

DROP TABLE IF EXISTS `jos_groups`;
CREATE TABLE `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_groups`
--

LOCK TABLES `jos_groups` WRITE;
/*!40000 ALTER TABLE `jos_groups` DISABLE KEYS */;
INSERT INTO `jos_groups` VALUES (0,'Public'),(1,'Registered'),(2,'Special');
/*!40000 ALTER TABLE `jos_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_jce_groups`
--

DROP TABLE IF EXISTS `jos_jce_groups`;
CREATE TABLE `jos_jce_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `users` text NOT NULL,
  `types` varchar(255) NOT NULL,
  `components` text NOT NULL,
  `rows` text NOT NULL,
  `plugins` varchar(255) NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_jce_groups`
--

LOCK TABLES `jos_jce_groups` WRITE;
/*!40000 ALTER TABLE `jos_jce_groups` DISABLE KEYS */;
INSERT INTO `jos_jce_groups` VALUES (1,'Default','Default group for all users with edit access','','19,20,21,23,24,25','','6,7,8,9,10,11,12,13,14,15,16,17,18,19;20,21,22,23,24,25,26,27,28,30,31,32,35,47;36,37,38,39,40,41,42,43,44,45,46;48,49,50,51,52,53,54,56,57','1,2,3,4,5,6,20,21,36,37,38,39,40,41,48,49,50,51,52,53,54,56,57',1,1,0,'0000-00-00 00:00:00',''),(2,'Front End','Sample Group for Authors, Editors, Publishers','','19,20,21','','6,7,8,9,10,13,14,15,16,17,18,19,27,28;20,21,25,26,30,31,35,42,43,44,46,47,49,50;24,32,38,39,41,45,48,51,52,53,54,56,57','6,20,21,49,50,1,3,5,38,39,41,48,51,52,53,54,56,57',0,2,0,'0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `jos_jce_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_jce_plugins`
--

DROP TABLE IF EXISTS `jos_jce_plugins`;
CREATE TABLE `jos_jce_plugins` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `layout` varchar(255) NOT NULL,
  `row` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(3) NOT NULL,
  `editable` tinyint(3) NOT NULL,
  `iscore` tinyint(3) NOT NULL,
  `elements` varchar(255) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `plugin` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_jce_plugins`
--

LOCK TABLES `jos_jce_plugins` WRITE;
/*!40000 ALTER TABLE `jos_jce_plugins` DISABLE KEYS */;
INSERT INTO `jos_jce_plugins` VALUES (1,'Context Menu','contextmenu','plugin','','',0,0,1,0,1,'',0,'0000-00-00 00:00:00'),(2,'File Browser','browser','plugin','','',0,0,1,1,1,'',0,'0000-00-00 00:00:00'),(3,'Inline Popups','inlinepopups','plugin','','',0,0,1,0,1,'',0,'0000-00-00 00:00:00'),(4,'Media Support','media','plugin','','',0,0,1,1,1,'',0,'0000-00-00 00:00:00'),(5,'Safari Browser Support','safari','plugin','','',0,0,1,0,1,'',0,'0000-00-00 00:00:00'),(6,'Help','help','plugin','help','help',1,1,1,0,1,'',0,'0000-00-00 00:00:00'),(7,'New Document','newdocument','command','newdocument','newdocument',1,2,1,0,1,'',0,'0000-00-00 00:00:00'),(8,'Bold','bold','command','bold','bold',1,3,1,0,1,'',0,'0000-00-00 00:00:00'),(9,'Italic','italic','command','italic','italic',1,4,1,0,1,'',0,'0000-00-00 00:00:00'),(10,'Underline','underline','command','underline','underline',1,5,1,0,1,'',0,'0000-00-00 00:00:00'),(11,'Font Select','fontselect','command','fontselect','fontselect',1,6,1,0,1,'',0,'0000-00-00 00:00:00'),(12,'Font Size Select','fontsizeselect','command','fontsizeselect','fontsizeselect',1,7,1,0,1,'',0,'0000-00-00 00:00:00'),(13,'Style Select','styleselect','command','styleselect','styleselect',1,8,1,0,1,'',0,'0000-00-00 00:00:00'),(14,'StrikeThrough','strikethrough','command','strikethrough','strikethrough',1,9,1,0,1,'',0,'0000-00-00 00:00:00'),(15,'Justify Full','full','command','justifyfull','justifyfull',1,10,1,0,1,'',0,'0000-00-00 00:00:00'),(16,'Justify Center','center','command','justifycenter','justifycenter',1,11,1,0,1,'',0,'0000-00-00 00:00:00'),(17,'Justify Left','left','command','justifyleft','justifyleft',1,12,1,0,1,'',0,'0000-00-00 00:00:00'),(18,'Justify Right','right','command','justifyright','justifyright',1,13,1,0,1,'',0,'0000-00-00 00:00:00'),(19,'Format Select','formatselect','command','formatselect','formatselect',1,14,1,0,1,'',0,'0000-00-00 00:00:00'),(20,'Paste','paste','plugin','cut,copy,paste','paste',2,1,1,1,1,'',0,'0000-00-00 00:00:00'),(21,'Search Replace','searchreplace','plugin','search,replace','searchreplace',2,2,1,0,1,'',0,'0000-00-00 00:00:00'),(22,'Font ForeColour','forecolor','command','forecolor','forecolor',2,3,1,0,1,'',0,'0000-00-00 00:00:00'),(23,'Font BackColour','backcolor','command','backcolor','backcolor',2,4,1,0,1,'',0,'0000-00-00 00:00:00'),(24,'Unlink','unlink','command','unlink','unlink',2,5,1,0,1,'',0,'0000-00-00 00:00:00'),(25,'Indent','indent','command','indent','indent',2,6,1,0,1,'',0,'0000-00-00 00:00:00'),(26,'Outdent','outdent','command','outdent','outdent',2,7,1,0,1,'',0,'0000-00-00 00:00:00'),(27,'Undo','undo','command','undo','undo',2,8,1,0,1,'',0,'0000-00-00 00:00:00'),(28,'Redo','redo','command','redo','redo',2,9,1,0,1,'',0,'0000-00-00 00:00:00'),(29,'HTML','html','command','code','code',2,10,1,0,1,'',0,'0000-00-00 00:00:00'),(30,'Numbered List','numlist','command','numlist','numlist',2,11,1,0,1,'',0,'0000-00-00 00:00:00'),(31,'Bullet List','bullist','command','bullist','bullist',2,12,1,0,1,'',0,'0000-00-00 00:00:00'),(32,'Anchor','anchor','command','anchor','anchor',2,13,1,0,1,'',0,'0000-00-00 00:00:00'),(33,'Image','image','command','image','image',2,14,1,0,1,'',0,'0000-00-00 00:00:00'),(34,'Link','link','command','link','link',2,15,1,0,1,'',0,'0000-00-00 00:00:00'),(35,'Code Cleanup','cleanup','command','cleanup','cleanup',2,16,1,0,1,'',0,'0000-00-00 00:00:00'),(36,'Directionality','directionality','plugin','ltr,rtl','directionality',3,1,1,0,1,'',0,'0000-00-00 00:00:00'),(37,'Emotions','emotions','plugin','emotions','emotions',3,2,1,0,1,'',0,'0000-00-00 00:00:00'),(38,'Fullscreen','fullscreen','plugin','fullscreen','fullscreen',3,3,1,0,1,'',0,'0000-00-00 00:00:00'),(39,'Preview','preview','plugin','preview','preview',3,4,1,0,1,'',0,'0000-00-00 00:00:00'),(40,'Tables','table','plugin','tablecontrols','buttons',3,5,1,0,1,'',0,'0000-00-00 00:00:00'),(41,'Print','print','plugin','print','print',3,6,1,0,1,'',0,'0000-00-00 00:00:00'),(42,'Horizontal Rule','hr','command','hr','hr',3,7,1,0,1,'',0,'0000-00-00 00:00:00'),(43,'Subscript','sub','command','sub','sub',3,8,1,0,1,'',0,'0000-00-00 00:00:00'),(44,'Superscript','sup','command','sup','sup',3,9,1,0,1,'',0,'0000-00-00 00:00:00'),(45,'Visual Aid','visualaid','command','visualaid','visualaid',3,10,1,0,1,'',0,'0000-00-00 00:00:00'),(46,'Character Map','charmap','command','charmap','charmap',3,11,1,0,1,'',0,'0000-00-00 00:00:00'),(47,'Remove Format','removeformat','command','removeformat','removeformat',2,1,1,0,1,'',0,'0000-00-00 00:00:00'),(48,'Styles','style','plugin','styleprops','style',4,1,1,0,1,'',0,'0000-00-00 00:00:00'),(49,'Non-Breaking','nonbreaking','plugin','nonbreaking','nonbreaking',4,2,1,0,1,'',0,'0000-00-00 00:00:00'),(50,'Visual Characters','visualchars','plugin','visualchars','visualchars',4,3,1,0,1,'',0,'0000-00-00 00:00:00'),(51,'XHTML Xtras','xhtmlxtras','plugin','cite,abbr,acronym,del,ins,attribs','xhtmlxtras',4,4,1,0,1,'',0,'0000-00-00 00:00:00'),(52,'Image Manager','imgmanager','plugin','imgmanager','imgmanager',4,5,1,1,1,'',0,'0000-00-00 00:00:00'),(53,'Advanced Link','advlink','plugin','advlink','advlink',4,6,1,1,1,'',0,'0000-00-00 00:00:00'),(54,'Spell Checker','spellchecker','plugin','spellchecker','spellchecker',4,7,1,1,1,'',0,'0000-00-00 00:00:00'),(55,'Layers','layer','plugin','insertlayer,moveforward,movebackward,absolute','layer',4,8,1,0,1,'',0,'0000-00-00 00:00:00'),(56,'Advanced Code Editor','advcode','plugin','advcode','advcode',4,9,1,0,1,'',0,'0000-00-00 00:00:00'),(57,'Article Breaks','article','plugin','readmore,pagebreak','article',4,10,1,0,1,'',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `jos_jce_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_joomgallery`
--

DROP TABLE IF EXISTS `jos_joomgallery`;
CREATE TABLE `jos_joomgallery` (
  `id` int(11) NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `imgtitle` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `imgauthor` varchar(50) default NULL,
  `imgtext` text NOT NULL,
  `imgdate` datetime NOT NULL,
  `hits` int(11) NOT NULL default '0',
  `imgvotes` int(11) NOT NULL default '0',
  `imgvotesum` int(11) NOT NULL default '0',
  `access` tinyint(3) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `imgfilename` varchar(100) NOT NULL default '',
  `imgthumbname` varchar(100) NOT NULL default '',
  `checked_out` int(11) NOT NULL default '0',
  `owner` int(11) unsigned NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '0',
  `useruploaded` tinyint(1) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_catid` (`catid`),
  KEY `idx_owner` (`owner`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_joomgallery`
--

LOCK TABLES `jos_joomgallery` WRITE;
/*!40000 ALTER TABLE `jos_joomgallery` DISABLE KEYS */;
INSERT INTO `jos_joomgallery` VALUES (1,1,'Jornada 1','jornada-1-1','','','2010-10-12 17:47:32',42,0,0,0,1,'jornada_1_20101012_1090492575.jpg','jornada_1_20101012_1090492575.jpg',0,62,1,0,-1,'','',''),(3,1,'Jornada 1','jornada-1-3','','La Bacaladera Hondaribia - Indupime Basauri','2010-10-12 18:29:51',42,0,0,0,1,'jornada_1_20101012_1554000908.jpg','jornada_1_20101012_1554000908.jpg',0,62,1,0,-2,'','',''),(4,1,'Jornada 1','jornada-1-4','','La Bacaladera Hondaribia - Indupime Basauri','2010-10-12 18:29:51',42,0,0,0,1,'jornada_1_20101012_1979400571.jpg','jornada_1_20101012_1979400571.jpg',0,62,1,0,-3,'','',''),(5,1,'Jornada 1','jornada-1-5','','La Bacaladera Hondaribia - Indupime Basauri','2010-10-12 18:29:51',42,0,0,0,1,'jornada_1_20101012_1707618889.jpg','jornada_1_20101012_1707618889.jpg',0,62,1,0,-4,'','',''),(6,1,'Jornada 1','jornada-1-6','','La Bacaladera Hondaribia - Indupime Basauri','2010-10-12 18:29:51',46,0,0,0,1,'jornada_1_20101012_1488090516.jpg','jornada_1_20101012_1488090516.jpg',0,62,1,0,-5,'','',''),(7,1,'Jornada 1','jornada-1-7','','La Bacaladera Hondaribia - Indupime Basauri','2010-10-12 18:29:51',50,2,10,0,1,'jornada_1_20101012_1989966953.jpg','jornada_1_20101012_1989966953.jpg',0,62,1,0,-6,'','',''),(8,1,'Jornada 1','jornada-1-8','','La Bacaladera Hondaribia - Indupime Basauri','2010-10-12 18:29:51',42,0,0,0,1,'jornada_1_20101012_2025077157.jpg','jornada_1_20101012_2025077157.jpg',0,62,1,0,-7,'','',''),(9,1,'Jornada 1','jornada-1-9','','La Bacaladera Hondaribia - Indupime Basauri','2010-10-12 18:29:51',46,0,0,0,1,'jornada_1_20101012_1840489847.jpg','jornada_1_20101012_1840489847.jpg',0,62,1,0,-8,'','',''),(10,1,'Jornada 1','jornada-1-10','','La Bacaladera Hondaribia - Indupime Basauri','2010-10-12 18:29:51',48,1,5,0,1,'jornada_1_20101012_1920916637.jpg','jornada_1_20101012_1920916637.jpg',0,62,1,0,-9,'','',''),(11,1,'Jornada 1','jornada-1-11','','La Bacaladera Hondaribia - Indupime Basauri','2010-10-12 18:29:51',47,0,0,0,1,'jornada_1_20101012_1400959089.jpg','jornada_1_20101012_1400959089.jpg',0,62,1,0,-10,'','',''),(12,1,'Jornada 1','jornada-1-12','','La Bacaladera Hondaribia - Indupime Basauri','2010-10-12 18:29:51',45,0,0,0,1,'jornada_1_20101012_1058774918.jpg','jornada_1_20101012_1058774918.jpg',0,62,1,0,-11,'','',''),(13,1,'Jornada 1','jornada-1-13','','La Bacaladera Hondaribia - Indupime Basauri','2010-10-12 18:31:30',46,0,0,0,1,'jornada_1_20101012_1270762495.jpg','jornada_1_20101012_1270762495.jpg',0,62,1,0,-12,'','',''),(14,1,'Jornada 1','jornada-1-14','','La Bacaladera Hondaribia - Indupime Basauri','2010-10-12 18:31:30',51,0,0,0,1,'jornada_1_20101012_1395360988.jpg','jornada_1_20101012_1395360988.jpg',0,62,1,0,-13,'','',''),(17,2,'Torneo de Hondarribia. 3/9/1979','torneo-de-hondarribia-391979-17','','','2010-11-01 23:29:49',15,0,0,0,1,'1979_20101101_2050650280.png','1979_20101101_2050650280.png',0,62,1,0,-2,'','',''),(16,2,'Presentación del C.B Hondarribia. 1/11/1978','presentacion-del-cb-hondarribia-1111978-16','','<p>Presentación del C.B. Hondarribia contra el Allerru de Lezo, el dia 1/11/1978</p>\r\n<p>Resultado 27 - 19 para el Allerru.</p>','2010-11-01 23:22:06',11,0,0,0,1,'1978_20101101_2060878741.png','1978_20101101_2060878741.png',0,62,1,0,-1,'','',''),(18,2,'C.B. Hondarribia Yarza Talbot. Temporada 80/81. Subcampeones de 1º Provincial','cb-hondarribia-yarza-talbot-temporada-8081-subcampeones-de-1o-provincial-18','','','2010-11-01 23:33:50',14,0,0,0,1,'81_subcampeones_de_1_provincial_20101101_1617707583.png','81_subcampeones_de_1_provincial_20101101_1617707583.png',0,62,1,0,-3,'','',''),(19,2,'-','-19','','','2010-11-01 23:36:32',16,0,0,0,1,'-_20101101_1429515305.png','-_20101101_1429515305.png',0,62,1,0,-4,'','','');
/*!40000 ALTER TABLE `jos_joomgallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_joomgallery_catg`
--

DROP TABLE IF EXISTS `jos_joomgallery_catg`;
CREATE TABLE `jos_joomgallery_catg` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `parent` int(11) NOT NULL default '0',
  `description` text,
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `published` char(1) NOT NULL default '0',
  `owner` int(11) default '0',
  `catimage` varchar(100) default NULL,
  `img_position` int(10) default '0',
  `catpath` varchar(255) NOT NULL default '',
  `params` text NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  PRIMARY KEY  (`cid`),
  KEY `idx_parent` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_joomgallery_catg`
--

LOCK TABLES `jos_joomgallery_catg` WRITE;
/*!40000 ALTER TABLE `jos_joomgallery_catg` DISABLE KEYS */;
INSERT INTO `jos_joomgallery_catg` VALUES (1,'La bacaladera Hondarribia - Indupime Basauri','la-bacaladera-hondarribia-indupime-basauri',0,'',2,0,'1',0,'',0,'la_bacaladera_hondarribia_-_indupime_basauri_1','','',''),(2,'Historia','historia',0,'',1,0,'1',0,'',0,'historia_2','','','');
/*!40000 ALTER TABLE `jos_joomgallery_catg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_joomgallery_comments`
--

DROP TABLE IF EXISTS `jos_joomgallery_comments`;
CREATE TABLE `jos_joomgallery_comments` (
  `cmtid` int(11) NOT NULL auto_increment,
  `cmtpic` int(11) NOT NULL default '0',
  `cmtip` varchar(15) NOT NULL default '',
  `userid` int(11) unsigned NOT NULL default '0',
  `cmtname` varchar(50) NOT NULL default '',
  `cmttext` text NOT NULL,
  `cmtdate` datetime NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`cmtid`),
  KEY `idx_cmtpic` (`cmtpic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_joomgallery_comments`
--

LOCK TABLES `jos_joomgallery_comments` WRITE;
/*!40000 ALTER TABLE `jos_joomgallery_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_joomgallery_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_joomgallery_config`
--

DROP TABLE IF EXISTS `jos_joomgallery_config`;
CREATE TABLE `jos_joomgallery_config` (
  `id` int(1) NOT NULL default '0',
  `jg_pathimages` varchar(50) NOT NULL,
  `jg_pathoriginalimages` varchar(50) NOT NULL,
  `jg_paththumbs` varchar(50) NOT NULL,
  `jg_pathftpupload` varchar(50) NOT NULL,
  `jg_pathtemp` varchar(50) NOT NULL,
  `jg_wmpath` varchar(50) NOT NULL,
  `jg_wmfile` varchar(50) NOT NULL,
  `jg_dateformat` varchar(50) NOT NULL,
  `jg_checkupdate` int(1) NOT NULL,
  `jg_filenamewithjs` int(1) NOT NULL,
  `jg_filenamesearch` varchar(50) NOT NULL,
  `jg_filenamereplace` varchar(50) NOT NULL,
  `jg_thumbcreation` varchar(5) NOT NULL,
  `jg_fastgd2thumbcreation` int(1) NOT NULL,
  `jg_impath` varchar(50) NOT NULL,
  `jg_resizetomaxwidth` int(1) NOT NULL,
  `jg_maxwidth` int(5) NOT NULL,
  `jg_picturequality` int(3) NOT NULL,
  `jg_useforresizedirection` int(1) NOT NULL,
  `jg_thumbwidth` int(5) NOT NULL,
  `jg_thumbheight` int(5) NOT NULL,
  `jg_thumbquality` int(3) NOT NULL,
  `jg_uploadorder` int(1) NOT NULL,
  `jg_useorigfilename` int(1) NOT NULL,
  `jg_filenamenumber` int(1) NOT NULL,
  `jg_delete_original` int(1) NOT NULL,
  `jg_wrongvaluecolor` varchar(10) NOT NULL,
  `jg_msg_upload_type` int(1) NOT NULL,
  `jg_msg_upload_recipients` text NOT NULL,
  `jg_msg_comment_type` int(1) NOT NULL,
  `jg_msg_comment_recipients` text NOT NULL,
  `jg_msg_comment_toowner` int(1) NOT NULL,
  `jg_realname` int(1) NOT NULL,
  `jg_cooliris` int(1) NOT NULL,
  `jg_coolirislink` int(1) NOT NULL,
  `jg_contentpluginsenabled` int(1) NOT NULL,
  `jg_itemid` varchar(10) NOT NULL,
  `jg_userspace` int(1) NOT NULL,
  `jg_approve` int(1) NOT NULL,
  `jg_usercat` int(1) NOT NULL,
  `jg_maxusercat` int(5) NOT NULL,
  `jg_userowncatsupload` int(1) NOT NULL,
  `jg_maxuserimage` int(9) NOT NULL,
  `jg_maxfilesize` int(9) NOT NULL,
  `jg_category` text NOT NULL,
  `jg_usercategory` text NOT NULL,
  `jg_usercatacc` int(1) NOT NULL,
  `jg_maxuploadfields` int(3) NOT NULL,
  `jg_useruploadnumber` int(1) NOT NULL,
  `jg_special_gif_upload` int(1) NOT NULL,
  `jg_delete_original_user` int(1) NOT NULL,
  `jg_newpiccopyright` int(1) NOT NULL,
  `jg_newpicnote` int(1) NOT NULL,
  `jg_showrating` int(1) NOT NULL,
  `jg_maxvoting` int(1) NOT NULL,
  `jg_onlyreguservotes` int(1) NOT NULL,
  `jg_showcomment` int(1) NOT NULL,
  `jg_anoncomment` int(1) NOT NULL,
  `jg_namedanoncomment` int(1) NOT NULL,
  `jg_approvecom` int(1) NOT NULL,
  `jg_bbcodesupport` int(1) NOT NULL,
  `jg_smiliesupport` int(1) NOT NULL,
  `jg_anismilie` int(1) NOT NULL,
  `jg_smiliescolor` varchar(10) NOT NULL,
  `jg_anchors` int(1) NOT NULL,
  `jg_tooltips` int(1) NOT NULL,
  `jg_firstorder` varchar(20) NOT NULL,
  `jg_secondorder` varchar(20) NOT NULL,
  `jg_thirdorder` varchar(20) NOT NULL,
  `jg_pagetitle_cat` text NOT NULL,
  `jg_pagetitle_detail` text NOT NULL,
  `jg_showgalleryhead` int(1) NOT NULL,
  `jg_showpathway` int(1) NOT NULL,
  `jg_completebreadcrumbs` int(1) NOT NULL,
  `jg_search` int(1) NOT NULL,
  `jg_showallpics` int(1) NOT NULL,
  `jg_showallhits` int(1) NOT NULL,
  `jg_showbacklink` int(1) NOT NULL,
  `jg_suppresscredits` int(1) NOT NULL,
  `jg_showuserpanel` int(1) NOT NULL,
  `jg_showallpicstoadmin` int(1) NOT NULL,
  `jg_showminithumbs` int(1) NOT NULL,
  `jg_openjs_padding` int(3) NOT NULL,
  `jg_openjs_background` varchar(10) NOT NULL,
  `jg_dhtml_border` varchar(10) NOT NULL,
  `jg_show_title_in_dhtml` int(1) NOT NULL,
  `jg_show_description_in_dhtml` int(1) NOT NULL,
  `jg_lightbox_speed` int(3) NOT NULL,
  `jg_lightbox_slide_all` int(1) NOT NULL,
  `jg_resize_js_image` int(1) NOT NULL,
  `jg_disable_rightclick_original` int(1) NOT NULL,
  `jg_showgallerysubhead` int(1) NOT NULL,
  `jg_showallcathead` int(1) NOT NULL,
  `jg_colcat` int(1) NOT NULL,
  `jg_catperpage` int(1) NOT NULL,
  `jg_ordercatbyalpha` int(1) NOT NULL,
  `jg_showgallerypagenav` int(1) NOT NULL,
  `jg_showcatcount` int(1) NOT NULL,
  `jg_showcatthumb` int(1) NOT NULL,
  `jg_showrandomcatthumb` int(1) NOT NULL,
  `jg_ctalign` int(1) NOT NULL,
  `jg_showtotalcathits` int(1) NOT NULL,
  `jg_showcatasnew` int(1) NOT NULL,
  `jg_catdaysnew` int(3) NOT NULL,
  `jg_showdescriptioningalleryview` int(1) NOT NULL,
  `jg_rmsm` int(1) NOT NULL,
  `jg_showrmsmcats` int(1) NOT NULL,
  `jg_showsubsingalleryview` int(1) NOT NULL,
  `jg_showcathead` int(1) NOT NULL,
  `jg_usercatorder` int(1) NOT NULL,
  `jg_usercatorderlist` varchar(50) NOT NULL,
  `jg_showcatdescriptionincat` int(1) NOT NULL,
  `jg_showpagenav` int(1) NOT NULL,
  `jg_showpiccount` int(1) NOT NULL,
  `jg_perpage` int(3) NOT NULL,
  `jg_catthumbalign` int(1) NOT NULL,
  `jg_colnumb` int(3) NOT NULL,
  `jg_detailpic_open` int(1) NOT NULL,
  `jg_lightboxbigpic` int(1) NOT NULL,
  `jg_showtitle` int(1) NOT NULL,
  `jg_showpicasnew` int(1) NOT NULL,
  `jg_daysnew` int(3) NOT NULL,
  `jg_showhits` int(1) NOT NULL,
  `jg_showauthor` int(1) NOT NULL,
  `jg_showowner` int(1) NOT NULL,
  `jg_showcatcom` int(1) NOT NULL,
  `jg_showcatrate` int(1) NOT NULL,
  `jg_showcatdescription` int(1) NOT NULL,
  `jg_showcategorydownload` int(1) NOT NULL,
  `jg_showcategoryfavourite` int(1) NOT NULL,
  `jg_showsubcathead` int(1) NOT NULL,
  `jg_showsubcatcount` int(1) NOT NULL,
  `jg_colsubcat` int(3) NOT NULL,
  `jg_subperpage` int(3) NOT NULL,
  `jg_showpagenavsubs` int(1) NOT NULL,
  `jg_subcatthumbalign` int(1) NOT NULL,
  `jg_showsubthumbs` int(1) NOT NULL,
  `jg_showrandomsubthumb` int(1) NOT NULL,
  `jg_showdescriptionincategoryview` int(1) NOT NULL,
  `jg_ordersubcatbyalpha` int(1) NOT NULL,
  `jg_showtotalsubcathits` int(1) NOT NULL,
  `jg_showdetailpage` int(1) NOT NULL,
  `jg_showdetailnumberofpics` int(1) NOT NULL,
  `jg_cursor_navigation` int(1) NOT NULL,
  `jg_disable_rightclick_detail` int(1) NOT NULL,
  `jg_showdetailtitle` int(1) NOT NULL,
  `jg_showdetail` int(1) NOT NULL,
  `jg_showdetailaccordion` int(1) NOT NULL,
  `jg_showdetaildescription` int(1) NOT NULL,
  `jg_showdetaildatum` int(1) NOT NULL,
  `jg_showdetailhits` int(1) NOT NULL,
  `jg_showdetailrating` int(1) NOT NULL,
  `jg_showdetailfilesize` int(1) NOT NULL,
  `jg_showdetailauthor` int(1) NOT NULL,
  `jg_showoriginalfilesize` int(1) NOT NULL,
  `jg_showdetaildownload` int(1) NOT NULL,
  `jg_downloadfile` int(1) NOT NULL,
  `jg_downloadwithwatermark` int(1) NOT NULL,
  `jg_watermark` int(1) NOT NULL,
  `jg_watermarkpos` int(1) NOT NULL,
  `jg_bigpic` int(1) NOT NULL,
  `jg_bigpic_open` int(1) NOT NULL,
  `jg_bbcodelink` int(1) NOT NULL,
  `jg_showcommentsunreg` int(1) NOT NULL,
  `jg_showcommentsarea` int(1) NOT NULL,
  `jg_send2friend` int(1) NOT NULL,
  `jg_minis` int(1) NOT NULL,
  `jg_motionminis` int(1) NOT NULL,
  `jg_motionminiWidth` int(3) NOT NULL,
  `jg_motionminiHeight` int(3) NOT NULL,
  `jg_miniWidth` int(3) NOT NULL,
  `jg_miniHeight` int(3) NOT NULL,
  `jg_minisprop` int(1) NOT NULL,
  `jg_nameshields` int(1) NOT NULL,
  `jg_nameshields_others` int(1) NOT NULL,
  `jg_nameshields_unreg` int(1) NOT NULL,
  `jg_show_nameshields_unreg` int(1) NOT NULL,
  `jg_nameshields_height` int(3) NOT NULL,
  `jg_nameshields_width` int(3) NOT NULL,
  `jg_slideshow` int(1) NOT NULL,
  `jg_slideshow_timer` int(3) NOT NULL,
  `jg_slideshow_transition` int(1) NOT NULL,
  `jg_slideshow_transtime` int(3) NOT NULL,
  `jg_slideshow_maxdimauto` int(1) NOT NULL,
  `jg_slideshow_width` int(3) NOT NULL,
  `jg_slideshow_heigth` int(3) NOT NULL,
  `jg_slideshow_infopane` int(1) NOT NULL,
  `jg_slideshow_carousel` int(1) NOT NULL,
  `jg_slideshow_arrows` int(1) NOT NULL,
  `jg_showexifdata` int(1) NOT NULL,
  `jg_geotagging` text NOT NULL,
  `jg_subifdtags` text NOT NULL,
  `jg_ifdotags` text NOT NULL,
  `jg_gpstags` text NOT NULL,
  `jg_showiptcdata` int(1) NOT NULL,
  `jg_iptctags` text NOT NULL,
  `jg_showtoplist` int(1) NOT NULL,
  `jg_toplist` int(3) NOT NULL,
  `jg_topthumbalign` int(1) NOT NULL,
  `jg_toptextalign` int(1) NOT NULL,
  `jg_toplistcols` int(3) NOT NULL,
  `jg_whereshowtoplist` int(1) NOT NULL,
  `jg_showrate` int(1) NOT NULL,
  `jg_showlatest` int(1) NOT NULL,
  `jg_showcom` int(1) NOT NULL,
  `jg_showthiscomment` int(1) NOT NULL,
  `jg_showmostviewed` int(1) NOT NULL,
  `jg_favourites` int(1) NOT NULL,
  `jg_showdetailfavourite` int(1) NOT NULL,
  `jg_favouritesshownotauth` int(1) NOT NULL,
  `jg_maxfavourites` int(5) NOT NULL,
  `jg_zipdownload` int(1) NOT NULL,
  `jg_usefavouritesforpubliczip` int(1) NOT NULL,
  `jg_usefavouritesforzip` int(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_joomgallery_config`
--

LOCK TABLES `jos_joomgallery_config` WRITE;
/*!40000 ALTER TABLE `jos_joomgallery_config` DISABLE KEYS */;
INSERT INTO `jos_joomgallery_config` VALUES (1,'images/joomgallery/details/','images/joomgallery/originals/','images/joomgallery/thumbnails/','components/com_joomgallery/ftp_upload/','administrator/components/com_joomgallery/temp/','components/com_joomgallery/assets/images/','watermark.png','%d.%m.%Y %H:%M:%S',1,1,'ä|ö|ü|ß','ae|oe|ue|ss','gd2',1,'',1,400,100,0,133,100,100,1,0,1,0,'#f00',2,'',2,'',0,0,0,0,1,'',0,0,0,10,0,500,2000000,'','',0,3,0,0,2,0,1,1,5,0,0,0,0,2,0,0,0,'grey',1,2,'ordering ASC','imgdate DESC','imgtitle DESC','[! JGS_COMMON_CATEGORY!]: #cat','[! JGS_COMMON_CATEGORY!]: #cat - [! JGS_COMMON_IMAGE!]:  #img',1,1,1,0,3,1,3,1,3,1,1,10,'#fff','#808080',0,1,5,1,1,1,1,1,3,9,0,1,1,1,3,1,1,1,7,1,1,1,0,1,1,'date,title',1,2,1,9,1,3,0,1,0,1,10,0,0,0,0,1,0,0,0,1,1,2,8,1,3,2,1,1,0,1,1,1,1,0,1,0,0,1,1,1,1,1,1,1,0,2,0,0,9,2,6,0,0,2,0,1,2,400,50,28,28,2,0,1,1,0,10,6,1,6000,0,2000,0,640,480,0,0,0,0,'','','','',0,'',3,12,1,1,1,0,1,1,1,1,1,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `jos_joomgallery_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_joomgallery_countstop`
--

DROP TABLE IF EXISTS `jos_joomgallery_countstop`;
CREATE TABLE `jos_joomgallery_countstop` (
  `cspicid` int(11) NOT NULL default '0',
  `csip` varchar(20) NOT NULL,
  `cssessionid` varchar(200) default NULL,
  `cstime` datetime default NULL,
  KEY `idx_cspicid` (`cspicid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_joomgallery_countstop`
--

LOCK TABLES `jos_joomgallery_countstop` WRITE;
/*!40000 ALTER TABLE `jos_joomgallery_countstop` DISABLE KEYS */;
INSERT INTO `jos_joomgallery_countstop` VALUES (16,'85.86.2.235','b5j0da76ubk1crsm8s28v4gis7','2010-11-05 15:12:35'),(17,'85.86.2.235','b5j0da76ubk1crsm8s28v4gis7','2010-11-05 15:12:19'),(18,'85.86.2.235','b5j0da76ubk1crsm8s28v4gis7','2010-11-05 15:11:53'),(19,'85.86.2.235','b5j0da76ubk1crsm8s28v4gis7','2010-11-05 15:11:08');
/*!40000 ALTER TABLE `jos_joomgallery_countstop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_joomgallery_maintenance`
--

DROP TABLE IF EXISTS `jos_joomgallery_maintenance`;
CREATE TABLE `jos_joomgallery_maintenance` (
  `id` int(11) NOT NULL auto_increment,
  `refid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `title` text NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `orig` varchar(255) NOT NULL,
  `thumborphan` int(11) NOT NULL,
  `imgorphan` int(11) NOT NULL,
  `origorphan` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_joomgallery_maintenance`
--

LOCK TABLES `jos_joomgallery_maintenance` WRITE;
/*!40000 ALTER TABLE `jos_joomgallery_maintenance` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_joomgallery_maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_joomgallery_nameshields`
--

DROP TABLE IF EXISTS `jos_joomgallery_nameshields`;
CREATE TABLE `jos_joomgallery_nameshields` (
  `nid` int(11) NOT NULL auto_increment,
  `npicid` int(11) NOT NULL default '0',
  `nuserid` int(11) unsigned NOT NULL default '0',
  `nxvalue` int(11) NOT NULL default '0',
  `nyvalue` int(11) NOT NULL default '0',
  `by` int(11) NOT NULL default '0',
  `nuserip` varchar(15) NOT NULL default '0',
  `ndate` datetime NOT NULL,
  `nzindex` int(11) NOT NULL default '0',
  PRIMARY KEY  (`nid`),
  KEY `idx_picid` (`npicid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_joomgallery_nameshields`
--

LOCK TABLES `jos_joomgallery_nameshields` WRITE;
/*!40000 ALTER TABLE `jos_joomgallery_nameshields` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_joomgallery_nameshields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_joomgallery_orphans`
--

DROP TABLE IF EXISTS `jos_joomgallery_orphans`;
CREATE TABLE `jos_joomgallery_orphans` (
  `id` int(11) NOT NULL auto_increment,
  `fullpath` varchar(255) NOT NULL,
  `type` varchar(7) NOT NULL,
  `refid` int(11) NOT NULL,
  `title` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_joomgallery_orphans`
--

LOCK TABLES `jos_joomgallery_orphans` WRITE;
/*!40000 ALTER TABLE `jos_joomgallery_orphans` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_joomgallery_orphans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_joomgallery_users`
--

DROP TABLE IF EXISTS `jos_joomgallery_users`;
CREATE TABLE `jos_joomgallery_users` (
  `uid` int(11) NOT NULL auto_increment,
  `uuserid` int(11) NOT NULL default '0',
  `piclist` text,
  `layout` int(1) NOT NULL,
  `time` datetime NOT NULL,
  `zipname` varchar(70) NOT NULL,
  PRIMARY KEY  (`uid`),
  KEY `idx_uid` (`uuserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_joomgallery_users`
--

LOCK TABLES `jos_joomgallery_users` WRITE;
/*!40000 ALTER TABLE `jos_joomgallery_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_joomgallery_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_joomgallery_votes`
--

DROP TABLE IF EXISTS `jos_joomgallery_votes`;
CREATE TABLE `jos_joomgallery_votes` (
  `voteid` int(11) NOT NULL auto_increment,
  `picid` int(11) NOT NULL default '0',
  `userid` int(11) unsigned NOT NULL default '0',
  `userip` varchar(15) NOT NULL default '0',
  `datevoted` datetime NOT NULL,
  `vote` int(11) NOT NULL default '0',
  PRIMARY KEY  (`voteid`),
  KEY `idx_picid` (`picid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_joomgallery_votes`
--

LOCK TABLES `jos_joomgallery_votes` WRITE;
/*!40000 ALTER TABLE `jos_joomgallery_votes` DISABLE KEYS */;
INSERT INTO `jos_joomgallery_votes` VALUES (1,10,0,'80.25.104.66','2010-10-15 07:17:30',5),(2,7,0,'81.34.232.155','2010-10-22 21:24:41',5),(3,7,0,'85.86.0.38','2010-10-26 22:33:49',5);
/*!40000 ALTER TABLE `jos_joomgallery_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_attachments`
--

DROP TABLE IF EXISTS `jos_k2_attachments`;
CREATE TABLE `jos_k2_attachments` (
  `id` int(11) NOT NULL auto_increment,
  `itemID` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleAttribute` text NOT NULL,
  `hits` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `itemID` (`itemID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_k2_attachments`
--

LOCK TABLES `jos_k2_attachments` WRITE;
/*!40000 ALTER TABLE `jos_k2_attachments` DISABLE KEYS */;
INSERT INTO `jos_k2_attachments` VALUES (1,1,'225_El_entrenamiento_durante_el_periodo_preparatorio.pdf','225_El_entrenamiento_durante_el_periodo_preparatorio.pdf','225_El_entrenamiento_durante_el_periodo_preparatorio.pdf',1),(2,2,'225_El_entrenamiento_durante_el_periodo_preparatorio_1.pdf','225_El_entrenamiento_durante_el_periodo_preparatorio_1.pdf','225_El_entrenamiento_durante_el_periodo_preparatorio_1.pdf',0),(3,3,'Tareas_entrenamiento_xesco.pdf','Tareas_entrenamiento_xesco.pdf','Tareas_entrenamiento_xesco.pdf',1);
/*!40000 ALTER TABLE `jos_k2_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_categories`
--

DROP TABLE IF EXISTS `jos_k2_categories`;
CREATE TABLE `jos_k2_categories` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) default '0',
  `extraFieldsGroup` int(11) NOT NULL,
  `published` smallint(6) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `image` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `trash` smallint(6) NOT NULL default '0',
  `plugins` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `category` (`published`,`access`,`trash`),
  KEY `parent` (`parent`),
  KEY `ordering` (`ordering`),
  KEY `published` (`published`),
  KEY `access` (`access`),
  KEY `trash` (`trash`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_k2_categories`
--

LOCK TABLES `jos_k2_categories` WRITE;
/*!40000 ALTER TABLE `jos_k2_categories` DISABLE KEYS */;
INSERT INTO `jos_k2_categories` VALUES (1,'Articulos Tecnicos','articulos-tecnicos','',0,0,1,0,1,'','inheritFrom=0\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\nfeedLink=1\nsubCategories=1\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemTwitterLink=1\nitemCategory=1\nitemTags=1\nitemShareLinks=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemRelated=1\nitemRelatedLimit=5\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemK2Plugins=1\n\n',0,''),(2,'Comunicaciones RFEBM','comunicaciones-rfebm','',1,0,1,0,1,'','inheritFrom=1\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\nfeedLink=1\nsubCategories=1\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemTwitterLink=1\nitemCategory=1\nitemTags=1\nitemShareLinks=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemRelated=1\nitemRelatedLimit=5\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemK2Plugins=1\n\n',0,''),(3,'225-El entrenamiento durante el periodo preparatorio','225','',2,0,1,0,1,'','inheritFrom=0\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\nfeedLink=1\nsubCategories=1\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemTwitterLink=1\nitemCategory=1\nitemTags=1\nitemShareLinks=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemRelated=1\nitemRelatedLimit=5\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemK2Plugins=1\n\n',1,'');
/*!40000 ALTER TABLE `jos_k2_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_comments`
--

DROP TABLE IF EXISTS `jos_k2_comments`;
CREATE TABLE `jos_k2_comments` (
  `id` int(11) NOT NULL auto_increment,
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `commentDate` datetime NOT NULL,
  `commentText` text NOT NULL,
  `commentEmail` varchar(255) NOT NULL,
  `commentURL` varchar(255) NOT NULL,
  `published` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `itemID` (`itemID`),
  KEY `userID` (`userID`),
  KEY `published` (`published`),
  KEY `latestComments` (`published`,`commentDate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_k2_comments`
--

LOCK TABLES `jos_k2_comments` WRITE;
/*!40000 ALTER TABLE `jos_k2_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_k2_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_extra_fields`
--

DROP TABLE IF EXISTS `jos_k2_extra_fields`;
CREATE TABLE `jos_k2_extra_fields` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `group` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `group` (`group`),
  KEY `published` (`published`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_k2_extra_fields`
--

LOCK TABLES `jos_k2_extra_fields` WRITE;
/*!40000 ALTER TABLE `jos_k2_extra_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_k2_extra_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_extra_fields_groups`
--

DROP TABLE IF EXISTS `jos_k2_extra_fields_groups`;
CREATE TABLE `jos_k2_extra_fields_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_k2_extra_fields_groups`
--

LOCK TABLES `jos_k2_extra_fields_groups` WRITE;
/*!40000 ALTER TABLE `jos_k2_extra_fields_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_k2_extra_fields_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_items`
--

DROP TABLE IF EXISTS `jos_k2_items`;
CREATE TABLE `jos_k2_items` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) default NULL,
  `catid` int(11) NOT NULL,
  `published` smallint(6) NOT NULL default '0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `video` text,
  `gallery` varchar(255) default NULL,
  `extra_fields` text character set utf8 collate utf8_unicode_ci,
  `extra_fields_search` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL default '0',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `trash` smallint(6) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `featured` smallint(6) NOT NULL default '0',
  `featured_ordering` int(11) NOT NULL default '0',
  `image_caption` text NOT NULL,
  `image_credits` varchar(255) NOT NULL,
  `video_caption` text NOT NULL,
  `video_credits` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  `params` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `metakey` text NOT NULL,
  `plugins` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `item` (`published`,`publish_up`,`publish_down`,`trash`,`access`),
  KEY `catid` (`catid`),
  KEY `created_by` (`created_by`),
  KEY `ordering` (`ordering`),
  KEY `featured` (`featured`),
  KEY `featured_ordering` (`featured_ordering`),
  KEY `hits` (`hits`),
  KEY `created` (`created`),
  FULLTEXT KEY `search` (`title`,`introtext`,`fulltext`,`extra_fields_search`,`image_caption`,`image_credits`,`video_caption`,`video_credits`,`metadesc`,`metakey`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_k2_items`
--

LOCK TABLES `jos_k2_items` WRITE;
/*!40000 ALTER TABLE `jos_k2_items` DISABLE KEYS */;
INSERT INTO `jos_k2_items` VALUES (1,'El entrenamiento durante el periodo preparatorio','el-entrenamiento-durante-el-periodo-preparatorio',3,1,'<div>Presentamos este documento en respuesta a la inquietud que han mostrado algunos&nbsp;entrenadores al solicitarnos información sobre las pautas que seguimos al plantear el</div>\r\n<div>trabajo físico en nuestro equipo durante el periodo preparatorio. Se pretende mostrar la&nbsp;distribución de los contenidos de entrenamiento de una pretemporada, especificando</div>\r\n<div>aquellas sesiones cuyo objetivo sea físico.&nbsp;Como toda programación, esta no tiene que tomarse como norma o receta, sino&nbsp;como pauta o modelo de una forma de interpretar la preparación física en balonmano.</div>\r\n<div>Cada temporada las circunstancias son diferentes , los jugadores evolucionan o cambian,&nbsp;por lo tanto la información tiene que ser válida para ilustrar una filosofía de trabajo.</div>','',NULL,NULL,'[]','','2010-11-04 00:34:15',62,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2010-11-04 00:34:15','0000-00-00 00:00:00',1,0,1,0,0,'','','','',5,'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n','','robots=\nauthor=','',''),(2,'225 - El entrenamiento durante el periodo preparatorio','225-el-entrenamiento-durante-el-periodo-preparatorio',2,1,'<div>Presentamos este documento en respuesta a la inquietud que han mostrado algunos</div>\r\n<div>entrenadores al solicitarnos información sobre las pautas que seguimos al plantear el</div>\r\n<div>trabajo físico en nuestro equipo durante el periodo preparatorio. Se pretende mostrar la</div>\r\n<div>distribución de los contenidos de entrenamiento de una pretemporada, especificando</div>\r\n<div>aquellas sesiones cuyo objetivo sea físico.</div>\r\n<div>Como toda programación, esta no tiene que tomarse como norma o receta, sino</div>\r\n<div>como pauta o modelo de una forma de interpretar la preparación física en balonmano.</div>\r\n<div>Cada temporada las circunstancias son diferentes , los jugadores evolucionan o cambian,</div>\r\n<div>por lo tanto la información tiene que ser válida para ilustrar una filosofía de trabajo</div>','',NULL,NULL,'[]','','2010-11-04 00:45:02',62,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2010-11-04 00:45:02','0000-00-00 00:00:00',0,0,1,0,0,'','','','',1,'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n','','robots=\nauthor=','',''),(3,'xxx - Tareas del entrenamiento','xxx-tareas-del-entrenamiento',2,1,'','',NULL,NULL,'[]','','2010-11-04 00:46:51',62,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2010-11-04 00:46:51','0000-00-00 00:00:00',0,0,2,0,0,'','','','',2,'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemTwitterLink=\nitemCategory=\nitemTags=\nitemShareLinks=\nitemAttachments=\nitemAttachmentsCounter=\nitemRelated=\nitemRelatedLimit=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemK2Plugins=\n\n','','robots=\nauthor=','','');
/*!40000 ALTER TABLE `jos_k2_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_rating`
--

DROP TABLE IF EXISTS `jos_k2_rating`;
CREATE TABLE `jos_k2_rating` (
  `itemID` int(11) NOT NULL default '0',
  `rating_sum` int(11) unsigned NOT NULL default '0',
  `rating_count` int(11) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`itemID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_k2_rating`
--

LOCK TABLES `jos_k2_rating` WRITE;
/*!40000 ALTER TABLE `jos_k2_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_k2_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_tags`
--

DROP TABLE IF EXISTS `jos_k2_tags`;
CREATE TABLE `jos_k2_tags` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `published` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_k2_tags`
--

LOCK TABLES `jos_k2_tags` WRITE;
/*!40000 ALTER TABLE `jos_k2_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_k2_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_tags_xref`
--

DROP TABLE IF EXISTS `jos_k2_tags_xref`;
CREATE TABLE `jos_k2_tags_xref` (
  `id` int(11) NOT NULL auto_increment,
  `tagID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `tagID` (`tagID`),
  KEY `itemID` (`itemID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_k2_tags_xref`
--

LOCK TABLES `jos_k2_tags_xref` WRITE;
/*!40000 ALTER TABLE `jos_k2_tags_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_k2_tags_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_user_groups`
--

DROP TABLE IF EXISTS `jos_k2_user_groups`;
CREATE TABLE `jos_k2_user_groups` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_k2_user_groups`
--

LOCK TABLES `jos_k2_user_groups` WRITE;
/*!40000 ALTER TABLE `jos_k2_user_groups` DISABLE KEYS */;
INSERT INTO `jos_k2_user_groups` VALUES (1,'Registered','frontEdit=0\nadd=0\neditOwn=0\neditAll=0\npublish=0\ncomment=1\ninheritance=0\ncategories=all\n\n'),(2,'Site Owner','frontEdit=1\nadd=1\neditOwn=1\neditAll=1\npublish=1\ncomment=1\ninheritance=1\ncategories=all\n\n');
/*!40000 ALTER TABLE `jos_k2_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_k2_users`
--

DROP TABLE IF EXISTS `jos_k2_users`;
CREATE TABLE `jos_k2_users` (
  `id` int(11) NOT NULL auto_increment,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) default NULL,
  `gender` enum('m','f') NOT NULL default 'm',
  `description` text NOT NULL,
  `image` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `group` int(11) NOT NULL default '0',
  `plugins` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `userID` (`userID`),
  KEY `group` (`group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_k2_users`
--

LOCK TABLES `jos_k2_users` WRITE;
/*!40000 ALTER TABLE `jos_k2_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_k2_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_menu`
--

DROP TABLE IF EXISTS `jos_menu`;
CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(75) default NULL,
  `name` varchar(255) default NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text,
  `type` varchar(50) NOT NULL default '',
  `published` tinyint(1) NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `componentid` int(11) unsigned NOT NULL default '0',
  `sublevel` int(11) default '0',
  `ordering` int(11) default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL default '0',
  `browserNav` tinyint(4) default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `utaccess` tinyint(3) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL default '0',
  `rgt` int(11) unsigned NOT NULL default '0',
  `home` int(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_menu`
--

LOCK TABLES `jos_menu` WRITE;
/*!40000 ALTER TABLE `jos_menu` DISABLE KEYS */;
INSERT INTO `jos_menu` VALUES (1,'mainmenu','Inicio','home','index.php?option=com_content&view=frontpage','component',1,0,20,0,1,0,'0000-00-00 00:00:00',0,0,0,3,'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=Bienvenidos a la Web de La Bacaladera Hondarribia\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,1),(2,'mainmenu','Licencia','joomla-license','index.php?option=com_content&view=article&id=5','component',0,0,20,0,5,0,'0000-00-00 00:00:00',0,0,0,0,'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',0,0,0),(41,'mainmenu','FAQ','faq','index.php?option=com_content&view=section&id=3','component',0,0,20,0,7,0,'0000-00-00 00:00:00',0,0,0,0,'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(11,'othermenu','Joomla!','joomla-home','http://www.joomla.org','url',1,0,0,0,1,0,'0000-00-00 00:00:00',0,0,0,3,'menu_image=-1\n\n',0,0,0),(12,'othermenu','Foros Joomla!','joomla-forums','http://forum.joomla.org','url',1,0,0,0,2,0,'0000-00-00 00:00:00',0,0,0,3,'menu_image=-1\n\n',0,0,0),(13,'othermenu','Ayuda Joomla!','joomla-help','http://help.joomla.org','url',1,0,0,0,3,0,'0000-00-00 00:00:00',0,0,0,3,'menu_image=-1\n\n',0,0,0),(14,'othermenu','OSM','osm-home','http://www.opensourcematters.org','url',1,0,0,0,4,0,'0000-00-00 00:00:00',0,0,0,4,'menu_image=-1\n\n',0,0,0),(15,'othermenu','Administración','administrator','administrator/','url',1,0,0,0,5,0,'0000-00-00 00:00:00',0,0,0,3,'menu_image=-1\n\n',0,0,0),(18,'topmenu','Noticias','news','index.php?option=com_newsfeeds&view=newsfeed&id=1&feedid=1','component',0,0,11,0,3,0,'0000-00-00 00:00:00',0,0,0,3,'show_page_title=1\npage_title=News\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n',0,0,0),(20,'usermenu','Tu Perfil','your-details','index.php?option=com_user&view=user&task=edit','component',1,0,14,0,1,0,'0000-00-00 00:00:00',0,0,1,3,'',0,0,0),(24,'usermenu','Cerrar sesión','logout','index.php?option=com_user&view=login','component',1,0,14,0,4,0,'0000-00-00 00:00:00',0,0,1,3,'',0,0,0),(38,'keyconcepts','Presentaciones','content-layouts','index.php?option=com_content&view=article&id=24','component',1,0,20,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',0,0,0),(27,'mainmenu','Visión general','joomla-overview','index.php?option=com_content&view=article&id=19','component',0,0,20,0,4,0,'0000-00-00 00:00:00',0,0,0,0,'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',0,0,0),(28,'topmenu','Sobre Joomla!','about-joomla','index.php?option=com_content&view=article&id=25','component',0,0,20,0,1,0,'0000-00-00 00:00:00',0,0,0,0,'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',0,0,0),(29,'topmenu','Características','features','index.php?option=com_content&view=article&id=22','component',0,0,20,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',0,0,0),(30,'topmenu','La comunidad','the-community','index.php?option=com_content&view=article&id=27','component',0,0,20,0,4,0,'0000-00-00 00:00:00',0,0,0,0,'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',0,0,0),(34,'mainmenu','¿Novedades en la 1.5?','what-is-new-in-1-5','index.php?option=com_content&view=article&id=22','component',0,27,20,1,1,62,'2010-08-25 22:17:26',0,0,0,0,'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',0,0,0),(40,'keyconcepts','Extensiones','extensions','index.php?option=com_content&view=article&id=26','component',1,0,20,0,1,0,'0000-00-00 00:00:00',0,0,0,0,'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',0,0,0),(37,'mainmenu','Más sobre Joomla!','more-about-joomla','index.php?option=com_content&view=article&layout=form','component',0,0,20,0,6,62,'2010-08-22 23:24:35',0,0,0,0,'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(43,'keyconcepts','Páginas de ejemplo','example-pages','index.php?option=com_content&view=article&id=43','component',1,0,20,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',0,0,0),(44,'ExamplePages','Blog de Sección','section-blog','index.php?option=com_content&view=section&layout=blog&id=3','component',1,0,20,0,1,0,'0000-00-00 00:00:00',0,0,0,0,'show_page_title=1\npage_title=Example of Section Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',0,0,0),(45,'ExamplePages','Tabla de Sección','section-table','index.php?option=com_content&view=section&id=3','component',1,0,20,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'show_page_title=1\npage_title=Example of Table Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nnlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',0,0,0),(46,'ExamplePages','Blog de Categoría','categoryblog','index.php?option=com_content&view=category&layout=blog&id=31','component',1,0,20,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'show_page_title=1\npage_title=Example of Category Blog layout (FAQs/General category)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',0,0,0),(47,'ExamplePages','Tabla de Categoría','category-table','index.php?option=com_content&view=category&id=32','component',1,0,20,0,4,0,'0000-00-00 00:00:00',0,0,0,0,'show_page_title=1\npage_title=Example of Category Table layout (FAQs/Languages category)\nshow_headings=1\nshow_date=0\ndate_format=\nfilter=1\nfilter_type=title\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_sec=\nshow_pagination=1\nshow_pagination_limit=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n',0,0,0),(48,'mainmenu','Enlaces Interesantes','web-links','index.php?option=com_weblinks&view=categories','component',0,0,4,0,9,62,'2010-08-26 00:07:01',0,0,0,0,'image=-1\nimage_align=right\nshow_feed_link=1\nshow_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\ntarget=\nlink_icons=\npage_title=Enlaces Interesantes\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(49,'mainmenu','Servidor de noticias','news-feeds','index.php?option=com_newsfeeds&view=categories','component',0,0,11,0,10,0,'0000-00-00 00:00:00',0,2,0,0,'show_limit=1\nshow_comp_description=1\ncomp_description=\nimage=-1\nimage_align=right\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\npage_title=Newsfeeds\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(50,'mainmenu','Noticias','the-news','index.php?option=com_content&view=category&layout=blog&id=1','component',1,0,20,0,8,0,'0000-00-00 00:00:00',0,0,0,0,'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=\npage_title=Noticias de La Bacaladera Hondarribia\nshow_page_title=1\npageclass_sfx=\nmenu_image=articles.jpg\nsecure=0\n\n',0,0,0),(51,'usermenu','Enviar artículo','submit-an-article','index.php?option=com_content&view=article&layout=form','component',1,0,20,0,2,0,'0000-00-00 00:00:00',0,0,2,0,'',0,0,0),(52,'usermenu','Enviar enlace','submit-a-web-link','index.php?option=com_weblinks&view=weblink&layout=form','component',1,0,4,0,3,0,'0000-00-00 00:00:00',0,0,2,0,'',0,0,0),(53,'othermenu','Joomla! Spanish','-joomla-spanish','http://www.joomlaspanish.org/','url',1,0,0,0,5,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(54,'mainmenu','El Club','elclub','index.php?option=com_content&view=article&id=47','component',1,0,20,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(57,'mainmenu','Historia','historia','index.php?option=com_content&view=article&id=47','component',1,54,20,1,1,62,'2010-11-01 23:40:19',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=0\nshow_vote=0\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(55,'mainmenu','Blogs interesantes','blogs','http://www.netvibes.com/bmhondarribia','url',0,0,0,0,11,62,'2010-08-22 23:07:15',0,2,0,0,'menu_image=-1\n\n',0,0,0),(56,'mainmenu','Patrocinadores','patrocinadores','index.php?option=com_content&view=section&id=6','component',0,0,20,0,12,0,'0000-00-00 00:00:00',0,0,0,0,'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=Patrociandores de La Bacaladera Hondarribia\nshow_page_title=1\npageclass_sfx=\nmenu_image=clock.jpg\nsecure=0\n\n',0,0,0),(58,'mainmenu','Contacto','contacto','index.php?option=com_contact&view=contact&id=1','component',1,0,7,0,17,0,'0000-00-00 00:00:00',0,0,0,0,'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=2\nicon_address=arrow.png\nicon_email=arrow.png\nicon_telephone=arrow.png\nicon_mobile=arrow.png\nicon_fax=arrow.png\nicon_misc=arrow.png\nshow_headings=0\nshow_position=0\nshow_email=0\nshow_telephone=0\nshow_mobile=0\nshow_fax=0\nallow_vcard=0\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=Contacto\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(59,'mainmenu','Equipos','equipos','index.php?option=com_joomsport&view=blteam&sid=1&tid=9','component',1,0,35,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(60,'mainmenu','Senior','senior','index.php?option=com_joomsport&view=blteam&sid=1&tid=9','component',1,59,35,1,1,62,'2010-11-01 23:43:17',0,0,0,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(61,'mainmenu','Juvenil','juvenil','index.php?option=com_joomsport&view=blteam&sid=2&tid=15','component',1,59,35,1,2,0,'0000-00-00 00:00:00',0,0,0,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(62,'mainmenu','Cadete','cadete','index.php?option=com_joomsport&view=blteam&sid=3&tid=16','component',1,59,35,1,3,0,'0000-00-00 00:00:00',0,0,0,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(63,'mainmenu','Competiciones','competiciones','index.php?option=com_joomsport&view=ltable&layout=calendar&sid=1','component',1,0,35,0,13,0,'0000-00-00 00:00:00',0,0,0,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(69,'mainmenu','Articulos Técnicos','articulos','index.php?option=com_k2&view=itemlist&layout=category&task=category&id=1','component',1,0,63,0,16,0,'0000-00-00 00:00:00',0,0,0,0,'categories=1\nfeedLink=1\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(64,'mainmenu','Liga Vasca Senior Masculino','liga-vasca-senior-masculino','index.php?option=com_joomsport&view=ltable&layout=calendar&sid=1','component',1,63,35,1,1,0,'0000-00-00 00:00:00',0,0,0,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(65,'mainmenu','Clasificación','clasificacion','index.php?option=com_joomsport&view=ltable&sid=1&gr_id=0','component',1,63,35,1,2,0,'0000-00-00 00:00:00',0,0,0,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(66,'mainmenu','Artículos Técnicos','articulos-tecnicos','index.php?option=com_content&view=section&id=9','component',0,0,20,0,14,0,'0000-00-00 00:00:00',0,0,0,0,'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(67,'mainmenu','Galeria de Imagenes','galeria-de-imagenes','index.php?option=com_joomgallery&view=gallery','component',1,0,50,0,15,0,'0000-00-00 00:00:00',0,0,0,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(68,'mainmenu','Imagenes','imagenes','index.php?option=com_joomgallery&view=category&catid=2','component',1,54,50,1,2,0,'0000-00-00 00:00:00',0,0,0,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0);
/*!40000 ALTER TABLE `jos_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_menu_types`
--

DROP TABLE IF EXISTS `jos_menu_types`;
CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(75) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_menu_types`
--

LOCK TABLES `jos_menu_types` WRITE;
/*!40000 ALTER TABLE `jos_menu_types` DISABLE KEYS */;
INSERT INTO `jos_menu_types` VALUES (1,'mainmenu','Menú principal','Este es el menú principal del sitio'),(2,'usermenu','Menú de usuario','Menú para usuarios logueados'),(3,'topmenu','Top Menu','Navegador principal'),(4,'othermenu','Recursos','Enlaces adicionales'),(5,'ExamplePages','Páginas de ejemplo','Páginas de ejemplo'),(6,'keyconcepts','Conceptos clave','Descripción de alguna información crítica para usuarios nuevos.');
/*!40000 ALTER TABLE `jos_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_messages`
--

DROP TABLE IF EXISTS `jos_messages`;
CREATE TABLE `jos_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` int(10) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` int(11) NOT NULL default '0',
  `priority` int(1) unsigned NOT NULL default '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_messages`
--

LOCK TABLES `jos_messages` WRITE;
/*!40000 ALTER TABLE `jos_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_messages_cfg`
--

DROP TABLE IF EXISTS `jos_messages_cfg`;
CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_messages_cfg`
--

LOCK TABLES `jos_messages_cfg` WRITE;
/*!40000 ALTER TABLE `jos_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_migration_backlinks`
--

DROP TABLE IF EXISTS `jos_migration_backlinks`;
CREATE TABLE `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_migration_backlinks`
--

LOCK TABLES `jos_migration_backlinks` WRITE;
/*!40000 ALTER TABLE `jos_migration_backlinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_migration_backlinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_modules`
--

DROP TABLE IF EXISTS `jos_modules`;
CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(50) default NULL,
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `numnews` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  `control` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_modules`
--

LOCK TABLES `jos_modules` WRITE;
/*!40000 ALTER TABLE `jos_modules` DISABLE KEYS */;
INSERT INTO `jos_modules` VALUES (1,'Menú principal','',6,'left',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,1,'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',1,0,''),(2,'Acceso','',1,'login',0,'0000-00-00 00:00:00',1,'mod_login',0,0,1,'',1,1,''),(3,'Popular','',3,'cpanel',0,'0000-00-00 00:00:00',1,'mod_popular',0,2,1,'',0,1,''),(4,'Artículos añadidos recientemente','',4,'cpanel',0,'0000-00-00 00:00:00',1,'mod_latest',0,2,1,'ordering=c_dsc\nuser_id=0\ncache=0\n\n',0,1,''),(5,'Menú de estadísticas','',5,'cpanel',0,'0000-00-00 00:00:00',1,'mod_stats',0,2,1,'',0,1,''),(6,'Los mensajes no leídos','',1,'header',0,'0000-00-00 00:00:00',1,'mod_unread',0,2,1,'',1,1,''),(7,'Usuarios Online','',2,'header',0,'0000-00-00 00:00:00',1,'mod_online',0,2,1,'',1,1,''),(8,'Toolbar','',1,'toolbar',0,'0000-00-00 00:00:00',1,'mod_toolbar',0,2,1,'',1,1,''),(9,'Iconos rápidos','',1,'icon',0,'0000-00-00 00:00:00',1,'mod_quickicon',0,2,1,'',1,1,''),(10,'Usuarios identificados','',2,'cpanel',0,'0000-00-00 00:00:00',1,'mod_logged',0,2,1,'',0,1,''),(11,'Footer','',0,'footer',0,'0000-00-00 00:00:00',1,'mod_footer',0,0,1,'',1,1,''),(12,'Menú Admin','',1,'menu',0,'0000-00-00 00:00:00',1,'mod_menu',0,2,1,'',0,1,''),(13,'Admin SubMenu','',1,'submenu',0,'0000-00-00 00:00:00',1,'mod_submenu',0,2,1,'',0,1,''),(14,'Estado del usuario','',1,'status',0,'0000-00-00 00:00:00',1,'mod_status',0,2,1,'',0,1,''),(15,'Título','',1,'title',0,'0000-00-00 00:00:00',1,'mod_title',0,2,1,'',0,1,''),(16,'Encuestas','',0,'right',0,'0000-00-00 00:00:00',1,'mod_poll',0,0,1,'id=14\ncache=1',0,0,''),(17,'Menú de usuario','',4,'left',0,'0000-00-00 00:00:00',0,'mod_mainmenu',0,1,1,'menutype=usermenu\nmoduleclass_sfx=_menu\ncache=1',1,0,''),(18,'Acceso','',8,'left',0,'0000-00-00 00:00:00',0,'mod_login',0,0,1,'greeting=1\nname=0',1,0,''),(19,'Últimas noticias','',4,'user1',0,'0000-00-00 00:00:00',0,'mod_latestnews',0,0,1,'cache=1',1,0,''),(20,'Estadísticas','',6,'left',0,'0000-00-00 00:00:00',0,'mod_stats',0,0,1,'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=',0,0,''),(21,'¿Quién está en línea?','',14,'right',0,'0000-00-00 00:00:00',1,'mod_whosonline',0,0,1,'online=1\nusers=1\nmoduleclass_sfx=',0,0,''),(22,'Popular','',0,'user2',0,'0000-00-00 00:00:00',0,'mod_mostread',0,0,1,'moduleclass_sfx=\nshow_front=1\ncount=5\ncatid=\nsecid=\ncache=1\ncache_time=900\n\n',0,0,''),(23,'Archivo','',9,'left',0,'0000-00-00 00:00:00',0,'mod_archive',0,0,1,'cache=1',1,0,''),(24,'Secciones','',10,'left',0,'0000-00-00 00:00:00',0,'mod_sections',0,0,1,'cache=1',1,0,''),(25,'Newsflash','',1,'top',0,'0000-00-00 00:00:00',0,'mod_newsflash',0,0,1,'catid=3\r\nstyle=random\r\nitems=\r\nmoduleclass_sfx=',0,0,''),(26,'Items relacionados','',11,'left',0,'0000-00-00 00:00:00',0,'mod_related_items',0,0,1,'',0,0,''),(27,'Buscar','',1,'user4',0,'0000-00-00 00:00:00',1,'mod_search',0,0,0,'cache=1',0,0,''),(28,'Imagen aleatoria','',3,'right',0,'0000-00-00 00:00:00',0,'mod_random_image',0,0,1,'',0,0,''),(29,'Menú principal','',1,'user3',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,0,'cache=1\nmenutype=topmenu\nmenu_style=list_flat\nmenu_images=n\nmenu_images_align=left\nexpand_menu=n\nclass_sfx=-nav\nmoduleclass_sfx=\nindent_image1=0\nindent_image2=0\nindent_image3=0\nindent_image4=0\nindent_image5=0\nindent_image6=0',1,0,''),(30,'Anuncios','',1,'footer',0,'0000-00-00 00:00:00',0,'mod_banners',0,0,0,'target=1\ncount=1\ncid=1\ncatid=33\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n',1,0,''),(31,'Recursos','',2,'left',0,'0000-00-00 00:00:00',0,'mod_mainmenu',0,0,1,'menutype=othermenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',0,0,''),(32,'Wrapper','',12,'left',0,'0000-00-00 00:00:00',0,'mod_wrapper',0,0,1,'',0,0,''),(33,'Pié de página','',2,'footer',0,'0000-00-00 00:00:00',1,'mod_footer',0,0,0,'cache=1\n\n',1,0,''),(34,'Visor de noticias','',13,'left',0,'0000-00-00 00:00:00',0,'mod_feed',0,0,1,'',1,0,''),(35,'Ruta','',1,'breadcrumb',0,'0000-00-00 00:00:00',1,'mod_breadcrumbs',0,0,1,'moduleclass_sfx=\ncache=0\nshowHome=1\nhomeText=Home\nshowComponent=1\nseparator=\n\n',1,0,''),(36,'Syndication','',3,'syndicate',0,'0000-00-00 00:00:00',1,'mod_syndicate',0,0,0,'',1,0,''),(37,'Recursos','',7,'left',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,1,'menutype=othermenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',0,0,''),(38,'Anuncios','',2,'right',0,'0000-00-00 00:00:00',0,'mod_banners',0,0,1,'count=4\r\nrandomise=0\r\ncid=0\r\ncatid=14\r\nheader_text=Featured Links:\r\nfooter_text=<a href=\"http://www.joomla.org\">Ads by Joomla!</a>\r\nmoduleclass_sfx=_text\r\ncache=0\r\n\r\n',0,0,''),(39,'Páginas de ejemplo','',5,'left',0,'0000-00-00 00:00:00',0,'mod_mainmenu',0,0,1,'cache=1\nclass_sfx=\nmoduleclass_sfx=_menu\nmenutype=ExamplePages\nmenu_style=list_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nfull_active_id=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\nwindow_open=\n\n',0,0,''),(40,'Conceptos clave','',3,'left',0,'0000-00-00 00:00:00',0,'mod_mainmenu',0,0,1,'cache=1\nclass_sfx=\nmoduleclass_sfx=_menu\nmenutype=keyconcepts\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nfull_active_id=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\nwindow_open=\n\n',0,0,''),(41,'Bienvenido a Joomla!','<div style=\"padding: 5px\"><p>Felicidades por elegir Joomla! como tu sistema de gestión de contenido. Esperamos que puedas crear con éxito un sitio web con nuestro programa y quizá que puedas aportar algo a la comunidad más adelante.</p><p>Para hacer que empiceces con Joomla! lo mejor y más rapidamente posible, queremos darte unos cuantos puntos de referencia a la documentación, preguntas frecuentas y ayuda sobre la seguridad de tu servidor. Un buen lugar donde empezar es en &quot;<a href=\"http://www.joomlaspanish.org/foros/index.php\" target=\"_blank\">Foros de la comunidad de Joomla! spanish</a>&quot;.</p><p>Nota: Para eliminar este mensaje de &quot;Bienvenido a Joomla!&quot; accede al gestor de módulos (en el gestor de extensiones).  Aquí hay un <a href=\"index.php?option=com_modules&amp;client=1\">enlace rápido</a> a esa pantalla.</p></div>',1,'cpanel',0,'0000-00-00 00:00:00',1,'mod_custom',0,2,1,'moduleclass_sfx=\n\n',1,1,''),(42,'Patrocinadores','',0,'right',0,'0000-00-00 00:00:00',0,'mod_banners',0,0,1,'target=1\ncount=1\ncid=2\ncatid=14\ntag_search=0\nordering=0\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n',0,0,''),(43,'Patrocinadores 1','',3,'right',0,'0000-00-00 00:00:00',0,'mod_banners',0,0,0,'target=1\ncount=1\ncid=3\ncatid=14\ntag_search=0\nordering=0\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n',0,0,''),(44,'Google Analytics Tracking Module','',14,'debug',0,'0000-00-00 00:00:00',0,'mod_analytics',0,0,0,'ucode=UA-18127982\nudn=\nstate=1\nhttps=0\n\n',0,0,''),(45,'Google Analytics Tracking Module (Multiple Accounts)','',0,'debug',0,'0000-00-00 00:00:00',0,'mod_analytics_multi',0,0,0,'ucode1=UA-18127982-1\nucode2=\nucode3=\nsubdtrack=0\nsubdroot=\ntruser=1\nsampler=\ntrbrowse=1\ntrcookie=1\ntrflash=1\ntrtitle=1\nsession=\nsearch1=\nsearch2=\nkeyword1=\nkeyword2=\nreferrer1=\nreferrer2=\n\n',0,0,''),(46,'JoomGallery News','',1,'joom_cpanel',0,'0000-00-00 00:00:00',1,'mod_feed',0,0,1,'cache=1\n    cache_time=15\n    moduleclass_sfx=\n    rssurl=http://www.en.joomgallery.net/feed/rss.html\n    rssrtl=0\n    rsstitle=1\n    rssdesc=0\n    rssimage=1\n    rssitems=3\n    rssitemdesc=1\n    word_count=30',0,1,''),(47,'La bacaladera','',1,'right',0,'0000-00-00 00:00:00',1,'mod_banners',0,0,0,'target=1\ncount=1\ncid=4\ncatid=41\ntag_search=0\nordering=0\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n',0,0,''),(48,'Ayuntamiento de Hondarribia','',1,'right',0,'0000-00-00 00:00:00',1,'mod_banners',0,0,0,'target=1\ncount=1\ncid=5\ncatid=41\ntag_search=0\nordering=0\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n',0,0,''),(49,'Martiarena electricidad','',10,'right',0,'0000-00-00 00:00:00',1,'mod_banners',0,0,0,'target=1\ncount=1\ncid=6\ncatid=41\ntag_search=0\nordering=0\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n',0,0,''),(50,'Patrocinadores','',0,'right',0,'0000-00-00 00:00:00',1,'mod_banners',0,0,1,'target=1\ncount=1\ncid=8\ncatid=41\ntag_search=0\nordering=0\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n',0,0,''),(51,'RokSlideshow','',0,'showcase2',0,'0000-00-00 00:00:00',1,'mod_rokslideshow',0,0,0,'moduleclass_sfx=\nwidth=570\nheight=200\nimagePath=images/header\nloadingDiv=1\nexternals=0\nshowCaption=1\nshowTitleCaption=1\nheightCaption=45\ntitleSize=13px\ntitleColor=#fff\ndescSize=11px\ndescColor=#ccc\nsortCriteria=0\nsortOrder=2\nsortOrderManual=\nimageResize=1\nimageDuration=9000\ntransDuration=2000\ntransType=combo\npan=50\nzoom=50\ntransition=Expo.easeOut\n\n',0,0,''),(52,'Pastelería Hawwai','',9,'right',0,'0000-00-00 00:00:00',1,'mod_banners',0,0,0,'target=0\ncount=1\ncid=9\ncatid=41\ntag_search=0\nordering=0\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n',0,0,''),(53,'Centro Médico Bidasoa','',11,'right',0,'0000-00-00 00:00:00',1,'mod_banners',0,0,0,'target=1\ncount=1\ncid=10\ncatid=41\ntag_search=0\nordering=0\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n',0,0,''),(54,'K2 Comments','',14,'left',0,'0000-00-00 00:00:00',0,'mod_k2_comments',0,0,1,'comments_limit=5\ncomments_word_limit=10\ncommenterName=1\ncommentAvatar=1\ncommentAvatarWidthSelect=custom\ncommentAvatarWidth=50\ncommentDate=1\ncommentDateFormat=absolute\ncommentLink=1\nitemTitle=1\nitemCategory=1\nfeed=1\ncommenters_limit=5\ncommenterAvatar=1\ncommenterAvatarWidthSelect=custom\ncommenterAvatarWidth=50\ncommenterLink=1\ncommenterCommentsCounter=1\ncommenterLatestComment=1\n',0,0,''),(55,'K2 Content','',15,'left',0,'0000-00-00 00:00:00',0,'mod_k2_content',0,0,1,'getTemplate=Default\nsource=filter\nitemCount=5\nFeaturedItems=1\nitemTitle=1\nitemAuthor=1\nitemAuthorAvatar=1\nitemAuthorAvatarWidthSelect=custom\nitemAuthorAvatarWidth=50\nuserDescription=1\nitemIntroText=1\nitemImage=1\nitemImgSize=Small\nitemVideo=1\nitemVideoCaption=1\nitemVideoCredits=1\nitemAttachments=1\nitemTags=1\nitemCategory=1\nitemDateCreated=1\nitemHits=1\nitemReadMore=1\nitemCommentsCounter=1\nfeed=1\nitemCustomLinkURL=http://\n',0,0,''),(56,'K2 Login','',16,'left',0,'0000-00-00 00:00:00',0,'mod_k2_login',0,0,1,'name=1\nuserAvatar=1\nuserAvatarWidthSelect=custom\nuserAvatarWidth=50\n',0,0,''),(57,'K2 Tools','',17,'left',0,'0000-00-00 00:00:00',0,'mod_k2_tools',0,0,1,'archiveItemsCounter=1\nauthorItemsCounter=1\nauthorAvatar=1\nauthorAvatarWidthSelect=custom\nauthorAvatarWidth=50\nauthorLatestItem=1\ncategoriesListItemsCounter=1\nwidth=20\nmin_size=75\nmax_size=300\ncloud_limit=30\n',0,0,''),(58,'K2 Users','',18,'left',0,'0000-00-00 00:00:00',0,'mod_k2_users',0,0,1,'getTemplate=Default\nfilter=1\nordering=1\nlimit=4\nuserName=1\nuserAvatar=1\nuserAvatarWidthSelect=custom\nuserAvatarWidth=50\nuserDescription=1\nuserURL=1\nuserFeed=1\nuserItemCount=1\n',0,0,''),(59,'K2 QuickIcons (admin)','',99,'icon',0,'0000-00-00 00:00:00',1,'mod_k2_quickicons',0,2,1,'modCSSStyling=1\nmodLogo=1\n',0,1,''),(60,'CSVP','',12,'right',0,'0000-00-00 00:00:00',1,'mod_banners',0,0,0,'target=1\ncount=1\ncid=11\ncatid=41\ntag_search=0\nordering=0\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n',0,0,''),(61,'grs','',13,'right',0,'0000-00-00 00:00:00',1,'mod_banners',0,0,0,'target=1\ncount=1\ncid=12\ncatid=41\ntag_search=0\nordering=0\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n',0,0,'');
/*!40000 ALTER TABLE `jos_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_modules_menu`
--

DROP TABLE IF EXISTS `jos_modules_menu`;
CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_modules_menu`
--

LOCK TABLES `jos_modules_menu` WRITE;
/*!40000 ALTER TABLE `jos_modules_menu` DISABLE KEYS */;
INSERT INTO `jos_modules_menu` VALUES (1,0),(16,1),(17,0),(18,1),(19,1),(19,2),(19,4),(19,27),(19,36),(21,1),(22,1),(25,0),(27,0),(29,0),(30,0),(31,1),(32,0),(33,0),(34,0),(35,0),(36,0),(38,1),(39,43),(39,44),(39,45),(39,46),(39,47),(40,0),(42,0),(43,0),(44,0),(45,0),(47,0),(48,0),(49,0),(50,0),(51,1),(52,0),(53,0),(54,0),(55,0),(56,0),(57,0),(58,0),(59,0),(60,0),(61,0);
/*!40000 ALTER TABLE `jos_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_newsfeeds`
--

DROP TABLE IF EXISTS `jos_newsfeeds`;
CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text NOT NULL,
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(11) unsigned NOT NULL default '1',
  `cache_time` int(11) unsigned NOT NULL default '3600',
  `checked_out` tinyint(3) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_newsfeeds`
--

LOCK TABLES `jos_newsfeeds` WRITE;
/*!40000 ALTER TABLE `jos_newsfeeds` DISABLE KEYS */;
INSERT INTO `jos_newsfeeds` VALUES (4,1,'Joomla! - Noticias oficiales','joomla-official-news','http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_frontpage&Itemid=1','',1,5,3600,0,'0000-00-00 00:00:00',8,0),(4,2,'Joomla! - Noticias de la comunidad','joomla-community-news','http://www.joomla.org/index.php?option=com_rss_xtd&feed=RSS2.0&type=com_content&task=blogcategory&id=0&Itemid=33','',1,5,3600,0,'0000-00-00 00:00:00',9,0),(6,3,'Linux hoy','linux-today','http://linuxtoday.com/backend/my-netscape.rdf','',1,3,3600,0,'0000-00-00 00:00:00',1,0),(5,4,'Noticias de negocios','business-news','http://headlines.internet.com/internetnews/bus-news/news.rss','',1,3,3600,0,'0000-00-00 00:00:00',2,0),(7,5,'Noticias de desarrolladores','web-developer-news','http://headlines.internet.com/internetnews/wd-news/news.rss','',1,3,3600,0,'0000-00-00 00:00:00',3,0),(6,6,'Linux Central:Nuevos productos','linux-central-news-products','http://linuxcentral.com/backend/lcnew.rdf','',1,3,3600,0,'0000-00-00 00:00:00',4,0),(6,7,'Linux Central:Los mejores','linux-central-best-selling','http://linuxcentral.com/backend/lcbestns.rdf','',1,3,3600,0,'0000-00-00 00:00:00',5,0),(6,8,'Linux Central:Especiales','linux-central-daily-specials','http://linuxcentral.com/backend/lcspecialns.rdf','',1,3,3600,0,'0000-00-00 00:00:00',6,0),(34,9,'Portal Joomla! Spanish','portal-joomla-spanish','http://www.joomlaspanish.org/component/option,com_rss/feed,RSS2.0/no_html,1/',NULL,1,5,3600,0,'0000-00-00 00:00:00',1,0),(34,10,'Centro de Extensiones Joomla! Spanish','centro-de-extensiones-joomla-spanish','http://extensiones.joomlaspanish.org/index.php?option=com_remository&Itemid=27&func=rss&no_html=1',NULL,1,15,3600,0,'0000-00-00 00:00:00',2,0);
/*!40000 ALTER TABLE `jos_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_plugins`
--

DROP TABLE IF EXISTS `jos_plugins`;
CREATE TABLE `jos_plugins` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `element` varchar(100) NOT NULL default '',
  `folder` varchar(100) NOT NULL default '',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `published` tinyint(3) NOT NULL default '0',
  `iscore` tinyint(3) NOT NULL default '0',
  `client_id` tinyint(3) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_plugins`
--

LOCK TABLES `jos_plugins` WRITE;
/*!40000 ALTER TABLE `jos_plugins` DISABLE KEYS */;
INSERT INTO `jos_plugins` VALUES (1,'Autenticación - Joomla','joomla','authentication',0,1,1,1,0,0,'0000-00-00 00:00:00',''),(2,'Autenticación - LDAP','ldap','authentication',0,2,0,1,0,0,'0000-00-00 00:00:00','host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),(3,'Autenticación - GMail','gmail','authentication',0,4,0,0,0,0,'0000-00-00 00:00:00',''),(4,'Autenticación - OpenID','openid','authentication',0,3,0,0,0,0,'0000-00-00 00:00:00',''),(5,'Usuario - Joomla!','joomla','user',0,0,1,0,0,0,'0000-00-00 00:00:00','autoregister=1\n\n'),(6,'Buscar - Contenido','content','search',0,1,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),(7,'Buscar - Contactos','contacts','search',0,3,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(8,'Buscar - Categorías','categories','search',0,4,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(9,'Buscar - Secciones','sections','search',0,5,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(10,'Buscar - Newsfeeds','newsfeeds','search',0,6,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(11,'Buscar - Weblinks','weblinks','search',0,2,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(12,'Contenido - Pagebreak','pagebreak','content',0,10000,1,1,0,0,'0000-00-00 00:00:00','enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),(13,'Contenido - Votar','vote','content',0,4,1,1,0,0,'0000-00-00 00:00:00',''),(14,'Contenido - Email Cloaking','emailcloak','content',0,5,1,0,0,0,'0000-00-00 00:00:00','mode=1\n\n'),(15,'Contenido - Code Hightlighter (GeSHi)','geshi','content',0,5,0,0,0,0,'0000-00-00 00:00:00',''),(16,'Contenido - Cargar módulo','loadmodule','content',0,6,1,0,0,0,'0000-00-00 00:00:00','enabled=1\nstyle=0\n\n'),(17,'Contenido - Page Navigation','pagenavigation','content',0,2,1,1,0,0,'0000-00-00 00:00:00','position=1\n\n'),(18,'Editor - No Editor','none','editors',0,0,1,1,0,0,'0000-00-00 00:00:00',''),(19,'Editor - TinyMCE','tinymce','editors',0,0,1,1,0,0,'0000-00-00 00:00:00','theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=es\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n'),(20,'Editor - XStandard Lite 2.0','xstandard','editors',0,0,1,1,0,0,'0000-00-00 00:00:00',''),(21,'Editor Botón - Imagen','image','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(22,'Editor Botón - Pagebreak','pagebreak','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(23,'Editor Botón - Leer más','readmore','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(24,'XML-RPC - Joomla','joomla','xmlrpc',0,7,0,1,0,0,'0000-00-00 00:00:00',''),(25,'XML-RPC - Blogger API','blogger','xmlrpc',0,7,0,1,0,0,'0000-00-00 00:00:00','catid=1\nsectionid=0\n\n'),(27,'Sistema - SEF','sef','system',0,1,1,0,0,0,'0000-00-00 00:00:00',''),(28,'Sistema - Debug','debug','system',0,2,1,0,0,0,'0000-00-00 00:00:00','queries=1\nmemory=1\nlangauge=1\n\n'),(29,'Sistema - Legado','legacy','system',0,3,0,1,0,0,'0000-00-00 00:00:00','route=0\n\n'),(30,'Sistema - Cache','cache','system',0,4,0,1,0,0,'0000-00-00 00:00:00','browsercache=0\ncachetime=15\n\n'),(31,'Sistema - Log','log','system',0,5,0,1,0,0,'0000-00-00 00:00:00',''),(32,'Sistema - Recordarme','remember','system',0,6,1,1,0,0,'0000-00-00 00:00:00',''),(33,'Sistema - Backlink','backlink','system',0,7,0,1,0,0,'0000-00-00 00:00:00',''),(34,'System - Mootools Upgrade','mtupgrade','system',0,0,0,0,0,0,'0000-00-00 00:00:00',''),(35,'AS Google Analytics','asgoogleanalytics','system',0,0,1,0,0,0,'0000-00-00 00:00:00','id_ga=UA-18127982-1\nnombre_dominio=www.cbhondarribia.com\ncookie_utmz=\ncodigo_personalizado=var _gaq = _gaq \\|\\| [];\\n  _gaq.push([\'_setAccount\', \'UA-18127982-1\']);\\n  _gaq.push([\'_trackPageview\']);\ncodigo_personalizado_despues=(function() {\\n    var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;\\n    ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';\\n    var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\\n  })();\n\n'),(36,'Search - K2','k2','search',0,0,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n'),(37,'System - K2','k2','system',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(38,'User - K2','k2','user',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(39,'Editor - JCE','jce','editors',0,0,1,0,0,0,'0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `jos_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_data`
--

DROP TABLE IF EXISTS `jos_poll_data`;
CREATE TABLE `jos_poll_data` (
  `id` int(11) NOT NULL auto_increment,
  `pollid` int(11) NOT NULL default '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_poll_data`
--

LOCK TABLES `jos_poll_data` WRITE;
/*!40000 ALTER TABLE `jos_poll_data` DISABLE KEYS */;
INSERT INTO `jos_poll_data` VALUES (1,14,'Comunidades-Grupos',2),(2,14,'Sitios públicos',3),(3,14,'Comercio electrónico',1),(4,14,'Blogs',0),(5,14,'Intranets',0),(6,14,'Fotos y sitios multimedia',2),(7,14,'Para todo lo anterior!',3),(8,14,'',0),(9,14,'',0),(10,14,'',0),(11,14,'',0),(12,14,'',0);
/*!40000 ALTER TABLE `jos_poll_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_date`
--

DROP TABLE IF EXISTS `jos_poll_date`;
CREATE TABLE `jos_poll_date` (
  `id` bigint(20) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL default '0',
  `poll_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_poll_date`
--

LOCK TABLES `jos_poll_date` WRITE;
/*!40000 ALTER TABLE `jos_poll_date` DISABLE KEYS */;
INSERT INTO `jos_poll_date` VALUES (1,'2006-10-09 13:01:58',1,14),(2,'2006-10-10 15:19:43',7,14),(3,'2006-10-11 11:08:16',7,14),(4,'2006-10-11 15:02:26',2,14),(5,'2006-10-11 15:43:03',7,14),(6,'2006-10-11 15:43:38',7,14),(7,'2006-10-12 00:51:13',2,14),(8,'2007-05-10 19:12:29',3,14),(9,'2007-05-14 14:18:00',6,14),(10,'2007-06-10 15:20:29',6,14),(11,'2007-07-03 12:37:53',2,14);
/*!40000 ALTER TABLE `jos_poll_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_menu`
--

DROP TABLE IF EXISTS `jos_poll_menu`;
CREATE TABLE `jos_poll_menu` (
  `pollid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_poll_menu`
--

LOCK TABLES `jos_poll_menu` WRITE;
/*!40000 ALTER TABLE `jos_poll_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_poll_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_polls`
--

DROP TABLE IF EXISTS `jos_polls`;
CREATE TABLE `jos_polls` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `voters` int(9) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `lag` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_polls`
--

LOCK TABLES `jos_polls` WRITE;
/*!40000 ALTER TABLE `jos_polls` DISABLE KEYS */;
INSERT INTO `jos_polls` VALUES (14,'¿Para qué usas Joomla!?','joomla-is-used-for',11,0,'0000-00-00 00:00:00',0,0,86400);
/*!40000 ALTER TABLE `jos_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_sections`
--

DROP TABLE IF EXISTS `jos_sections`;
CREATE TABLE `jos_sections` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_sections`
--

LOCK TABLES `jos_sections` WRITE;
/*!40000 ALTER TABLE `jos_sections` DISABLE KEYS */;
INSERT INTO `jos_sections` VALUES (1,'Noticias','','news','articles.jpg','content','right','Selecciona un nuevo tema desde la lista de más abajo y luego un artículo a leer.',1,62,'2010-08-25 21:58:00',3,0,3,''),(3,'FAQs','','faqs','key.jpg','content','left','<p>Selecciona, de la lista de más abajo, un tema de las FAQs y luego una FAQ a leer. Si tienes alguna pregunta que no encuentres es esta sección, por favor, contáctanos.</p>',1,62,'2010-08-20 13:50:55',5,1,23,''),(4,'Sobre Joomla!','','about-joomla','','content','left','',1,0,'0000-00-00 00:00:00',2,0,14,''),(5,'El Club','','elclub','key.jpg','content','left','',1,0,'0000-00-00 00:00:00',6,0,0,''),(6,'Patrocinadores','','patrocinadores','taking_notes.jpg','content','left','<h1><em><strong><span class=\"caption\">Patrocinadores de La Bacaladera Hondarribia</span></strong></em></h1>\r\n<p> </p>',1,0,'0000-00-00 00:00:00',7,0,0,''),(7,'Equipos','','equipos','','content','left','<p>Equipos de La Bacaladera Hondarribia</p>',1,0,'0000-00-00 00:00:00',8,0,4,''),(8,'Competiciones','','competiciones','','content','left','',1,0,'0000-00-00 00:00:00',9,0,0,''),(9,'Artículos Técnicos','','articulos-tecnicos','','content','left','',1,0,'0000-00-00 00:00:00',10,0,2,'');
/*!40000 ALTER TABLE `jos_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_session`
--

DROP TABLE IF EXISTS `jos_session`;
CREATE TABLE `jos_session` (
  `username` varchar(150) default '',
  `time` varchar(14) default '',
  `session_id` varchar(200) NOT NULL default '0',
  `guest` tinyint(4) default '1',
  `userid` int(11) default '0',
  `usertype` varchar(50) default '',
  `gid` tinyint(3) unsigned NOT NULL default '0',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `data` longtext,
  PRIMARY KEY  (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_session`
--

LOCK TABLES `jos_session` WRITE;
/*!40000 ALTER TABLE `jos_session` DISABLE KEYS */;
INSERT INTO `jos_session` VALUES ('','1288995178','b5j0da76ubk1crsm8s28v4gis7',1,0,'',0,0,'__default|a:7:{s:15:\"session.counter\";i:16;s:19:\"session.timer.start\";i:1288995041;s:18:\"session.timer.last\";i:1288995158;s:17:\"session.timer.now\";i:1288995178;s:22:\"session.client.browser\";s:173:\"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.2)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:69:\"/home/content/52/6581652/html/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}');
/*!40000 ALTER TABLE `jos_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_stats_agents`
--

DROP TABLE IF EXISTS `jos_stats_agents`;
CREATE TABLE `jos_stats_agents` (
  `agent` varchar(255) NOT NULL default '',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_stats_agents`
--

LOCK TABLES `jos_stats_agents` WRITE;
/*!40000 ALTER TABLE `jos_stats_agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_stats_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_templates_menu`
--

DROP TABLE IF EXISTS `jos_templates_menu`;
CREATE TABLE `jos_templates_menu` (
  `template` varchar(255) NOT NULL default '',
  `menuid` int(11) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_templates_menu`
--

LOCK TABLES `jos_templates_menu` WRITE;
/*!40000 ALTER TABLE `jos_templates_menu` DISABLE KEYS */;
INSERT INTO `jos_templates_menu` VALUES ('rt_versatility4_j15',0,0),('khepri',0,1);
/*!40000 ALTER TABLE `jos_templates_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_users`
--

DROP TABLE IF EXISTS `jos_users`;
CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `gid` tinyint(3) unsigned NOT NULL default '1',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_users`
--

LOCK TABLES `jos_users` WRITE;
/*!40000 ALTER TABLE `jos_users` DISABLE KEYS */;
INSERT INTO `jos_users` VALUES (62,'Administrator','admin','jdelahaza@telefonica.net','c2a0e664d5d3a375560b3b3819c58890:98lblPGNOdoFQCsZsBzcE4q68eqKDMMu','Super Administrator',0,1,25,'2010-08-18 22:57:42','2010-11-04 00:04:54','',''),(63,'Ramon Aranmburu','raramburu','jdelahaza@terra.es','70db11478f7d96176602b234f0667c45:X6V2t1TCnBV8C9gDN6alEwcOmp9JhHyK','Manager',0,0,23,'2010-08-19 06:04:08','2010-08-22 21:23:40','','admin_language=es-ES\nlanguage=es-ES\neditor=\nhelpsite=\ntimezone=1\n\n'),(64,'Iker Mateos','imateos','javi@terra.es','f096834664281868ba79362f95ca4cfa:Vo2mFdjBTgXuM9k6uvVg4q9RiYOMkPmg','Registered',0,0,18,'2010-08-19 06:08:13','0000-00-00 00:00:00','','language=\ntimezone=0\n\n'),(65,'Aitor Mateos','amateos','javi@telefonica.net','02f222c7c57b3ef565b2b2b039dac3f3:0HInwl37ZY8NSEGtLRhmmQcvCuy8qUt2','Registered',0,0,18,'2010-08-22 21:10:47','2010-08-22 21:19:51','','language=es-ES\ntimezone=1\n\n'),(66,'Blogs interesantes','aaaaaa','aaaaa@terra.es','6e44ab01ebaf3d3f6b537bb4c6b7a22d:UG6vs6zNsuqIf9RPsZ9HJkKQD7J4QZ2y','Registered',0,0,18,'2010-08-25 22:53:53','2010-08-25 23:02:39','7f08dce727074f38d2acf27a263ed7dc','language=\ntimezone=0\n\n');
/*!40000 ALTER TABLE `jos_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_weblinks`
--

DROP TABLE IF EXISTS `jos_weblinks`;
CREATE TABLE `jos_weblinks` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_weblinks`
--

LOCK TABLES `jos_weblinks` WRITE;
/*!40000 ALTER TABLE `jos_weblinks` DISABLE KEYS */;
INSERT INTO `jos_weblinks` VALUES (1,2,0,'Joomla!','joomla','http://www.joomla.org','Joomla!','2010-08-22 22:45:59',3,1,0,'0000-00-00 00:00:00',1,0,1,'target=0\n\n'),(2,2,0,'php.net','php','http://www.php.net','El lenguaje de programación en el que está escrito Joomla!','2004-07-07 11:33:24',6,1,62,'2010-08-22 22:39:02',3,0,1,''),(3,2,0,'MySQL','mysql','http://www.mysql.com','La base de datos que usa Joomla!','2004-07-07 10:18:31',1,1,0,'0000-00-00 00:00:00',5,0,1,''),(4,2,0,'OpenSourceMatters','opensourcematters','http://www.opensourcematters.org','OSM','2005-02-14 15:19:02',11,1,0,'0000-00-00 00:00:00',2,0,1,'target=0'),(5,2,0,'Joomla! - Foros','joomla-forums','http://forum.joomla.org','Foros de Joomla!','2005-02-14 15:19:02',4,1,0,'0000-00-00 00:00:00',4,0,1,'target=0'),(6,2,0,'Ohloh Tracking de Joomla!','ohloh-tracking-of-joomla','http://www.ohloh.net/projects/20','Informes objetivos sobre el desarrollo de Joomla. Joomla! tiene algunos desarrolladores estrella.','2007-07-19 09:28:31',1,1,0,'0000-00-00 00:00:00',6,0,1,'target=0\n\n'),(7,35,0,'BM Ciudad Real','bmciudadreal','http://www.balonmanociudadreal.net/','Web oficial del Club Balonmano Ciudad Real','2010-08-22 22:45:44',5,1,0,'0000-00-00 00:00:00',2,0,1,'target=2\n\n'),(8,35,0,'F.C. Barcelona Borges','fcbarcelona','http://www.fcbarcelona.es/web/castellano/handbol/index.html','','2010-08-22 22:49:20',3,1,0,'0000-00-00 00:00:00',3,0,1,'target=2\n\n'),(9,36,0,'THW Kiel','thwkiel','http://www.thw-provinzial.de/thw/thw.htm','','2010-08-22 22:58:40',2,1,0,'0000-00-00 00:00:00',1,0,1,'target=2\n\n');
/*!40000 ALTER TABLE `jos_weblinks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-11-05 22:48:06
