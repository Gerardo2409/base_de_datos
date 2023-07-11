-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb3 ;
-- -----------------------------------------------------
-- Schema test
-- -----------------------------------------------------
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Producto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Producto` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Producto` (
  `codigo` INT(10) NOT NULL,
  `Nombre` VARCHAR(100) NOT NULL,
  `Precio_DOUBLE` VARCHAR(45) NOT NULL,
  `Fabricante_Codigo` INT(10) NOT NULL,
  PRIMARY KEY (`codigo`),
  CONSTRAINT `fk_Producto_Fabricante1`
    FOREIGN KEY (`Fabricante_Codigo`)
    REFERENCES `mydb`.`Fabricante` (`Codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Fabricante`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Fabricante` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Fabricante` (
  `Codigo` INT(10) NOT NULL,
  `Nombre` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Codigo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Producto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Producto` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Producto` (
  `codigo` INT(10) NOT NULL,
  `Nombre` VARCHAR(100) NOT NULL,
  `Precio_DOUBLE` VARCHAR(45) NOT NULL,
  `Fabricante_Codigo` INT(10) NOT NULL,
  PRIMARY KEY (`codigo`),
  CONSTRAINT `fk_Producto_Fabricante1`
    FOREIGN KEY (`Fabricante_Codigo`)
    REFERENCES `mydb`.`Fabricante` (`Codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Producto_Fabricante1_idx` ON `mydb`.`Producto` (`Fabricante_Codigo` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
