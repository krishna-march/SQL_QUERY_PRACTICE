--QUERY


--this is a comment

/*
This is a multi line comment
*/


Select * from customers;


Select 
id,first_name
from customers;

--------------------------------------------------------------------------

select id,country,score
from customers
where score!=0;


Select * 
from customers
where score>=500;


Select *from customers
where country='germany';

--------------------------------------------------------------------------

Select * from customers
order by score desc;

Select * from customers
order by country asc;


Select * from customers
where country!='uk'
order by score;


Select * from customers
order by country desc, score;

--------------------------------------------------------------------------

select
country,
sum(score) as 'sum_score'
from customers
group by country;


select country,sum(score),count(id) as 'count'
from customers
group by country;

--------------------------------------------------------------------------

select country,
sum(score) as 'total'
from customers
group by country
having sum(score)>750
order by total desc;


select country,sum(score) as total
from customers
where score!=0
group by country
having country = 'germany';

--------------------------------------------------------------------------

select distinct
country
from customers;

--------------------------------------------------------------------------
select * from customers
--------------------------------------------------------------------------

select  top(2)*
from customers;

select top(2)*
from customers
order by score desc;

--------------------------------------------------------------------------
select * from orders
--------------------------------------------------------------------------

select top(2)* from orders
order by order_date desc;

--------------------------------------------------------------------------
/*
-- Execution order             -- Coding Order

--1.From					   Select Distinct Top(2)
--2.Where					   col1,sum(col2)
--3.Group by				   From Table	
--4.Having					   where col1=10
--5.Select and Distinct        Group by col1
--6.Order by				   Having sum(col2)>100
--7.Top						   Order by col1 desc
*/
--------------------------------------------------------------------------

 select id,'name1'as static
 from customers

