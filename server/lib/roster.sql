SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

CREATE DATABASE IF NOT EXISTS `roster`;
USE `roster`;


CREATE TABLE IF NOT EXISTS `accounting` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `monday_start` int(4) NOT NULL,
  `monday_end` int(4) NOT NULL,
  `tuesday_start` int(4) NOT NULL,
  `tuesday_end` int(4) NOT NULL,
  `wednesday_start` int(4) NOT NULL,
  `wednesday_end` int(4) NOT NULL,
  `thursday_start` int(4) NOT NULL,
  `thursday_end` int(4) NOT NULL,
  `friday_start` int(4) NOT NULL,
  `friday_end` int(4) NOT NULL,
  `saturday_start` int(4) NOT NULL,
  `saturday_end` int(4) NOT NULL,
  `sunday_start` int(4) NOT NULL,
  `sunday_end` int(4) NOT NULL,
  `ranuniqueid` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

INSERT INTO `accounting` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(1, 'TIFFANY MELTCHER', 1200, 1700, 0, 0, 1200, 1700, 0, 0, 1200, 1700, 0, 0, 0, 0, 2110562048);
INSERT INTO `accounting` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(2, 'ANISHA PATEL', 1400, 1900, 1400, 1700, 1400, 1900, 1400, 1700, 0, 0, 0, 0, 0, 0, 170170473);
INSERT INTO `accounting` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(3, 'DESTANE KARIM', 1000, 1600, 0, 0, 1000, 1600, 0, 0, 1100, 1630, 0, 0, 0, 0, 425958531);
INSERT INTO `accounting` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(4, 'ANGELA JEZISEK', 1830, 2000, 1830, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -347209966);
INSERT INTO `accounting` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(5, 'JOHN AMRHEIN', 0, 0, 1830, 2000, 0, 0, 1830, 2000, 1830, 2000, 0, 0, 0, 0, 1447954623);

CREATE TABLE IF NOT EXISTS `asl` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `monday_start` int(4) NOT NULL,
  `monday_end` int(4) NOT NULL,
  `tuesday_start` int(4) NOT NULL,
  `tuesday_end` int(4) NOT NULL,
  `wednesday_start` int(4) NOT NULL,
  `wednesday_end` int(4) NOT NULL,
  `thursday_start` int(4) NOT NULL,
  `thursday_end` int(4) NOT NULL,
  `friday_start` int(4) NOT NULL,
  `friday_end` int(4) NOT NULL,
  `saturday_start` int(4) NOT NULL,
  `saturday_end` int(4) NOT NULL,
  `sunday_start` int(4) NOT NULL,
  `sunday_end` int(4) NOT NULL,
  `ranuniqueid` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

INSERT INTO `asl` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(1, 'PAIGE ZITO', 1000, 1430, 0, 0, 0, 0, 1000, 1430, 0, 0, 0, 0, 0, 0, 229049684);
INSERT INTO `asl` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(2, 'CATHERINE SOCHAR', 0, 0, 0, 0, 0, 0, 1630, 1900, 0, 0, 0, 0, 0, 0, 80598350);

CREATE TABLE IF NOT EXISTS `biology` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `monday_start` int(4) NOT NULL,
  `monday_end` int(4) NOT NULL,
  `tuesday_start` int(4) NOT NULL,
  `tuesday_end` int(4) NOT NULL,
  `wednesday_start` int(4) NOT NULL,
  `wednesday_end` int(4) NOT NULL,
  `thursday_start` int(4) NOT NULL,
  `thursday_end` int(4) NOT NULL,
  `friday_start` int(4) NOT NULL,
  `friday_end` int(4) NOT NULL,
  `saturday_start` int(4) NOT NULL,
  `saturday_end` int(4) NOT NULL,
  `sunday_start` int(4) NOT NULL,
  `sunday_end` int(4) NOT NULL,
  `ranuniqueid` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

INSERT INTO `biology` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(1, 'STORMIE FITCH', 1000, 1330, 0, 0, 0, 0, 0, 0, 1000, 1300, 0, 0, 0, 0, 1296799170);
INSERT INTO `biology` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(2, 'AMANDA BURRIS', 0, 0, 0, 0, 1430, 1900, 0, 0, 0, 0, 0, 0, 0, 0, -1327694884);

CREATE TABLE IF NOT EXISTS `chemistry` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `monday_start` int(4) NOT NULL,
  `monday_end` int(4) NOT NULL,
  `tuesday_start` int(4) NOT NULL,
  `tuesday_end` int(4) NOT NULL,
  `wednesday_start` int(4) NOT NULL,
  `wednesday_end` int(4) NOT NULL,
  `thursday_start` int(4) NOT NULL,
  `thursday_end` int(4) NOT NULL,
  `friday_start` int(4) NOT NULL,
  `friday_end` int(4) NOT NULL,
  `saturday_start` int(4) NOT NULL,
  `saturday_end` int(4) NOT NULL,
  `sunday_start` int(4) NOT NULL,
  `sunday_end` int(4) NOT NULL,
  `ranuniqueid` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

INSERT INTO `chemistry` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(1, 'ALEX HIGGINS', 1430, 2000, 1300, 1800, 0, 0, 0, 0, 1430, 2000, 0, 0, 0, 0, 831420947);
INSERT INTO `chemistry` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(2, 'DIRK EMDE', 1030, 1630, 1030, 1630, 1500, 1900, 1030, 2000, 0, 0, 0, 0, 0, 0, 1708343207);
INSERT INTO `chemistry` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(3, 'PRISCILLA GARCIA', 1600, 2000, 1400, 1900, 0, 0, 1400, 1900, 1600, 2000, 0, 0, 0, 0, -1834260636);
INSERT INTO `chemistry` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(4, 'TYLER MAXWELL', 0, 0, 0, 0, 1000, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 16314333);

