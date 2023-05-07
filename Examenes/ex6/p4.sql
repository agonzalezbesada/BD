-- Ver los valores nulos (si hay) en el campo start_station
SELECT id, start_station FROM trips WHERE start_station IS NULL;
-- Actualizar todos los valores de start_station, si tienen valores nulos, para que sean iguales al valor de end_station para ese registro.
UPDATE trips SET start_station = end_station WHERE start_station IS NULL;
-- Aunque en las que también es null en end_station lo deja igual, lo cual no soluciona el problema del todo
-- Para arreglar este tema en el futuro, ¿qué instrucción de modificación DDL tendríamos que ejecutar?
ALTER TABLE trips ALTER COLUMN start_station SET NOT NULL; -- Aunque habría que eliminar los null actuales
-- Borra todos los registros que no tengan un valor conocido de birth_date?
DELETE FROM table_name WHERE birth_date IS NULL;
-- Actualizar los valores nulos de bike_number para que tengan el valor B00000
UPDATE trips SET bike_number = 'B00000' WHERE bike_number IS NULL;