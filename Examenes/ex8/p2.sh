# Modelo de datos en MongoDB

# Diseña un almacén de datos que te permita gestionar y acceder a los datos de una aplicación de gestión de viajes sencilla. Se cumplirán los siguientes requisitos
# Necesitamos conocer la información de los viajeros y los vuelos que hacen 
# Los viajeros son españoles o con residencia en España, y queremos saber el día que nacen para saber cual es su edad y felicitarle el cumpleaños. Un viajero puede hacer muchos viajes
# De los viajes queremos conocer de qué ciudad es el origen y cual es el destino, y claro la fecha (de salida y llegada). Ah! Y de cada ciudad queremos saber cuantos habitantes tiene y una descripción sencilla de 150 caracteres máximo con un recomendación de cosas para ver

db.createCollection("viajeros")
db.createCollection("vuelos")
db.createCollection("ciudades")

# Datos de viajeros

db.viajeros.insertMany([
  { nombre: "Miss Piggy", nacimiento: new Date("1955-01-01"), nacionalidad: "Español", residencia: "España" },
  { nombre: "Kermit the Frog", nacimiento: new Date("1955-01-01"), nacionalidad: "Español", residencia: "España" },
  { nombre: "Fozzie Bear", nacimiento: new Date("1955-01-01"), nacionalidad: "Español", residencia: "España" }
]);

db.viajeros.insertMany([
    { origen: "Fuengirola", destino: "Murcia", salida: new Date("2056-01-01"), llegada: new Date("2056-01-02") },
    { origen: "Murcia", destino: "Galicia", salida: new Date("2056-01-02"), llegada: new Date("2056-01-03") },
    { origen: "Galicia", destino: "Asturias", salida: new Date("2056-01-04"), llegada: new Date("2056-01-05") }
]);

db.ciudades.insertMany([
    { nombre: "Coruña", habitantes: 244850, descripcion: "Exuberante y verde, es interesante ver la vegetación" },
    { nombre: "Murcia", habitantes: 447182, descripcion: "Seca, es interesante ver la arena" },
    { nombre: "Fuengirola", habitantes: 75396, descripcion: "Quién sabe, pero seguro que es interesante ver sus discotecas" }
]);