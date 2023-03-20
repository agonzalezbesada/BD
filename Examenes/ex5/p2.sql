-- Dime un ejemplo de inserción de datos en acs_objects que tenga algunos campos
INSERT INTO acs_objects VALUES(1,'HastaMil',,5,6,f,8,,el12,,3,1234);

-- Dime un ejemplo de inserción de datos en acs_objects que tenga todos los campos de la tabla
INSERT INTO acs_objects VALUES(1,'HastaMil','Hastamil2',5,6,f,8,'2023-03-20 18:34:00',el12,'2023-03-20 18:35:00',3,1234);

-- Cómo harías para actualizar "title" a "Ejemplo de título" para los object_id mayores de 100
ALTER TABLE acs_objects RENAME COLUMN title TO Ejemplo_de_titulo WHERE object_id > 100;

-- Cómo harías para borrar los registros modificados (modifying_ip) desde la IP 200.200.200.200
DELETE FROM acs_objects WHERE modifying_ip='200.200.200.200';