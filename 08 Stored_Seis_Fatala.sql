CREATE DEFINER=`root`@`localhost` PROCEDURE `ventas_por_red_rubro`(nombre_red_social varchar (51),nombreRubro varchar (51))
BEGIN

SELECT id_publicacion,id_articulo,rubro,redSocial,fecha, if(cantidadVentas >= 1, cantidadVentas, "No hubo ventas") as 'Ventas del dia' 
    from publicacion as p
    inner join rubro as r on p.id_rubro=r.id_rubro
    inner join red_social as s on p.id_redSocial=s.id_redSocial
    where rubro=nombreRubro and redSocial=nombre_red_social;
END