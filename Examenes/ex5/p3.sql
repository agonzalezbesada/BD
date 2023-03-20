-- Realiza el diseño físico de:
-- Matricula (dni, nombres, apellidos, asignatura)
-- Recuerda que tiene que estar normalizado
-- Matricula (dni, nombres, apellidos, asignatura)

-- 1FN
CREATE TABLE Matricula (dni varchar(9) PRIMARY KEY NOT NULL,, nombres TEXT, apellidos TEXT, asignatura TEXT);

-- 2FN
CREATE TABLE Alumno (dni varchar(9) PRIMARY KEY NOT NULL, nombres TEXT, apellidos TEXT);

CREATE TABLE Matricula (dni varchar(9) REFERENCES Alumno(dni), asignatura TEXT, PRIMARY KEY(dni,asignatura))