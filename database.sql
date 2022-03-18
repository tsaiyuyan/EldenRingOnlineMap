CREATE DATABASE IF NOT EXISTS `eldenRingMap` DEFAULT CHARSET UTF8MB4;

CREATE TABLE IF NOT EXISTS `map`(
	`id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `type` VARCHAR(8) NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    `desc` VARCHAR(1024),
    `lng` DOUBLE NOT NULL,
    `lat` DOUBLE NOT NULL,
    `is_underground` BOOLEAN DEFAULT FALSE,
    `delete_request` INT UNSIGNED DEFAULT 0,
    `like` INT UNSIGNED DEFAULT 0,
    `dislike` INT UNSIGNED DEFAULT 0,
    `ip` VARCHAR(20),
    `is_deleted` BOOLEAN DEFAULT FALSE,
    `create_date` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `update_date` DATETIME ON UPDATE CURRENT_TIMESTAMP
)ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE IF NOT EXISTS `apothegm` (
	`id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `title`  VARCHAR(20),
    `content` VARCHAR(1024),
    `type` VARCHAR(8),
    `gesture` INT UNSIGNED DEFAULT 0,
    `is_top` BOOLEAN DEFAULT FALSE,
    `like` INT UNSIGNED DEFAULT 0,
    `dislike` INT UNSIGNED DEFAULT 0,
    `ip` VARCHAR(20),
    `is_deleted` BOOLEAN DEFAULT FALSE,
    `create_date` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `update_date` DATETIME ON UPDATE CURRENT_TIMESTAMP,
    `reply_date` DATETIME DEFAULT CURRENT_TIMESTAMP
    
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE IF NOT EXISTS `map_reply` (
	`id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `pid` INT UNSIGNED,
    `content` VARCHAR(1024),
    `is_seen` BOOLEAN DEFAULT FALSE,
    `like` INT UNSIGNED DEFAULT 0,
    `dislike` INT UNSIGNED DEFAULT 0,
    `ip` VARCHAR(20),
    `is_deleted` BOOLEAN DEFAULT FALSE,
    `create_date` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `update_date` DATETIME ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE IF NOT EXISTS `apo_reply` (
	`id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `pid` INT UNSIGNED,
    `content` VARCHAR(1024),
    `is_seen` BOOLEAN DEFAULT FALSE,
    `like` INT UNSIGNED DEFAULT 0,
    `dislike` INT UNSIGNED DEFAULT 0,
    `ip` VARCHAR(20),
    `is_deleted` BOOLEAN DEFAULT FALSE,
    `create_date` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `update_date` DATETIME ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE IF NOT EXISTS `search` (
	`id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `content` VARCHAR(1024),
    `ip` VARCHAR(20),
    `position` VARCHAR(10) NULL,
    `create_date` DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;