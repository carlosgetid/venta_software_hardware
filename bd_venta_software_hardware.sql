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

 CREATE TABLE `bd_venta_software_hardware`.`tb_rol` (
  `cod_rol` INT NOT NULL,
  `descrip_rol` VARCHAR(45) NULL,
  PRIMARY KEY (`cod_rol`));


 CREATE TABLE `bd_venta_software_hardware`.`tb_trabajador` (
  `cod_trab` INT NOT NULL,
  `cod_rol` INT NULL,
  `num_ruc` VARCHAR(45) NULL,
  `raz_soc` VARCHAR(45) NULL,
  `nom_trab` VARCHAR(45) NULL,
  `ape_trab` VARCHAR(45) NULL,
  `dni_trab` VARCHAR(45) NULL,
  `email_trab` VARCHAR(45) NULL,
  `tlf_trab` VARCHAR(45) NULL,
  `cod_dir` INT NULL,
  PRIMARY KEY (`cod_trab`),
  FOREIGN KEY (`cod_rol`) REFERENCES tb_rol(`cod_rol`));


CREATE TABLE `bd_venta_software_hardware`.`tb_Ubigeos`(
	`Codigo_Departamento` varchar(2) NULL,
	`Codigo_Provincia` varchar(2) NULL,
	`Codigo_Distrito` varchar(2) NULL,
	`Codigo` varchar(6) NULL,
	`Descripcion` varchar(200) NULL,
	);


CREATE TABLE `bd_venta_software_hardware`.`tb_horario` (
  `cod_hor` INT NOT NULL,
  `fec_hor` TIMESTAMP NOT NULL DEFAULT CURRENT_DATE(),
  PRIMARY KEY (`cod_hor`));


CREATE TABLE `bd_venta_software_hardware`.`tb_pedido` (
  `cod_ped` INT NOT NULL,
  `cod_usu` INT NULL,
  `cod_hor` INT NULL,
  `cod_prod` INT NULL,
  PRIMARY KEY (`cod_ped`));


CREATE TABLE `bd_venta_software_hardware`.`tb_venta` (
  `cod_ven` INT NOT NULL,
  `num_tarj` INT NULL,
  `fec_ven_tarj` TIMESTAMP NOT NULL DEFAULT CURRENT_DATE(),
  `cod_seg_tarj` INT NULL,
  `nom_titu_tarj` VARCHAR(45) NULL,
  `cod_ped` INT NULL,
  PRIMARY KEY (`cod_ven`));


CREATE TABLE `bd_venta_software_hardware`.`tb_factura` (
  `cod_fac` INT NOT NULL,
  `fec_fac` TIMESTAMP NOT NULL DEFAULT CURRENT_DATE(),
  `fec_ven_fac` TIMESTAMP NOT NULL DEFAULT CURRENT_DATE(),
  `firm_fac` MEDIUMBLOB NULL,
  `cod_trab` INT NULL,
  `cod_usu` INT NULL,
  `cod_ven` INT NULL,
  PRIMARY KEY (`cod_fac`));


CREATE TABLE `bd_venta_software_hardware`.`tb_boleta` (
  `cod_bol` INT NOT NULL,
  `fec_bol` TIMESTAMP NOT NULL DEFAULT CURRENT_DATE(),
  `cod_trab` INT NULL,
  `cod_usu` INT NULL,
  `cod_ven` INT NULL,
  PRIMARY KEY (`cod_bol`));


CREATE TABLE `bd_venta_software_hardware`.`tb_usuario` (
  `cod_usu` INT NOT NULL,
  `nom_usu` VARCHAR(45) NULL,
  `ape_usu` VARCHAR(45) NULL,
  `emai_usul` VARCHAR(45) NULL,
  `tlf_usu` VARCHAR(45) NULL,
  `fec_nac` VARCHAR(45) NULL,
  `est_usu` INT NULL,
  `dni_usu` VARCHAR(45) NULL,
  PRIMARY KEY (`cod_usu`));


CREATE TABLE `bd_venta_software_hardware`.`tb_queja` (
  `cod_queja` INT NOT NULL,
  `descrip_queja` VARCHAR(45) NULL,
  `cod_usu` INT NULL,
  `fec_queja` TIMESTAMP NOT NULL DEFAULT CURRENT_DATE(),
  `cod_fac` INT NULL,
  `cod_bol` INT NULL,
  PRIMARY KEY (`cod_queja`));


