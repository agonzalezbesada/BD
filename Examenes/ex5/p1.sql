-- Crea una base de datos que se llame ejemplo
CREATE DATABASE ejemplo;

-- Crea el esquema esq1
CREATE SCHEMA esq1;

-- Añade la tabla1 que guardará el dni y nombre de una persona. tabla1 estará en el esquema esq1
CREATE TABLE esq1.tabla1 (dni varchar(9) PRIMARY KEY NOT NULL, nombre TEXT);

-- Añáde la tabla2 que guardará el id de un pedido y el dni (que será una clave ajena a tabla1(dni))
CREATE TABLE tabla2 (id INTEGER, dni varchar(9) REFERENCES esq1.tabla1(dni))

-- Añádele el campo edad a tabla1. Y añade la restricción de que el valor sea entre 0 y 99
ALTER TABLE esq1.tabla1 ADD COLUMN edad INTEGER CHECK (edad >= 0 AND tipo >= 99);

-- Añádele el campo precio a tabla2. Que al menos guarde 4 dígitos decimales de precisión y hasta 9999 de valor sin decima
ALTER TABLE tabla2 ADD COLUMN precio decimal(9999,4);