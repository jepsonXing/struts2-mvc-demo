-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 01 月 10 日 03:45
-- 服务器版本: 5.6.12-log
-- PHP 版本: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `crud`
--
CREATE DATABASE IF NOT EXISTS `crud` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `crud`;

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` varchar(45) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`id`, `news_id`, `comment`) VALUES
(3, '1', '<p>asdfasdfsdfsdfsdf</p>\r\n'),
(4, '1', '<p>jhjhjhdfjshdfadsf</p>\r\n'),
(5, '1', '<p>sdfsdfsdfsdfdsf</p>\r\n'),
(2, '1', '<p><a href="/crud/ckeditor/uploader/upload/file1404374238041.pdf">还能上传文件</a></p>\r\n');

-- --------------------------------------------------------

--
-- 表的结构 `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT 'report',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `config`
--

INSERT INTO `config` (`id`, `name`, `value`, `type`) VALUES
(16, '存货报表', 'select g.id,g.name,sum(s.number) number from tb_storage s\nleft join tb_goods g on s.tb_goods_id= g.id\ngroup by s.tb_goods_id', 'report');

-- --------------------------------------------------------

--
-- 表的结构 `datadic`
--

CREATE TABLE IF NOT EXISTS `datadic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `transview` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ftable` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=40 ;

--
-- 转存表中的数据 `datadic`
--

INSERT INTO `datadic` (`id`, `field`, `name`, `transview`, `ftable`) VALUES
(1, 'test', '测试', NULL, NULL),
(2, 'datadic', '数据字典', NULL, NULL),
(3, 'news', '新闻', NULL, NULL),
(4, 'field', '字段', NULL, NULL),
(5, 'name', '名称', NULL, NULL),
(6, 'title', '标题', NULL, NULL),
(7, 'content', '内容', NULL, NULL),
(8, 'tb_warehouse', '仓库', NULL, NULL),
(9, 'whname', '仓库名称', NULL, NULL),
(10, 'address', '地址', NULL, NULL),
(11, 'phone', '电话', NULL, NULL),
(12, 'whowner', '库主', NULL, NULL),
(13, 'tb_wareroom', '库房', NULL, NULL),
(14, 'wrname', '库房名', NULL, NULL),
(15, 'tb_warehouse_id', '仓库', NULL, NULL),
(16, 'totalspace', '总容量', NULL, NULL),
(17, 'incharge', '负责人', NULL, NULL),
(18, 'tb_storage', '库存', NULL, NULL),
(19, 'tb_goods_id', '', NULL, NULL),
(20, 'tb_warehouse_id', '', NULL, NULL),
(21, 'tb_wareroom_id', '', NULL, NULL),
(22, 'number', '数量', NULL, NULL),
(23, 'unit', '单位', NULL, NULL),
(24, 'tb_goods', '货物', NULL, NULL),
(25, 'name', '名称', NULL, NULL),
(26, 'location', '产地', NULL, NULL),
(27, 'tb_shelf', '货架', NULL, NULL),
(28, 'name', '', NULL, NULL),
(29, 'tb_warehouse_id', '', NULL, NULL),
(30, 'tb_wareroom_id', '', NULL, NULL),
(31, 'tb_shelf', '货架', NULL, NULL),
(32, 'name', '', NULL, NULL),
(33, 'tb_warehouse_id', '', NULL, NULL),
(34, 'tb_wareroom_id', '', NULL, NULL),
(35, 'privilege', '权限', '', NULL),
(36, 'config', '配置', '', NULL),
(37, 'user', '用户', '', 'user'),
(38, 'input_user', '输入者', '', 'user'),
(39, 'tb_test2', '测试2', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`id`, `title`, `content`) VALUES
(1, 'asdasd', '<p>asdasd</p>\r\n');

-- --------------------------------------------------------

--
-- 表的结构 `privilege`
--

CREATE TABLE IF NOT EXISTS `privilege` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `right` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `privilege`
--

INSERT INTO `privilege` (`id`, `user_id`, `right`) VALUES
(8, 1, '[]admin'),
(9, 0, '[user]read'),
(10, 1, '[datadic]read');

-- --------------------------------------------------------

--
-- 表的结构 `something`
--

CREATE TABLE IF NOT EXISTS `something` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pubdate` date NOT NULL,
  `content` text NOT NULL,
  `user` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `something`
--

INSERT INTO `something` (`id`, `pubdate`, `content`, `user`) VALUES
(4, '2014-07-09', '<p><a href="/crud/ckeditor/uploader/upload/file1404449859312.exe">12 </a><br />\r\n&nbsp;</p>\r\n', '234'),
(3, '2001-01-01', '123', 'zhblue'),
(5, '2015-01-03', '<p>1</p>\r\n', '1'),
(6, '2001-01-01', '123', 'zhblue'),
(7, '2001-01-01', '123', 'zhblue'),
(9, '2001-01-01', '123', 'zhblue');

-- --------------------------------------------------------

--
-- 表的结构 `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `brief` text NOT NULL,
  `birth` date NOT NULL,
  `input_user` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `student`
--

INSERT INTO `student` (`id`, `name`, `pass`, `email`, `brief`, `birth`, `input_user`) VALUES
(1, '123', 'asdf', 'asdf', '', '2014-07-23', 1),
(2, 'sadf', 'sadf', 'asdf', '<p>asdf</p>\r\n', '2015-04-15', 0),
(3, '13信管1', '1', '10982766@qq.com', '<p>123</p>\r\n', '2015-04-29', 6),
(5, 'adsf', 'asdf', 'sdf', '<p>sdf</p>\r\n', '2015-04-22', 20080775);

