-- 4.	List the order number, order date, customer name (first and last), and total amount for 
-- orders placed on January 23, 2017. The total amount of an order is the sum of the quantity times 
-- the product price of each product on the order.

select OrderTbl.OrdNo, OrderTbl.OrdDate, Customer.CustFirstName, Customer.CustLastName,
 sum(Product.ProdPrice * OrdLine.Qty) as total_amount_orders
 from OrderTbl, Customer, OrdLine, Product
 where OrderTbl.OrdNo = OrdLine.OrdNo
 and OrdLine.ProdNo = Product.ProdNo
 and OrderTbl.CustNo = Customer.CustNo
 and OrderTbl.OrdDate = '2017-01-23'
 group by OrderTbl.OrdNo, OrderTbl.OrdDate, Customer.CustFirstName, Customer.CustLastName;
