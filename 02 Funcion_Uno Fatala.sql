CREATE DEFINER=`root`@`localhost` FUNCTION `calcular_precioVenta`(costo decimal(18,2), porcentajeDeVenta int) RETURNS decimal(18,2)
    DETERMINISTIC
BEGIN
	DECLARE resultado decimal(18,2);
    DECLARE sumaPorcentaje  decimal(18,2);
    SET sumaPorcentaje = (costo * porcentajeDeVenta) / 100;
    SET resultado = costo + sumaPorcentaje;
RETURN resultado;
END