CREATE TABLE IF NOT EXISTS `communication` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `monday_start` int(4) NOT NULL,
  `monday_end` int(4) NOT NULL,
  `tuesday_start` int(4) NOT NULL,
  `tuesday_end` int(4) NOT NULL,
  `wednesday_start` int(4) NOT NULL,
  `wednesday_end` int(4) NOT NULL,
  `thursday_start` int(4) NOT NULL,
  `thursday_end` int(4) NOT NULL,
  `friday_start` int(4) NOT NULL,
  `friday_end` int(4) NOT NULL,
  `saturday_start` int(4) NOT NULL,
  `saturday_end` int(4) NOT NULL,
  `sunday_start` int(4) NOT NULL,
  `sunday_end` int(4) NOT NULL,
  `ranuniqueid` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

INSERT INTO `communication` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(1, 'JOSHUA', 900, 1500, 900, 1500, 900, 1500, 0, 0, 0, 0, 0, 0, 0, 0, -270197837);
INSERT INTO `communication` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(2, 'GLENDA', 900, 1400, 900, 1400, 900, 1400, 900, 1400, 0, 0, 0, 0, 0, 0, 1797920574);
INSERT INTO `communication` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(3, 'DEVIN', 1000, 1400, 1000, 1400, 0, 0, 1000, 1400, 0, 0, 0, 0, 0, 0, -526111797);
INSERT INTO `communication` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(14, 'DEVIN', 1500, 1900, 1500, 1900, 0, 0, 1500, 1900, 0, 0, 0, 0, 0, 0, -526111797);
INSERT INTO `communication` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(15, 'RACHAEL', 1000, 1600, 0, 0, 1000, 1600, 0, 0, 0, 0, 0, 0, 0, 0, -2003103023);
INSERT INTO `communication` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(16, 'GARY', 900, 1800, 0, 0, 0, 0, 0, 0, 900, 1500, 0, 0, 0, 0, 825559638);
INSERT INTO `communication` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(17, 'YOUGINI', 1000, 1430, 1100, 1430, 1100, 1330, 1000, 1430, 1000, 1400, 0, 0, 0, 0, -1723371941);
INSERT INTO `communication` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(18, 'LINDA', 0, 0, 1500, 1900, 1700, 1900, 0, 0, 0, 0, 0, 0, 0, 0, -500278035);
INSERT INTO `communication` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(19, 'SILVA', 0, 0, 900, 1300, 900, 1300, 900, 1300, 0, 0, 0, 0, 0, 0, -1338665135);
INSERT INTO `communication` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(20, 'SILVA', 0, 0, 1400, 1800, 1400, 1800, 1400, 1800, 0, 0, 0, 0, 0, 0, -1338665135);
INSERT INTO `communication` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(21, 'AL', 0, 0, 900, 1900, 0, 0, 900, 1900, 0, 0, 0, 0, 0, 0, 1384794539);
INSERT INTO `communication` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(22, 'HEATHER', 0, 0, 0, 0, 900, 1700, 0, 0, 900, 1500, 0, 0, 0, 0, 601591327);

CREATE TABLE IF NOT EXISTS `computerprogramming` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `monday_start` int(4) NOT NULL,
  `monday_end` int(4) NOT NULL,
  `tuesday_start` int(4) NOT NULL,
  `tuesday_end` int(4) NOT NULL,
  `wednesday_start` int(4) NOT NULL,
  `wednesday_end` int(4) NOT NULL,
  `thursday_start` int(4) NOT NULL,
  `thursday_end` int(4) NOT NULL,
  `friday_start` int(4) NOT NULL,
  `friday_end` int(4) NOT NULL,
  `saturday_start` int(4) NOT NULL,
  `saturday_end` int(4) NOT NULL,
  `sunday_start` int(4) NOT NULL,
  `sunday_end` int(4) NOT NULL,
  `ranuniqueid` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

INSERT INTO `computerprogramming` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(1, 'STEPHEN SMAIL', 1500, 1900, 1400, 1700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 316760730);
INSERT INTO `computerprogramming` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(2, 'TIM SIMMONS', 1100, 1500, 0, 0, 1100, 1500, 0, 0, 1100, 1700, 0, 0, 0, 0, 1773651569);
INSERT INTO `computerprogramming` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(3, 'TONNY BOESENBAEK', 1300, 1700, 1200, 1800, 0, 0, 1200, 1800, 0, 0, 0, 0, 0, 0, 1451347788);

CREATE TABLE IF NOT EXISTS `economics` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `monday_start` int(4) NOT NULL,
  `monday_end` int(4) NOT NULL,
  `tuesday_start` int(4) NOT NULL,
  `tuesday_end` int(4) NOT NULL,
  `wednesday_start` int(4) NOT NULL,
  `wednesday_end` int(4) NOT NULL,
  `thursday_start` int(4) NOT NULL,
  `thursday_end` int(4) NOT NULL,
  `friday_start` int(4) NOT NULL,
  `friday_end` int(4) NOT NULL,
  `saturday_start` int(4) NOT NULL,
  `saturday_end` int(4) NOT NULL,
  `sunday_start` int(4) NOT NULL,
  `sunday_end` int(4) NOT NULL,
  `ranuniqueid` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

INSERT INTO `economics` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(1, 'KYLE D', 1030, 1430, 1330, 1730, 1030, 1430, 1330, 1730, 0, 0, 0, 0, 0, 0, -718898290);

CREATE TABLE IF NOT EXISTS `foreignlanguage` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `monday_start` int(4) NOT NULL,
  `monday_end` int(4) NOT NULL,
  `tuesday_start` int(4) NOT NULL,
  `tuesday_end` int(4) NOT NULL,
  `wednesday_start` int(4) NOT NULL,
  `wednesday_end` int(4) NOT NULL,
  `thursday_start` int(4) NOT NULL,
  `thursday_end` int(4) NOT NULL,
  `friday_start` int(4) NOT NULL,
  `friday_end` int(4) NOT NULL,
  `saturday_start` int(4) NOT NULL,
  `saturday_end` int(4) NOT NULL,
  `sunday_start` int(4) NOT NULL,
  `sunday_end` int(4) NOT NULL,
  `ranuniqueid` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

INSERT INTO `foreignlanguage` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(1, 'AISHA', 830, 1730, 830, 1730, 830, 1730, 830, 1730, 830, 1730, 0, 0, 0, 0, 498550684);

