--SET OPERATORS

--------------------------------------------------------------------------
--1.UNION

Select FirstName,LastName
from Sales.Customers
UNION
Select FirstName,LastName
From sales.Employees;

--2.UNION ALL

Select FirstName,LastName
from Sales.Customers
UNION ALL
Select FirstName,LastName
From sales.Employees;

--3.EXCEPT

Select FirstName,LastName
from Sales.Customers
EXCEPT
Select FirstName,LastName
From sales.Employees;

--4.INTERSECT

Select FirstName,LastName
from Sales.Customers
INTERSECT
Select FirstName,LastName
From sales.Employees;
