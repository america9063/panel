

DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `user_agent` text COLLATE utf8_unicode_ci NOT NULL,
  `user_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pid` int(11) NOT NULL,
  `bandwidth` int(11) NOT NULL DEFAULT '0',
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_user_id_index` (`user_id`),
  KEY `activity_stream_id_index` (`stream_id`),
  KEY `activity_date_end_index` (`date_end`),
  KEY `activity_pid_index` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


LOCK TABLES `admins` WRITE;
INSERT INTO `admins` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','2016-10-18 13:50:39','2016-10-18 13:50:39');
UNLOCK TABLES;


DROP TABLE IF EXISTS `blocked_ips`;
CREATE TABLE `blocked_ips` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blocked_ips_ip_unique` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


LOCK TABLES `blocked_ips` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `blocked_user_agents`;
CREATE TABLE `blocked_user_agents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blocked_user_agents_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


LOCK TABLES `blocked_user_agents` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



DROP TABLE IF EXISTS `category_user`;
CREATE TABLE `category_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ffmpeg_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '/usr/local/bin/ffmpeg',
  `ffprobe_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '/usr/local/bin/ffprobe',
  `webport` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '8000',
  `webip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logourl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hlsfolder` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'hl',
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'FOS-Streaming',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



DROP TABLE IF EXISTS `streams`;
CREATE TABLE `streams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `streamurl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `streamurl2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `streamurl3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `running` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `restream` tinyint(4) NOT NULL,
  `video_codec_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `audio_codec_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bitstreamfilter` tinyint(4) NOT NULL,
  `checker` tinyint(4) NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tvid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `transcodes`;
CREATE TABLE `transcodes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `probesize` bigint(20) NOT NULL,
  `analyzeduration` bigint(20) NOT NULL,
  `video_codec` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `audio_codec` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `preset_values` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `aspect_ratio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video_bitrate` bigint(20) NOT NULL,
  `audio_channel` int(11) NOT NULL,
  `audio_bitrate` bigint(20) NOT NULL,
  `fps` int(11) NOT NULL,
  `minrate` int(11) NOT NULL,
  `maxrate` int(11) NOT NULL,
  `bufsize` int(11) NOT NULL,
  `audio_sampling_rate` int(11) NOT NULL,
  `crf` int(11) NOT NULL,
  `threads` int(11) NOT NULL,
  `deinterlance` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transcodes_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


LOCK TABLES `transcodes` WRITE;
INSERT INTO `transcodes` VALUES (1,'Default 1: Video Copy, Audio Copy',15000000,12000000,'copy','copy','','','','',0,0,0,0,0,0,0,0,0,0,0,'2016-10-18 13:50:39','2016-10-18 13:50:39'),(2,'Default 2: Video Copy, Audio AAC',15000000,12000000,'copy','libvo_aacenc','','','','',0,0,0,0,0,0,0,0,0,0,0,'2016-10-18 13:50:39','2016-10-18 13:50:39');
UNLOCK TABLES;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `lastconnected_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exp_date` date NOT NULL,
  `last_stream` int(11) NOT NULL,
  `useragent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `max_connections` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
