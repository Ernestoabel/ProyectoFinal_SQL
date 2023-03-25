CREATE DEFINER=`root`@`localhost` PROCEDURE `cargar_factura`(_id_articulo int,_id_usuario int,_CUIT BIGINT
,_razonSocial varchar (151),_domicilioFiscal varchar (151),_cantidad int)
BEGIN
	declare _importe decimal(18,2);
    declare _tipo char;
	set _tipo='A';
    SET _importe = (select precioFinal from articulo where id_articulo=_id_articulo) * _cantidad;
	update articulo set stock=stock-_cantidad where id_articulo=_id_articulo;
    INSERT INTO facturacion (id_articulo,id_usuario,CUIT,razonSocial,domicilioFiscal,tipo,cantidad,importe)
    VALUES (_id_articulo,_id_usuario,_CUIT,_razonSocial,_domicilioFiscal,_tipo,_cantidad,_importe);
END