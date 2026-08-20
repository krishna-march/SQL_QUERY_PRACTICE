--STRING AND NUMBER FUNCTION

--STRING====
--------------------------------------------------------------------------
--@STRING MANUPLATATION
--------------------------------------------------------------------------

--1.CONCAT(VALUE,MIDDLE_VALUE,END_VALUE)

use MyDatabase

select 
first_name,country,
CONCAT(first_name,'-',country) AS 'NAME-COUNTRY'
from customers;

--2.UPPER(VALUE) AND LOWER(VALUE)

select 
first_name,country,
UPPER(first_name)as 'UPPER',
LOWER(first_name)as 'LOWER'
from customers;

--3.TRIM(VALUE)   --[TRIMS WHITE SPACES]

Select first_name,
len(first_name) as 'Lenght',
len(trim(first_name)) as 'Trimed_Length',
len(first_name) -
len(trim(first_name)) as 'flag'
from customers;

--4.REPLACE(VALUE,OLD_VALUE,NEW_VALUE)

Select
'123,456,789' as 'num',
REPLACE('123,456,789',',','');

--------------------------------------------------------------------------
--@CALCULATION(LEN(VALUE))
--------------------------------------------------------------------------

Select
'ALLU'as 'NAME',
len('ALLU') AS 'LENGTH';

--------------------------------------------------------------------------
--@STRING EXTRACTATION
--------------------------------------------------------------------------

--1.LEFT(VALUE,NO_OF_VALUE) AND RIGHT(VALUE,NO_OF_VALUE)

Select first_name,
left(first_name,2) as 'First 2',
right(first_name,2) as 'Last 2'
from customers;

--2.SUBSTRING(VALUE,START,LENGTH)

Select first_name,
SUBSTRING(first_name,2,len(first_name)) as 'NEW NAME'
from customers;



--NUMBER====
--------------------------------------------------------------------------
--1.ROUND

Select
232.746 AS 'Original num',
round(232.745,2) AS '2ROUND',
round(232.745,1) AS '1ROUND'

--2.ABS

Select
-232.746 AS 'Original num',
ABS(-232.746) AS 'ABS NUM'