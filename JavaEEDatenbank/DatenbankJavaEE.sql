-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema java_ee_database
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema java_ee_database
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `java_ee_database` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema osticket
-- -----------------------------------------------------
USE `java_ee_database` ;

-- -----------------------------------------------------
-- Table `java_ee_database`.`tpl_role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `java_ee_database`.`tpl_role` (
  `role_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `note` VARCHAR(45) NULL,
  PRIMARY KEY (`role_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `java_ee_database`.`tpl_cluster`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `java_ee_database`.`tpl_cluster` (
  `cluster_id` INT NOT NULL AUTO_INCREMENT,
  `clusterSupervisor` INT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cluster_id`),
  INDEX `cluster_user_id_idx` (`clusterSupervisor` ASC),
  CONSTRAINT `cluster_user_id`
    FOREIGN KEY (`clusterSupervisor`)
    REFERENCES `java_ee_database`.`tpl_user` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `java_ee_database`.`tpl_school`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `java_ee_database`.`tpl_school` (
  `school_id` INT NOT NULL AUTO_INCREMENT,
  `cluster_id` INT NULL,
  `designation` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`school_id`),
  INDEX `school_cluster_id_idx` (`cluster_id` ASC),
  CONSTRAINT `school_cluster_id`
    FOREIGN KEY (`cluster_id`)
    REFERENCES `java_ee_database`.`tpl_cluster` (`cluster_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `java_ee_database`.`tpl_user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `java_ee_database`.`tpl_user` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `role_id` INT NOT NULL,
  `school_id` INT NOT NULL,
  `firstname` VARCHAR(32) NOT NULL,
  `lastname` VARCHAR(32) NOT NULL,
  `email` VARCHAR(128) NOT NULL,
  `password` VARCHAR(128) NOT NULL,
  `lastlogin` DATETIME NULL,
  `phone` VARCHAR(24) NULL,
  `created` DATETIME NULL,
  PRIMARY KEY (`user_id`),
  INDEX `user_role_id_idx` (`role_id` ASC),
  INDEX `user_school_id_idx` (`school_id` ASC),
  CONSTRAINT `user_role_id`
    FOREIGN KEY (`role_id`)
    REFERENCES `java_ee_database`.`tpl_role` (`role_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `user_school_id`
    FOREIGN KEY (`school_id`)
    REFERENCES `java_ee_database`.`tpl_school` (`school_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `java_ee_database`.`tpl_ticket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `java_ee_database`.`tpl_ticket` (
  `ticket_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `heading` VARCHAR(45) NULL,
  `created` DATETIME NOT NULL,
  `closed` DATETIME NULL DEFAULT NULL,
  `priority` INT NULL DEFAULT 0,
  PRIMARY KEY (`ticket_id`),
  INDEX `user_ticket_id_idx` (`user_id` ASC),
  CONSTRAINT `ticket_user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `java_ee_database`.`tpl_user` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `java_ee_database`.`tpl_note`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `java_ee_database`.`tpl_note` (
  `note_id` INT NOT NULL AUTO_INCREMENT,
  `ticket_id` INT NOT NULL,
  `created` DATETIME NOT NULL,
  `text` VARCHAR(255) NULL,
  PRIMARY KEY (`note_id`),
  INDEX `note_ticket_id_idx` (`ticket_id` ASC),
  CONSTRAINT `note_ticket_id`
    FOREIGN KEY (`ticket_id`)
    REFERENCES `java_ee_database`.`tpl_ticket` (`ticket_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
