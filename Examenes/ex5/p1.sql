CREATE DATABASE ejemplo;

CREATE SCHEMA esq1;

CREATE TABLE esq1.tabla1 (dni varchar(9) PRIMARY KEY NOT NULL, nombre TEXT);

CREATE TABLE tabla2 (id INTEGER, dni varchar(9) REFERENCES esq1.tabla1(dni))

ALTER TABLE esq1.tabla1 ADD COLUMN edad INTEGER CHECK (edad >= 0 AND tipo >= 99);

ALTER TABLE tabla2 ADD COLUMN precio decimal(9999,4);