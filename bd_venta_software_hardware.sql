DROP DATABASE IF EXISTS`bd_venta_software_hardware` ;

CREATE DATABASE `bd_venta_software_hardware` ;

use bd_venta_software_hardware;


/*-----------------------------------------------------------------------------------------------------------------------------------------*/

CREATE TABLE `bd_venta_software_hardware`.`tb_catalogo`(
	`id_Catalogo` VARCHAR(2) NOT NULL,
    `id_subCatalogo` VARCHAR(20) NOT NULL,
    `id_Tabla` VARCHAR(2) NOT NULL,
    `descripcion` varchar(500) NOT NULL,
    `valor1` varchar(500),
    `estado` int,
    `precio` decimal(5,2),
    primary key(`id_Catalogo`,`id_subCatalogo`,`id_Tabla`)
);


CREATE TABLE `bd_venta_software_hardware`.`tb_usuario` (
  `cod_usu` INT NOT NULL AUTO_INCREMENT,
  `nom_usu` VARCHAR(45) NOT NULL,
  `ape_usu` VARCHAR(45) NOT NULL,
  `emai_usul` VARCHAR(200) NOT NULL,
  `tlf_usu` VARCHAR(45) NOT NULL,
  `fec_nac` DATE  NOT NULL,
  `est_usu` CHAR(1) NOT NULL,
  `dni_usu` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`cod_usu`));


CREATE TABLE `bd_venta_software_hardware`.`tb_Ubigeos`(
	`Codigo` INT NOT NULL AUTO_INCREMENT ,
    `Codigo_Departamento` varchar(2) NOT NULL,
	`Codigo_Provincia` varchar(2) NOT NULL,
	`Codigo_Distrito` varchar(2) NOT NULL,
	`Descripcion` varchar(200) NOT NULL,
    PRIMARY KEY (`Codigo`));


