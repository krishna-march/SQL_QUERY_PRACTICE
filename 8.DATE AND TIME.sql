--DATE AND TIME

--------------------------------------------------------------------------
--@GETDATE()
select 
getdate() as 'today';
--------------------------------------------------------------------------

--@PART EXTRACTION
--------------------------------------------------------------------------
--1.DAY,MONTH,YEAR.

SELECT
order_id,
order_date,
DAY(order_date) AS DAY,
MONTH(order_date) as MONTH,
YEAR(order_date) AS YEAR
FROM orders;

--2.DATEPART(PART,DATE)
use SalesDB
SELECT
0rderID,OrderDate,CreationTime,
DATEPART(HOUR,CreationTime) HOUR_DP,
DATEPART(QUARTER,CreationTime) QUATER,
DATEPART(WEEK,CreationTime) Week_1,
DATEPART(WEEKDAY,CreationTime)weekd
FROM Sales.Orders;

--3.DATENAME(PART,DATE)

SELECT
0rderID,OrderDate,CreationTime,
DATENAME(HOUR,CreationTime) HOUR_DP,
DATENAME(MONTH,CreationTime) MONTH_,
DATENAME(WEEK,CreationTime) Week_1,
DATENAME(WEEKDAY,CreationTime)weekd
FROM Sales.Orders;

--4.DATETRUNC(PART,DATE)

SELECT
0rderID,OrderDate,CreationTime,
DATETRUNC(SECOND,CreationTime) Second_,
DATETRUNC(MINUTE,CreationTime) MINUTE_
FROM Sales.Orders;

--5.EOMONTH(DATE)

SELECT 
0rderID,OrderDate,CreationTime,
EOMONTH(CreationTime) EOM
FROM Sales.Orders;

--------------------------------------------------------------------------
--@formatting and casting
--------------------------------------------------------------------------

--FORMAT(value,format,[culture])

SELECT 
0rderID,CreationTime,
FORMAT(CreationTime,'dd') as "dd",
FORMAT(CreationTime,'ddd') as "ddd",
FORMAT(CreationTime,'dddd') as "dddd",
FORMAT(CreationTime,'MM') as "MM",
FORMAT(CreationTime,'MMM') as "MMM",
FORMAT(CreationTime,'MMMM') as "MMMM",
FORMAT(CreationTime,'yy') as "yy",
FORMAT(CreationTime,'yyy') as "yyy",
FORMAT(CreationTime,'yyyy') as "yyyy",
FORMAT(CreationTime,'mm') as "mm",
FORMAT(CreationTime,'mmm') as "mmm",
FORMAT(CreationTime,'mmmm') as "mmmm",
FORMAT(CreationTime,'HH') as "HH",
FORMAT(CreationTime,'HHH') as "HHH",
FORMAT(CreationTime,'dd-MM-yyy') as "europian"
FROM Sales.Orders;

--------------------------------------------------------------------------

--convert(data_type,value,[style])

Select
CONVERT(int,'678')as "int",
CONVERT(varchar,CreationTime)
from Sales.Orders;

--------------------------------------------------------------------------
--cast(value as data_type)

Select
CAST('123' as int),
CAST('12-12-2025' as date)

--------------------------------------------------------------------------
--@calculations
--------------------------------------------------------------------------

--DATEADD(Part,Interval,Date)

select OrderID,OrderDate,
DATEADD(YEAR,3,OrderDate) as '+3 year',
DATEADD(MONTH,2,OrderDate) as '+2 month'
from Sales.Orders;

--------------------------------------------------------------------------

--DATEDIFF(Part,Start_Date,End_Date)

Select EmployeeID,BirthDate,
DATEDIFF(YEAR,BirthDate,GETDATE())
from Sales.Employees;

--------------------------------------------------------------------------
select OrderID,OrderDate,
LAG(OrderDate) over (order by orderdate) as 'previous order_date',
DATEDIFF(DAY,LAG(OrderDate) over (order by orderdate),OrderDate) 
from Sales.Orders;

--------------------------------------------------------------------------
--@Validation
--------------------------------------------------------------------------
--ISDATE(Value)

select
ISDATE('12-12-26');