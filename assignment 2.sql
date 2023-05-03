select a.Title, a.FirstName, a.LastName, b.EmailAddress, c.PhoneNumber
from [Person].[Person] a
inner join [Person].[EmailAddress] b
on a.BusinessEntityID = b.BusinessEntityID
INNER join [Person].[PersonPhone] c
on a.BusinessEntityID = c.BusinessEntityID



select top 10 d.*,
case when d.PhoneNumberTypeID = '1' then 'CellPhoneNumber'
     when d.PhoneNumberTypeID = '2' then 'LandLine'
     when d.PhoneNumberTypeID = '3' then 'FaxNumber'
     end as PhoneSegment 
from [Person].[PersonPhone] d

select top 1 * from [Person].[Person] a
select top 1 * from [Person].[EmailAddress] b
select top 1 * from [Person].[PersonPhone] c


select a.name as DepartmentName, c.jobtitle, c.NationalIDNumber, d.FirstName, d.LastName
from [HumanResources].[Department] a
inner join [HumanResources].[EmployeeDepartmentHistory] b
on a.DepartmentID = b.DepartmentID
inner join [HumanResources].[Employee] c
on b.BusinessEntityID = c.BusinessEntityID
inner join [Person].[Person] d
on b.BusinessEntityID = d.BusinessEntityID


