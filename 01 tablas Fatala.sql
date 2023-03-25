CREATE DATABASE panialera_renacer; 

USE  panialera_renacer;


create table rubro 
(
id_rubro int primary key not null AUTO_INCREMENT
,rubro varchar (51) 
);

ALTER TABLE rubro AUTO_INCREMENT = 1;

create table articulo 
(
id_articulo int primary key not null AUTO_INCREMENT
,descripcion varchar (51)
,id_rubro int not null
,foreign key (id_rubro) references rubro (id_rubro)
,costo decimal(18,2)
,precioVenta decimal(18,2)
,IVA tinyint DEFAULT 21
,precioFinal decimal(18,2)
,stock int not null
);

ALTER TABLE articulo AUTO_INCREMENT = 1000;

create table red_social 
(
id_redSocial int primary key not null AUTO_INCREMENT
,redSocial varchar(51)
);

ALTER TABLE red_social AUTO_INCREMENT = 1;

create table usuario 
(
id_usuario int primary key not null AUTO_INCREMENT
,nombre varchar(51)
,apellido varchar(51)
,telefono BIGINT not null 
);

ALTER TABLE usuario AUTO_INCREMENT = 10001;

create table publicacion 
(
id_publicacion int primary key not null AUTO_INCREMENT
,id_articulo int not null
,foreign key (id_articulo) references articulo (id_articulo)
,id_rubro int not null
,foreign key (id_rubro) references rubro (id_rubro)
,id_redSocial int not null
,foreign key (id_redSocial) references red_social (id_redSocial)
,fecha date not null
,visitas int not null
,cantidadVentas int not null
);

ALTER TABLE publicacion AUTO_INCREMENT = 101;
CREATE TABLE publicacion_2022 LIKE publicacion;
CREATE TABLE publicacion_2023 LIKE publicacion;
ALTER TABLE publicacion_2022 AUTO_INCREMENT = 101;
ALTER TABLE publicacion_2023 AUTO_INCREMENT = 101;

create table consulta 
(
id_usuario int
,foreign key (id_usuario) references usuario (id_usuario)
,id_publicacion int
,foreign key (id_publicacion) references publicacion (id_publicacion)
,nombreUsuario varchar (51)
,consulta varchar(500)
,positiva tinyint
);


create table facturacion 
(
id_articulo int not null
,foreign key (id_articulo) references articulo (id_articulo)
,id_usuario int not null
,foreign key (id_usuario) references usuario (id_usuario)
,numero int primary key not null AUTO_INCREMENT
,CUIT BIGINT not null
,razonSocial varchar (151)
,domicilioFiscal varchar (151)
,tipo char not null
,cantidad int not null
,importe decimal(18,2) not null
);

ALTER TABLE facturacion AUTO_INCREMENT = 100001;

create table publicacion_2022 
(
id_publicacion int not null 
,id_articulo int not null
,id_rubro int not null
,id_redSocial int not null
,fecha date not null
,visitas int not null
,cantidadVentas int not null
);

create table publicacion_2023 
(
id_publicacion int not null 
,id_articulo int not null
,id_rubro int not null
,id_redSocial int not null
,fecha date not null
,visitas int not null
,cantidadVentas int not null
);

create table tabla_stock_modificado 
(
id_articulo int not null
,stock smallint
);

create table tabla_stock_antes_modificado 
(
id_articulo int not null
,stock smallint
);

create table log_tabla_articulo
(
tsActualiza timestamp
,esquema varchar(51)
,operacion varchar (6)
,registro int
);

create table log_tabla_publicacion
(
tsActualiza timestamp
,esquema varchar(51)
,operacion varchar (6)
,registro int
);

create table log_tabla_consulta
(
tsActualiza timestamp
,esquema varchar(51)
,operacion varchar (6)
,registro int
);
