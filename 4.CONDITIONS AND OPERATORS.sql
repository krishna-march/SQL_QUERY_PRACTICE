--WHERE OPERATORS

--------------------------------------------------------------------------
--@Comparision Operator
--------------------------------------------------------------------------
Select * from customers;
--------------------------------------------------------------------------

--1.(=)
Select* from customers
where country='Germany';

--2.(<>,!=)
Select* from customers
where country<>'Germany';

Select* from customers
where country != 'USA'

--3.(>,>=,<,<=)

Select*from customers
where score>500;

Select*from customers
where score>=500;

Select*from customers
where score<500;

Select*from customers
where score<=500;

--------------------------------------------------------------------------
--@Logical Operator
--------------------------------------------------------------------------

--1.(AND)

Select * from customers
where country!='USA' 
AND score>400;

--2.(OR)

Select * from customers
where country!='USA' 
OR score>400;

--3.(NOT)

Select * From customers
where NOT country='USA'

--------------------------------------------------------------------------
--@Range Operator(AND)
--------------------------------------------------------------------------

Select * from customers
where score BETWEEN 100 AND 700;

--------------------------------------------------------------------------
--@Membership Operator
--------------------------------------------------------------------------

--1.(IN)
Select* from customers 
Where country IN ('USA','Germany');

--2.(NOT IN)

Select* from customers 
Where country NOT IN ('USA','Germany');

--------------------------------------------------------------------------
--@Search Operator(LIKE)

Select* From Customers
Where first_name Like '%lu'

Select* From Customers
Where first_name Like 'M%'

Select* From Customers
Where first_name Like '%r%'

Select* From Customers
Where first_name Like '__r%'





