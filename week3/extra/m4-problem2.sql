-- 2.	List the customer number, name (first and last), order number, order date, employee number, 
-- employee name (first and last), product number, product name, and order cost (OrdLine.Qty * ProdPrice)
-- for products ordered on January 23, 2017, in which the order cost exceeds $150.

select Customer.CustNo, Customer.CustFirstName, Customer.CustLastName, 
OrderTbl.OrdNo, OrderTbl.OrdDate, Employee.EmpNo, Employee.EmpFirstName, Employee.EmpLastName, 
Product.ProdNo, Product.ProdName, (Product.ProdPrice * OrdLine.Qty) as order_cost
from Customer, OrderTbl, OrdLine, Product, Employee 
where OrderTbl.CustNo = Customer.CustNo 
and OrderTbl.EmpNo = Employee.EmpNo
and OrderTbl.OrdNo = OrdLine.OrdNo 
and OrdLine.ProdNo = Product.ProdNo
and OrderTbl.OrdDate = '2017-01-23'
and (Product.ProdPrice * OrdLine.Qty) > 150; 

