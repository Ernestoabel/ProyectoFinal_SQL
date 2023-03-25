/*Se inicia una transacción cuando el stock disminuye, que  incrementa su precio final*/
START transaction;
update articulo
    set precioFinal=precioVenta*1.35
where
	stock < 15;
/*Ejecutar linea para cancelar la actualizacion*/
rollback;    
/*Confirmar el cambio con commit*/
commit;    
    
select * from articulo;
SELECT * FROM vista_simple_articulos where visitas>=2000;

/*Se inicia una transacción cuando se hace un descuento del 5% por que la publicacion ricibio mas de 2000 visitas*/
START transaction;
update articulo as a
inner join publicacion as p on p.id_articulo=a.id_articulo
set a.precioFinal=precioFinal*0.95
where p.visitas>=2000;

/*Ejecutar linea para cancelar la actualizacion*/
rollback;    
/*Confirmar el cambio con commit*/
commit; 

/*Se inicia una transacción con dos lotes de registros agregados*/
START transaction;
INSERT INTO publicacion (id_articulo,id_redSocial,fecha,visitas,cantidadVentas)
VALUES
(1009,1,2,'2023-01-09',45,2)
,(1009,2,1,'2023-01-09',12,0)
,(1003,1,3,'2023-01-15',56,6)
,(1003,2,3,'2023-01-15',18,0);
savepoint loteUno;
INSERT INTO publicacion (id_articulo,id_redSocial,fecha,visitas,cantidadVentas)
VALUES
(1005,1,1,'2023-01-18',85,12)
,(1005,2,1,'2023-01-18',34,2)
,(1005,3,2,'2023-01-18',12,0);
savepoint loteDos;

select * from publicacion;

/*Si se quiere desacer solo los ultimos tres registro agragados, ejecute la linea 54*/
rollback to loteDos;
/*Otra opcion de liberar un lore es la siguiente*/
release savepoint loteUno;
/*Confirmamos los ingresos*/
commit;