-- --------------------------------------------------------

--
-- 表的结构 `tb_goods`
--

CREATE TABLE IF NOT EXISTS `tb_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `location` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tb_goods`
--

INSERT INTO `tb_goods` (`id`, `name`, `location`) VALUES
(1, '西瓜', '新疆'),
(2, '土豆', '山东');

-- --------------------------------------------------------

--
-- 表的结构 `tb_shelf`
--

CREATE TABLE IF NOT EXISTS `tb_shelf` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `tb_warehouse_id` int(11) DEFAULT NULL,
  `tb_wareroom_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tb_shelf`
--

INSERT INTO `tb_shelf` (`id`, `name`, `tb_warehouse_id`, `tb_wareroom_id`) VALUES
(1, '东南1号架', 2, 3),
(2, '西北偏北架', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tb_storage`
--

CREATE TABLE IF NOT EXISTS `tb_storage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tb_goods_id` int(11) DEFAULT NULL,
  `tb_warehouse_id` int(11) DEFAULT NULL,
  `tb_wareroom_id` int(11) DEFAULT NULL,
  `tb_shelf_id` int(10) unsigned DEFAULT NULL,
  `number` int(10) unsigned DEFAULT NULL,
  `unit` varchar(45) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `tb_storage`
--

INSERT INTO `tb_storage` (`id`, `tb_goods_id`, `tb_warehouse_id`, `tb_wareroom_id`, `tb_shelf_id`, `number`, `unit`) VALUES
(1, 2, 2, 4, 1, 5, '公斤'),
(2, 1, 2, 3, 1, 1, '吨'),
(3, 1, 2, 3, 1, 1, '吨'),
(4, 1, 2, 3, 1, 9, '个'),
(5, 2, 1, 1, 2, 10, '公斤'),
(6, 2, 1, 1, 2, 10, '公斤');

-- --------------------------------------------------------

--
-- 表的结构 `tb_test`
--

CREATE TABLE IF NOT EXISTS `tb_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ddd` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tb_test`
--

INSERT INTO `tb_test` (`id`, `ddd`) VALUES
(1, '2015-10-17 15:12:00');

-- --------------------------------------------------------

--
-- 表的结构 `tb_test2`
--

CREATE TABLE IF NOT EXISTS `tb_test2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tb_warehouse`
--

CREATE TABLE IF NOT EXISTS `tb_warehouse` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `whname` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `whowner` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tb_warehouse`
--

INSERT INTO `tb_warehouse` (`id`, `whname`, `address`, `phone`, `whowner`) VALUES
(1, '杭州集散', '宁海', '1234567', '美国队长'),
(2, '下沙派送', '6号大街', '7890', '钢铁侠');

-- --------------------------------------------------------

--
-- 表的结构 `tb_wareroom`
--

CREATE TABLE IF NOT EXISTS `tb_wareroom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrname` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `tb_warehouse_id` int(11) DEFAULT NULL,
  `totalspace` int(11) DEFAULT NULL,
  `incharge` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tb_wareroom`
--

INSERT INTO `tb_wareroom` (`id`, `wrname`, `tb_warehouse_id`, `totalspace`, `incharge`) VALUES
(1, '百世汇通', 1, 1000, '黑寡妇'),
(2, '中通', 1, 2000, '口森'),
(3, '高教园区', 2, 500, '蜘蛛侠'),
(4, '工业园区', 2, 500, '章鱼博士');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `name`, `password`) VALUES
(0, 'guest', 'guest can not login'),
(1, 'admin', '6c0a6257f490cc55f1cfee6bb568b326472103df');
--
-- 数据库: `struts`
--
CREATE DATABASE IF NOT EXISTS `struts` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `struts`;

-- --------------------------------------------------------

--
-- 表的结构 `author`
--

