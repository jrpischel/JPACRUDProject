-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema petdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `petdb` ;

-- -----------------------------------------------------
-- Schema petdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `petdb` DEFAULT CHARACTER SET utf8 ;
USE `petdb` ;

-- -----------------------------------------------------
-- Table `pet`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pet` ;

CREATE TABLE IF NOT EXISTS `pet` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `owner` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `species` VARCHAR(45) NOT NULL,
  `age` INT NULL,
  `favorite_food` VARCHAR(45) NULL,
  `favorite_toy` VARCHAR(45) NULL,
  `picture` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS petuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'petuser'@'localhost' IDENTIFIED BY 'petuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'petuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `pet`
-- -----------------------------------------------------
START TRANSACTION;
USE `petdb`;
INSERT INTO `pet` (`id`, `owner`, `name`, `species`, `age`, `favorite_food`, `favorite_toy`, `picture`) VALUES (1, 'James and Mar', 'Panzer', 'Canine', 6, 'Steak', 'Baseball', 'images/panzer.png');
INSERT INTO `pet` (`id`, `owner`, `name`, `species`, `age`, `favorite_food`, `favorite_toy`, `picture`) VALUES (2, 'James and Mar', 'Husker', 'Canine', 6, 'Chicken', 'Stuffed Animals', 'images/husker.png');
INSERT INTO `pet` (`id`, `owner`, `name`, `species`, `age`, `favorite_food`, `favorite_toy`, `picture`) VALUES (3, 'James', 'Hazel', 'Canine', 2, 'Pizza Crust', 'Frisbee', 'images/hazel.png');
INSERT INTO `pet` (`id`, `owner`, `name`, `species`, `age`, `favorite_food`, `favorite_toy`, `picture`) VALUES (4, 'James and Mar', 'Patches', 'Feline', 7, 'Tuna', 'Nosiey Cricket', 'images/patches.png');
INSERT INTO `pet` (`id`, `owner`, `name`, `species`, `age`, `favorite_food`, `favorite_toy`, `picture`) VALUES (5, 'James and Mar', 'Autumn', 'Feline', 5, 'Chicken', 'Feather on a Stick', 'images/autumn.png');
INSERT INTO `pet` (`id`, `owner`, `name`, `species`, `age`, `favorite_food`, `favorite_toy`, `picture`) VALUES (6, 'Mar', 'Spencer', 'Feline', 2, 'Chicken', 'Ball with Bells ', 'images/spencer.png');
INSERT INTO `pet` (`id`, `owner`, `name`, `species`, `age`, `favorite_food`, `favorite_toy`, `picture`) VALUES (7, 'Mar', 'Rosie', 'Feline', 2, 'Temptations Treats', 'Lazer Pointer', 'images/rosie.png');
INSERT INTO `pet` (`id`, `owner`, `name`, `species`, `age`, `favorite_food`, `favorite_toy`, `picture`) VALUES (8, 'Emma', 'Baxter', 'Canine', 1, 'Fried Chicken', 'Squeekers and Balls ', 'images/baxter.png');
INSERT INTO `pet` (`id`, `owner`, `name`, `species`, `age`, `favorite_food`, `favorite_toy`, `picture`) VALUES (9, 'Emma', 'Ace', 'Canine', 1, 'Everything ', 'NylaBone', 'images/ace.png');
INSERT INTO `pet` (`id`, `owner`, `name`, `species`, `age`, `favorite_food`, `favorite_toy`, `picture`) VALUES (10, 'Emma', 'Dobby', 'Feline', 0, 'Flies', 'Socks', 'images/dobby.png');
INSERT INTO `pet` (`id`, `owner`, `name`, `species`, `age`, `favorite_food`, `favorite_toy`, `picture`) VALUES (11, 'Scarlett and Paittyn', 'Leo', 'Feline', 1, 'Fish', 'Toes', 'TBA');
INSERT INTO `pet` (`id`, `owner`, `name`, `species`, `age`, `favorite_food`, `favorite_toy`, `picture`) VALUES (12, 'Scarlett and Paityn', 'Bender', 'Feline', 2, 'Chicken', 'Balls', 'TBA');

COMMIT;

