CREATE DEFINER=`root`@`localhost` FUNCTION `calcular_precioFinal`(precioVenta decimal(18,2)) RETURNS decimal(18,2)
    DETERMINISTIC
BEGIN
	declare resultado decimal(18,2);
    declare IVA decimal(18,2);
    set IVA=1.21;
    SET resultado = precioVenta * IVA;
RETURN resultado;
END