CREATE TABLE IF NOT EXISTS `author` (
  `AuthorID` int(11) NOT NULL,
  `Age` int(11) NOT NULL,
  `Country` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `ISBN` varchar(0) NOT NULL,
  `Title` varchar(0) NOT NULL,
  `AuthorID` varchar(0) NOT NULL,
  `Publisher` varchar(0) NOT NULL,
  `PublishDate` varchar(0) NOT NULL,
  `Price` varchar(0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- 数据库: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- 表的结构 `mlog_album`
--

CREATE TABLE IF NOT EXISTS `mlog_album` (
  `_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_create_time` datetime DEFAULT NULL,
  `_description` text,
  `_modify_time` datetime DEFAULT NULL,
  `_name` varchar(200) NOT NULL,
  `_photo_count` int(11) DEFAULT NULL,
  `_sort_order` int(11) DEFAULT NULL,
  `_type` varchar(255) DEFAULT NULL,
  `_verifycode` varchar(100) DEFAULT NULL,
  `_cover` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_id` (`_id`),
  KEY `FK8B0E2BE7F0238918` (`_cover`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

-- --------------------------------------------------------

--
-- 表的结构 `mlog_catalog`
--

CREATE TABLE IF NOT EXISTS `mlog_catalog` (
  `_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_create_time` datetime NOT NULL,
  `_description` text,
  `_modify_time` datetime DEFAULT NULL,
  `_name` varchar(100) NOT NULL,
  `_order` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_id` (`_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `mlog_catalog`
--

INSERT INTO `mlog_catalog` (`_id`, `_create_time`, `_description`, `_modify_time`, `_name`, `_order`) VALUES
(26, '2013-01-29 16:58:25', '', NULL, '默认分类', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `mlog_comment`
--

CREATE TABLE IF NOT EXISTS `mlog_comment` (
  `_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_agent` varchar(1000) DEFAULT NULL,
  `_author` varchar(100) NOT NULL,
  `_content` varchar(5000) NOT NULL,
  `_create_time` datetime NOT NULL,
  `_email` varchar(100) DEFAULT NULL,
  `_post_id` varchar(50) DEFAULT NULL,
  `_reply_comment` bigint(20) DEFAULT NULL,
  `_reply_comment_content` varchar(5000) DEFAULT NULL,
  `_reply_user` varchar(30) DEFAULT NULL,
  `_reply_user_email` varchar(100) DEFAULT NULL,
  `_reply_user_url` varchar(200) DEFAULT NULL,
  `_status` varchar(30) NOT NULL,
  `_url` varchar(200) DEFAULT NULL,
  `_post` bigint(20) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_id` (`_id`),
  KEY `FK6FB51DD77C51831` (`_post`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

-- --------------------------------------------------------

--
-- 表的结构 `mlog_job`
--

CREATE TABLE IF NOT EXISTS `mlog_job` (
  `_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_enabled` bit(1) DEFAULT NULL,
  `_exec_type` varchar(20) NOT NULL,
  `_expression` varchar(30) NOT NULL,
  `_job_class` varchar(200) DEFAULT NULL,
  `_last_exec` datetime DEFAULT NULL,
  `_name` varchar(200) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_id` (`_id`),
  UNIQUE KEY `_name` (`_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `mlog_job`
--

INSERT INTO `mlog_job` (`_id`, `_enabled`, `_exec_type`, `_expression`, `_job_class`, `_last_exec`, `_name`) VALUES
(1, b'1', 'cron', '0 0/30 * * * ?', 'org.mspring.mlog.schedule.job.UpdateStatInfoJob', NULL, '统计任务'),
(2, b'1', 'cron', '0 0/30 * * * ?', 'org.mspring.mlog.schedule.job.SitemapJob', NULL, 'Sitemap');

-- --------------------------------------------------------

--
-- 表的结构 `mlog_job_log`
--

CREATE TABLE IF NOT EXISTS `mlog_job_log` (
  `_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_message` varchar(300) DEFAULT NULL,
  `_name` varchar(200) DEFAULT NULL,
  `_success` bit(1) DEFAULT NULL,
  `_time` datetime DEFAULT NULL,
  `_use_time` bigint(20) DEFAULT NULL,
  `_job` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_id` (`_id`),
  KEY `FKE15F773A19062E69` (`_job`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=609 ;

-- --------------------------------------------------------

--
-- 表的结构 `mlog_link_type`
--

CREATE TABLE IF NOT EXISTS `mlog_link_type` (
  `_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_description` varchar(2000) DEFAULT NULL,
  `_name` varchar(100) NOT NULL,
  `_order` bigint(20) DEFAULT NULL,
  `_visable` bit(1) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_id` (`_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `mlog_link_type`
--

INSERT INTO `mlog_link_type` (`_id`, `_description`, `_name`, `_order`, `_visable`) VALUES
(1, '', '友链', 1, b'1');

-- --------------------------------------------------------

--
-- 表的结构 `mlog_links`
--

CREATE TABLE IF NOT EXISTS `mlog_links` (
  `_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_description` varchar(2000) DEFAULT NULL,
  `_name` varchar(100) NOT NULL,
  `_target` varchar(50) DEFAULT NULL,
  `_url` varchar(100) NOT NULL,
  `_visable` bit(1) DEFAULT NULL,
  `_order` bigint(20) DEFAULT NULL,
  `_type` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_id` (`_id`),
  KEY `FK8BA7FD31DF77437F` (`_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- 转存表中的数据 `mlog_links`
--

INSERT INTO `mlog_links` (`_id`, `_description`, `_name`, `_target`, `_url`, `_visable`, `_order`, `_type`) VALUES
(42, '', 'M-LOG', '_blank', 'http://www.mspring.org', b'1', NULL, 1);

-- --------------------------------------------------------

--
-- 表的结构 `mlog_options`
--

CREATE TABLE IF NOT EXISTS `mlog_options` (
  `_name` varchar(300) NOT NULL,
  `_value` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`_name`),
  UNIQUE KEY `_name` (`_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mlog_options`
--

INSERT INTO `mlog_options` (`_name`, `_value`) VALUES
('description', 'M-LOG'),
('smtp_ssl_enable', 'false'),
('keyword', 'M-LOG'),
('blogname', 'M-LOG'),
('blogurl', 'http://localhost:8080'),
('blogsubname', '简洁不简单'),
('notice', 'Classicl is something not fade,but grow more precious with time pass by,so is dream. <br/>\r\n梦想这东西和经典一样，永远不会因为时间而褪色，反而更显珍贵。'),
('skin', 'simple-two'),
('copyright', 'Copyright @ <a target="_blank" href="http://www.mspring.org" alt="M-LOG">M-LOG</a>'),
('comment_audit', 'false'),
('menu', '<a href="%base%" target="_self">首页</a>\r\n<a href="%base%/album/list.html" target="_self">相册</a>\r\n<a href="%base%/rss.xml" target="_blank">订阅</a>\r\n<a href="%base%/admin" target="_blank">管理</a>'),
('smtp_host', 'smtp.exmail.qq.com'),
('smtp_password', 'test'),
('sender_email', 'gaoyoubo@mspring.org'),
('smtp_port', '25'),
('smtp_username', 'test@mspring.org'),
('mail_from', 'test@mspring.org'),
('photo_max_width', '1000'),
('photo_limit', '1000'),
('photo_max_height', '800'),
('photo_islimit_size', 'false'),
('bcs_access_key', '01b32d0f23fd7dff318190b7046561b4'),
('bcs_host', 'bcs.duapp.com'),
('bcs_bucket', 'javamlog'),
('bcs_secret_key', '7613a6504ed373a03ab44c727f4c5e9a'),
('photo_max_size', '5120'),
('web_albumlist_size', '30'),
('web_photo_max_width', '1000'),
('web_photolist_size', '30'),
('web_photo_max_height', '800'),
('hasInstalled', 'true'),
('api_kuaipan_access_key', '004bfb83134399d51e42a780'),
('api_kuaipan_access_secret', '4fbea357402c434782ee0fa01f6fba28'),
('api_kuaipan_on', 'true'),
('permalink', 'month_id');

-- --------------------------------------------------------

--
-- 表的结构 `mlog_photo`
--

CREATE TABLE IF NOT EXISTS `mlog_photo` (
  `_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_exif_iso` int(11) DEFAULT NULL,
  `_exif_aperture` varchar(20) DEFAULT NULL,
  `_color_bit` int(11) DEFAULT NULL,
  `_exif_color_space` varchar(20) DEFAULT NULL,
  `_create_time` datetime DEFAULT NULL,
  `_description` text,
  `_exif_exposure_bias` varchar(20) DEFAULT NULL,
  `_exif_exposure_time` varchar(20) DEFAULT NULL,
  `_file_name` varchar(200) DEFAULT NULL,
  `_exif_focal_length` varchar(20) DEFAULT NULL,
  `_photo_height` int(11) DEFAULT NULL,
  `_exif_manufacturer` varchar(50) DEFAULT NULL,
  `_exif_model` varchar(50) DEFAULT NULL,
  `_modify_time` datetime DEFAULT NULL,
  `_photo_name` varchar(1000) DEFAULT NULL,
  `_photo_date` smallint(6) DEFAULT NULL,
  `_photo_month` smallint(6) DEFAULT NULL,
  `_photo_year` smallint(6) DEFAULT NULL,
  `_preview_file_name` varchar(200) DEFAULT NULL,
  `_preview_url` varchar(500) DEFAULT NULL,
  `_exif_shutter` varchar(20) DEFAULT NULL,
  `_photo_size` int(11) DEFAULT NULL,
  `_photo_url` varchar(500) DEFAULT NULL,
  `_photo_width` int(11) DEFAULT NULL,
  `_album_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_id` (`_id`),
  KEY `FK8BDFEBAAA844ECE7` (`_album_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1541 ;

-- --------------------------------------------------------

--
-- 表的结构 `mlog_post`
--

CREATE TABLE IF NOT EXISTS `mlog_post` (
  `_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_comment_count` bigint(20) DEFAULT NULL,
  `_comment_status` varchar(20) NOT NULL,
  `_content` text NOT NULL,
  `_create_time` datetime DEFAULT NULL,
  `_modify_time` datetime DEFAULT NULL,
  `_password` varchar(30) DEFAULT NULL,
  `_post_ip` varchar(50) DEFAULT NULL,
  `_post_status` varchar(20) NOT NULL,
  `_summary` text,
  `_title` varchar(200) NOT NULL,
  `_url` varchar(300) DEFAULT NULL,
  `_post_user` bigint(20) NOT NULL,
  `_view_count` bigint(20) DEFAULT NULL,
  `_is_top` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_id` (`_id`),
  KEY `FK99285C2820FC8468` (`_post_user`),
  KEY `FK99285C28F4C86AB2` (`_post_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20275 ;

--
-- 转存表中的数据 `mlog_post`
--

INSERT INTO `mlog_post` (`_id`, `_comment_count`, `_comment_status`, `_content`, `_create_time`, `_modify_time`, `_password`, `_post_ip`, `_post_status`, `_summary`, `_title`, `_url`, `_post_user`, `_view_count`, `_is_top`) VALUES
(20274, 0, 'open', '<p>\r\n	欢迎使用M-LOG，M-LOG是一个以Java语言搭建的高性能博客程序。\r\n</p>\r\n<p>\r\n	M-LOG功能\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	1、支持mateweblog离线写作协议\r\n</p>\r\n<p>\r\n	2、支持RSS2.0、Atom订阅功能\r\n</p>\r\n<p>\r\n	3、相册功能\r\n</p>\r\n<p>\r\n	4、支持动态换肤\r\n</p>\r\n<p>\r\n	5、基于分类和Tag的文章分类功能\r\n</p>\r\n<p>\r\n	6、SEO优化功能\r\n</p>\r\n<p>\r\n	7、评论回复及邮件提醒\r\n</p>\r\n<p>\r\n	8、可配置文章固定永久链接\r\n</p>\r\n<p>\r\n	9、可配置易扩展\r\n</p>\r\n<p>\r\n	10、高效严禁的缓存功能\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '2013-01-29 17:04:00', '2013-01-29 17:04:07', '', NULL, 'publish', '<p>\r\n	欢迎使用M-LOG，M-LOG是一个以Java语言搭建的高性能博客程序。\r\n</p>\r\n<p>\r\n	M-LOG功能\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	1、支持mateweblog离线写作协议\r\n</p>\r\n<p>\r\n	2、支持RSS2.0、Atom订阅功能\r\n</p>\r\n<p>\r\n	3、相册功能\r\n</p>\r\n<p>\r\n	4、支持动态换肤\r\n</p>\r\n<p>\r\n	5、基于分类和Tag的文章分类功能\r\n</p>\r\n<p>\r\n	6、SEO优化功能\r\n</p>\r\n<p>\r\n	7、评论回复及邮件提醒\r\n</p>\r\n<p>\r\n	8、可配置文章固定永久链接\r\n</p>\r\n<p>\r\n	9、可配置易扩展\r\n</p>\r\n<p>\r\n	10、高效严禁的缓存功能\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '欢迎使用M-LOG', '', 1, 0, b'1');

-- --------------------------------------------------------

--
-- 表的结构 `mlog_post_catalog`
--

CREATE TABLE IF NOT EXISTS `mlog_post_catalog` (
  `_catalog_id` bigint(20) NOT NULL,
  `_post_id` bigint(20) NOT NULL,
  PRIMARY KEY (`_post_id`,`_catalog_id`),
  KEY `FK616CBB027794028D` (`_post_id`),
  KEY `FK616CBB02B75F6567` (`_catalog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mlog_post_catalog`
--

INSERT INTO `mlog_post_catalog` (`_catalog_id`, `_post_id`) VALUES
(26, 20274);

-- --------------------------------------------------------

--
-- 表的结构 `mlog_post_tag`
--

CREATE TABLE IF NOT EXISTS `mlog_post_tag` (
  `_tag_id` bigint(20) NOT NULL,
  `_post_id` bigint(20) NOT NULL,
  PRIMARY KEY (`_post_id`,`_tag_id`),
  KEY `FKD7FAF7037794028D` (`_post_id`),
  KEY `FKD7FAF70385C2D847` (`_tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mlog_postmeta`
--

CREATE TABLE IF NOT EXISTS `mlog_postmeta` (
  `_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_key` varchar(200) NOT NULL,
  `_post_id` bigint(20) NOT NULL,
  `_value` text,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_id` (`_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `mlog_resource`
--

CREATE TABLE IF NOT EXISTS `mlog_resource` (
  `_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_name` varchar(300) DEFAULT NULL,
  `_tree_item` varchar(100) DEFAULT NULL,
  `_type` varchar(30) DEFAULT NULL,
  `_url` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_id` (`_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- 转存表中的数据 `mlog_resource`
--

INSERT INTO `mlog_resource` (`_id`, `_name`, `_tree_item`, `_type`, `_url`) VALUES
(1, 'admin', '', 'normal', '/admin/*');

-- --------------------------------------------------------

--
-- 表的结构 `mlog_role`
--

CREATE TABLE IF NOT EXISTS `mlog_role` (
  `_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_enabled` bit(1) DEFAULT NULL,
  `_name` varchar(100) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_id` (`_id`),
  UNIQUE KEY `_name` (`_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `mlog_role`
--

INSERT INTO `mlog_role` (`_id`, `_enabled`, `_name`) VALUES
(1, b'1', '网站创始人'),
(2, b'1', '系统管理员'),
(3, b'1', '投稿者');

-- --------------------------------------------------------

--
-- 表的结构 `mlog_role_resource`
--

CREATE TABLE IF NOT EXISTS `mlog_role_resource` (
  `_enabled` bit(1) DEFAULT NULL,
  `_resource_id` bigint(20) NOT NULL,
  `_role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`_resource_id`,`_role_id`),
  KEY `FK2F814F2FB4C3D117` (`_role_id`),
  KEY `FK2F814F2F46813397` (`_resource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mlog_role_resource`
--

INSERT INTO `mlog_role_resource` (`_enabled`, `_resource_id`, `_role_id`) VALUES
(b'1', 1, 1),
(b'1', 1, 3),
(b'1', 1, 2);

-- --------------------------------------------------------

--
-- 表的结构 `mlog_role_tree_item`
--

CREATE TABLE IF NOT EXISTS `mlog_role_tree_item` (
  `_role_id` bigint(20) NOT NULL,
  `_tree_item_id` varchar(100) NOT NULL,
  PRIMARY KEY (`_role_id`,`_tree_item_id`),
  KEY `FK38BF2C13B4C3D117` (`_role_id`),
  KEY `FK38BF2C13C08FAA32` (`_tree_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mlog_role_tree_item`
--

INSERT INTO `mlog_role_tree_item` (`_role_id`, `_tree_item_id`) VALUES
(1, '1'),
(1, '105'),
(1, '105001'),
(1, '115'),
(1, '11505'),
(1, '11505005'),
(1, '11505010'),
(1, '11505015'),
(1, '11515'),
(1, '11515005'),
(1, '11515010'),
(1, '11515015'),
(1, '11520'),
(1, '11520005'),
(1, '120'),
(1, '120005'),
(1, '120010'),
(1, '120015'),
(1, '120020'),
(1, '120025'),
(1, '120030'),
(1, '125'),
(1, '125005'),
(1, '125010'),
(1, '125015'),
(1, '125020'),
(1, '125025'),
(1, '125030'),
(1, '2'),
(1, '205'),
(1, '205005'),
(1, '220'),
(1, '220005'),
(1, '230'),
(1, '230005'),
(1, '240'),
(1, '240005'),
(1, '245'),
(1, '245005'),
(1, '3'),
(1, '305'),
(1, '305005'),
(1, '305010'),
(1, '305015'),
(1, '310'),
(1, '310005'),
(1, '310010'),
(1, '310015'),
(1, '310020'),
(1, '7'),
(1, '725'),
(1, '725001'),
(1, '725002'),
(1, '730'),
(1, '730005'),
(1, '730010'),
(1, '735'),
(1, '735005'),
(1, '740'),
(1, '740005'),
(1, '750'),
(1, '750005'),
(1, '8'),
(1, '805'),
(1, '805005'),
(1, '9'),
(1, '905'),
(1, '905005'),
(1, '910'),
(1, '910005'),
(2, '1'),
(2, '105'),
(2, '105001'),
(2, '115'),
(2, '11505'),
(2, '11505005'),
(2, '11505010'),
(2, '11505015'),
(2, '11515'),
(2, '11515005'),
(2, '11515010'),
(2, '11515015'),
(2, '11520'),
(2, '11520005'),
(2, '120'),
(2, '120005'),
(2, '120010'),
(2, '120015'),
(2, '120020'),
(2, '120025'),
(2, '120030'),
(2, '125'),
(2, '125005'),
(2, '125010'),
(2, '125015'),
(2, '125020'),
(2, '125025'),
(2, '125030'),
(2, '2'),
(2, '205'),
(2, '205005'),
(2, '220'),
(2, '220005'),
(2, '230'),
(2, '230005'),
(2, '240'),
(2, '240005'),
(2, '245'),
(2, '245005'),
(2, '3'),
(2, '305'),
(2, '305005'),
(2, '305010'),
(2, '305015'),
(2, '7'),
(2, '725'),
(2, '725001'),
(2, '725002'),
(2, '730'),
(2, '730005'),
(2, '730010'),
(2, '8'),
(2, '805'),
(2, '805005'),
(2, '9'),
(2, '905'),
(2, '905005'),
(2, '910'),
(2, '910005'),
(3, '1'),
(3, '105'),
(3, '105001'),
(3, '115'),
(3, '11505'),
(3, '11505010'),
(3, '9'),
(3, '905'),
(3, '905005');

-- --------------------------------------------------------

--
-- 表的结构 `mlog_stat`
--

CREATE TABLE IF NOT EXISTS `mlog_stat` (
  `_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_date` date NOT NULL,
  `_timezone` datetime NOT NULL,
  `_type` varchar(30) NOT NULL,
  `_value` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_id` (`_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22723 ;

--
-- 转存表中的数据 `mlog_stat`
--

INSERT INTO `mlog_stat` (`_id`, `_date`, `_timezone`, `_type`, `_value`) VALUES
(22719, '2013-01-29', '2013-01-29 17:01:21', 'click_count', '1'),
(22720, '2013-01-29', '2013-01-29 17:03:19', 'click_count', '2'),
(22721, '2013-01-29', '2013-01-29 17:04:09', 'click_count', '3'),
(22722, '2013-01-29', '2013-01-29 17:04:13', 'click_count', '4');

-- --------------------------------------------------------

--
-- 表的结构 `mlog_tag`
--

CREATE TABLE IF NOT EXISTS `mlog_tag` (
  `_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_count` bigint(20) DEFAULT NULL,
  `_create_time` datetime NOT NULL,
  `_name` varchar(300) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_id` (`_id`),
  UNIQUE KEY `_name` (`_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- 转存表中的数据 `mlog_tag`
--

INSERT INTO `mlog_tag` (`_id`, `_count`, `_create_time`, `_name`) VALUES
(1, NULL, '2012-08-09 16:51:44', '软件'),
(2, NULL, '2012-08-09 16:51:44', '工程师'),
(3, NULL, '2012-08-14 17:38:06', 'Lucene'),
(4, NULL, '2012-08-14 17:43:00', '.NET'),
(5, NULL, '2012-08-14 17:43:00', 'M-Spring'),
(6, NULL, '2012-08-14 17:43:00', 'JavaScript'),
(7, NULL, '2012-08-14 17:43:01', 'SQL'),
(8, NULL, '2012-08-14 17:43:01', 'Java'),
(9, NULL, '2012-08-14 17:43:02', 'Spring'),
(10, NULL, '2012-08-14 17:43:03', 'webwork'),
(11, NULL, '2012-08-14 17:43:04', 'Android'),
(12, NULL, '2012-08-14 17:43:05', 'JBPM'),
(13, NULL, '2012-08-14 17:43:06', 'Hibernate'),
(14, NULL, '2012-08-14 17:56:01', '碎碎念'),
(15, NULL, '2012-08-14 17:56:10', 'Freemarker'),
(16, NULL, '2012-08-14 17:56:21', '设计模式'),
(17, NULL, '2012-08-14 17:56:51', '网摘'),
(18, NULL, '2012-08-14 17:56:52', 'G-Blog'),
(19, NULL, '2012-08-14 17:56:53', 'webservice'),
(20, NULL, '2012-08-14 17:56:59', '编程开发'),
(21, NULL, '2012-08-14 17:57:15', 'GWT'),
(22, NULL, '2012-08-14 17:57:22', 'Wordpress'),
(23, NULL, '2012-08-14 17:58:51', 'linux'),
(24, NULL, '2012-08-14 17:58:52', 'struts2'),
(25, NULL, '2012-09-04 16:36:58', 'sae'),
(26, NULL, '2012-09-04 16:37:30', 'eclipse'),
(27, NULL, '2012-10-06 18:56:07', '双节'),
(28, NULL, '2012-10-06 19:05:15', 'axis'),
(29, NULL, '2012-10-20 12:01:14', 'mlog'),
(30, NULL, '2012-10-20 12:01:14', 'bae'),
(31, NULL, '2012-11-29 16:30:10', 'teamhost'),
(32, NULL, '2012-11-30 12:11:21', '宅男');

-- --------------------------------------------------------

--
-- 表的结构 `mlog_tree_item`
--

CREATE TABLE IF NOT EXISTS `mlog_tree_item` (
  `_id` varchar(100) NOT NULL,
  `_call` varchar(500) DEFAULT NULL,
  `_deleted` bit(1) DEFAULT NULL,
  `_icon` varchar(100) DEFAULT NULL,
  `_name` varchar(200) NOT NULL,
  `_open` bit(1) DEFAULT NULL,
  `_order` bigint(20) DEFAULT NULL,
  `_parent` varchar(200) DEFAULT NULL,
  `_target` varchar(100) DEFAULT NULL,
  `_type` varchar(20) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_id` (`_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mlog_tree_item`
--

INSERT INTO `mlog_tree_item` (`_id`, `_call`, `_deleted`, `_icon`, `_name`, `_open`, `_order`, `_parent`, `_target`, `_type`) VALUES
('1', '', b'0', NULL, '基本功能', b'1', NULL, '0', 'main', 'tree_folder'),
('105', '', b'0', NULL, '首页', b'1', NULL, '1', 'main', 'tree_item'),
('105001', '/admin/about', b'0', NULL, '首页', b'1', NULL, '105', 'main', 'tab'),
('115', '', b'0', NULL, '文章', b'1', NULL, '1', 'main', 'tree_folder'),
('11505', '', b'0', NULL, '文章管理', b'1', NULL, '115', 'main', 'tree_item'),
('11505005', '/admin/post/list', b'0', NULL, '列表', b'1', NULL, '11505', 'main', 'tab'),
('11505010', '/admin/post/create', b'0', NULL, '增加', b'0', NULL, '11505', 'main', 'tab'),
('11505015', '/admin/post/edit', b'0', NULL, '修改', b'0', NULL, '11505', 'main', 'tab'),
('11515', '', b'0', NULL, '分类管理', b'1', NULL, '115', 'main', 'tree_item'),
('11515005', '/admin/catalog/list', b'0', NULL, '列表', b'1', NULL, '11515', 'main', 'tab'),
('11515010', '/admin/catalog/create', b'0', NULL, '增加', b'0', NULL, '11515', 'main', 'tab'),
('11515015', '/admin/catalog/edit', b'0', NULL, '修改', b'0', NULL, '11515', 'main', 'tab'),
('11520', '', b'0', NULL, '评论管理', b'1', NULL, '115', 'main', 'tree_item'),
('11520005', '/admin/comment/list', b'0', NULL, '评论管理', b'1', NULL, '11520', 'main', 'tab'),
('120', '', b'0', NULL, '链接管理', b'1', NULL, '1', 'main', 'tree_item'),
('120005', '/admin/link/list', b'0', NULL, '列表', b'1', NULL, '120', 'main', 'tab'),
('120010', '/admin/link/create', b'0', NULL, '增加', b'0', NULL, '120', 'main', 'tab'),
('120015', '/admin/link/edit', b'0', NULL, '修改', b'0', NULL, '120', 'main', 'tab'),
('120020', '/admin/linkType/list', b'0', NULL, '链接分类', b'0', NULL, '120', 'main', 'tab'),
('120025', '/admin/linkType/create', b'0', NULL, '新增分类', b'0', NULL, '120', 'main', 'tab'),
('120030', '/admin/linkType/edit', b'0', NULL, '修改分类', b'0', NULL, '120', 'main', 'tab'),
('125', '', b'0', NULL, '相册管理', b'1', NULL, '1', 'main', 'tree_item'),
('125005', '/admin/album/list', b'0', NULL, '相册列表', b'1', NULL, '125', 'main', 'tab'),
('125010', '/admin/album/create', b'0', NULL, '增加相册', b'0', NULL, '125', 'main', 'tab'),
('125015', '/admin/album/edit', b'0', NULL, '修改相册', b'0', NULL, '125', 'main', 'tab'),
('125020', '/admin/photo/list', b'0', NULL, '查看图片', b'0', NULL, '125', 'main', 'tab'),
('125025', '/admin/photo/upload', b'0', NULL, '图片上传', b'0', NULL, '125', 'main', 'tab'),
('125030', '/admin/album/config', b'0', NULL, '相册设置', b'0', NULL, '125', 'main', 'tab'),
('2', '', b'0', NULL, '个人配置', b'1', NULL, '0', 'main', 'tree_folder'),
('205', '', b'0', NULL, '个人信息', b'1', NULL, '2', 'main', 'tree_item'),
('205005', '/admin/self/info', b'0', NULL, '个人信息', b'1', NULL, '205', 'main', 'tab'),
('220', '', b'0', NULL, '博客信息', b'1', NULL, '2', 'main', 'tree_item'),
('220005', '/admin/setting/bloginfo', b'0', NULL, '博客信息', b'1', NULL, '220', 'main', 'tab'),
('230', '', b'0', NULL, '皮肤设置', b'1', NULL, '2', 'main', 'tree_item'),
('230005', '/admin/setting/skin', b'0', NULL, '皮肤设置', b'1', NULL, '230', 'main', 'tab'),
('240', '', b'0', NULL, 'SEO设置', b'1', NULL, '2', 'main', 'tree_item'),
('240005', '/admin/setting/seo', b'0', NULL, 'SEO设置', b'1', NULL, '240', 'main', 'tab'),
('3', '', b'0', NULL, '用户', b'1', NULL, '0', 'main', 'tree_folder'),
('305', '', b'0', NULL, '用户管理', b'1', NULL, '3', 'main', 'tree_item'),
('305005', '/admin/user/list', b'0', NULL, '列表', b'1', NULL, '305', 'main', 'tab'),
('305010', '/admin/user/create', b'0', NULL, '新增', b'0', NULL, '305', 'main', 'tab'),
('305015', '/admin/user/edit', b'0', NULL, '修改', b'0', NULL, '305', 'main', 'tab'),
('310', '', b'0', NULL, '角色', b'1', NULL, '3', 'main', 'tree_item'),
('310005', '/admin/role/list', b'0', NULL, '列表', b'1', NULL, '310', 'main', 'tab'),
('310010', '/admin/role/create', b'0', NULL, '新增', b'0', NULL, '310', 'main', 'tab'),
('310015', '/admin/role/edit', b'0', NULL, '修改', b'0', NULL, '310', 'main', 'tab'),
('310020', '/admin/role/authorize', b'0', NULL, '授权', b'0', NULL, '310', 'main', 'tab'),
('7', '', b'0', NULL, '系统配置', b'1', NULL, '0', 'main', 'tree_folder'),
('725', '', b'0', NULL, '邮件设置', b'1', NULL, '7', 'main', 'tree_item'),
('725001', '/admin/system/mail/setting', b'0', NULL, '邮件', b'1', NULL, '725', 'main', 'tab'),
('725002', '/admin/system/mail/test', b'0', NULL, '邮件测试', b'0', NULL, '725', 'main', 'tab'),
('730', '', b'0', NULL, '任务管理', b'1', NULL, '7', 'main', 'tree_item'),
('730005', '/admin/system/job/list', b'0', NULL, '列表', b'1', NULL, '730', 'main', 'tab'),
('730010', '/admin/system/job/log', b'0', NULL, '任务日志', b'0', NULL, '730', 'main', 'tab'),
('735', '', b'0', NULL, '皮肤编辑', b'1', NULL, '7', 'main', 'tree_item'),
('735005', '/admin/system/skin/list', b'0', NULL, '皮肤编辑', b'1', NULL, '735', 'main', 'tab'),
('740', '', b'0', NULL, '缓存管理', b'1', NULL, '7', 'main', 'tree_item'),
('740005', '/admin/system/cache/config', b'0', NULL, '博客信息', b'1', NULL, '740', 'main', 'tab'),
('750', '', b'0', NULL, '固定连接', b'1', NULL, '7', 'main', 'tree_item'),
('750005', '/admin/system/permalink/config', b'0', NULL, '固定连接', b'1', NULL, '750', 'main', 'tab'),
('8', '', b'0', NULL, '插件', b'1', NULL, '0', 'main', 'tree_folder'),
('805', '', b'0', NULL, '金山快盘', b'1', NULL, '8', 'main', 'tree_item'),
('805005', '/admin/api/kuaipan/setting', b'0', NULL, '金山快盘', b'1', NULL, '805', 'main', 'tab'),
('9', '', b'0', NULL, '关于', b'1', NULL, '0', 'main', 'tree_folder'),
('905', '', b'0', NULL, '关于', b'1', NULL, '9', 'main', 'tree_item'),
('905005', '/admin/about', b'0', NULL, '关于', b'1', NULL, '905', 'main', 'tab'),
('910', '', b'0', NULL, '联系我们', b'1', NULL, '9', 'main', 'tree_item'),
('910005', '/admin/contact', b'0', NULL, '联系我们', b'1', NULL, '910', 'main', 'tab');

-- --------------------------------------------------------

--
-- 表的结构 `mlog_user`
--

CREATE TABLE IF NOT EXISTS `mlog_user` (
  `_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_alias` varchar(100) NOT NULL,
  `_create_time` datetime NOT NULL,
  `_email` varchar(200) NOT NULL,
  `_name` varchar(100) NOT NULL,
  `_password` varchar(100) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_id` (`_id`),
  UNIQUE KEY `_alias` (`_alias`),
  UNIQUE KEY `_name` (`_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `mlog_user`
--

INSERT INTO `mlog_user` (`_id`, `_alias`, `_create_time`, `_email`, `_name`, `_password`) VALUES
(1, '管理员', '2012-08-09 09:41:43', 'admin@mspring.org', 'admin', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- 表的结构 `mlog_user_role`
--

CREATE TABLE IF NOT EXISTS `mlog_user_role` (
  `_role_id` bigint(20) NOT NULL,
  `_user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`_role_id`,`_user_id`),
  KEY `FKC43D25E2B4C3D117` (`_role_id`),
  KEY `FKC43D25E28622AEAD` (`_user_id`),
  KEY `FKC43D25E259EE94F7` (`_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mlog_user_role`
--

INSERT INTO `mlog_user_role` (`_role_id`, `_user_id`) VALUES
(1, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
