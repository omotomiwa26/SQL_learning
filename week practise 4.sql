select birthdate from  [HumanResources].[Employee]

select GETDATE() as today_date

select DATEDIFF(year,'2000-01-31',getdate())

select DATEDIFF(year,birthdate,getdate()) as Age_in_years
from  [HumanResources].[Employee]

select DATEDIFF(month,birthdate,getdate()) as Age_in_months
from  [HumanResources].[Employee]

select DATEDIFF(day,birthdate,getdate()) as Age_in_days
from  [HumanResources].[Employee]

select birthdate, DATEPART(year, birthdate) as year , DATEPART(month, birthdate) as month , DATEPART(day, birthdate) as day 
from [HumanResources].[Employee]
where DATEPART(year, birthdate) = 1970

select DATENAME(month, birthdate)
from [HumanResources].[Employee]

select year(birthdate)
from [HumanResources].[Employee]

SELECT birthdate, dateadd(month, 2 , birthdate)
from [HumanResources].[Employee]

if /*not*/ exists (select 1 from sales.SalesPerson where businessentityID = 274)
BEGIN
--insert into users (Firstname, Lastname) values ('john', 'Smith')
select * from sales.salesperson where businessentityID = 274
end

select a.* ,  b.salesYTD
from person.BusinessEntity a
inner join sales.SalesPerson b
on a.BusinessEntityID = b.BusinessEntityID

select a.* ,  b.salesYTD
from person.BusinessEntity a
left join sales.SalesPerson b
on a.BusinessEntityID = b.BusinessEntityID

select count(*) from person.BusinessEntity

select a.* ,  b.salesYTD
from person.BusinessEntity a
right join sales.SalesPerson b
on a.BusinessEntityID = b.BusinessEntityID

select a.* ,  b.salesYTD
from person.BusinessEntity a
full outer join sales.SalesPerson b
on a.BusinessEntityID = b.BusinessEntityID