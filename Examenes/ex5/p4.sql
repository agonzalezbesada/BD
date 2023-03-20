-- Realiza el diseño físico de
-- Recuerdos(idFoto, idPersona, nombre, dni, títuloFoto, fecha,monumento, ciudad, antigüedadMonumento) Pongo TEXT en antigüedad para poder representar A.C. D.C.
-- Recuerda que tiene que estar normalizado
-- Recuerdos(idFoto, idPersona, nombre, dni, títuloFoto, fecha,monumento, ciudad, antigüedadMonumento)

-- 1FN
CREATE TABLE Recuerdos(idFoto INTEGER PRIMARY KEY, nombre TEXT, dni varchar(9), tituloFoto TEXT, fech timestamp, monumento TEXT, ciudad TEXT, antiguedadMonumento TEXT);


-- 2FN
CREATE TABLE Recuerdos (idFoto INTEGER REFERENCES Foto(idFoto), idPersona REFERENCES Persona(idPersona), monumento TEXT REFERENCES Monumento(monumento));

CREATE TABLE Foto (idFoto INTEGER PRIMARY KEY NOT NULL, tituloFoto TEXT, fecha timestamp, monumento TEXT);

CREATE TABLE Monumento (nombreMonumento TEXT PRIMARY KEY NOT NULL, ciudad TEXT, antigüedadMonumento TEXT);

CREATE TABLE Persona (idPersona INTEGER PRIMARY KEY NOT NULL, dni varchar(9), nombre TEXT);