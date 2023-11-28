1 уровень сложности: В рамках БД "песочница" напишите след/запросы:

Задание 1. Вывести клиентов не из Germany, имена которых начинаются на букву A
SELECT * 
FROM Customers
where not country = "Germany" 
	and CustomerName like "A%" 


Задание 2. Вывести данные о заказах клиентов 1, 2, 5 (проекция: номерзаказа, названиекомпании_перевозчика)
SELECT Orders.OrderId,
	   Shippers.ShipperName
FROM Orders
join Shippers 
on Shippers.ShipperId = Orders.ShipperId
where CustomerID in(1,2,5)

Задание 3. Вывести данные о заказах клиентов не из France (проекция: номерзаказа, имяклиента, фамилия_менеджера)
SELECT Orders.OrderID,
	   Customers.customerName,
	   Employees.FirstName
FROM Orders
join Customers
on Customers.customerID = Orders.customerID
join Employees
on Employees.employeeID = Orders.employeeID
where Not Customers.Country = "France" 

Задание 4. Вывести ср/стоимость товаров от поставщика 4
SELECT avg(price) 
FROM Products
where SupplierID = 4

Задание 5. Вывести один самый дешевый товар от поставщика 1
SELECT * 
FROM Products
where SupplierID = 1
order by price
limit 1;

Задание 6. Зачем нужна проекция в БД. Дайте короткий ответ
Проекция нужна для оптимизации запросов - позволяет нам выбирать только те поля из таблиц, которые нас интересуют.
Мы снизим нагрузку на ресурсы (например, сервер БД), если не будем выполнять лишних операций