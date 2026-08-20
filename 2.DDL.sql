--DDL(Create,Alter,Drop)

Create table persons(
Id int not null,
Person_name varchar(20) not null,
Birth_date Date,
Phone varchar(10) not null,
CONSTRAINT pk_users_id PRIMARY KEY (id)
);

--------------------------------------------------------------------------
select * from persons
--------------------------------------------------------------------------

Alter Table persons
Add Email varchar(50) Not null,Fake varchar(2) Not NUll;


Alter Table persons 
drop column Fake,phone;

--------------------------------------------------------------------------
--(Caution)
Drop table persons;