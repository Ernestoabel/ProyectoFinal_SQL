CREATE DEFINER=`root`@`localhost` PROCEDURE `add_articulo`(_descripcion varchar (51)
,_id_rubro int,_costo decimal(18,2),porcentaje int,_stock int)
BEGIN
	declare _precioVenta decimal(18,2);
    declare _preciofinal decimal(18,2);
    select calcular_precioVenta(_costo,porcentaje) into _precioVenta;
    select calcular_precioFinal(_precioVenta) into _preciofinal;
	INSERT INTO articulo (descripcion,id_rubro,costo,precioVenta,precioFinal,stock)
    VALUES (_descripcion,_id_rubro,_costo,_precioVenta,_precioFinal,_stock);
END