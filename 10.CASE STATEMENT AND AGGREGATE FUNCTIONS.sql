-- CASE Statements AND Aggregate Functions
--------------------------------------------------------------------------
--@Case Statements
use SalesDB;
--------------------------------------------------------------------------
select category,SUM(Sales) as totalsales
from(
Select OrderID,Sales,
Case when Sales>50 then 'High'
when Sales>20 then 'medium'
when Sales<=20 then 'low'
end category
from Sales.Orders)r
group by category
order by totalsales;

--------------------------------------------------------------------------
--@cast system

Select EmployeeID,FirstName,Gender,
case Gender when 'M'then 'Male'
when 'F'then'Female'
end Gender1
from Sales.Employees;

--------------------------------------------------------------------------
--@Aggregate Functions
--------------------------------------------------------------------------

