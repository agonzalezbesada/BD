# Bases de Datos No SQL


# Uso de JSON en Postgres [p1.sql](https://github.com/agonzalezbesada/BD/blob/main/Examenes/ex8/p1.sql)
Crea una base de datos en postgres que se llame "bd_frutas_json"

---

- Le añades una tabla que se llame "frutas" con un campo que sea clave primaria y otro que permita usar JSON, que guardará información sobre frutas

- Una fruta tiene varias propiedades:
    - Un nombre: naranja, pera, manzana, etc
    - Un diámetro (en cm): 5, 10, 15, etc
    - Un origen (ciudad): Vigo, Ourense, Santiago, etc

- Añade al menos 5 frutas a tu base de datos

- Ponme la consulta para mostrar las frutas que vienen de Ourense

- Muéstrame las frutas que comiencen por la letra N


# Modelo de datos en MongoDB [p2.sh](https://github.com/agonzalezbesada/BD/blob/main/Examenes/ex8/p2.sh)
Diseña un almacén de datos que te permita gestionar y acceder a los datos de una aplicación de gestión de viajes sencilla. Se cumplirán los siguientes requisitos

---

- Necesitamos conocer la información de los viajeros y los vuelos que hacen

- Los viajeros son españoles o con residencia en España, y queremos saber el día que nacen para saber cual es su edad y felicitarle el cumpleaños. Un viajero puede hacer muchos viajes

- De los viajes queremos conocer de qué ciudad es el origen y cual es el destino, y claro la fecha (de salida y llegada). Ah! Y de cada ciudad queremos saber cuantos habitantes tiene y una descripción sencilla de 150 caracteres máximo con un recomendación de cosas para ver


# Consultas en MongoDB [p3.sh](https://github.com/agonzalezbesada/BD/blob/main/Examenes/ex8/p3.sh)
Trabajamos sobre la colección restaurants de la BD sample_restaurants

---

- Los que sean de cocina griega (Greek). Sólo quiero saber el nombre, no toda la información

- Quiero un listado con el nombre de restaurante, el tipo de cocina y barrio (borough) en el que está

- Los que sean de cocina griega y tengan una nota (grade) de B. Solo el nombre y la nota

- Los que hayan tenido una valoración (score) de al menos 30 puntos. Que apareza el nombre, el score y el barrio

- Los que sean de cocina Italiana o Mexican y estén en Manhattan (borough). Que aparezca la calle, el edificio, el barrio, el tipo de cocina y grades (todas las valoraciones)


# Actualización Borrado de datos [p4.sh]()
Trabajamos con la colección movies de la BD sample_mflix

---

- Actualiza el campo year de la pelicula de título “Civilization” a “1985”

- Actualiza el campo comentarios de todas las películas, sumándole 10

- Actualiza el campo year de las peliculas con duración (runtime) mayor a 100 para que sea 100 (es decir, no habrá ninguna duración mayor que 100)

- Borra las que sean el género Action

- Borra las películas de entre los años 1950 y 1970 y que tengan menos de 80 votos en imdb



# Agregación y Pipelines [p5.sh]()
Trabajamos con la colección sales de la BD sample_supplies

---


- Muéstrame 3 pedidos (supplies) de la BD

- Muéstrame el promedio de edad de los clientes (customer) agrupado por tienda (storeLocation)

- ¿Cuántos clientes mujeres de más de 40 años han hecho pedidos en nuestra tienda?

- Muéstrame la tienda, el email del cliente y su edad, de los 5 pedidos con mejor valoración (satisfaction) de los clientes (customer)





