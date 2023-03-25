
/*trigger para la creacion de un log sobre la actualizacion de la tabla articulo */
DELIMITER $$
CREATE TRIGGER tr_update_articulo_log
AFTER UPDATE ON articulo
FOR EACH ROW
INSERT INTO log_tabla_articulo (tsActualiza,esquema,operacion,registro)
VALUES (now(), database(),'update',1);
END$$;
DELIMITER ;

/*trigger para la creacion de un log sobre el insert de datos de la tabla consulta */
DELIMITER $$
CREATE TRIGGER tr_insert_consulta_log
AFTER INSERT ON consulta
FOR EACH ROW
INSERT INTO log_tabla_consulta (tsActualiza,esquema,operacion,registro)
VALUES (now(), database(),'insert',1);
END$$;
DELIMITER ;

/*trigger para la creacion de un log sobre el insert de datos de la tabla publicacion */
DELIMITER $$
CREATE TRIGGER tr_insert_publicacion_log
AFTER INSERT ON publicacion
FOR EACH ROW
INSERT INTO log_tabla_publicacion (tsActualiza,esquema,operacion,registro)
VALUES (now(), database(),'insert',1);
END$$;
DELIMITER ;

/*trigger para la creacion de una tabla con datos de nuevos stocks en la tabla articulos */
DELIMITER $$
CREATE TRIGGER modificacion_de_stock
AFTER UPDATE ON articulo
FOR EACH ROW
INSERT INTO tabla_stock_modificado (id_articulo,stock)
VALUES (NEW.id_articulo, NEW.stock);
END$$;
DELIMITER ;

/*trigger para la creacion de una tabla con datos anteriores a la actualizacion de stocks en la tabla articulos */
DELIMITER $$
CREATE TRIGGER stock_anterior_modificacion
BEFORE UPDATE ON articulo
FOR EACH ROW
INSERT INTO tabla_stock_antes_modificado (id_articulo,stock)
VALUES (OLD.id_articulo, OLD.stock);
END$$;
DELIMITER ;


/*Triggers para guardar datos ingresados en la tabla publicacion del año 2022 y otra del 2023 en otras tabalas correspendientes a su año*/
DELIMITER $$
CREATE TRIGGER insertar_datos_2022
AFTER INSERT ON publicacion
FOR EACH ROW
case
when year(new.fecha)=2022 then 
INSERT INTO publicacion_2022 (id_articulo ,id_rubro,
id_redSocial,fecha ,visitas,cantidadVentas)
values (NEW.id_articulo ,NEW.id_rubro,
NEW.id_redSocial,NEW.fecha ,NEW.visitas,NEW.cantidadVentas);
else begin end;
end case;
END$$;
DELIMITER ;

DELIMITER $$
CREATE TRIGGER insertar_datos_2023
AFTER INSERT ON publicacion
FOR EACH ROW
case
when year(new.fecha)=2023 then 
INSERT INTO publicacion_2023 (id_articulo ,id_rubro,
id_redSocial,fecha ,visitas,cantidadVentas)
values (NEW.id_articulo ,NEW.id_rubro,
NEW.id_redSocial,NEW.fecha ,NEW.visitas,NEW.cantidadVentas);
else begin end;
end case;
END$$;
DELIMITER ;






