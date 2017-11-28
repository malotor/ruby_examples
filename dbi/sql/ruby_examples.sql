CREATE SCHEMA IF NOT EXISTS `db_ruby_examples` DEFAULT CHARACTER SET utf8 ;
USE `db_ruby_examples` ;


CREATE TABLE IF NOT EXISTS `db_ruby_examples`.`Course` (
  `idCourse` INT NOT NULL,
  `name` VARCHAR(150) NULL,
  `description` VARCHAR(300) NULL,
  `price` INT NULL,
  `hours` INT NULL,
  PRIMARY KEY (`idCourse`))
ENGINE = InnoDB;