select * from [Production].[Location]
UNION
select * from [Production].[Location]

select * from [Production].[Location]
UNION ALL
select * from [Production].[Location]

select * from [Person].[BusinessEntity]
select * from [Person].[BusinessEntityAddress]

select BusinessEntityID from [Person].[BusinessEntity]
INTERSECT
select BusinessEntityID from [Person].[BusinessEntityAddress]

select BusinessEntityID from [Person].[BusinessEntity]
EXCEPT
select BusinessEntityID from [Person].[BusinessEntityAddress]

select BusinessEntityID from [Person].[BusinessEntityAddress]
EXCEPT
select BusinessEntityID from [Person].[BusinessEntity]

select * from [Production].[Location]

select * into #test from [Production].[Location]

select * from #test

drop table #test

begin TRANSACTION
update #test
set name = 'Tool Crib'
where LocationID = 1

select * from #test
where LocationID = 1
ROLLBACK TRAN

insert #test
(name, costrate, availability, modifieddate)
values ('test', 78, 345,'2022-11-20')

delete from #test
where name = 'tool cribs'

select * from [Production].[Location]
where name like 'paint%'

select * from [Production].[Location]
where name like '%shop'

select * from [Production].[Location]
where name != 'paint shop'

select * from [Production].[Location]
where name like 'paint%'

