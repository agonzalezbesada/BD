-- actualiza_viaje(viaje, factor). Actualizar la duración para un viaje concreto. Es decir la nueva duración será la que tiene multiplicada por factor. Devolverá el número de viajes realizado desde la misma estación de origen
CREATE FUNCTION actualiza_viaje(viaje integer, factor integer) RETURNS integer 
AS $$ 
DECLARE 
estacionOrigen integer;
numeroViajes integer;
BEGIN 
SELECT start_station INTO estacionOrigen FROM trips WHERE id = viaje;
UPDATE trips SET duration = duration * factor WHERE id = viaje;
SELECT COUNT(start_station) INTO numeroViajes FROM trips WHERE start_station = estacionOrigen; 
RETURN numeroViajes;
END; 
$$ LANGUAGE plpgsql;
-- contar_viajes_mes(mes, referencia). Devuelve un entero con los viajes que se hicieron en un mes concreto (siendo 1 - enero y 12 - diciembre). Lanzará también un aviso en consola (RAISE NOTICE) clasificándolo en pocos / normal / muchos. El umbral de decisión será de 0,25 el valor de referencia (para pocos), 0,5 para normal y 0,75 muchos
CREATE FUNCTION contar_viajes_mes(mes integer, referencia integer) RETURNS integer AS $$
DECLARE
numViajes integer;
pocos integer;
normal integer;
muchos integer;
BEGIN
SELECT COUNT(*) INTO numViajes FROM trips WHERE EXTRACT(MONTH FROM start_date) = mes OR EXTRACT(MONTH FROM end_date) = mes;
pocos := referencia * 0.25;
normal := referencia * 0.5;
muchos := referencia * 0.75;
IF numViajes <= pocos THEN
RAISE NOTICE 'Viajes: % - Clasificacion: Pocos', numViajes;
ELSIF numViajes <= normal THEN
RAISE NOTICE 'Viajes: % - Clasificacion: Normal', numViajes;
ELSE
RAISE NOTICE 'Viajes: % - Clasificacion: Muchos', numViajes;
END IF;
RETURN numViajes;
END;
$$ LANGUAGE plpgsql;
-- borra_y_guarda(id). Crea una función que borre el viaje con ese id. Además guardará en un log (tabla viajes_borrados) un registro del tipo «El usuario $U borró el viaje $V», además el timestamp del borrado
CREATE FUNCTION borra_y_guarda(id integer) RETURNS void AS $$
BEGIN
INSERT INTO viajes_borrados (Informe)
VALUES ('El usuario ' || current_user || ' borró el viaje ' || id, current_timestamp);
DELETE FROM trips WHERE trips.id = borra_y_guarda.id;
END;
$$ LANGUAGE plpgsql;