CREATE TABLE `bd_venta_software_hardware`.`tb_direccion` (
  `cod_dir` INT NOT NULL AUTO_INCREMENT,
  `descrip_dir` varchar(200) NOT NULL,
  `cod_usu` INT NOT NULL,
  `cod_dep` varchar(2) NOT NULL,
  `cod_prov` varchar(2)  NOT NULL,
  `cod_dist` varchar(2) NOT NULL,
  PRIMARY KEY (`cod_dir`),
  FOREIGN KEY (`cod_usu`) REFERENCES tb_usuario(`cod_usu`),
  FOREIGN KEY (`cod_dir`) REFERENCES tb_Ubigeos(`Codigo`));



 CREATE TABLE `bd_venta_software_hardware`.`tb_trabajador` (
  `cod_trab` INT NOT NULL AUTO_INCREMENT,
  `cod_rol` varchar(500) NOT NULL,
  `num_ruc` VARCHAR(45) NOT NULL,
  `raz_soc` VARCHAR(200) NOT NULL,
  `nom_trab` VARCHAR(45) NOT NULL,
  `ape_trab` VARCHAR(45) NOT NULL,
  `dni_trab` VARCHAR(9) NOT NULL,
  `email_trab` VARCHAR(45) NOT NULL,
  `tlf_trab` VARCHAR(45) NOT NULL,
  `dir_trab` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `paswoord` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_trab`));
  
  

CREATE TABLE `bd_venta_software_hardware`.`tb_horario` (
  `cod_hor` INT NOT NULL AUTO_INCREMENT,
  `fec_hor` DATETIME NOT NULL,
  PRIMARY KEY (`cod_hor`));


CREATE TABLE `bd_venta_software_hardware`.`tb_producto` (
  `cod_prod` INT NOT NULL AUTO_INCREMENT,
  `cod_marca` VARCHAR(6) NULL,
  `cod_cat` INT NULL,
  `descrip_prod` VARCHAR(200) NOT NULL,
  `cod_caract` INT NOT NULL,
  `precio_prod` Decimal NOT NULL,
  `stk_prod` INT NOT NULL,
  `stk_min_prod` INT NOT NULL,
  `est_prod` CHAR(1) NOT NULL,
  PRIMARY KEY (`cod_prod`)
);





CREATE TABLE `bd_venta_software_hardware`.`tb_pedido` (
  `cod_ped` INT NOT NULL AUTO_INCREMENT,
  `cod_usu` INT NOT NULL,
  `cod_hor` INT NOT NULL,
  `cod_prod` INT NOT NULL,
  PRIMARY KEY (`cod_ped`),
  FOREIGN KEY (`cod_usu`) REFERENCES tb_usuario(`cod_usu`),
  FOREIGN KEY (`cod_hor`) REFERENCES tb_horario(`cod_hor`),
  FOREIGN KEY (`cod_prod`) REFERENCES tb_producto(`cod_prod`));


CREATE TABLE `bd_venta_software_hardware`.`tb_venta` (
  `cod_ven` INT NOT NULL AUTO_INCREMENT,
  `num_tarj` INT NOT NULL,
  `fec_ven_tarj` DATETIME NOT NULL,
  `cod_seg_tarj` INT NOT NULL,
  `nom_titu_tarj` VARCHAR(200) NOT NULL,
  `cod_ped` INT NOT NULL,
  PRIMARY KEY (`cod_ven`),
   FOREIGN KEY (`cod_ped`) REFERENCES tb_pedido(`cod_ped`));


CREATE TABLE `bd_venta_software_hardware`.`tb_factura` (
  `cod_fac` INT NOT NULL AUTO_INCREMENT,
  `fec_fac` DATETIME NOT NULL,
  `fec_ven_fac` DATETIME NOT NULL,
  `firm_fac` MEDIUMBLOB  NULL,
  `cod_trab` INT NOT NULL,
  `cod_usu` INT NOT NULL,
  `cod_ven` INT NOT NULL,
  PRIMARY KEY (`cod_fac`),
   FOREIGN KEY (`cod_trab`) REFERENCES tb_trabajador(`cod_trab`),
    FOREIGN KEY (`cod_usu`) REFERENCES tb_usuario(`cod_usu`),
      FOREIGN KEY (`cod_ven`) REFERENCES tb_venta(`cod_ven`));


CREATE TABLE `bd_venta_software_hardware`.`tb_boleta` (
  `cod_bol` INT NOT NULL AUTO_INCREMENT,
  `fec_bol` DATETIME NOT NULL,
  `cod_trab` INT NOT NULL,
  `cod_usu` INT NOT NULL,
  `cod_ven` INT NOT NULL,
  PRIMARY KEY (`cod_bol`),
   FOREIGN KEY (`cod_trab`) REFERENCES tb_trabajador(`cod_trab`),
   FOREIGN KEY (`cod_usu`) REFERENCES tb_usuario(`cod_usu`),
   FOREIGN KEY (`cod_ven`) REFERENCES tb_venta(`cod_ven`));



CREATE TABLE `bd_venta_software_hardware`.`tb_queja` (
  `cod_queja` INT NOT NULL AUTO_INCREMENT,
  `descrip_queja` VARCHAR(350) NOT NULL,
  `cod_usu` INT NOT NULL,
  `fec_queja` DATETIME NOT NULL,
  `cod_fac` INT,
  `cod_bol` INT,
  PRIMARY KEY (`cod_queja`),
  FOREIGN KEY (`cod_usu`) REFERENCES tb_usuario(`cod_usu`),
  FOREIGN KEY (`cod_fac`) REFERENCES tb_factura(`cod_fac`),
  FOREIGN KEY (`cod_bol`) REFERENCES tb_boleta(`cod_bol`));


CREATE TABLE `bd_venta_software_hardware`.`tb_solicitud_estado_pedido` (
  `cod_sol_est_ped` INT NOT NULL AUTO_INCREMENT,
  `descrip_sol_est_ped` VARCHAR(400) NOT NULL,
  `cod_usu` INT NOT NULL,
  `cod_fac` INT,
  `cod_bol` INT,
  PRIMARY KEY (`cod_sol_est_ped`),
  FOREIGN KEY (`cod_usu`) REFERENCES tb_usuario(`cod_usu`),
  FOREIGN KEY (`cod_fac`) REFERENCES tb_factura(`cod_fac`),
  FOREIGN KEY (`cod_bol`) REFERENCES tb_boleta(`cod_bol`));


CREATE TABLE `bd_venta_software_hardware`.`tb_sugerencia` (
  `cod_sug` INT NOT NULL AUTO_INCREMENT,
  `descrip_sug` VARCHAR(300) NOT NULL,
  `cod_usu` INT NOT NULL,
  `fec_sug` DATETIME NOT NULL,
  PRIMARY KEY (`cod_sug`),
  FOREIGN KEY (`cod_usu`) REFERENCES tb_usuario(`cod_usu`));


CREATE TABLE `bd_venta_software_hardware`.`tb_solicitud_reposicion` (
  `cod_sol_repo` INT NOT NULL AUTO_INCREMENT, 
  `descrip_sol_repo` VARCHAR(300) NOT NULL,
  `cod_usu` INT NOT NULL,
  `cod_prod` INT NOT NULL,
  `fec_sol_repo` DATETIME NOT NULL,
  PRIMARY KEY (`cod_sol_repo`),
   FOREIGN KEY (`cod_usu`) REFERENCES tb_usuario(`cod_usu`),
    FOREIGN KEY (`cod_prod`) REFERENCES tb_producto(`cod_prod`));


CREATE TABLE `bd_venta_software_hardware`.`tb_termino_busqueda` (
  `cod_tembuq` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `descrip_tembuq` VARCHAR(45) NOT NULL,
  `cod_usu` INT NOT NULL,
  `fec_tembuq` DATETIME NOT NULL,
   FOREIGN KEY (`cod_usu`) REFERENCES tb_usuario(`cod_usu`));


CREATE TABLE `bd_venta_software_hardware`.`tb_etiqueta` (
  `cod_etiq` INT NOT NULL AUTO_INCREMENT,
  `descrip_etiq` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`cod_etiq`));



CREATE TABLE `bd_venta_software_hardware`.`tb_det_carac_etiq` (
  `cod_det_caract_etiq` INT NOT NULL AUTO_INCREMENT,
  `cod_etiq` INT NOT NULL,
  PRIMARY KEY (`cod_det_caract_etiq`),
  FOREIGN KEY (`cod_etiq`) REFERENCES tb_etiqueta(`cod_etiq`));

  
CREATE TABLE `bd_venta_software_hardware`.`tb_det_caracteristica` (
  `cod_prod` int not null,
  `procesador` VARCHAR(6) NOT NULL, 
  `sistema_operativo` VARCHAR(6) NOT NULL,
  `memoria_ram` int NOT NULL,
  `almacenamiento` int NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `peso` VARCHAR(45) NOT NULL,
  `puerto_usb` VARCHAR(45) NOT NULL,
  `resolucion_pantalla` VARCHAR(6) NOT NULL,
  FOREIGN KEY (`cod_prod`) REFERENCES tb_producto(`cod_prod`)
  );  
  


 #CREATE TABLE `bd_venta_software_hardware`.`tb_rol` (
 # `cod_rol` INT NOT NULL AUTO_INCREMENT,
 # `descrip_rol` VARCHAR(45)  NOT NULL,
 # PRIMARY KEY (`cod_rol`));

 
 
 #CREATE TABLE `bd_venta_software_hardware`.`tb_marca` (
#  `cod_marca` INT NOT NULL AUTO_INCREMENT,
#  `descrip_marca` VARCHAR(45) NOT NULL,
#  PRIMARY KEY (`cod_marca`));
  

 


#CREATE TABLE `bd_venta_software_hardware`.`tb_categoria` (
#  `cod_cat` INT NOT NULL AUTO_INCREMENT,
#  `nom_cat` VARCHAR(200) NOT NULL,
#  `descrip_cat` VARCHAR(200) NOT NULL,
#  PRIMARY KEY (`cod_cat`));
  

 
#CREATE TABLE `bd_venta_software_hardware`.`tb_caracteristica` (
#  `cod_caract` INT NOT NULL AUTO_INCREMENT,
#  `cod_det_caract` INT NOT NULL,
#  PRIMARY KEY (`cod_caract`),
#  FOREIGN KEY (`cod_det_caract`) REFERENCES tb_det_caracteristica(`cod_det_caract`));


DELIMITER //
CREATE FUNCTION  fn_catalogo(codigo varchar(6)) 
RETURNS varchar(500) deterministic
BEGIN
   declare descr VARCHAR(100);
   declare id_cat VARCHAR(2);
   declare id_subcat VARCHAR(10);
   declare id_tab VARCHAR(2);

   SET id_cat = LEFT(codigo,2);
   SET id_subcat = SUBSTRING(codigo,3,2);
   SET id_tab = RIGHT(codigo,2);

   SELECT 
	 descripcion into descr
   FROM tb_catalogo
   WHERE
	id_Catalogo = id_cat AND
	id_subCatalogo = id_subcat AND
	id_Tabla = id_tab;
   
   return descr;
END
//
DELIMITER ;





/*-------------------------------------------------------------------------------------------------------------------*/

/*
insert into tb_det_caracteristica values (null,'030100','040100','2 gb','8 gb','Negro','540 gr','Dual','050100');
*/




DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertMarca`(p_descrip varchar(500))
BEGIN
	declare subid varchar(20);
    declare relleno varchar(5);
    if (select distinct(count(id_subCatalogo)) from tb_catalogo where id_Catalogo='01')<=9 then
		set relleno = '0';
	else
		set relleno = '';
	end if;
    
    set subid = (select distinct(concat(relleno,count(id_subCatalogo)+1)) from tb_catalogo where id_Catalogo='01' and id_subCatalogo!="00");
		insert into tb_catalogo ()values ('01', subid,'00',p_descrip, null, 1, null);
END
//
DELIMITER ;


DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updateMarca`(p_id_catalago varchar(2), p_id_subcatalago varchar(2), p_id_tabla varchar(2), p_descrip varchar(500))
BEGIN
	UPDATE `bd_venta_software_hardware`.`tb_catalogo` SET `descripcion`=p_descrip WHERE `id_Catalogo`=p_id_catalago and`id_subCatalogo`=p_id_subcatalago and`id_Tabla`=p_id_tabla;
END
//
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteMarca`(p_id_catalago varchar(2), p_id_subcatalago varchar(2), p_id_tabla varchar(2))
BEGIN
	UPDATE `bd_venta_software_hardware`.`tb_catalogo` SET `estado`='0' WHERE `id_Catalogo`=p_id_catalago and`id_subCatalogo`=p_id_subcatalago and`id_Tabla`=p_id_tabla;
END
//
DELIMITER ;


DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertCategoria`(p_descrip varchar(500))
BEGIN
	declare subid varchar(20);
    declare relleno varchar(5);
    if (select distinct(count(id_subCatalogo)) from tb_catalogo where id_Catalogo='02')<=9 then
		set relleno = '0';
	else
		set relleno = '';
	end if;
    
    set subid = (select distinct(concat(relleno,count(id_subCatalogo)+1)) from tb_catalogo where id_Catalogo='02' and id_subCatalogo!="00");
		insert into tb_catalogo ()values ('02', subid,'00',p_descrip, null, 1, null);
END
//
DELIMITER ;


DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updateCategoria`(p_id_catalago varchar(2), p_id_subcatalago varchar(2), p_id_tabla varchar(2), p_descrip varchar(500))
BEGIN
	UPDATE `bd_venta_software_hardware`.`tb_catalogo` SET `descripcion`=p_descrip WHERE `id_Catalogo`=p_id_catalago and`id_subCatalogo`=p_id_subcatalago and`id_Tabla`=p_id_tabla;
END
//
DELIMITER ;

DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteCategoria`(p_id_catalago varchar(2), p_id_subcatalago varchar(2), p_id_tabla varchar(2))
BEGIN
	UPDATE `bd_venta_software_hardware`.`tb_catalogo` SET `estado`='0' WHERE `id_Catalogo`=p_id_catalago and`id_subCatalogo`=p_id_subcatalago and`id_Tabla`=p_id_tabla;
END
//
DELIMITER ;


DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertProducto`(p_cod_marca varchar(6),
																p_cod_categoria varchar(6),
                                                                p_descip_producto varchar(200),
                                                                p_cod_caracteristica int,
                                                                p_precio_producto decimal(10,0),
                                                                p_stock_minimo int,
                                                                p_stock int)
BEGIN
	insert into tb_producto(cod_marca,cod_cat,descrip_prod,cod_caract,precio_prod,stk_prod,stk_min_prod,est_prod)
					values (p_cod_marca,p_cod_categoria,p_descip_producto,p_cod_caracteristica,p_precio_producto,p_stock,p_stock_minimo,'1');
END
//
DELIMITER ;


DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updateProducto`(p_cod_producto int,
																p_cod_marca varchar(6),
																p_cod_categoria varchar(6),
                                                                p_descip_producto varchar(200),
                                                                p_cod_caracteristica int,
                                                                p_precio_producto decimal(10,0),
                                                                p_stock_minimo int,
                                                                p_stock int)
BEGIN
	UPDATE `bd_venta_software_hardware`.`tb_producto` 
    SET `cod_marca`=p_cod_marca,
		`cod_cat`= p_cod_categoria,
        `descrip_prod`= p_descip_producto,
        `cod_caract`= p_cod_caracteristica,
        `precio_prod`= p_precio_producto,
        `stk_prod`= p_stock,
        `stk_min_prod`= p_stock_minimo
    WHERE `cod_prod`=p_cod_producto;
END
//
DELIMITER ;


DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteProducto`(p_cod_producto int)
BEGIN
	UPDATE `bd_venta_software_hardware`.`tb_producto` SET `est_prod`='0' WHERE `cod_prod`=p_cod_producto;
END
//
DELIMITER ;

insert into tb_trabajador values (null,'010100','4127845','adminSist','Carlos','Gomez','301475897','carlosgomez@gmail.com','974404978','av. brasil','T20201','123' );
insert into tb_trabajador values (null,'010200','3211448','adminNego','Pablo','Saravia','47851045','pablosaravia@gmail.com','984221478','av. la paz','T20202','123' );


INSERT INTO tb_catalogo values ('00','00','00','--ROLES--',NULL,NULL,NULL); 
INSERT INTO tb_catalogo values ('00','01','00','Adminnistrador del sistema',NULL,NULL,NULL); 
INSERT INTO tb_catalogo values ('00','02','00','Adminnistrador del negocio',NULL,NULL,NULL); 
INSERT INTO tb_catalogo values ('00','03','00','Encargado de Ventas',NULL,NULL,NULL); 
INSERT INTO tb_catalogo values ('00','04','00','Encargado de Almacen',NULL,NULL,NULL); 

INSERT INTO tb_catalogo values ('01','00','00','--MARCAS--',null,null,NULL);
INSERT INTO tb_catalogo values ('01','01','00','DELL',null,1,NULL);
INSERT INTO tb_catalogo values ('01','02','00','LENOVO',null,1,NULL);
INSERT INTO tb_catalogo values ('01','03','00','HP',null,1,NULL);
INSERT INTO tb_catalogo values ('01','04','00','ACER',null,1,NULL);

INSERT INTO tb_catalogo values ('02','00','00','--CATEGORIAS--',null,null,NULL);
INSERT INTO tb_catalogo values ('02','01','00','Laptop',null,1,NULL);
INSERT INTO tb_catalogo values ('02','02','00','Desktop',null,1,NULL);
INSERT INTO tb_catalogo values ('02','03','00','Teclados',null,1,NULL);
INSERT INTO tb_catalogo values ('02','04','00','Mouse',null,1,NULL);
INSERT INTO tb_catalogo values ('02','05','00','Software',null,1,NULL);
INSERT INTO tb_catalogo values ('02','06','00','Antivirus',null,1,NULL);
INSERT INTO tb_catalogo values ('02','07','00','Monitores',null,1,NULL);
INSERT INTO tb_catalogo values ('02','08','00','Impresoras',null,1,NULL);
INSERT INTO tb_catalogo values ('02','09','00','Audífonos',null,1,NULL);

INSERT INTO tb_catalogo values ('03','00','00','--PROCESADORES--',null,null,NULL);
INSERT INTO tb_catalogo values ('03','01','00','NVidia',null,null,NULL);

INSERT INTO tb_catalogo values ('04','00','00','--SO--',null,null,NULL);
INSERT INTO tb_catalogo values ('04','01','00','Windows',null,null,NULL);

INSERT INTO tb_catalogo values ('05','00','00','--Resolucion Pantalla--',null,null,NULL);
INSERT INTO tb_catalogo values ('05','01','00','1920 x 1080',null,null,NULL);

INSERT INTO tb_catalogo values ('06','00','00','--TECLADOS--',null,null,NULL);
INSERT INTO tb_catalogo values ('06','01','00','MICROSOFT TECLADO ALL IN ONE MEDIA',null,1, 169.00);
INSERT INTO tb_catalogo values ('06','02','00','TECLADO LOGITECH K120',null,1, 35.00);
INSERT INTO tb_catalogo values ('06','03','00','ARTECK TECLADO INALÁMBRICO',null,1, 213.00);