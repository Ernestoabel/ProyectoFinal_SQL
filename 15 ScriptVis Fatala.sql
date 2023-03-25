
 /*VISTA SIMPLE DE ARTICULOS VENDIDOS POR FECHA Y POR CUAL RED SOCIAL*/
CREATE VIEW 
vista_simple_articulos AS 
SELECT id_articulo, costo, precioFinal, stock,visitas,redSocial , fecha ,if(cantidadVentas >= 1, cantidadVentas, "No hubo ventas") as 'Cantidad de ventas'
FROM articulo INNER JOIN publicacion USING (id_articulo) INNER JOIN red_social USING (id_redSocial) order by fecha asc;

SELECT * FROM vista_simple_articulos;

/*VISTA DE TRES TABALAS REWLACIONADAS SOBRE USUARIOS CON COMENTARIOS NEGATIVOS ORDENADAS POR FECHA Y APELLIDO*/
CREATE VIEW 
vista_usuarios_comentarios AS 
SELECT nombre, apellido, telefono, nombreUsuario,fecha, consulta
FROM consulta INNER JOIN usuario USING (id_usuario) INNER JOIN publicacion USING (id_publicacion)
WHERE positiva !=1 ORDER BY apellido, fecha desc;

SELECT * FROM vista_usuarios_comentarios;

/*VISTA PUBLICACIONES ORDENAS POR CANTIDAD DE VISITAS */
CREATE VIEW 
vista_publicaciones_ordenadas_por_visitas AS 
SELECT * FROM publicacion
ORDER BY visitas DESC;

SELECT * FROM vista_publicaciones_ordenadas_por_visitas;

/*VISTA PUBLICACIONES SELECCIONADAS POR MAYOR PROMEDIO DE LA MEDIA */
CREATE VIEW 
vista_publicacion_vistas_mayor_al_promedio AS 
SELECT id_publicacion,id_articulo,rubro,fecha,DAYOFWEEK(fecha) as 'Domingo',visitas, if(cantidadVentas >= 1, cantidadVentas, "No hubo ventas") as 'Ventas del dia' 
from publicacion inner join rubro on publicacion.id_rubro=rubro.id_rubro 
WHERE visitas > (
				select avg(visitas)
                FROM publicacion
				) 
order by fecha asc;

SELECT * FROM vista_publicacion_vistas_mayor_al_promedio;

/*EN LA SIGUIENTE CREO UNA VISTA DE USUARIOS PARA LUEGO ALTERARLA CONCATENANDO NOMBRE Y APELLIDO EN UNA SOLA COLUMNA */
CREATE VIEW 
vista_nombres_usuarios AS 
SELECT id_usuario,nombre,apellido,telefono 
FROM usuario;

ALTER VIEW 
vista_nombres_usuarios AS 
SELECT id_usuario,CONCAT(nombre,' ',apellido)AS nombreCompleto,telefono 
FROM usuario;

SELECT * FROM vista_nombres_usuarios;

/*EN LAS SIGUIENTES VISTAS PODEMOS VERIFICAR LAS VENTAS POR EL DIA DE LA SEMANA CON SU RUBRO DEL ARTICULO */

CREATE VIEW 
vista_ventas_domingos AS 
SELECT id_publicacion,id_articulo,rubro,fecha,DAYOFWEEK(fecha) as 'Domingo', if(cantidadVentas >= 1, cantidadVentas, "No hubo ventas") as 'Ventas del dia' 
from publicacion inner join rubro on publicacion.id_rubro=rubro.id_rubro where DAYOFWEEK(fecha)=1 order by fecha asc;

CREATE VIEW 
vista_ventas_lunes AS 
SELECT id_publicacion,id_articulo,rubro,fecha,DAYOFWEEK(fecha) as 'Lunes', if(cantidadVentas >= 1, cantidadVentas, "No hubo ventas") as 'Ventas del dia' 
from publicacion inner join rubro on publicacion.id_rubro=rubro.id_rubro where DAYOFWEEK(fecha)=2 order by fecha asc;

CREATE VIEW 
vista_ventas_martes AS 
SELECT id_publicacion,id_articulo,rubro,fecha,DAYOFWEEK(fecha) as 'Martes', if(cantidadVentas >= 1, cantidadVentas, "No hubo ventas") as 'Ventas del dia' 
from publicacion inner join rubro on publicacion.id_rubro=rubro.id_rubro where DAYOFWEEK(fecha)=3 order by fecha asc;

CREATE VIEW 
vista_ventas_miercoles AS 
SELECT id_publicacion,id_articulo,rubro,fecha,DAYOFWEEK(fecha) as 'Miercoles', if(cantidadVentas >= 1, cantidadVentas, "No hubo ventas") as 'Ventas del dia' 
from publicacion inner join rubro on publicacion.id_rubro=rubro.id_rubro where DAYOFWEEK(fecha)=4 order by fecha asc;

CREATE VIEW 
vista_ventas_jueves AS 
SELECT id_publicacion,id_articulo,rubro,fecha,DAYOFWEEK(fecha) as 'Jueves', if(cantidadVentas >= 1, cantidadVentas, "No hubo ventas") as 'Ventas del dia' 
from publicacion inner join rubro on publicacion.id_rubro=rubro.id_rubro where DAYOFWEEK(fecha)=5 order by fecha asc;

CREATE VIEW 
vista_ventas_viernes AS 
SELECT id_publicacion,id_articulo,rubro,fecha,DAYOFWEEK(fecha) as 'Viernes', if(cantidadVentas >= 1, cantidadVentas, "No hubo ventas") as 'Ventas del dia' 
from publicacion inner join rubro on publicacion.id_rubro=rubro.id_rubro where DAYOFWEEK(fecha)=6 order by fecha asc;

CREATE VIEW 
vista_ventas_sabados AS 
SELECT id_publicacion,id_articulo,rubro,fecha,DAYOFWEEK(fecha) as 'Sabado', if(cantidadVentas >= 1, cantidadVentas, "No hubo ventas") as 'Ventas del dia' 
from publicacion inner join rubro on publicacion.id_rubro=rubro.id_rubro where DAYOFWEEK(fecha)=7 order by fecha asc;

SELECT * FROM vista_ventas_domingos;

