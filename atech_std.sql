-- --------------------------------------------------------
-- 호스트:                          localhost
-- 서버 버전:                        10.1.32-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win32
-- HeidiSQL 버전:                  9.5.0.5278
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- atech_std 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `atech_std` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `atech_std`;

-- 테이블 atech_std.tb_audit_item 구조 내보내기
CREATE TABLE IF NOT EXISTS `tb_audit_item` (
  `idx` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '일련번호',
  `audit_no` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '검사번호',
  `prog_no` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '공정번호',
  `audit_nm` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '검사이름',
  `unit` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '단위',
  `spec` float NOT NULL DEFAULT '0' COMMENT '기준값',
  `lower_limit` float NOT NULL DEFAULT '0' COMMENT '하한',
  `upper_limit` float NOT NULL DEFAULT '0' COMMENT '상한',
  `is_use` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '사용여부',
  `version` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '버전',
  `md_nm` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '등록자',
  `md_tm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록시각',
  PRIMARY KEY (`idx`),
  UNIQUE KEY `audit_no` (`audit_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='공사항목정보';

-- 테이블 데이터 atech_std.tb_audit_item:~0 rows (대략적) 내보내기
DELETE FROM `tb_audit_item`;
/*!40000 ALTER TABLE `tb_audit_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_audit_item` ENABLE KEYS */;

-- 테이블 atech_std.tb_parts_item 구조 내보내기
CREATE TABLE IF NOT EXISTS `tb_parts_item` (
  `idx` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '자동증가번호',
  `part_no` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '부품번호',
  `part_code` varchar(30) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '부품코드',
  `part_nm` varchar(30) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '부품이름',
  `md_nm` varchar(20) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '등록자',
  `md_tm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록시각',
  PRIMARY KEY (`idx`),
  KEY `part_no` (`part_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='제품정보';

/*!40000 ALTER TABLE `tb_parts_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_parts_item` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
