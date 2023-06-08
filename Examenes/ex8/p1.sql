-- Uso de JSON en Postgres


-- Le añades una tabla que se llame "frutas" con un campo que sea clave primaria y otro que permita usar JSON, que guardará información sobre frutas
-- Una fruta tiene varias propiedades (nombre,diametro,origen)
CREATE TABLE frutas(id SERIAL PRIMARY KEY, datos JSONB);

-- Añade al menos 5 frutas a tu base de datos
INSERT INTO frutas (datos) VALUES 
('{"nombre": "Manzana", "diametro": "15","origen": "Asturias"}'),
('{"nombre": "Pera", "diametro": "15","origen": "Baleares"}'),
('{"nombre": "Limon", "diametro": "15","origen": "Ourense"}'),
('{"nombre": "Platano", "diametro": "15","origen": "Canarias"}'),
('{"nombre": "Mandarina", "diametro": "15","origen": "Cantabria"}');

-- Ponme la consulta para mostrar las frutas que vienen de Ourense
SELECT * FROM frutas WHERE datos->>'origen' = 'Ourense';

-- Muéstrame las frutas que comiencen por la letra N
SELECT * FROM frutas WHERE datos->>'nombre' LIKE 'N%';