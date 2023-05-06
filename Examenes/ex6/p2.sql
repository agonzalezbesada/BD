SELECT * FROM Customers;
SELECT * FROM Employees;
SELECT * FROM Orders;
-- Dime el nombre del cliente del pedido 10360
SELECT ContactName, Orders.OrderID FROM Customers INNER JOIN Orders ON Customers.CustomerID=Orders.CustomerID WHERE Orders.OrderID LIKE '10360';
-- Dime el nombre completo de los clientes con los pedidos 10360, 10253 y 10440
SELECT ContactName, Orders.OrderID FROM Customers INNER JOIN Orders ON Customers.CustomerID=Orders.CustomerID WHERE Orders.OrderID IN (10360,10253,10440);
-- Dime las ciudades y número de pedidos de clientes en esa ciudad
SELECT City, COUNT(Orders.OrderID) FROM Customers INNER JOIN Orders ON Customers.CustomerID=Orders.CustomerID GROUP BY City;
-- ¿Cuales son las ciudades desde las que hay más de 7 pedidos?
SELECT City, COUNT(Orders.OrderID) FROM Customers INNER JOIN Orders ON Customers.CustomerID=Orders.CustomerID GROUP BY City HAVING COUNT(Orders.OrderID) > 7;
-- ¿Cuales son los tres países desde los que tengo más pedidos?
SELECT Country, COUNT(Orders.OrderID) FROM Customers INNER JOIN Orders ON Customers.CustomerID=Orders.CustomerID GROUP BY Customers.Country ORDER BY COUNT(Orders.OrderID) DESC;
-- Necesito un informe con el Nombre completo de los Empleados y el número de pedidos que registraron
SELECT ('El empleado ' || FirstName || ' ' || LastName || ' registró ' || COUNT(Orders.OrderID) || ' pedidos') AS Informe FROM Employees INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID GROUP BY FirstName;
-- Adam West no hizo ningun pedido, se recomienda citar en recursos humanos
-- En el informe anterior, sólo necesito los empleados cuyo nombre comience por M
SELECT ('El empleado ' || FirstName || ' ' || LastName || ' registró ' || COUNT(Orders.OrderID) || ' pedidos') AS Informe FROM Employees INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID GROUP BY FirstName HAVING FirstName LIKE 'M%';
-- Quiero saber el número de pedido, qué empleado (sólo el nombre) lo registró y el cliente.
SELECT OrderID, Employees.FirstName, CustomerID FROM Orders INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID;
-- ¿Hay algún cliente que haya hecho más de un pedido registrado por el mismo empleado?

-- Quiero saber los clientes que hayan hecho más de un pedido y que hayan sido registrado por un Empleado cuyo nombre sea Margaret.
SELECT CustomerID, Count(OrderID), Employees.FirstName FROM Orders INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID GROUP BY Orders.CustomerID HAVING Orders.EmployeeID LIKE '4' AND Count(OrderID) > 1;