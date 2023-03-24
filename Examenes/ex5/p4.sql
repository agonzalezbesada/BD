-- Realiza el diseño físico de
-- Recuerdos(idFoto, idPersona, nombre, dni, títuloFoto, fecha,monumento, ciudad, antigüedadMonumento) Pongo TEXT en antigüedad para poder representar A.C. D.C.
-- Recuerda que tiene que estar normalizado
-- Recuerdos(idFoto, idPersona, nombre, dni, títuloFoto, fecha,monumento, ciudad, antigüedadMonumento)


-- 2FN - 3FN
CREATE TABLE Recuerdos (idFoto INTEGER REFERENCES Foto(idFoto), idPersona REFERENCES Persona(idPersona), monumento varchar(80) REFERENCES Monumento(monumento));
-- No borré el idPersona porque quizás por temas de privacidad no fuese deseabla acceder tan fácilmente al dni
CREATE TABLE Foto (idFoto INTEGER PRIMARY KEY, tituloFoto varchar(20), fecha timestamp);

CREATE TABLE Monumento (monumento varchar(80) PRIMARY KEY, ciudad varchar(30), antiguedadMonumento varchar(10));

CREATE TABLE Persona (idPersona INTEGER PRIMARY KEY, dni varchar(9), nombre varchar(20));