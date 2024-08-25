-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema exam
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `exam` ;

-- -----------------------------------------------------
-- Schema exam
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `exam` DEFAULT CHARACTER SET utf8 ;
USE `exam` ;

-- -----------------------------------------------------
-- Table `exam`.`owner`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `exam`.`owner` ;

CREATE TABLE IF NOT EXISTS `exam`.`owner` (
  `OwnerId` INT(11) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`OwnerId`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `exam`.`Store`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `exam`.`Store` ;

CREATE TABLE IF NOT EXISTS `exam`.`Store` (
  `StoreId` INT(11) NOT NULL,
  `Location` VARCHAR(100) NOT NULL,
  `ContactNumber` VARCHAR(45) NOT NULL,
  `Deleted` TINYINT(1) NULL,
  `OwnerNumber` INT(11) NOT NULL,
  PRIMARY KEY (`StoreId`),
  INDEX `fk_Store_owner_idx` (`OwnerNumber` ASC) VISIBLE,
  CONSTRAINT `fk_Store_owner`
    FOREIGN KEY (`OwnerNumber`)
    REFERENCES `exam`.`owner` (`OwnerId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `exam`.`Catergory`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `exam`.`Catergory` ;

CREATE TABLE IF NOT EXISTS `exam`.`Catergory` (
  `CategoryId` INT NOT NULL,
  `CategoryName` VARCHAR(150) NOT NULL,
  `StoreNumber` INT(11) NOT NULL,
  PRIMARY KEY (`CategoryId`),
  INDEX `fk_Catergory_Store1_idx` (`StoreNumber` ASC) VISIBLE,
  CONSTRAINT `fk_Catergory_Store1`
    FOREIGN KEY (`StoreNumber`)
    REFERENCES `exam`.`Store` (`StoreId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `exam`.`Product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `exam`.`Product` ;

CREATE TABLE IF NOT EXISTS `exam`.`Product` (
  `ProductId` INT NOT NULL,
  `ProductName` VARCHAR(45) NOT NULL,
  `ProductDescription` VARCHAR(250) NULL,
  `InStock` INT NOT NULL,
  `Price` DECIMAL NULL,
  `Discount` DECIMAL NULL,
  `Deleted` TINYINT(1) NULL,
  `CategoryNumber` INT NOT NULL,
  PRIMARY KEY (`ProductId`),
  INDEX `fk_Product_Catergory1_idx` (`CategoryNumber` ASC) VISIBLE,
  CONSTRAINT `fk_Product_Catergory1`
    FOREIGN KEY (`CategoryNumber`)
    REFERENCES `exam`.`Catergory` (`CategoryId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `exam`.`Customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `exam`.`Customer` ;

CREATE TABLE IF NOT EXISTS `exam`.`Customer` (
  `CustomerNumber` INT NOT NULL,
  `CustomerName` VARCHAR(150) NULL,
  `Phone` VARCHAR(15) NULL,
  `email` VARCHAR(45) NULL,
  `addressLine1` VARCHAR(100) NULL,
  `addressLine2` VARCHAR(150) NULL,
  `city` VARCHAR(100) NULL,
  `State` VARCHAR(100) NULL,
  `PostalCode` VARCHAR(15) NULL,
  `Country` VARCHAR(150) NULL,
  PRIMARY KEY (`CustomerNumber`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `exam`.`Orders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `exam`.`Orders` ;

CREATE TABLE IF NOT EXISTS `exam`.`Orders` (
  `OrderNumber` INT NOT NULL,
  `OrderDate` DATETIME NOT NULL,
  `DeliveryDate` DATETIME NULL,
  `DueDate` DATETIME NULL,
  `Status` VARCHAR(45) NOT NULL,
  `CustomerNumber` INT NOT NULL,
  PRIMARY KEY (`OrderNumber`),
  INDEX `fk_Orders_Customer1_idx` (`CustomerNumber` ASC) VISIBLE,
  CONSTRAINT `fk_Orders_Customer1`
    FOREIGN KEY (`CustomerNumber`)
    REFERENCES `exam`.`Customer` (`CustomerNumber`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `exam`.`OrderDetails`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `exam`.`OrderDetails` ;

CREATE TABLE IF NOT EXISTS `exam`.`OrderDetails` (
  `OrderNumber` INT NOT NULL,
  `ProductCode` INT NOT NULL,
  `QuantityOrdered` INT NULL,
  `PriceEach` DECIMAL NULL,
  `StoreNumber` INT(11) NOT NULL,
  INDEX `fk_OrderDetails_Orders1_idx` (`OrderNumber` ASC) VISIBLE,
  INDEX `fk_OrderDetails_Product1_idx` (`ProductCode` ASC) VISIBLE,
  INDEX `fk_OrderDetails_Store1_idx` (`StoreNumber` ASC) VISIBLE,
  PRIMARY KEY (`OrderNumber`, `ProductCode`),
  CONSTRAINT `fk_OrderDetails_Orders1`
    FOREIGN KEY (`OrderNumber`)
    REFERENCES `exam`.`Orders` (`OrderNumber`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_OrderDetails_Product1`
    FOREIGN KEY (`ProductCode`)
    REFERENCES `exam`.`Product` (`ProductId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_OrderDetails_Store1`
    FOREIGN KEY (`StoreNumber`)
    REFERENCES `exam`.`Store` (`StoreId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