CREATE TABLE IF NOT EXISTS `games_played_per_month` (
  `ranuniqueid` int(9) NOT NULL,
  `jan` int(1) NOT NULL,
  `feb` int(1) NOT NULL,
  `mar` int(1) NOT NULL,
  `apr` int(1) NOT NULL,
  `may` int(1) NOT NULL,
  `jun` int(1) NOT NULL,
  `jul` int(1) NOT NULL,
  `aug` int(1) NOT NULL,
  `sep` int(1) NOT NULL,
  `oct` int(1) NOT NULL,
  `nov` int(1) NOT NULL,
  `dec` int(1) NOT NULL,
  PRIMARY KEY (`ranuniqueid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-2144749884, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-2093419457, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-2029990991, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-2005056851, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-2003103023, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-1914090637, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-1863868016, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-1843294613, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-1834260636, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-1785995755, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-1763970242, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-1604062928, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-1526320231, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-1466107771, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-1338665135, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-1328962334, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-1310560244, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-1035977554, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-1024055339, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-992201230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-920078263, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-892653623, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-856362211, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-783140285, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-550758770, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-531175995, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-526111797, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-500278035, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-347209966, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-270197837, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-198071838, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-91279487, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-23229997, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(-2334615, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(745373, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(20796371, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(71416942, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(85609806, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(170170473, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(228150843, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(316760730, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(425958531, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(458679543, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(463769817, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(601591327, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(773618727, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(825559638, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(831420947, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(921852565, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(1060766153, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(1291373126, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(1336888031, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(1344623245, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(1384794539, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(1447954623, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(1451347788, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(1708343207, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(1756161621, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(1769359202, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(1773651569, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(1797920574, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(1812851874, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(1815482840, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(1996070758, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(2028301629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(2110562048, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(2125926019, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `games_played_per_month` (`ranuniqueid`, `jan`, `feb`, `mar`, `apr`, `may`, `jun`, `jul`, `aug`, `sep`, `oct`, `nov`, `dec`) VALUES(2128234720, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

CREATE TABLE IF NOT EXISTS `gen_tut_ia` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `monday_start` int(4) NOT NULL,
  `monday_end` int(4) NOT NULL,
  `tuesday_start` int(4) NOT NULL,
  `tuesday_end` int(4) NOT NULL,
  `wednesday_start` int(4) NOT NULL,
  `wednesday_end` int(4) NOT NULL,
  `thursday_start` int(4) NOT NULL,
  `thursday_end` int(4) NOT NULL,
  `friday_start` int(4) NOT NULL,
  `friday_end` int(4) NOT NULL,
  `ranuniqueid` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

INSERT INTO `gen_tut_ia` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `ranuniqueid`) VALUES(1, 'CHRISTEN COSTELLO', 0, 0, 0, 0, 1530, 1900, 1530, 1900, 0, 0, -1035977554);

CREATE TABLE IF NOT EXISTS `histgovt` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `monday_start` int(4) NOT NULL,
  `monday_end` int(4) NOT NULL,
  `tuesday_start` int(4) NOT NULL,
  `tuesday_end` int(4) NOT NULL,
  `wednesday_start` int(4) NOT NULL,
  `wednesday_end` int(4) NOT NULL,
  `thursday_start` int(4) NOT NULL,
  `thursday_end` int(4) NOT NULL,
  `friday_start` int(4) NOT NULL,
  `friday_end` int(4) NOT NULL,
  `saturday_start` int(4) NOT NULL,
  `saturday_end` int(4) NOT NULL,
  `sunday_start` int(4) NOT NULL,
  `sunday_end` int(4) NOT NULL,
  `ranuniqueid` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `hourlyminstaffonduty` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `department` varchar(20) NOT NULL,
  `time` int(4) NOT NULL,
  `minstaff` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=266 ;

INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(14, 'asl', 800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(15, 'asl', 830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(16, 'asl', 900, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(17, 'asl', 930, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(18, 'asl', 1500, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(19, 'asl', 1530, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(20, 'asl', 1600, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(21, 'asl', 1630, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(22, 'asl', 1700, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(23, 'asl', 1730, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(24, 'asl', 1800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(25, 'asl', 1830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(38, 'chemistry', 800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(39, 'chemistry', 830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(40, 'chemistry', 900, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(41, 'chemistry', 930, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(42, 'chemistry', 1500, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(43, 'chemistry', 1530, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(44, 'chemistry', 1600, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(45, 'chemistry', 1630, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(46, 'chemistry', 1700, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(47, 'chemistry', 1730, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(48, 'chemistry', 1800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(49, 'chemistry', 1830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(50, 'communication', 800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(51, 'communication', 830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(52, 'communication', 900, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(53, 'communication', 930, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(54, 'communication', 1500, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(55, 'communication', 1530, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(56, 'communication', 1600, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(57, 'communication', 1630, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(58, 'communication', 1700, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(59, 'communication', 1730, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(60, 'communication', 1800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(61, 'communication', 1830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(62, 'computerprogramming', 800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(63, 'computerprogramming', 830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(64, 'computerprogramming', 900, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(65, 'computerprogramming', 930, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(66, 'computerprogramming', 1500, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(67, 'computerprogramming', 1530, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(68, 'computerprogramming', 1600, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(69, 'computerprogramming', 1630, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(70, 'computerprogramming', 1700, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(71, 'computerprogramming', 1730, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(72, 'computerprogramming', 1800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(73, 'computerprogramming', 1830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(74, 'economics', 800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(75, 'economics', 830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(76, 'economics', 900, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(77, 'economics', 930, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(78, 'economics', 1500, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(79, 'economics', 1530, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(80, 'economics', 1600, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(81, 'economics', 1630, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(82, 'economics', 1700, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(83, 'economics', 1730, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(84, 'economics', 1800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(85, 'economics', 1830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(86, 'foreignlanguage', 800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(87, 'foreignlanguage', 830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(88, 'foreignlanguage', 900, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(89, 'foreignlanguage', 930, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(90, 'foreignlanguage', 1500, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(91, 'foreignlanguage', 1530, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(92, 'foreignlanguage', 1600, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(93, 'foreignlanguage', 1630, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(94, 'foreignlanguage', 1700, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(95, 'foreignlanguage', 1730, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(96, 'foreignlanguage', 1800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(97, 'foreignlanguage', 1830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(98, 'histgovt', 800, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(99, 'histgovt', 830, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(100, 'histgovt', 900, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(101, 'histgovt', 930, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(102, 'histgovt', 1500, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(103, 'histgovt', 1530, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(104, 'histgovt', 1600, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(105, 'histgovt', 1630, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(106, 'histgovt', 1700, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(107, 'histgovt', 1730, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(108, 'histgovt', 1800, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(109, 'histgovt', 1830, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(110, 'msc_ia', 800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(111, 'msc_ia', 830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(112, 'msc_ia', 900, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(113, 'msc_ia', 930, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(114, 'msc_ia', 1500, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(115, 'msc_ia', 1530, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(116, 'msc_ia', 1600, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(117, 'msc_ia', 1630, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(118, 'msc_ia', 1700, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(119, 'msc_ia', 1730, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(120, 'msc_ia', 1800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(121, 'msc_ia', 1830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(122, 'management', 800, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(123, 'management', 830, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(124, 'management', 900, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(125, 'management', 930, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(126, 'management', 1500, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(127, 'management', 1530, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(128, 'management', 1600, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(129, 'management', 1630, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(130, 'management', 1700, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(131, 'management', 1730, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(132, 'management', 1800, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(133, 'management', 1830, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(134, 'msc', 800, 10);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(135, 'msc', 830, 10);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(136, 'msc', 900, 10);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(137, 'msc', 930, 10);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(138, 'msc', 1500, 10);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(139, 'msc', 1530, 10);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(140, 'msc', 1600, 10);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(141, 'msc', 1630, 10);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(142, 'msc', 1700, 10);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(143, 'msc', 1730, 10);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(144, 'msc', 1800, 10);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(145, 'msc', 1830, 10);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(146, 'mscdesk', 800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(147, 'mscdesk', 830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(148, 'mscdesk', 900, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(149, 'mscdesk', 930, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(150, 'mscdesk', 1500, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(151, 'mscdesk', 1530, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(152, 'mscdesk', 1600, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(153, 'mscdesk', 1630, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(154, 'mscdesk', 1700, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(155, 'mscdesk', 1730, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(156, 'mscdesk', 1800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(157, 'mscdesk', 1830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(158, 'music', 800, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(159, 'music', 830, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(160, 'music', 900, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(161, 'music', 930, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(162, 'music', 1500, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(163, 'music', 1530, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(164, 'music', 1600, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(165, 'music', 1630, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(166, 'music', 1700, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(167, 'music', 1730, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(168, 'music', 1800, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(169, 'music', 1830, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(170, 'ost', 800, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(171, 'ost', 830, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(172, 'ost', 900, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(173, 'ost', 930, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(174, 'ost', 1500, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(175, 'ost', 1530, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(176, 'ost', 1600, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(177, 'ost', 1630, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(178, 'ost', 1700, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(179, 'ost', 1730, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(180, 'ost', 1800, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(181, 'ost', 1830, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(182, 'physics', 800, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(183, 'physics', 830, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(184, 'physics', 900, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(185, 'physics', 930, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(186, 'physics', 1500, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(187, 'physics', 1530, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(188, 'physics', 1600, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(189, 'physics', 1630, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(190, 'physics', 1700, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(191, 'physics', 1730, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(192, 'physics', 1800, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(193, 'physics', 1830, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(194, 'spa', 800, 4);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(195, 'spa', 830, 4);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(196, 'spa', 900, 4);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(197, 'spa', 930, 4);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(198, 'spa', 1500, 4);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(199, 'spa', 1530, 4);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(200, 'spa', 1600, 4);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(201, 'spa', 1630, 4);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(202, 'spa', 1700, 4);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(203, 'spa', 1730, 4);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(204, 'spa', 1800, 4);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(205, 'spa', 1830, 4);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(206, 'testingcenter', 800, 2);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(207, 'testingcenter', 830, 2);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(208, 'testingcenter', 900, 2);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(209, 'testingcenter', 930, 2);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(210, 'testingcenter', 1500, 2);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(211, 'testingcenter', 1530, 2);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(212, 'testingcenter', 1600, 2);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(213, 'testingcenter', 1630, 2);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(214, 'testingcenter', 1700, 2);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(215, 'testingcenter', 1730, 2);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(216, 'testingcenter', 1800, 2);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(217, 'testingcenter', 1830, 2);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(218, 'welcomedesk', 800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(219, 'welcomedesk', 830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(220, 'welcomedesk', 900, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(221, 'welcomedesk', 930, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(222, 'welcomedesk', 1500, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(223, 'welcomedesk', 1530, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(224, 'welcomedesk', 1600, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(225, 'welcomedesk', 1630, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(226, 'welcomedesk', 1700, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(227, 'welcomedesk', 1730, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(228, 'welcomedesk', 1800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(229, 'welcomedesk', 1830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(230, 'accounting', 800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(231, 'accounting', 830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(232, 'accounting', 900, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(233, 'accounting', 930, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(234, 'accounting', 1500, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(235, 'accounting', 1530, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(236, 'accounting', 1600, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(237, 'accounting', 1630, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(238, 'accounting', 1700, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(239, 'accounting', 1730, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(240, 'accounting', 1800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(241, 'accounting', 1830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(242, 'biology', 800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(243, 'biology', 830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(244, 'biology', 900, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(245, 'biology', 930, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(246, 'biology', 1500, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(247, 'biology', 1530, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(248, 'biology', 1600, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(249, 'biology', 1630, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(250, 'biology', 1700, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(251, 'biology', 1730, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(252, 'biology', 1800, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(253, 'biology', 1830, 1);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(254, 'gen_tut_ia', 800, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(255, 'gen_tut_ia', 830, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(256, 'gen_tut_ia', 900, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(257, 'gen_tut_ia', 930, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(258, 'gen_tut_ia', 1500, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(259, 'gen_tut_ia', 1530, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(260, 'gen_tut_ia', 1600, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(261, 'gen_tut_ia', 1630, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(262, 'gen_tut_ia', 1700, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(263, 'gen_tut_ia', 1730, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(264, 'gen_tut_ia', 1800, 0);
INSERT INTO `hourlyminstaffonduty` (`id`, `department`, `time`, `minstaff`) VALUES(265, 'gen_tut_ia', 1830, 0);

CREATE TABLE IF NOT EXISTS `management` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `monday_start` int(4) NOT NULL,
  `monday_end` int(4) NOT NULL,
  `tuesday_start` int(4) NOT NULL,
  `tuesday_end` int(4) NOT NULL,
  `wednesday_start` int(4) NOT NULL,
  `wednesday_end` int(4) NOT NULL,
  `thursday_start` int(4) NOT NULL,
  `thursday_end` int(4) NOT NULL,
  `friday_start` int(4) NOT NULL,
  `friday_end` int(4) NOT NULL,
  `saturday_start` int(4) NOT NULL,
  `saturday_end` int(4) NOT NULL,
  `sunday_start` int(4) NOT NULL,
  `sunday_end` int(4) NOT NULL,
  `ranuniqueid` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

INSERT INTO `management` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(1, 'JOHN O''KEEFE', 1000, 1700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -783140285);
INSERT INTO `management` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(2, 'TARA R', 900, 1800, 900, 1800, 900, 1800, 900, 1800, 900, 1800, 0, 0, 0, 0, -550758770);

CREATE TABLE IF NOT EXISTS `meta` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `lastdatelaunch` char(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

INSERT INTO `meta` (`id`, `lastdatelaunch`) VALUES(1, '20150917');

CREATE TABLE IF NOT EXISTS `msc` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `monday_start` int(4) NOT NULL,
  `monday_end` int(4) NOT NULL,
  `tuesday_start` int(4) NOT NULL,
  `tuesday_end` int(4) NOT NULL,
  `wednesday_start` int(4) NOT NULL,
  `wednesday_end` int(4) NOT NULL,
  `thursday_start` int(4) NOT NULL,
  `thursday_end` int(4) NOT NULL,
  `friday_start` int(4) NOT NULL,
  `friday_end` int(4) NOT NULL,
  `saturday_start` int(4) NOT NULL,
  `saturday_end` int(4) NOT NULL,
  `sunday_start` int(4) NOT NULL,
  `sunday_end` int(4) NOT NULL,
  `ranuniqueid` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(1, 'ZAK P', 800, 1400, 0, 0, 800, 1400, 0, 0, 800, 1400, 0, 0, 0, 0, 174567757);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(2, 'ALEXANDER', 1400, 2000, 800, 1400, 1300, 1600, 0, 0, 0, 0, 0, 0, 0, 0, -2334615);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(3, 'ALEXANDER', 0, 0, 0, 0, 1700, 2200, 0, 0, 0, 0, 0, 0, 0, 0, -2334615);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(4, 'MJ', 800, 1400, 0, 0, 800, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 1291373126);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(5, 'MJ', 1500, 2100, 0, 0, 1500, 2100, 0, 0, 0, 0, 0, 0, 0, 0, 1291373126);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(6, 'RABAB', 900, 1500, 0, 0, 900, 1500, 0, 0, 0, 0, 0, 0, 0, 0, -596029319);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(7, 'HUY', 1500, 1800, 0, 0, 1500, 1800, 0, 0, 0, 0, 0, 0, 0, 0, -920078263);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(8, 'ZAK M', 1000, 1600, 1000, 1600, 1000, 1600, 1000, 1600, 0, 0, 0, 0, 0, 0, 463769817);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(9, 'CHERYL', 1600, 2200, 0, 0, 1600, 2200, 1600, 2200, 0, 0, 0, 0, 0, 0, 1060766153);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(10, 'IAN', 1000, 1500, 0, 0, 0, 0, 900, 1500, 0, 0, 0, 0, 0, 0, -1785995755);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(11, 'IAN', 1600, 2200, 0, 0, 0, 0, 1600, 2200, 0, 0, 0, 0, 0, 0, -1785995755);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(12, 'JOEY', 1000, 1600, 1600, 2100, 1000, 1700, 0, 0, 900, 1200, 0, 0, 0, 0, -892653623);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(13, 'JOEY', 0, 0, 0, 0, 0, 0, 0, 0, 1300, 1700, 0, 0, 0, 0, -892653623);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(14, 'HUNTER', 1600, 1900, 1400, 2000, 0, 0, 1500, 2100, 0, 0, 0, 0, 0, 0, 745373);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(15, 'STEPHEN', 1000, 1300, 0, 0, 1000, 1300, 1000, 1600, 0, 0, 0, 0, 0, 0, -37406695);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(16, 'STEPHEN', 0, 0, 0, 0, 1600, 1800, 0, 0, 0, 0, 0, 0, 0, 0, -37406695);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(17, 'ERIC', 1400, 1700, 0, 0, 1400, 2000, 0, 0, 1400, 1700, 0, 0, 0, 0, 228150843);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(18, 'JOHN', 0, 0, 800, 1300, 0, 0, 800, 1300, 0, 0, 0, 0, 0, 0, -1914090637);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(19, 'AUSTIN', 0, 0, 1400, 1800, 1400, 1700, 1400, 2000, 0, 0, 0, 0, 0, 0, -1466107771);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(20, 'AUSTIN', 0, 0, 1900, 2200, 1800, 2200, 0, 0, 0, 0, 0, 0, 0, 0, -1466107771);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(21, 'CHRIS M', 0, 0, 900, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1624501320);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(22, 'TRAVIS', 0, 0, 1000, 1600, 0, 0, 1600, 2200, 800, 1300, 0, 0, 0, 0, -91279487);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(23, 'TRAVIS', 0, 0, 1700, 2200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -91279487);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(24, 'DAMIKA', 0, 0, 1600, 2200, 0, 0, 1300, 1800, 0, 0, 0, 0, 0, 0, 458679543);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(25, 'TIM', 0, 0, 1200, 1700, 0, 0, 1000, 1600, 0, 0, 0, 0, 0, 0, -2093419457);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(26, 'RYAN', 1300, 1500, 0, 0, 1000, 1100, 0, 0, 0, 0, 0, 0, 0, 0, 1411657133);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(27, 'RYAN', 0, 0, 0, 0, 1200, 1300, 0, 0, 0, 0, 0, 0, 0, 0, 1411657133);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(28, 'YURAT', 0, 0, 1100, 1530, 0, 0, 1100, 1530, 1100, 1700, 0, 0, 0, 0, -992201230);
INSERT INTO `msc` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(29, 'JOSH', 0, 0, 1500, 1900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2005056851);

CREATE TABLE IF NOT EXISTS `mscdesk` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `monday_start` int(4) NOT NULL,
  `monday_end` int(4) NOT NULL,
  `tuesday_start` int(4) NOT NULL,
  `tuesday_end` int(4) NOT NULL,
  `wednesday_start` int(4) NOT NULL,
  `wednesday_end` int(4) NOT NULL,
  `thursday_start` int(4) NOT NULL,
  `thursday_end` int(4) NOT NULL,
  `friday_start` int(4) NOT NULL,
  `friday_end` int(4) NOT NULL,
  `saturday_start` int(4) NOT NULL,
  `saturday_end` int(4) NOT NULL,
  `sunday_start` int(4) NOT NULL,
  `sunday_end` int(4) NOT NULL,
  `ranuniqueid` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

INSERT INTO `mscdesk` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(1, 'TOMMY', 900, 1500, 900, 1300, 900, 1300, 900, 1300, 0, 0, 0, 0, 0, 0, -1371088655);
INSERT INTO `mscdesk` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(2, 'JACOB', 1500, 2000, 0, 0, 1500, 2000, 0, 0, 800, 1200, 0, 0, 0, 0, 1194299337);
INSERT INTO `mscdesk` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(3, 'JACOB', 0, 0, 0, 0, 0, 0, 0, 0, 1300, 1700, 0, 0, 0, 0, 1194299337);
INSERT INTO `mscdesk` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(4, 'AIRRON', 0, 0, 1300, 1900, 0, 0, 1300, 1900, 0, 0, 0, 0, 0, 0, 222285231);

CREATE TABLE IF NOT EXISTS `msc_ia` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `monday_start` int(4) NOT NULL,
  `monday_end` int(4) NOT NULL,
  `tuesday_start` int(4) NOT NULL,
  `tuesday_end` int(4) NOT NULL,
  `wednesday_start` int(4) NOT NULL,
  `wednesday_end` int(4) NOT NULL,
  `thursday_start` int(4) NOT NULL,
  `thursday_end` int(4) NOT NULL,
  `friday_start` int(4) NOT NULL,
  `friday_end` int(4) NOT NULL,
  `saturday_start` int(4) NOT NULL,
  `saturday_end` int(4) NOT NULL,
  `sunday_start` int(4) NOT NULL,
  `sunday_end` int(4) NOT NULL,
  `ranuniqueid` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

INSERT INTO `msc_ia` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(1, 'LORI', 900, 1200, 900, 1200, 900, 1500, 900, 1200, 0, 0, 0, 0, 0, 0, -1763970242);
INSERT INTO `msc_ia` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(2, 'LORI', 1300, 1600, 1300, 1600, 900, 1500, 1300, 1600, 0, 0, 0, 0, 0, 0, -1763970242);
INSERT INTO `msc_ia` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(3, 'NICOLE', 1600, 2200, 0, 0, 1600, 2200, 0, 0, 1200, 1700, 0, 0, 0, 0, -1838728371);
INSERT INTO `msc_ia` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(4, 'BRANDON', 0, 0, 1600, 2200, 0, 0, 1600, 2200, 0, 0, 0, 0, 0, 0, 614104778);

CREATE TABLE IF NOT EXISTS `music` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `monday_start` int(4) NOT NULL,
  `monday_end` int(4) NOT NULL,
  `tuesday_start` int(4) NOT NULL,
  `tuesday_end` int(4) NOT NULL,
  `wednesday_start` int(4) NOT NULL,
  `wednesday_end` int(4) NOT NULL,
  `thursday_start` int(4) NOT NULL,
  `thursday_end` int(4) NOT NULL,
  `friday_start` int(4) NOT NULL,
  `friday_end` int(4) NOT NULL,
  `saturday_start` int(4) NOT NULL,
  `saturday_end` int(4) NOT NULL,
  `sunday_start` int(4) NOT NULL,
  `sunday_end` int(4) NOT NULL,
  `ranuniqueid` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

INSERT INTO `music` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(1, 'GARY LISTORT', 0, 0, 1000, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -68272930);

CREATE TABLE IF NOT EXISTS `ost` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `monday_start` int(4) NOT NULL,
  `monday_end` int(4) NOT NULL,
  `tuesday_start` int(4) NOT NULL,
  `tuesday_end` int(4) NOT NULL,
  `wednesday_start` int(4) NOT NULL,
  `wednesday_end` int(4) NOT NULL,
  `thursday_start` int(4) NOT NULL,
  `thursday_end` int(4) NOT NULL,
  `friday_start` int(4) NOT NULL,
  `friday_end` int(4) NOT NULL,
  `saturday_start` int(4) NOT NULL,
  `saturday_end` int(4) NOT NULL,
  `sunday_start` int(4) NOT NULL,
  `sunday_end` int(4) NOT NULL,
  `ranuniqueid` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

INSERT INTO `ost` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(1, 'DINA MYERS', 1000, 1900, 0, 0, 1000, 1900, 0, 0, 0, 0, 0, 0, 0, 0, -531175995);

CREATE TABLE IF NOT EXISTS `physics` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `monday_start` int(4) NOT NULL,
  `monday_end` int(4) NOT NULL,
  `tuesday_start` int(4) NOT NULL,
  `tuesday_end` int(4) NOT NULL,
  `wednesday_start` int(4) NOT NULL,
  `wednesday_end` int(4) NOT NULL,
  `thursday_start` int(4) NOT NULL,
  `thursday_end` int(4) NOT NULL,
  `friday_start` int(4) NOT NULL,
  `friday_end` int(4) NOT NULL,
  `saturday_start` int(4) NOT NULL,
  `saturday_end` int(4) NOT NULL,
  `sunday_start` int(4) NOT NULL,
  `sunday_end` int(4) NOT NULL,
  `ranuniqueid` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

INSERT INTO `physics` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(1, 'DANIEL CERKONEY', 1700, 2000, 1200, 1530, 1700, 2000, 1200, 1530, 0, 0, 0, 0, 0, 0, -23229997);
INSERT INTO `physics` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(2, 'DANIEL NEUMAN', 0, 0, 1530, 2000, 0, 0, 1530, 2000, 0, 0, 0, 0, 0, 0, 85609806);

CREATE TABLE IF NOT EXISTS `spa` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `monday_start` int(4) NOT NULL,
  `monday_end` int(4) NOT NULL,
  `tuesday_start` int(4) NOT NULL,
  `tuesday_end` int(4) NOT NULL,
  `wednesday_start` int(4) NOT NULL,
  `wednesday_end` int(4) NOT NULL,
  `thursday_start` int(4) NOT NULL,
  `thursday_end` int(4) NOT NULL,
  `friday_start` int(4) NOT NULL,
  `friday_end` int(4) NOT NULL,
  `saturday_start` int(4) NOT NULL,
  `saturday_end` int(4) NOT NULL,
  `sunday_start` int(4) NOT NULL,
  `sunday_end` int(4) NOT NULL,
  `ranuniqueid` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(1, 'CHRIS A', 800, 1400, 800, 1400, 1000, 1500, 800, 1400, 0, 0, 0, 0, 0, 0, -1495576861);
INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(2, 'NICK S', 1400, 1700, 900, 1000, 1500, 1700, 1600, 1700, 1500, 1700, 0, 0, 0, 0, -1328962334);
INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(3, 'BEVERLY', 900, 1300, 0, 0, 900, 1300, 900, 1300, 0, 0, 0, 0, 0, 0, -198071838);
INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(4, 'BEVERLY', 1400, 1700, 0, 0, 1400, 1800, 1400, 1800, 0, 0, 0, 0, 0, 0, -198071838);
INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(5, 'NICK P', 1700, 2200, 0, 0, 1700, 2200, 0, 0, 0, 0, 0, 0, 0, 0, -1024055339);
INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(6, 'ARMANDO', 900, 1400, 0, 0, 900, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 2128234720);
INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(7, 'ARMANDO', 1500, 1900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2128234720);
INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(8, 'CATHERINE', 1000, 1500, 1000, 1500, 1000, 1500, 1000, 1500, 1000, 1500, 0, 0, 0, 0, -961260076);
INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(9, 'NARGIS', 1700, 2200, 0, 0, 1700, 2200, 0, 0, 0, 0, 0, 0, 0, 0, 20796371);
INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(10, 'BEN', 1000, 1600, 1000, 1600, 1300, 1600, 0, 0, 0, 0, 0, 0, 0, 0, 1812851874);
INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(11, 'ALEXIS', 1000, 1500, 1400, 1700, 0, 0, 1400, 1700, 800, 1700, 0, 0, 0, 0, -1526320231);
INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(12, 'JOSH', 1500, 2100, 0, 0, 1200, 1700, 1300, 1700, 900, 1200, 0, 0, 0, 0, -1914090637);
INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(13, 'RYAN', 0, 0, 800, 1400, 0, 0, 800, 1400, 800, 1100, 0, 0, 0, 0, 1411657133);
INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(14, 'RYAN', 0, 0, 0, 0, 0, 0, 0, 0, 1200, 1300, 0, 0, 0, 0, 1411657133);
INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(15, 'SARAH', 0, 0, 1400, 1900, 800, 1200, 1400, 1900, 0, 0, 0, 0, 0, 0, 71416942);
INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(16, 'MARIO', 0, 0, 1600, 2200, 1600, 1900, 1900, 2200, 0, 0, 0, 0, 0, 0, 2125926019);
INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(17, 'MATTHEW', 0, 0, 1000, 1330, 0, 0, 1000, 1500, 0, 0, 0, 0, 0, 0, 2028301629);
INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(18, 'MATTHEW', 0, 0, 1400, 1630, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2028301629);
INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(19, 'ESTHER', 0, 0, 1500, 2100, 1530, 2100, 1800, 2200, 1100, 1700, 0, 0, 0, 0, -1604062928);
INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(20, 'ZAK P', 0, 0, 0, 0, 0, 0, 1700, 2200, 0, 0, 0, 0, 0, 0, 174567757);
INSERT INTO `spa` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(21, 'DAMIKA', 0, 0, 0, 0, 0, 0, 1800, 1900, 0, 0, 0, 0, 0, 0, 458679543);

CREATE TABLE IF NOT EXISTS `testingcenter` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `monday_start` int(4) NOT NULL,
  `monday_end` int(4) NOT NULL,
  `tuesday_start` int(4) NOT NULL,
  `tuesday_end` int(4) NOT NULL,
  `wednesday_start` int(4) NOT NULL,
  `wednesday_end` int(4) NOT NULL,
  `thursday_start` int(4) NOT NULL,
  `thursday_end` int(4) NOT NULL,
  `friday_start` int(4) NOT NULL,
  `friday_end` int(4) NOT NULL,
  `saturday_start` int(4) NOT NULL,
  `saturday_end` int(4) NOT NULL,
  `sunday_start` int(4) NOT NULL,
  `sunday_end` int(4) NOT NULL,
  `ranuniqueid` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

INSERT INTO `testingcenter` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(1, 'CHI NGUYEN', 700, 1600, 700, 1530, 700, 1600, 700, 1630, 700, 1300, 0, 0, 0, 0, -856362211);
INSERT INTO `testingcenter` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(2, 'LUISA RINCON', 0, 0, 700, 1600, 900, 1730, 700, 1530, 700, 1530, 0, 0, 0, 0, 1336888031);
INSERT INTO `testingcenter` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(3, 'BETTY BLACKBURN', 1300, 2200, 1300, 2200, 1300, 2200, 1300, 2200, 1300, 1900, 0, 0, 0, 0, -1863868016);
INSERT INTO `testingcenter` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(4, 'LEILA CAMACHO', 1700, 2200, 0, 0, 1700, 2200, 0, 0, 0, 0, 0, 0, 0, 0, 1344623245);
INSERT INTO `testingcenter` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(5, 'HELEN LOPEZ', 0, 0, 1700, 2200, 0, 0, 1700, 2200, 1400, 1900, 0, 0, 0, 0, 773618727);
INSERT INTO `testingcenter` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(6, 'SHARON MAGEE', 700, 1200, 0, 0, 700, 1200, 0, 0, 700, 1200, 0, 0, 0, 0, 1996070758);
INSERT INTO `testingcenter` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(7, 'MATTHEW DIAZ', 0, 0, 0, 0, 1700, 2200, 0, 0, 0, 0, 0, 0, 0, 0, 1756161621);
INSERT INTO `testingcenter` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(8, 'GUSTAVO JORDAN', 1630, 2130, 1630, 2130, 0, 0, 1630, 2130, 0, 0, 0, 0, 0, 0, -1310560244);

CREATE TABLE IF NOT EXISTS `todaysrecesspeople` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `department` varchar(40) NOT NULL,
  `shiftstart` int(4) NOT NULL,
  `games_played` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

INSERT INTO `todaysrecesspeople` (`id`, `name`, `department`, `shiftstart`, `games_played`) VALUES(1, 'MATHIAS KAJDI', 'welcomedesk', 900, 6);
INSERT INTO `todaysrecesspeople` (`id`, `name`, `department`, `shiftstart`, `games_played`) VALUES(2, 'AL', 'communication', 900, 4);
INSERT INTO `todaysrecesspeople` (`id`, `name`, `department`, `shiftstart`, `games_played`) VALUES(3, 'SILVA', 'communication', 900, 5);
INSERT INTO `todaysrecesspeople` (`id`, `name`, `department`, `shiftstart`, `games_played`) VALUES(4, 'TARA R', 'management', 900, 4);
INSERT INTO `todaysrecesspeople` (`id`, `name`, `department`, `shiftstart`, `games_played`) VALUES(5, 'DARLA SMITH', 'welcomedesk', 930, 7);
INSERT INTO `todaysrecesspeople` (`id`, `name`, `department`, `shiftstart`, `games_played`) VALUES(6, 'GLENDA', 'communication', 930, 5);
INSERT INTO `todaysrecesspeople` (`id`, `name`, `department`, `shiftstart`, `games_played`) VALUES(7, 'DIRK EMDE', 'chemistry', 1500, 4);
INSERT INTO `todaysrecesspeople` (`id`, `name`, `department`, `shiftstart`, `games_played`) VALUES(8, 'CHI NGUYEN', 'testingcenter', 1500, 3);
INSERT INTO `todaysrecesspeople` (`id`, `name`, `department`, `shiftstart`, `games_played`) VALUES(9, 'DEVIN', 'communication', 1500, 4);
INSERT INTO `todaysrecesspeople` (`id`, `name`, `department`, `shiftstart`, `games_played`) VALUES(10, 'DANIEL CERKONEY', 'physics', 1500, 5);
INSERT INTO `todaysrecesspeople` (`id`, `name`, `department`, `shiftstart`, `games_played`) VALUES(11, 'PRISCILLA GARCIA', 'chemistry', 1530, 4);
INSERT INTO `todaysrecesspeople` (`id`, `name`, `department`, `shiftstart`, `games_played`) VALUES(12, 'DANIEL NEUMAN', 'physics', 1530, 3);
INSERT INTO `todaysrecesspeople` (`id`, `name`, `department`, `shiftstart`, `games_played`) VALUES(13, 'CHRISTEN COSTELLO', 'gen_tut_ia', 1530, 3);

CREATE TABLE IF NOT EXISTS `welcomedesk` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `monday_start` int(4) NOT NULL,
  `monday_end` int(4) NOT NULL,
  `tuesday_start` int(4) NOT NULL,
  `tuesday_end` int(4) NOT NULL,
  `wednesday_start` int(4) NOT NULL,
  `wednesday_end` int(4) NOT NULL,
  `thursday_start` int(4) NOT NULL,
  `thursday_end` int(4) NOT NULL,
  `friday_start` int(4) NOT NULL,
  `friday_end` int(4) NOT NULL,
  `saturday_start` int(4) NOT NULL,
  `saturday_end` int(4) NOT NULL,
  `sunday_start` int(4) NOT NULL,
  `sunday_end` int(4) NOT NULL,
  `ranuniqueid` int(9) NOT NULL DEFAULT '999',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

INSERT INTO `welcomedesk` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(1, 'ALEXIS YOUNG', 700, 1200, 700, 1100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1843294613);
INSERT INTO `welcomedesk` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(2, 'DARLA SMITH', 900, 1400, 900, 1400, 900, 1400, 900, 1400, 900, 1400, 0, 0, 0, 0, 1769359202);
INSERT INTO `welcomedesk` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(3, 'MATHIAS KAJDI', 1600, 2100, 700, 1100, 700, 1000, 700, 1100, 700, 1000, 0, 0, 0, 0, -2144749884);
INSERT INTO `welcomedesk` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(4, 'STEVEN ESPINOZA', 1300, 1800, 1200, 1700, 0, 0, 1200, 1700, 1530, 2000, 0, 0, 0, 0, 921852565);
INSERT INTO `welcomedesk` (`id`, `name`, `monday_start`, `monday_end`, `tuesday_start`, `tuesday_end`, `wednesday_start`, `wednesday_end`, `thursday_start`, `thursday_end`, `friday_start`, `friday_end`, `saturday_start`, `saturday_end`, `sunday_start`, `sunday_end`, `ranuniqueid`) VALUES(5, 'ELISSE GOMEZ', 0, 0, 0, 0, 700, 1100, 1700, 2100, 700, 1400, 0, 0, 0, 0, -2029990991);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
