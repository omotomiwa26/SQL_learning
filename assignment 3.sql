select [BusinessEntityID],
[FirstName] +' '+ [FirstName] as name
from [Person].[Person]
union ALL
select [BusinessEntityID], [Name]
from [Sales].[Store]

select name, listprice, b.standardcost, (listprice - b.standardcost) as Profit_Margin
from  [Production].[Product] a
inner join  [Production].[ProductCostHistory] b
on a.productid = b.productid
order by Profit_Margin desc




select COUNT(*) as Entities_Without_Emails from
(
select BusinessEntityID as  Entities_Without_Emails from  [Person].[BusinessEntity]
EXCEPT
select BusinessEntityID from [Person].EmailAddress
)TEMPORARY


select Name, ListPrice, StandardCost, (ListPrice - StandardCost) as Profit_Margin from [Production].[Product]
order by Profit_Margin DESC

select * from [Production].[ProductCostHistory] 
select StandardCost from [Production].[Product]




select * from [Sales].[Store]

select * from [Person].[Person]

select [BusinessEntityID],
[FirstName] +' '+ [FirstName] as name
from [Person].[Person]
union ALL
select [BusinessEntityID], [Name]
from [Sales].[Store]