-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema esquema_amistades
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema esquema_amistades
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `esquema_amistades` DEFAULT CHARACTER SET utf8 ;
USE `esquema_amistades` ;

-- -----------------------------------------------------
-- Table `esquema_amistades`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `esquema_amistades`.`usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `esquema_amistades`.`amistades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `esquema_amistades`.`amistades` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usuario_id` INT NOT NULL,
  `amistad_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_amistades_usuarios1_idx` (`usuario_id` ASC) VISIBLE,
  INDEX `fk_amistades_usuarios2_idx` (`amistad_id` ASC) VISIBLE,
  CONSTRAINT `fk_amistades_usuarios1`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `esquema_amistades`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_amistades_usuarios2`
    FOREIGN KEY (`amistad_id`)
    REFERENCES `esquema_amistades`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `esquema_amistades`.`amistades_has_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `esquema_amistades`.`amistades_has_usuarios` (
  `amistades_id` INT NOT NULL,
  `usuarios_id` INT NOT NULL,
  PRIMARY KEY (`amistades_id`, `usuarios_id`),
  INDEX `fk_amistades_has_usuarios_usuarios1_idx` (`usuarios_id` ASC) VISIBLE,
  INDEX `fk_amistades_has_usuarios_amistades_idx` (`amistades_id` ASC) VISIBLE,
  CONSTRAINT `fk_amistades_has_usuarios_amistades`
    FOREIGN KEY (`amistades_id`)
    REFERENCES `esquema_amistades`.`amistades` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_amistades_has_usuarios_usuarios1`
    FOREIGN KEY (`usuarios_id`)
    REFERENCES `esquema_amistades`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
