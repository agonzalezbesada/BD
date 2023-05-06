-- Revisa las tablas Customers (clientes), Employees (empleados) y Orders (pedidos)
SELECT * FROM Customers;
SELECT * FROM Employees;
SELECT * FROM Orders;
-- ¿Cuántos clientes hay registrados?
SELECT COUNT(CustomerID) FROM Customers;
-- ¿Cuántos pedidos?
SELECT COUNT(OrderID) FROM Orders;
-- ¿Qué clientes viven en Londes y su nombre (CustomerName) empieza por A?
SELECT * FROM Customers WHERE City LIKE 'London' AND CustomerName LIKE 'A%';
-- ¿Cuántos clientes hay que son de Londres?
SELECT COUNT(CustomerID), City FROM Customers WHERE City LIKE 'London';
-- ¿Cuántos clientes hay en cada ciudad?
SELECT City, COUNT(CustomerID) FROM Customers GROUP BY City;
-- ¿Cuántos empleados nacieron después de 1 de Junio del 1965?
SELECT COUNT(EmployeeID) FROM Employees WHERE BirthDate > '1965-06-01';
-- Hazme un informe que diga «El empleado N nación el N», siendo N, nombre (FirstName y Last Name) y día de nacimiento (BirthDate)
SELECT ('El empleado ' || FirstName || ' ' || LastName || ' nació en el ' || BirthDate) AS Informe
FROM Employees;
-- Hazme el informe anterior, pero sólo para los empleados con id 8, 7, 3 y 10
SELECT ('El empleado ' || FirstName || ' ' || LastName || ' nació en el ' || BirthDate) AS Informe
FROM Employees WHERE EmployeeID IN ('8','7','3','10');
-- Dime los paises que tengan más de 5 clientes, ordenados por el nombre de país
SELECT Country, COUNT(CustomerID) FROM Customers GROUP BY Country HAVING COUNT(CustomerID) > 5;