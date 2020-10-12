CREATE DATABASE `bd_venta_software_hardware` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

use bd_venta_software_hardware;




CREATE TABLE `bd_venta_software_hardware`.`tb_direccion` (
  `cod_dir` INT NOT NULL AUTO_INCREMENT,
  `descrip_dir` INT NULL,
  `cod_usu` INT NULL,
  `cod_dep` INT NULL,
  `cod_prov` INT NULL,
  `cod_dist` INT NULL,
  PRIMARY KEY (`cod_dir`));

