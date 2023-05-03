select sum(linetotal) as TotalSalesAmount from  [Sales].[SalesOrderDetail]

select linetotal as SaleTotal from [Sales].[SalesOrderDetail]

select sum(LineTotal)  as TotalSalesAmount, ProductID, ModifiedDate
/*into #practice*/ from[Sales].[SalesOrderDetail]
group by ProductID, ModifiedDate
--having sum(LineTotal) >= 1000000
order by ModifiedDate, TotalSalesAmount DESC

select * from #practice

drop table #practice

