# Programando el SGBDR


# Usando funciones nativas en Postgres (p1.sql)


### Quiero crear un número aleatorio entre el 5 y el 30

### ¿Cuanto es 4 elevado a 5?

### Crea la secuencia seq_01 que sea de números enteros, y que salte de 2 en 2

### ¿Cómo sabes cual es el valor actual de la secuencia? ¿Y el siguiente?

### ¿Qué sentencia tienes que construir para obtener “2001-07-27 12:00”, usando un intervalo de 3 días?

### ¿Cuantas horas son desde las 07:30 a as 08:45? (usando time, claro)

### ¿Cuales son los segundos, de la fecha 2001-02-16 20:38:40?

### ¿Como concatenas, usando un operador, el valor “Hola, me llamo” y el nombre “Pepe”?

### ¿Cómo harías para quitar las o’s y las e’s de “Hola soy Pepe”?



# Creando funciones (p2.sql)


### suma(n1,n2,n3). Crea una función que sume los dos primeros argumentos, y lo multiplique por un tercero. Los argumentos serán enteros

### actualizar_bicis(codigo). Sobre la BD Hubway, quiero cambiar todos los valores de los códigos de las bicis que están a null, con un valor que yo quiero escoger. Por ejemplo actualizar_bicis('000000')

### duracion_viaje(id,tipo). Necesito saber la duración de un viaje, en minutos o en horas, según el parámetro sea M o H. Por ejemplo duracion_viaje(4300,'M')



# Creando Triggers (p4.sql)


### act_duracion_t. Al actualizar un viaje, comprobará que al menos la duración es de 20 segundos. Si no lo es, lo actualizará para que sea ese valor

### check_municipio_t. Cuando se actualice el municipio de una estación, garantizará que sea de un municipio que esté previamente en la tabla. En el caso de que no exista ese municipio previamente no se aceptarán municipios nuevos
