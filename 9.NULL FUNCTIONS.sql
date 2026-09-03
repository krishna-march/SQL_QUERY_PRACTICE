-- NULL Functions
--------------------------------------------------------------------------
--ISNULL(Value,Replacement_value)


SELECT CustomerID,Score,
AVG(isnull(Score,0)) over()
from sales.Customers;

SELECT CustomerID,Score,
isnull(Score,0) score
from sales.Customers;



--------------------------------------------------------------------------
--COALESEC(value1,vale2,value3.....)


Select FirstName,
LastName,
FirstName +' '+ coalesce(lastname,'') as 'NAME',
score,
coalesce(Score,0)+10
from Sales.Customers;

--------------------------------------------------------------------------

select FirstName,Score,
case when score is Null  then 1 else 0 END flag
from Sales.Customers
order by flag,Score;

--------------------------------------------------------------------------

--NULLIF(VAlUE1,VALUE2) (either value 1 or null)


Select OrderID,Sales,Quantity,
Sales/nullif(Quantity,0)
from Sales.Orders;

--------------------------------------------------------------------------
 
 --is null/ is not null
  
  Select* from Sales.Customers
  where Score is null;

  Select* from Sales.Customers
  where Score is not null;