-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema 3Lab
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema 3Lab
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `3Lab` ;
USE `3Lab` ;

-- -----------------------------------------------------
-- Table `3Lab`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `3Lab`.`Client` (
  `clientID` INT NOT NULL AUTO_INCREMENT,
  `client_name` VARCHAR(55) NOT NULL,
  `client_address` VARCHAR(55) NOT NULL,
  `client_age` INT NOT NULL,
  PRIMARY KEY (`clientID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `3Lab`.`Policy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `3Lab`.`Policy` (
  `policyID` INT NOT NULL,
  `policy_Type` VARCHAR(55) NOT NULL,
  `policy_Term` VARCHAR(45) NOT NULL,
  `policy_Limits` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`policyID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `3Lab`.`Policy List`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `3Lab`.`Policy List` (
  `CLIENT_clientID` INT NOT NULL,
  `POLICY_policyID` INT NOT NULL AUTO_INCREMENT,
  INDEX `CLIENT_clientID_idx` (`CLIENT_clientID` ASC) VISIBLE,
  PRIMARY KEY (`POLICY_policyID`, `CLIENT_clientID`),
  INDEX `POLICY_policyID_idx` (`POLICY_policyID` ASC) VISIBLE,
  CONSTRAINT `CLIENT_clientID`
    FOREIGN KEY (`CLIENT_clientID`)
    REFERENCES `3Lab`.`Client` (`clientID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `POLICY_policyID`
    FOREIGN KEY (`POLICY_policyID`)
    REFERENCES `3Lab`.`Policy` (`policyID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
