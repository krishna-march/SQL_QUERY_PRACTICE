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




