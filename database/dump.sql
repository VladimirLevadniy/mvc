/*
Navicat MySQL Data Transfer

Source Server         : loftschool
Source Server Version : 50739
Source Host           : localhost:3305
Source Database       : mvc

Target Server Type    : MYSQL
Target Server Version : 50739
File Encoding         : 65001

Date: 2022-09-04 06:40:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `messages`
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`text`  text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NULL ,
`created_at`  datetime NULL DEFAULT NULL ,
`author_id`  int(11) NULL DEFAULT NULL ,
`image`  varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL ,
PRIMARY KEY (`id`),
INDEX `author_idx` (`author_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of messages
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
`id`  int(11) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`created_at`  datetime NOT NULL ,
`password`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`email`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
PRIMARY KEY (`id`),
UNIQUE INDEX `email_edx` (`email`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Auto increment value for `messages`
-- ----------------------------
ALTER TABLE `messages` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for `users`
-- ----------------------------
ALTER TABLE `users` AUTO_INCREMENT=1;
