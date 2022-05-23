-- 3.	List the order number and total amount for orders placed on January 23, 2017.
--  The total amount of an order is the sum of the quantity times the product price of each product on the order.

select OrderTbl.OrdNo, sum(OrdLine.Qty * Product.ProdPrice) as total_amount 
from OrderTbl, OrdLine, Product 
where OrderTbl.OrdNo = OrdLine.OrdNo 
and OrdLine.ProdNo = Product.ProdNo
and OrderTbl.OrdDate = '2017-01-23' ;
