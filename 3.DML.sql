-- DML(Insert,Update,Delete)

--------------------------------------------------------------------------
select* from customers;
--------------------------------------------------------------------------

Insert into customers(id,first_name,country,score)
values (10,'arya','Brazil',780),
(7,'Black','Japan',400),
(9,'Shalu','India',1000);

--------------------------------------------------------------------------
Select* from INP;
--------------------------------------------------------------------------

Insert into INP
Select * From customers;

--------------------------------------------------------------------------

Update INP
set id=6
where id=7;


update INP
set country='UK'
where country='USA';

--------------------------------------------------------------------------

Delete INP
where id>5;

Delete INP;

--(Caution)Drop Table INP;