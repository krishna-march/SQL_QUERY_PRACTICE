--SQL JOINS(Basics)

--------------------------------------------------------------------------
use MyDatabase;
--------------------------------------------------------------------------
select*from customers;
select*from orders;
--------------------------------------------------------------------------

--1.INNER JOIN

Select 
id,order_id,
first_name,order_date,sales
from customers
inner Join orders
on id=customer_id;

--------------------------------------------------------------------------

--2.LEFT JOIN

Select *
From customers
Left Join orders
on id=customer_id;

--3.RIGHT JOIN

Select* from customers
Right Join orders
On id=customer_id;

--4.FULL JOIN

Select* From customers
Full Join orders
On id=customer_id;

--------------------------------------------------------------------------
--------------------------------------------------------------------------

--SQL JOINS(ADVANCED)

--1.LEFT ANTI JOIN[A-B]

Select* from customers
left join orders
on id=customer_id
where customer_id is null;

--2.RIGHT ANTI JOIN[B-A]

select* from customers
right join orders
on id=customer_id
where id is null;

--FULL ANTI JOIN[AUB-AnB]

Select* from customers
full join orders
on id=customer_id
where id is null or customer_id is null;

--CROSS JOIN[FOR ALL POSSIBLE COMBO..]
--[CAUTION]
Select * from customers
cross join orders;

--------------------------------------------------------------------------
--------------------------------------------------------------------------
---CHALLENGE:GET ALL THE CUSTOMERS WITH ORDERS WITHOUT USING INNER JOIN

Select* from orders
left join customers
on id=customer_id
where id is not null;

--------------------------------------------------------------------------
Use SalesDB;
--------------------------------------------------------------------------


Select 
o.OrderID,c.FirstName,c.LastName,o.Sales,p.Product as 'Product name'
,p.Price,e.FirstName
from sales.Orders as o
left join sales.Customers as c
on o.CustomerID=c.customerid
left join  sales.Products as p
on p.ProductID=o.ProductID
left join sales.Employees as e
on o.SalesPersonID= e.EmployeeID;

select* from sales.Customers
select*from  sales.Products
select*from sales.orders
select*from sales.Employees