CREATE TABLE `bd_venta_software_hardware`.`tb_solicitud_estado_pedido` (
  `cod_sol_est_ped` INT NOT NULL,
  `descrip_sol_est_ped` VARCHAR(45) NULL,
  `cod_usu` INT NULL,
  `cod_fac` INT NULL,
  `cod_bol` INT NULL,
  PRIMARY KEY (`cod_sol_est_ped`));


CREATE TABLE `bd_venta_software_hardware`.`tb_sugerencia` (
  `cod_sug` INT NOT NULL,
  `descrip_sug` VARCHAR(45) NULL,
  `cod_usu` VARCHAR(45) NULL,
  `fec_sug` TIMESTAMP NOT NULL DEFAULT CURRENT_DATE(),
  PRIMARY KEY (`cod_sug`));


CREATE TABLE `bd_venta_software_hardware`.`tb_solicitud_reposicion` (
  `cod_sol_repo` INT NOT NULL,
  `descrip_sol_repo` VARCHAR(45) NULL,
  `cod_usu` INT NULL,
  `cod_prod` INT NULL,
  `fec_sol_repo` TIMESTAMP NOT NULL DEFAULT CURRENT_DATE(),
  PRIMARY KEY (`cod_sol_repo`));


CREATE TABLE `bd_venta_software_hardware`.`tb_termino_busqueda` (
  `cod_tembuq` INT NOT NULL,
  `descrip_tembuq` VARCHAR(45) NULL,
  `cod_usu` INT NULL,
  `fec_tembuq` TIMESTAMP NOT NULL DEFAULT CURRENT_DATE(),
  PRIMARY KEY (`cod_tembuq`));


CREATE TABLE `bd_venta_software_hardware`.`tb_etiqueta` (
  `cod_etiq` INT NOT NULL,
  `descrip_etiq` VARCHAR(45) NULL,
  PRIMARY KEY (`cod_etiq`));


CREATE TABLE `bd_venta_software_hardware`.`tb_producto` (
  `cod_prod` INT NOT NULL,
  `cod_marca` INT NULL,
  `cod_cat` INT NULL,
  `descrip_prod` VARCHAR(45) NULL,
  `cod_caract` INT NULL,
  `precio_prod` INT NULL,
  `stk_prod` INT NULL,
  `stk_min_prod` INT NULL,
  `est_prod` INT NULL,
  PRIMARY KEY (`cod_prod`));


CREATE TABLE `bd_venta_software_hardware`.`tb_det_carac_etiq` (
  `cod_det_caract` INT NOT NULL,
  `cod_etiq` INT NULL,
  PRIMARY KEY (`cod_det_caract`));


CREATE TABLE `bd_venta_software_hardware`.`tb_marca` (
  `cod_marca` INT NOT NULL,
  `descrip_marca` VARCHAR(45) NULL,
  PRIMARY KEY (`cod_marca`));


CREATE TABLE `bd_venta_software_hardware`.`tb_caracteristica` (
  `cod_caract` INT NOT NULL,
  `cod_det_caract` INT NULL,
  PRIMARY KEY (`cod_caract`));




CREATE TABLE `bd_venta_software_hardware`.`tb_categoria` (
  `cod_cat` INT NOT NULL,
  `nom_cat` VARCHAR(45) NULL,
  `descrip_cat` VARCHAR(45) NULL,
  PRIMARY KEY (`cod_cat`));



CREATE TABLE `bd_venta_software_hardware`.`tb_det_caracteristica` (
  `cod_det_caract` INT NOT NULL,
  `procesador` VARCHAR(45) NULL,
  `sistema_operativo` VARCHAR(45) NULL,
  `memoria_ram` VARCHAR(45) NULL,
  `almacenamiento` VARCHAR(45) NULL,
  `color` VARCHAR(45) NULL,
  `peso` VARCHAR(45) NULL,
  `puerto_usb` VARCHAR(45) NULL,
  `resolucion_pantalla` VARCHAR(45) NULL,
  PRIMARY KEY (`cod_det_caract`));


Select * from tb_direccion; 

