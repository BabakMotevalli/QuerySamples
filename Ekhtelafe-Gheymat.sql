select 


GETDATE() as DelamMikhadDate,
product.[Name],
product.Price as RealPrice,
invoiceItem.UnitPrice,
invoice.InvoiceDate,
invoice.InvoiceNumber

from 

InvoiceItem invoiceItem 
join Product product on invoiceItem.ProductId = product.id
join Invoice invoice on invoice.Id = InvoiceItem.InvoiceId


where 
product.Price != invoiceItem.UnitPrice -- and invoice.InvoiceDate < '2023-07-01'




select 

SUM(prod.Price) as SumOfRealPrice,
SUM(invItem.UnitPrice) as SumOfPrice,
SUM(prod.Price) - SUM(invItem.UnitPrice) as Diff,
Count(*) as Cnt


from 
InvoiceItem invItem
join Product prod on invItem.ProductId = prod.Id



where 
invItem.UnitPrice != prod.Price
