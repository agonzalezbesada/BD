# ADMINISTRAR UNA BD RELACIONAL

# Creación de una BD (p1.sql)

### Crea una base de datos que se llame ejemplo

### Crea el esquema esq1

### Añade la tabla1 que guardará el dni y nombre de una persona. tabla1 estará en el esquema esq1

### Añáde la tabla2 que guardará el id de un pedido y el dni (que será una clave ajena a tabla1(dni)).

### Añádele el campo edad a tabla1. Y añade la restricción de que el valor sea entre 0 y 99

### Añádele el campo precio a tabla2. Que al menos guarde 4 dígitos decimales de precisión y hasta 9999 de valor sin decima

[p1.sql](https://github.com/agonzalezbesada/BD/blob/main/Examenes/ex5/p1.sql)

# Lenguaje DML (p2.sql)

Modelo de datos del ejemplo: https://github.com/openacs/openacs-core/blob/main/packages/acs-kernel/sql/postgresql/acs-objects-create.sql

### Dime un ejemplo de inserción de datos en acs_objects que tenga algunos campos

### Dime un ejemplo de inserción de datos en acs_objects que tenga todos los campos de la tabla

### Cómo harías para actualizar "title" a "Ejemplo de título" para los object_id mayores de 100

### Cómo harías para borrar los registros modificados (modifying_ip) desde la IP 200.200.200.200

[p2.sql](https://github.com/agonzalezbesada/BD/blob/main/Examenes/ex5/p2.sql)

# Normalización (p3.sql)

### Realiza el diseño físico de:

Matricula (dni, nombres, apellidos, asignatura).
Recuerda que tiene que estar normalizado.

[p3.sql](https://github.com/agonzalezbesada/BD/blob/main/Examenes/ex5/p3.sql)

# Normalización (p4.sql)

### Realiza el diseño físico de

Recuerdos(idFoto, idPersona, nombre, dni, títuloFoto, fecha, monumento, ciudad, antigüedadMonumento).
Recuerda que tiene que estar normalizado.

[p4.sql](https://github.com/agonzalezbesada/BD/blob/main/Examenes/ex5/p4.sql)
