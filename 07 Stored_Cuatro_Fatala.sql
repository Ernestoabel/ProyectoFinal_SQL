CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrar_ventas_por_dia`(dia varchar (20),nombreRubro varchar (51))
BEGIN
	case
    when dia='domingo' then
	SELECT id_publicacion,id_articulo,rubro,fecha,DAYOFWEEK(fecha) as 'Domingo', if(cantidadVentas >= 1, SUM(cantidadVentas), "No hubo ventas") as 'Ventas del dia' 
    from publicacion inner join rubro on publicacion.id_rubro=rubro.id_rubro where DAYOFWEEK(fecha)=6 and rubro=nombreRubro;
    when dia='lunes' then
	SELECT id_publicacion,id_articulo,rubro,fecha,DAYOFWEEK(fecha) as 'Lunes', if(cantidadVentas >= 1, SUM(cantidadVentas), "No hubo ventas") as 'Ventas del dia' 
    from publicacion inner join rubro on publicacion.id_rubro=rubro.id_rubro where DAYOFWEEK(fecha)=6 and rubro=nombreRubro;
    when dia='martes' then
	SELECT id_publicacion,id_articulo,rubro,fecha,DAYOFWEEK(fecha) as 'Martes', if(cantidadVentas >= 1, SUM(cantidadVentas), "No hubo ventas") as 'Ventas del dia' 
    from publicacion inner join rubro on publicacion.id_rubro=rubro.id_rubro where DAYOFWEEK(fecha)=6 and rubro=nombreRubro;
    when dia='miercoles' then
	SELECT id_publicacion,id_articulo,rubro,fecha,DAYOFWEEK(fecha) as 'Miercoles', if(cantidadVentas >= 1, SUM(cantidadVentas), "No hubo ventas") as 'Ventas del dia' 
    from publicacion inner join rubro on publicacion.id_rubro=rubro.id_rubro where DAYOFWEEK(fecha)=6 and rubro=nombreRubro;
    when dia='jueves' then
	SELECT id_publicacion,id_articulo,rubro,fecha,DAYOFWEEK(fecha) as 'Jueves', if(cantidadVentas >= 1, SUM(cantidadVentas), "No hubo ventas") as 'Ventas del dia' 
    from publicacion inner join rubro on publicacion.id_rubro=rubro.id_rubro where DAYOFWEEK(fecha)=6 and rubro=nombreRubro;
    when dia='viernes' then
	SELECT id_publicacion,id_articulo,rubro,fecha,DAYOFWEEK(fecha) as 'Viernes', if(cantidadVentas >= 1, SUM(cantidadVentas), "No hubo ventas") as 'Ventas del dia' 
    from publicacion inner join rubro on publicacion.id_rubro=rubro.id_rubro where DAYOFWEEK(fecha)=6 and rubro=nombreRubro;
    when dia='sabado' then
	SELECT id_publicacion,id_articulo,rubro,fecha,DAYOFWEEK(fecha) as 'Sabado', if(cantidadVentas >= 1, SUM(cantidadVentas), "No hubo ventas") as 'Ventas del dia' 
    from publicacion inner join rubro on publicacion.id_rubro=rubro.id_rubro where DAYOFWEEK(fecha)=6 and rubro=nombreRubro;
    end case;
END