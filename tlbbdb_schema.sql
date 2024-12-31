-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: tlbbdb
-- ------------------------------------------------------
-- Server version	5.5.68-MariaDB

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
-- Table structure for table `t_ability`
--

DROP TABLE IF EXISTS `t_ability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_ability` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `charguid` int(11) NOT NULL,
  `abid` smallint(6) NOT NULL,
  `ablvl` smallint(6) NOT NULL,
  `abexp` int(10) unsigned NOT NULL,
  `dbversion` int(11) DEFAULT '0',
  `isvalid` int(11) DEFAULT '1',
  PRIMARY KEY (`aid`) USING BTREE,
  KEY `Index_ab_charguid` (`charguid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11506 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_char`
--

DROP TABLE IF EXISTS `t_char`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_char` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `accname` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `charguid` int(11) NOT NULL,
  `charname` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(50) NOT NULL,
  `pw` varchar(15) NOT NULL,
  `sex` smallint(6) NOT NULL,
  `level` int(11) NOT NULL,
  `enegry` int(11) NOT NULL,
  `energymax` int(11) NOT NULL,
  `outlook` int(11) NOT NULL,
  `scene` int(11) NOT NULL,
  `xpos` int(11) NOT NULL,
  `zpos` int(11) NOT NULL,
  `menpai` smallint(6) NOT NULL,
  `hp` int(11) NOT NULL,
  `mp` int(11) NOT NULL,
  `strikepoint` smallint(6) NOT NULL,
  `str` int(11) NOT NULL,
  `spr` int(11) NOT NULL,
  `con` int(11) NOT NULL,
  `ipr` int(11) NOT NULL,
  `dex` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `logouttime` int(11) NOT NULL,
  `logintime` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `haircolor` int(11) NOT NULL,
  `hairmodel` int(11) NOT NULL,
  `facecolor` int(11) NOT NULL,
  `facemodel` int(11) NOT NULL,
  `vmoney` int(11) NOT NULL,
  `isvalid` smallint(6) NOT NULL,
  `exp` int(11) NOT NULL,
  `pres` text NOT NULL,
  `mdata` text,
  `mflag` text,
  `relflag` text,
  `settings` text,
  `dbversion` int(11) NOT NULL DEFAULT '0',
  `shopinfo` text,
  `carrypet` varchar(20) NOT NULL,
  `guldid` int(11) NOT NULL,
  `teamid` int(11) NOT NULL,
  `headid` int(11) NOT NULL,
  `erecover` int(11) NOT NULL,
  `vigor` int(11) NOT NULL,
  `maxvigor` int(11) NOT NULL,
  `vrecover` int(11) NOT NULL,
  `pwdeltime` int(11) NOT NULL,
  `pinfo` text,
  `bkscene` int(11) DEFAULT NULL,
  `bkxpos` int(11) DEFAULT NULL,
  `bkzpos` int(11) DEFAULT NULL,
  `titleinfo` text,
  `dietime` int(11) NOT NULL,
  `cooldown` text,
  `bankmoney` int(11) NOT NULL,
  `bankend` int(11) NOT NULL,
  `rage` int(11) DEFAULT '0',
  `reserve` varchar(100) DEFAULT NULL,
  `dinfo` int(11) DEFAULT '0',
  `defeq` int(11) DEFAULT '-1',
  `guildpoint` int(11) DEFAULT '0',
  `menpaipoint` int(11) DEFAULT '0',
  `gevil` int(11) DEFAULT '0',
  `pkvalue` int(11) DEFAULT '0',
  `otime` int(11) DEFAULT '0',
  `deltime` int(11) DEFAULT '0',
  `expinfo` varchar(200) DEFAULT '0',
  `savetime` int(11) DEFAULT '0',
  `crc32` int(11) DEFAULT '0',
  `pvpinfo` text,
  `loginip` int(11) NOT NULL DEFAULT '0',
  `pkvaluetime` int(11) NOT NULL DEFAULT '0',
  `fatigue` varchar(40) DEFAULT NULL,
  `yuanbao` int(11) NOT NULL DEFAULT '0',
  `visualgem` text,
  `isolditem` smallint(6) NOT NULL DEFAULT '0',
  `uipoint` int(11) NOT NULL DEFAULT '0',
  `AskYuanBao` int(11) NOT NULL DEFAULT '0',
  `zengdian` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`) USING BTREE,
  UNIQUE KEY `Index_char_charguid` (`charguid`) USING BTREE,
  UNIQUE KEY `Index_char_charname` (`charname`) USING BTREE,
  KEY `Index_char_accname` (`accname`) USING BTREE,
  KEY `Index_char_level` (`level`,`exp`) USING BTREE,
  KEY `Index_char_yuanbao` (`yuanbao`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_charextra`
--

DROP TABLE IF EXISTS `t_charextra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_charextra` (
  `charguid` int(11) NOT NULL,
  `dbversion` int(11) NOT NULL DEFAULT '0',
  `buyyuanbao` int(11) NOT NULL DEFAULT '0',
  `kmcount` int(11) NOT NULL DEFAULT '0',
  `cmcount` tinyint(4) NOT NULL DEFAULT '0',
  `sbmoney` int(10) unsigned NOT NULL DEFAULT '0',
  `sbunlock` int(10) unsigned NOT NULL DEFAULT '0',
  `sbstatus` smallint(6) NOT NULL DEFAULT '0',
  `ipregion` int(11) NOT NULL DEFAULT '-1',
  `petnumextra` tinyint(4) NOT NULL DEFAULT '0',
  `leagueid` int(11) NOT NULL DEFAULT '-1',
  `moneyjz` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`charguid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_city`
--

DROP TABLE IF EXISTS `t_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_city` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `poolid` int(11) NOT NULL,
  `citydata` longtext NOT NULL,
  `isvalid` int(11) NOT NULL,
  PRIMARY KEY (`aid`) USING BTREE,
  KEY `Index_city_poolid` (`poolid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_city_building`
--

DROP TABLE IF EXISTS `t_city_building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_city_building` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `poolid` int(11) NOT NULL DEFAULT '0',
  `bdtype` int(11) NOT NULL DEFAULT '-1',
  `bdid` int(11) NOT NULL DEFAULT '-1',
  `bdlevel` smallint(6) NOT NULL DEFAULT '0',
  `ri` text NOT NULL,
  `ricontri` text NOT NULL,
  `rimaxnum` text NOT NULL,
  `riprice` text NOT NULL,
  `ritvalue` text NOT NULL,
  `rivalid` text NOT NULL,
  `rinum` smallint(6) NOT NULL DEFAULT '0',
  `isvalid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`) USING BTREE,
  UNIQUE KEY `Index_citybd_poolid` (`poolid`,`bdtype`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_city_info`
--

DROP TABLE IF EXISTS `t_city_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_city_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `poolid` int(11) NOT NULL,
  `fcityid1` int(11) NOT NULL DEFAULT '-1',
  `fboth1` smallint(6) NOT NULL DEFAULT '0',
  `fcityid2` int(11) NOT NULL DEFAULT '-1',
  `fboth2` smallint(6) NOT NULL DEFAULT '0',
  `fcityid3` int(11) NOT NULL DEFAULT '-1',
  `fboth3` smallint(6) NOT NULL DEFAULT '0',
  `fcityid4` int(11) NOT NULL DEFAULT '-1',
  `fboth4` smallint(6) NOT NULL DEFAULT '0',
  `fcityid5` int(11) NOT NULL DEFAULT '-1',
  `fboth5` smallint(6) NOT NULL DEFAULT '0',
  `fcityid6` int(11) NOT NULL DEFAULT '-1',
  `fboth6` smallint(6) NOT NULL DEFAULT '0',
  `fcityid7` int(11) NOT NULL DEFAULT '-1',
  `fboth7` smallint(6) NOT NULL DEFAULT '0',
  `fcityid8` int(11) NOT NULL DEFAULT '-1',
  `fboth8` smallint(6) NOT NULL DEFAULT '0',
  `fnum` int(11) NOT NULL,
  `btime1` int(11) NOT NULL DEFAULT '0',
  `bguild1` int(11) NOT NULL DEFAULT '-1',
  `bguild2` int(11) NOT NULL DEFAULT '-1',
  `btime2` int(11) NOT NULL DEFAULT '0',
  `bguild3` int(11) NOT NULL DEFAULT '-1',
  `btime3` int(11) NOT NULL DEFAULT '0',
  `bnum` int(11) NOT NULL DEFAULT '0',
  `isvalid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`) USING BTREE,
  KEY `Index_cityinfo_pooid` (`poolid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_city_new`
--

DROP TABLE IF EXISTS `t_city_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_city_new` (
  `poolid` int(11) NOT NULL,
  `guildid` int(11) NOT NULL DEFAULT '-1',
  `scene` int(11) NOT NULL DEFAULT '-1',
  `citylevel` smallint(6) NOT NULL DEFAULT '0',
  `cityname` varchar(30) NOT NULL,
  `cubprog` int(11) NOT NULL DEFAULT '0',
  `mxbprog` int(11) NOT NULL DEFAULT '0',
  `cusprog` int(11) NOT NULL DEFAULT '0',
  `mxsprog` int(11) NOT NULL DEFAULT '0',
  `curupbld` int(11) NOT NULL DEFAULT '0',
  `mantain` smallint(6) NOT NULL DEFAULT '0',
  `indrate` int(11) NOT NULL DEFAULT '0',
  `argrate` int(11) NOT NULL DEFAULT '0',
  `comrate` int(11) NOT NULL DEFAULT '0',
  `defrate` int(11) NOT NULL DEFAULT '0',
  `scirate` int(11) NOT NULL DEFAULT '0',
  `extrate` int(11) NOT NULL DEFAULT '0',
  `leftpoint` int(11) NOT NULL DEFAULT '0',
  `cuspeifang` int(11) NOT NULL DEFAULT '0',
  `cusbld` int(11) NOT NULL DEFAULT '0',
  `smoney` int(11) NOT NULL DEFAULT '0',
  `smoneyfix` int(11) NOT NULL DEFAULT '0',
  `bmoney` int(11) NOT NULL DEFAULT '0',
  `pmoney` int(11) NOT NULL DEFAULT '0',
  `gmoneymax` int(11) NOT NULL DEFAULT '0',
  `foundtime` int(11) NOT NULL DEFAULT '0',
  `isvalid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`poolid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_crc32`
--

DROP TABLE IF EXISTS `t_crc32`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_crc32` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `charguid` int(11) NOT NULL,
  `logouttime` int(11) NOT NULL,
  `crc32` int(11) NOT NULL,
  `fulldata` longtext NOT NULL,
  `isdelete` smallint(6) NOT NULL DEFAULT '0',
  `server` int(11) NOT NULL,
  PRIMARY KEY (`aid`) USING BTREE,
  KEY `Index_crc_charguid` (`charguid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_cshop`
--

DROP TABLE IF EXISTS `t_cshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cshop` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `worldid` int(11) NOT NULL,
  `serverid` int(11) NOT NULL,
  `poolid` int(11) NOT NULL,
  `isvalid` int(11) NOT NULL DEFAULT '0',
  `cshopid` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`aid`) USING BTREE,
  UNIQUE KEY `Index_cshop_PoolId` (`worldid`,`serverid`,`poolid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_cshopitem`
--

DROP TABLE IF EXISTS `t_cshopitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cshopitem` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `cshopid` int(11) NOT NULL,
  `cshoppos` int(11) NOT NULL,
  `serial` int(11) NOT NULL DEFAULT '0',
  `charguid` int(11) NOT NULL,
  `charname` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `gtype` smallint(6) NOT NULL,
  `gvalue` int(11) NOT NULL DEFAULT '0',
  `svalue` int(11) NOT NULL DEFAULT '0',
  `ctime` int(11) NOT NULL DEFAULT '0',
  `costctime` int(11) NOT NULL DEFAULT '0',
  `isvalid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`) USING BTREE,
  UNIQUE KEY `Index_cshopitem_cshopid` (`cshopid`,`cshoppos`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_findfriendad`
--

DROP TABLE IF EXISTS `t_findfriendad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_findfriendad` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `poolid` int(11) NOT NULL,
  `charguid` int(10) unsigned NOT NULL,
  `type` smallint(6) NOT NULL,
  `charname` varchar(50) NOT NULL,
  `charlevel` int(10) unsigned NOT NULL,
  `charsex` smallint(6) NOT NULL,
  `charmenpai` smallint(6) NOT NULL,
  `charguildname` varchar(50) NOT NULL,
  `charismarried` smallint(6) NOT NULL,
  `sendtime` int(10) unsigned NOT NULL,
  `announcetext` varchar(128) NOT NULL,
  `messageboard` varchar(4096) NOT NULL,
  `isvalid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`) USING BTREE,
  KEY `Index_pcre_pindex` (`poolid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_general_set`
--

DROP TABLE IF EXISTS `t_general_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_general_set` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `sKey` varchar(50) NOT NULL,
  `nVal` int(11) DEFAULT '0',
  PRIMARY KEY (`aid`) USING BTREE,
  UNIQUE KEY `Index_general_set_Index` (`sKey`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_global`
--

DROP TABLE IF EXISTS `t_global`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_global` (
  `poolid` int(11) NOT NULL,
  `data1` int(11) NOT NULL,
  PRIMARY KEY (`poolid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_guild`
--

DROP TABLE IF EXISTS `t_guild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_guild` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `guildid` int(11) NOT NULL,
  `guildname` varchar(50) NOT NULL,
  `guildstat` int(11) NOT NULL,
  `chiefguid` int(11) NOT NULL,
  `pcount` int(11) NOT NULL,
  `ucount` int(11) NOT NULL,
  `mucount` int(11) NOT NULL,
  `gpoint` int(11) NOT NULL,
  `guildmoney` int(11) NOT NULL,
  `cityid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `logevity` int(11) NOT NULL,
  `contribu` int(11) NOT NULL,
  `honor` int(11) NOT NULL,
  `indlvl` int(11) NOT NULL,
  `agrlvl` int(11) NOT NULL,
  `comlvl` int(11) NOT NULL,
  `deflvl` int(11) NOT NULL,
  `techlvl` int(11) NOT NULL,
  `ambilvl` int(11) NOT NULL,
  `admin` text NOT NULL,
  `guilddesc` varchar(150) NOT NULL,
  `chiefname` varchar(50) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `glvl` int(11) NOT NULL,
  `isvalid` int(11) NOT NULL,
  `guilduser` text NOT NULL,
  `guildmsg` varchar(300) NOT NULL,
  `guildextra` longtext NOT NULL,
  `gnameinfo` text NOT NULL,
  `guildboom` text NOT NULL,
  `leagueid` int(11) NOT NULL DEFAULT '-1',
  `lqltime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`) USING BTREE,
  UNIQUE KEY `Index_guild_gguild` (`guildid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_guild_new`
--

DROP TABLE IF EXISTS `t_guild_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_guild_new` (
  `guildid` int(11) NOT NULL,
  `guilddesc` varchar(150) NOT NULL,
  `guildname` varchar(50) NOT NULL,
  `chiefname` varchar(50) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `guildstat` smallint(6) NOT NULL DEFAULT '0',
  `glvl` int(11) NOT NULL DEFAULT '0',
  `chiefguid` int(11) NOT NULL DEFAULT '0',
  `pcount` int(11) NOT NULL DEFAULT '0',
  `ucount` int(11) NOT NULL DEFAULT '0',
  `mucount` int(11) NOT NULL DEFAULT '0',
  `gpoint` int(11) NOT NULL DEFAULT '0',
  `guildmoney` int(11) NOT NULL DEFAULT '0',
  `cityid` int(11) NOT NULL DEFAULT '0',
  `ctime` int(11) NOT NULL DEFAULT '0',
  `logevity` int(11) NOT NULL DEFAULT '0',
  `contribu` int(11) NOT NULL DEFAULT '0',
  `honor` int(11) NOT NULL DEFAULT '0',
  `indlvl` int(11) NOT NULL DEFAULT '0',
  `agrlvl` int(11) NOT NULL DEFAULT '0',
  `comlvl` int(11) NOT NULL DEFAULT '0',
  `deflvl` int(11) NOT NULL DEFAULT '0',
  `techlvl` int(11) NOT NULL DEFAULT '0',
  `ambilvl` int(11) NOT NULL DEFAULT '0',
  `admin` text NOT NULL,
  `fixucount` int(11) NOT NULL DEFAULT '0',
  `salarytime` int(11) NOT NULL DEFAULT '0',
  `guildmsg` varchar(300) NOT NULL,
  `dataversion` int(11) NOT NULL DEFAULT '0',
  `isvalid` int(11) NOT NULL DEFAULT '0',
  `gnameinfo` text NOT NULL,
  `guildboom` text NOT NULL,
  `leagueid` int(11) NOT NULL DEFAULT '-1',
  `lqltime` int(11) NOT NULL DEFAULT '0',
  `battle_succ` int(11) NOT NULL DEFAULT '0',
  `battle_fail` int(11) NOT NULL DEFAULT '0',
  `battle_score` int(11) NOT NULL DEFAULT '0',
  `battle_kill` int(11) NOT NULL DEFAULT '0',
  `battle_res` int(11) NOT NULL DEFAULT '0',
  `week_suc0` int(11) NOT NULL DEFAULT '0',
  `week_suc1` int(11) NOT NULL DEFAULT '0',
  `week_suc2` int(11) NOT NULL DEFAULT '0',
  `week_suc3` int(11) NOT NULL DEFAULT '0',
  `week_fal0` int(11) NOT NULL DEFAULT '0',
  `week_fal1` int(11) NOT NULL DEFAULT '0',
  `week_fal2` int(11) NOT NULL DEFAULT '0',
  `week_fal3` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_guild_user`
--

DROP TABLE IF EXISTS `t_guild_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_guild_user` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `guildid` int(11) NOT NULL,
  `pos` int(11) NOT NULL,
  `charguid` int(11) NOT NULL,
  `charname` varchar(50) NOT NULL,
  `guildpos` smallint(6) NOT NULL,
  `lastontime` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `menpai` smallint(6) NOT NULL,
  `contri` int(11) NOT NULL,
  `maxcoutri` int(11) NOT NULL,
  `jointime` int(11) NOT NULL,
  `pwcontri` int(11) NOT NULL,
  `cwcontri` int(11) NOT NULL,
  `guildpostime` int(11) NOT NULL,
  `isvalid` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `gptime` int(11) NOT NULL,
  `lastdowntime` int(11) NOT NULL,
  PRIMARY KEY (`aid`) USING BTREE,
  UNIQUE KEY `Index_gusr_guildpos` (`guildid`,`pos`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_impact`
--

DROP TABLE IF EXISTS `t_impact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_impact` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `charguid` int(11) NOT NULL,
  `imdata` text NOT NULL,
  `dbversion` int(11) DEFAULT '0',
  PRIMARY KEY (`aid`) USING BTREE,
  KEY `Index_impact_charguid` (`charguid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8331 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_iteminfo`
--

DROP TABLE IF EXISTS `t_iteminfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_iteminfo` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `charguid` int(11) NOT NULL,
  `guid` int(11) NOT NULL,
  `world` int(11) NOT NULL,
  `server` int(11) NOT NULL,
  `itemtype` int(11) NOT NULL,
  `pos` smallint(6) NOT NULL,
  `p1` int(11) NOT NULL,
  `p2` int(11) NOT NULL,
  `p3` int(11) NOT NULL,
  `p4` int(11) NOT NULL,
  `p5` int(11) NOT NULL,
  `p6` int(11) NOT NULL,
  `p7` int(11) NOT NULL,
  `p8` int(11) NOT NULL,
  `p9` int(11) NOT NULL,
  `p10` int(11) NOT NULL,
  `p11` int(11) NOT NULL,
  `p12` int(11) NOT NULL,
  `p13` int(11) NOT NULL,
  `p14` int(11) NOT NULL,
  `p15` int(11) DEFAULT '0',
  `p16` int(11) DEFAULT '0',
  `p17` int(11) DEFAULT '0',
  `creator` varchar(60) DEFAULT '0',
  `isvalid` smallint(6) NOT NULL DEFAULT '1',
  `dbversion` int(11) DEFAULT '0',
  `fixattr` varchar(200) NOT NULL,
  `var` varchar(40) DEFAULT '0',
  `visualid` int(11) NOT NULL DEFAULT '0',
  `maxgemid` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`aid`) USING BTREE,
  UNIQUE KEY `Index_it_charguid` (`charguid`,`pos`) USING BTREE,
  KEY `Index_it_itemguid` (`guid`,`world`,`server`) USING BTREE,
  KEY `Index_iteminfo_itemtype` (`itemtype`,`isvalid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_itemkey`
--

DROP TABLE IF EXISTS `t_itemkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_itemkey` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `smkey` int(11) NOT NULL,
  `serial` int(11) NOT NULL,
  PRIMARY KEY (`aid`) USING BTREE,
  KEY `Index_itk_sid` (`sid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_league`
--

DROP TABLE IF EXISTS `t_league`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_league` (
  `leagueid` int(11) NOT NULL,
  `leaguename` varchar(40) NOT NULL,
  `leaguedesc` varchar(80) NOT NULL,
  `creatorname` varchar(50) NOT NULL,
  `chiefguid` int(11) NOT NULL,
  `chiefname` varchar(50) NOT NULL,
  `createtime` int(11) NOT NULL,
  `applynum` int(11) NOT NULL,
  `isvalid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`leagueid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_league_apply`
--

DROP TABLE IF EXISTS `t_league_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_league_apply` (
  `leagueid` int(11) NOT NULL,
  `applypos` int(11) NOT NULL,
  `applyguildid` int(11) NOT NULL,
  `isvalid` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `Index_league_apply_id` (`leagueid`,`applypos`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_league_usr`
--

DROP TABLE IF EXISTS `t_league_usr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_league_usr` (
  `leagueid` int(11) NOT NULL,
  `guildpos` int(11) NOT NULL,
  `guildid` int(11) NOT NULL,
  `jointime` int(11) NOT NULL,
  `isvalid` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `Index_league_usr_id` (`leagueid`,`guildpos`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_mail`
--

DROP TABLE IF EXISTS `t_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mail` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) NOT NULL,
  `recer` varchar(50) NOT NULL,
  `mailinfo` varchar(100) NOT NULL,
  `mailcont` text NOT NULL,
  `pindex` int(11) NOT NULL,
  `isvalid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`) USING BTREE,
  UNIQUE KEY `Index_mail_mail` (`pindex`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=940 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_mission`
--

DROP TABLE IF EXISTS `t_mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_mission` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `charguid` int(11) NOT NULL,
  `missionid` int(11) NOT NULL,
  `scriptid` int(11) NOT NULL,
  `flag` smallint(6) NOT NULL,
  `p1` int(11) NOT NULL,
  `p2` int(11) NOT NULL,
  `p3` int(11) NOT NULL,
  `p4` int(11) NOT NULL,
  `p5` int(11) NOT NULL,
  `p6` int(11) NOT NULL,
  `p7` int(11) NOT NULL,
  `p8` int(11) NOT NULL,
  `dbversion` int(11) DEFAULT '0',
  `isvalid` int(11) DEFAULT '1',
  PRIMARY KEY (`aid`) USING BTREE,
  KEY `Index_mi_charguid` (`charguid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16846 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_pet`
--

DROP TABLE IF EXISTS `t_pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pet` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `charguid` int(11) NOT NULL,
  `hpetguid` int(11) NOT NULL,
  `lpetguid` int(11) NOT NULL,
  `dataxid` int(11) NOT NULL,
  `petname` varchar(50) NOT NULL,
  `petnick` varchar(50) NOT NULL,
  `level` int(11) NOT NULL,
  `needlevel` int(11) NOT NULL,
  `atttype` int(11) NOT NULL,
  `aitype` int(11) NOT NULL,
  `camp` varchar(30) NOT NULL,
  `hp` int(11) NOT NULL,
  `mp` int(11) NOT NULL,
  `life` int(11) NOT NULL,
  `pettype` smallint(6) NOT NULL,
  `genera` smallint(6) NOT NULL,
  `enjoy` smallint(6) NOT NULL,
  `strper` int(11) NOT NULL,
  `conper` int(11) NOT NULL,
  `dexper` int(11) NOT NULL,
  `sprper` int(11) NOT NULL,
  `iprper` int(11) NOT NULL,
  `gengu` int(11) NOT NULL,
  `growrate` int(11) NOT NULL,
  `repoint` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `str` int(11) NOT NULL,
  `con` int(11) NOT NULL,
  `dex` int(11) NOT NULL,
  `spr` int(11) NOT NULL,
  `ipr` int(11) NOT NULL,
  `skill` varchar(200) NOT NULL,
  `dbversion` int(11) DEFAULT '0',
  `flags` int(11) DEFAULT NULL,
  `isvalid` int(11) DEFAULT '1',
  `pwflag` int(11) DEFAULT '0',
  `pclvl` int(11) DEFAULT '0',
  `hspetguid` int(11) DEFAULT '0',
  `lspetguid` int(11) DEFAULT '0',
  `savvy` int(11) DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `curtitle` int(11) NOT NULL DEFAULT '-1',
  `us_unlock_time` int(11) NOT NULL DEFAULT '0',
  `us_reserve` int(11) NOT NULL DEFAULT '0',
  `dataversion` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`) USING BTREE,
  KEY `Index_Pet_Charguid` (`charguid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3770 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_petcreate`
--

DROP TABLE IF EXISTS `t_petcreate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_petcreate` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `pindex` int(11) NOT NULL,
  `pairdata` text NOT NULL,
  `isvalid` int(11) NOT NULL,
  `dataversion` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`) USING BTREE,
  KEY `Index_pcre_pindex` (`pindex`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_pshop`
--

DROP TABLE IF EXISTS `t_pshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pshop` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `poolid` int(11) NOT NULL,
  `shopguid` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `stat` int(11) NOT NULL,
  `maxbmoney` int(11) NOT NULL,
  `basemoney` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `shopname` varchar(50) NOT NULL,
  `shopdesc` varchar(50) NOT NULL,
  `ownername` varchar(50) NOT NULL,
  `ownerguid` int(11) NOT NULL,
  `isopen` int(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `saleprice` int(11) NOT NULL,
  `partner` text NOT NULL,
  `recoder` longtext NOT NULL,
  `stallinfo` longtext NOT NULL,
  `isvalid` int(11) NOT NULL,
  `partnum` int(11) NOT NULL,
  `subtype` int(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `buyinfo` longtext NOT NULL,
  `dataversion` int(11) NOT NULL DEFAULT '0',
  `freeze` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`) USING BTREE,
  KEY `Index_pshop_shopguid` (`shopguid`) USING BTREE,
  KEY `Index_pshop_sidpid` (`sid`,`poolid`) USING BTREE,
  KEY `Index_pshop_ownerguid` (`ownerguid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_pshop_new`
--

DROP TABLE IF EXISTS `t_pshop_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pshop_new` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `poolid` int(11) NOT NULL,
  `shopguid` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `stat` int(11) NOT NULL,
  `maxbmoney` int(11) NOT NULL,
  `basemoney` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `shopname` varchar(50) NOT NULL,
  `shopdesc` varchar(50) NOT NULL,
  `ownername` varchar(50) NOT NULL,
  `ownerguid` int(11) NOT NULL,
  `isopen` int(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `saleprice` int(11) NOT NULL,
  `partner` text NOT NULL,
  `recoder` longtext NOT NULL,
  `isvalid` int(11) NOT NULL,
  `partnum` int(11) NOT NULL,
  `subtype` int(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `dataversion` int(11) NOT NULL DEFAULT '0',
  `freeze` smallint(6) NOT NULL DEFAULT '0',
  `buydesc` varchar(80) NOT NULL,
  `buyreserve` varchar(50) NOT NULL,
  PRIMARY KEY (`aid`) USING BTREE,
  KEY `Index_pshop_new_shopguid` (`shopguid`) USING BTREE,
  KEY `Index_pshop_new_sidpid` (`sid`,`poolid`) USING BTREE,
  KEY `Index_pshop_new_ownerguid` (`ownerguid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_pshop_stall`
--

DROP TABLE IF EXISTS `t_pshop_stall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pshop_stall` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `shopguid` varchar(50) NOT NULL,
  `stallid` int(11) NOT NULL,
  `Box_Status` smallint(6) NOT NULL,
  `Box_Type` smallint(6) NOT NULL,
  `Box_VldNum` smallint(6) NOT NULL,
  `Box_FstPage` int(11) NOT NULL,
  `Buy_StlRsv` varchar(50) NOT NULL,
  PRIMARY KEY (`aid`) USING BTREE,
  UNIQUE KEY `Index_pshop_stall_ShpStlIndex` (`shopguid`,`stallid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_pshop_stall_buy`
--

DROP TABLE IF EXISTS `t_pshop_stall_buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pshop_stall_buy` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `shopguid` varchar(50) NOT NULL,
  `stallid` int(11) NOT NULL,
  `stallunitid` int(11) NOT NULL,
  `Buy_ItemNum` int(11) NOT NULL,
  `Buy_ItemIdx` int(11) NOT NULL,
  `Buy_Price` int(11) NOT NULL,
  `Buy_InStlNum` smallint(6) NOT NULL,
  `Itm_charguid` int(11) NOT NULL,
  `Itm_guid` int(11) NOT NULL,
  `Itm_world` int(11) NOT NULL,
  `Itm_server` int(11) NOT NULL,
  `Itm_itemtype` int(11) NOT NULL,
  `Itm_pos` smallint(6) NOT NULL,
  `Itm_p1` int(11) NOT NULL,
  `Itm_p2` int(11) NOT NULL,
  `Itm_p3` int(11) NOT NULL,
  `Itm_p4` int(11) NOT NULL,
  `Itm_p5` int(11) NOT NULL,
  `Itm_p6` int(11) NOT NULL,
  `Itm_p7` int(11) NOT NULL,
  `Itm_p8` int(11) NOT NULL,
  `Itm_p9` int(11) NOT NULL,
  `Itm_p10` int(11) NOT NULL,
  `Itm_p11` int(11) NOT NULL,
  `Itm_p12` int(11) NOT NULL,
  `Itm_p13` int(11) NOT NULL,
  `Itm_p14` int(11) NOT NULL,
  `Itm_p15` int(11) DEFAULT '0',
  `Itm_p16` int(11) DEFAULT '0',
  `Itm_p17` int(11) DEFAULT '0',
  `Itm_creator` varchar(60) DEFAULT '0',
  `Itm_isvalid` smallint(6) NOT NULL DEFAULT '1',
  `Itm_dbversion` int(11) DEFAULT '0',
  `Itm_fixattr` varchar(200) NOT NULL,
  `Itm_var` varchar(40) DEFAULT '0',
  `Itm_visualid` int(11) NOT NULL DEFAULT '0',
  `Itm_maxgemid` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`aid`) USING BTREE,
  UNIQUE KEY `Index_pshop_stall_buy_ShpStlUntIndex` (`shopguid`,`stallid`,`stallunitid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_pshop_stall_itm`
--

DROP TABLE IF EXISTS `t_pshop_stall_itm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pshop_stall_itm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `shopguid` varchar(50) NOT NULL,
  `stallid` int(11) NOT NULL,
  `stallunitid` int(11) NOT NULL,
  `Box_OnSale` smallint(6) NOT NULL,
  `Box_Price` int(11) NOT NULL,
  `Itm_charguid` int(11) NOT NULL,
  `Itm_guid` int(11) NOT NULL,
  `Itm_world` int(11) NOT NULL,
  `Itm_server` int(11) NOT NULL,
  `Itm_itemtype` int(11) NOT NULL,
  `Itm_pos` smallint(6) NOT NULL,
  `Itm_p1` int(11) NOT NULL,
  `Itm_p2` int(11) NOT NULL,
  `Itm_p3` int(11) NOT NULL,
  `Itm_p4` int(11) NOT NULL,
  `Itm_p5` int(11) NOT NULL,
  `Itm_p6` int(11) NOT NULL,
  `Itm_p7` int(11) NOT NULL,
  `Itm_p8` int(11) NOT NULL,
  `Itm_p9` int(11) NOT NULL,
  `Itm_p10` int(11) NOT NULL,
  `Itm_p11` int(11) NOT NULL,
  `Itm_p12` int(11) NOT NULL,
  `Itm_p13` int(11) NOT NULL,
  `Itm_p14` int(11) NOT NULL,
  `Itm_p15` int(11) DEFAULT '0',
  `Itm_p16` int(11) DEFAULT '0',
  `Itm_p17` int(11) DEFAULT '0',
  `Itm_creator` varchar(60) DEFAULT '0',
  `Itm_isvalid` smallint(6) NOT NULL DEFAULT '1',
  `Itm_dbversion` int(11) DEFAULT '0',
  `Itm_fixattr` varchar(200) NOT NULL,
  `Itm_var` varchar(40) DEFAULT '0',
  `Itm_visualid` int(11) NOT NULL DEFAULT '0',
  `Itm_maxgemid` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`aid`) USING BTREE,
  UNIQUE KEY `Index_pshop_stall_itm_ShpStlUntIndex` (`shopguid`,`stallid`,`stallunitid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_pshop_stall_pet`
--

DROP TABLE IF EXISTS `t_pshop_stall_pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pshop_stall_pet` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `shopguid` varchar(50) NOT NULL,
  `stallid` int(11) NOT NULL,
  `stallunitid` int(11) NOT NULL,
  `Box_OnSale` smallint(6) NOT NULL,
  `Box_Price` int(11) NOT NULL,
  `Pet_charguid` int(11) NOT NULL,
  `Pet_hpetguid` int(11) NOT NULL,
  `Pet_lpetguid` int(11) NOT NULL,
  `Pet_dataxid` int(11) NOT NULL,
  `Pet_petname` varchar(50) NOT NULL,
  `Pet_petnick` varchar(50) NOT NULL,
  `Pet_level` int(11) NOT NULL,
  `Pet_needlevel` int(11) NOT NULL,
  `Pet_atttype` int(11) NOT NULL,
  `Pet_aitype` int(11) NOT NULL,
  `Pet_camp` varchar(30) NOT NULL,
  `Pet_hp` int(11) NOT NULL,
  `Pet_mp` int(11) NOT NULL,
  `Pet_life` int(11) NOT NULL,
  `Pet_pettype` smallint(6) NOT NULL,
  `Pet_genera` smallint(6) NOT NULL,
  `Pet_enjoy` smallint(6) NOT NULL,
  `Pet_strper` int(11) NOT NULL,
  `Pet_conper` int(11) NOT NULL,
  `Pet_dexper` int(11) NOT NULL,
  `Pet_sprper` int(11) NOT NULL,
  `Pet_iprper` int(11) NOT NULL,
  `Pet_gengu` int(11) NOT NULL,
  `Pet_growrate` int(11) NOT NULL,
  `Pet_repoint` int(11) NOT NULL,
  `Pet_exp` int(11) NOT NULL,
  `Pet_str` int(11) NOT NULL,
  `Pet_con` int(11) NOT NULL,
  `Pet_dex` int(11) NOT NULL,
  `Pet_spr` int(11) NOT NULL,
  `Pet_ipr` int(11) NOT NULL,
  `Pet_skill` varchar(200) NOT NULL,
  `Pet_dbversion` int(11) DEFAULT '0',
  `Pet_flags` int(11) DEFAULT NULL,
  `Pet_isvalid` int(11) DEFAULT '1',
  `Pet_pwflag` int(11) DEFAULT '0',
  `Pet_pclvl` int(11) DEFAULT '0',
  `Pet_hspetguid` int(11) DEFAULT '0',
  `Pet_lspetguid` int(11) DEFAULT '0',
  `Pet_savvy` int(11) DEFAULT '0',
  `Pet_title` varchar(200) NOT NULL DEFAULT '',
  `Pet_curtitle` int(11) NOT NULL DEFAULT '-1',
  `Pet_us_unlock_time` int(11) NOT NULL DEFAULT '0',
  `Pet_us_reserve` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`) USING BTREE,
  UNIQUE KEY `Index_pshop_stall_pet_ShpStlUntIndex` (`shopguid`,`stallid`,`stallunitid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_relation`
--

DROP TABLE IF EXISTS `t_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_relation` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `charguid` int(11) NOT NULL,
  `fguid` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `fpoint` int(11) NOT NULL,
  `reflag` smallint(6) NOT NULL,
  `groupid` smallint(6) NOT NULL,
  `extdata` varchar(100) NOT NULL,
  `dbversion` int(11) DEFAULT '0',
  PRIMARY KEY (`aid`) USING BTREE,
  KEY `Index_re_charguid` (`charguid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_skill`
--

DROP TABLE IF EXISTS `t_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_skill` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `charguid` int(11) NOT NULL,
  `skid` smallint(6) NOT NULL,
  `sktime` int(11) DEFAULT NULL,
  `dbversion` int(11) DEFAULT '0',
  `isvalid` int(11) DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE,
  KEY `Index_sk_charguid` (`charguid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=76294 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_var`
--

DROP TABLE IF EXISTS `t_var`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_var` (
  `maxcharguid` int(11) NOT NULL,
  PRIMARY KEY (`maxcharguid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_xfallexp`
--

DROP TABLE IF EXISTS `t_xfallexp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_xfallexp` (
  `xflv` int(11) NOT NULL,
  `id1all` int(11) NOT NULL,
  `id2all` int(11) NOT NULL,
  `id3all` int(11) NOT NULL,
  `id4all` int(11) NOT NULL,
  `id5all` int(11) NOT NULL,
  `id6all` int(11) NOT NULL,
  `id7all` int(11) NOT NULL,
  PRIMARY KEY (`xflv`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_xinfa`
--

DROP TABLE IF EXISTS `t_xinfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_xinfa` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `charguid` int(11) NOT NULL,
  `xinfaid` smallint(6) NOT NULL,
  `xinfalvl` smallint(6) NOT NULL,
  `dbversion` int(11) DEFAULT '0',
  PRIMARY KEY (`aid`) USING BTREE,
  KEY `Index_xinfa_charguid` (`charguid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11973 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-31 11:43:09
