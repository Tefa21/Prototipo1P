-- MySQL Script generated by MySQL Workbench
-- Tue Aug 25 14:02:06 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Prototipo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Prototipo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Prototipo` DEFAULT CHARACTER SET utf8 ;
USE `Prototipo` ;

-- -----------------------------------------------------
-- Table `Prototipo`.`CLIENTE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Prototipo`.`CLIENTE` (
  `ID_CLIENTE` INT NOT NULL,
  `NOMBRE1` VARCHAR(50) NULL,
  `NOMBRE2` VARCHAR(50) NULL,
  `APELLIDO1` VARCHAR(50) NULL,
  `DIRECCION` VARCHAR(50) NULL,
  `TELEFONO` INT NULL,
  `NIT` INT NULL,
  `CORREO` VARCHAR(150) NULL,
  PRIMARY KEY (`ID_CLIENTE`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Prototipo`.`PROVEEDOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Prototipo`.`PROVEEDOR` (
  `ID_PROVEEDOR` INT NOT NULL,
  `NOMBRE_PROVEEDOR` VARCHAR(45) NULL,
  `TELEFONO` INT NULL,
  `CORREO` VARCHAR(150) NULL,
  `DIRECCION` VARCHAR(50) NULL,
  PRIMARY KEY (`ID_PROVEEDOR`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Prototipo`.`TIPO_PUESTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Prototipo`.`TIPO_PUESTO` (
  `ID_TIPO_PUESTO` INT NOT NULL,
  `NOMBRE_PUESTO` VARCHAR(50) NULL,
  PRIMARY KEY (`ID_TIPO_PUESTO`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Prototipo`.`ESTADO_EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Prototipo`.`ESTADO_EMPLEADO` (
  `ID_ESTADO_EMPLEADO` INT NOT NULL,
  `NOMBRE_ESTADO` VARCHAR(50) NULL,
  PRIMARY KEY (`ID_ESTADO_EMPLEADO`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Prototipo`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Prototipo`.`EMPLEADO` (
  `ID_EMPLEADO` INT NOT NULL,
  `NOMBRE1` VARCHAR(50) NULL,
  `NOMBRE2` VARCHAR(50) NULL,
  `APELLIDO1` VARCHAR(50) NULL,
  `APELLIDO2` VARCHAR(50) NULL,
  `TELEFONO` INT NULL,
  `ID_PUESTO_FK` INT NULL,
  `ID_ESTADO_EMPLEADO_FK` INT NULL,
  PRIMARY KEY (`ID_EMPLEADO`),
  CONSTRAINT `FK_PUESTO`
    FOREIGN KEY (`ID_PUESTO_FK`)
    REFERENCES `Prototipo`.`TIPO_PUESTO` (`ID_TIPO_PUESTO`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `FK_ESTADO_EMPLEADO`
    FOREIGN KEY (`ID_ESTADO_EMPLEADO_FK`)
    REFERENCES `Prototipo`.`ESTADO_EMPLEADO` (`ID_ESTADO_EMPLEADO`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Prototipo`.`COMPRA_ENCABEZADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Prototipo`.`COMPRA_ENCABEZADO` (
  `ID_COMPRA_ENCABEZADO` INT NOT NULL,
  `ID_EMPLEADO_FK` INT NULL,
  `ID_PROVEEDOR_FK` INT NULL,
  `FECHA_COMPRA` VARCHAR(10) NULL,
  `TOTAL_COMPRA` DOUBLE NULL,
  PRIMARY KEY (`ID_COMPRA_ENCABEZADO`),
  CONSTRAINT `FK_EMPLEADO_COMPRA`
    FOREIGN KEY (`ID_EMPLEADO_FK`)
    REFERENCES `Prototipo`.`EMPLEADO` (`ID_EMPLEADO`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `FK_PROVEEDOR_COMPRA`
    FOREIGN KEY (`ID_PROVEEDOR_FK`)
    REFERENCES `Prototipo`.`PROVEEDOR` (`ID_PROVEEDOR`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Prototipo`.`ESTADO_PRODUCTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Prototipo`.`ESTADO_PRODUCTO` (
  `ID_ESTADO_PRODUCTO` INT NOT NULL,
  `NOMBRE_ESTADO` VARCHAR(50) NULL,
  PRIMARY KEY (`ID_ESTADO_PRODUCTO`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Prototipo`.`INVENTARIO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Prototipo`.`INVENTARIO` (
  `ID_PRODUCTO` INT NOT NULL,
  `NOMBRE_PRODUCTO` VARCHAR(45) NULL,
  `EXISTENCIA` INT NULL,
  `PRECIO` DOUBLE NULL,
  `DESCRIPCION` VARCHAR(150) NULL,
  `ID_ESTADO_PRODUCTO` INT NULL,
  PRIMARY KEY (`ID_PRODUCTO`),
  CONSTRAINT `FK_ESTADO_PRODUCTO`
    FOREIGN KEY (`ID_ESTADO_PRODUCTO`)
    REFERENCES `Prototipo`.`ESTADO_PRODUCTO` (`ID_ESTADO_PRODUCTO`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Prototipo`.`DETALLE_COMPRA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Prototipo`.`DETALLE_COMPRA` (
  `ID_DETALLE_COMPRA` INT NOT NULL,
  `ID_PRODUCTO_FK` INT NULL,
  `DESCRIPCION` VARCHAR(150) NULL,
  `CANTIDAD` INT NULL,
  `PRECIO_UNITARIO` DOUBLE NULL,
  `SUB_TOTAL` DOUBLE NULL,
  PRIMARY KEY (`ID_DETALLE_COMPRA`),
  CONSTRAINT `FK_PRODUCTO_COMPRA`
    FOREIGN KEY (`ID_PRODUCTO_FK`)
    REFERENCES `Prototipo`.`INVENTARIO` (`ID_PRODUCTO`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Prototipo`.`VENTA_ENCABEZADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Prototipo`.`VENTA_ENCABEZADO` (
  `ID_VENTA_ENCABEZADO` INT NOT NULL,
  `ID_EMPLEADO_FK` INT NULL,
  `ID_CLIENTE_FK` INT NULL,
  `FECHA_VENTA` VARCHAR(10) NULL,
  `TOTAL_VENTA` DOUBLE NULL,
  PRIMARY KEY (`ID_VENTA_ENCABEZADO`),
  CONSTRAINT `FK_EMPLEADO_VENTA`
    FOREIGN KEY (`ID_EMPLEADO_FK`)
    REFERENCES `Prototipo`.`EMPLEADO` (`ID_EMPLEADO`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `FK_CLIENTE_VENTA`
    FOREIGN KEY (`ID_CLIENTE_FK`)
    REFERENCES `Prototipo`.`CLIENTE` (`ID_CLIENTE`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Prototipo`.`DETALLE_VENTA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Prototipo`.`DETALLE_VENTA` (
  `ID_DETALLE_VENTA` INT NOT NULL,
  `ID_PRODUCTO_FK` INT NULL,
  `DESCRIPCION` VARCHAR(150) NULL,
  `CANTIDAD` INT NULL,
  `PRECIO_UNITARIO` DOUBLE NULL,
  `SUB_TOTAL` DOUBLE NULL,
  PRIMARY KEY (`ID_DETALLE_VENTA`),
  CONSTRAINT `FK_PRODUCTO_VENTA`
    FOREIGN KEY (`ID_PRODUCTO_FK`)
    REFERENCES `Prototipo`.`INVENTARIO` (`ID_PRODUCTO`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;