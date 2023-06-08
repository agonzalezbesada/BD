# Consultas en MongoDB

# Trabajamos sobre la colección restaurants de la BD sample_restaurants

db.restaurants.find( {cuisine: "Greek"}, { name: 1, _id: 0, borough: 0, cuisine: 0, grades: 0 });

db.restaurants.find( {}, { name: 1, cuisine: 1, borough: 1, _id: 0, grades: 0 } );

db.restaurants.find( { cuisine: "Greek", "grades.grade": "B" }, { name: 1, "grades.grade": 1, _id: 0, borough: 0, cuisine: 0 } );

db.restaurants.find({ "grades.score": { $gte: 30 } }, { name: 1, score: 1, borough: 1, _id: 0, cuisine: 0 })

db.restaurants.find({$or: [{ cuisine: "Italian" }, { cuisine: "Mexican" }], borough: "Manhattan" }, { "address.street": 1, "address.building": 1, borough: 1, cuisine: 1, grades: 1, name: 0, _id: 0 });