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



CREATE TABLE `bd_venta_software_hardware`.`tb_Ubigeos`(
	`Codigo_Departamento` varchar(2) NULL,
	`Codigo_Provincia` varchar(2) NULL,
	`Codigo_Distrito` varchar(2) NULL,
	`Codigo` varchar(6) NULL,
	`Descripcion` varchar(200) NULL,
	);

CREATE TABLE `bd_venta_software_hardware`.`tb_rol`(
	`cod_rol` INT NOT NULL AUTO_INCREMENT,
	`descrip_rol` VARCHAR(30) NULL,
    PRIMARY KEY (`cod_rol`)
);

CREATE TABLE `bd_venta_software_hardware`.`tb_trabajador`(
	`cod_trab` INT NOT NULL AUTO_INCREMENT,
	`cod_rol` INT NOT NULL,
	`num_ruc_trab` char(11) null,
	`ras_soc_trab` varchar(100) null,
	`nom_trab` varchar(30) not null,
	`ape_trab` varchar(30) not null,
    `dni_trab` char(8) not null,
    `email_trab` varchar(50) not null,
    `tlf_trab` varchar(15) not null,
    PRIMARY KEY (`cod_rol`)
);



Select * from tb_direccion; 

