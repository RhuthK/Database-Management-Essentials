-- 1.	List the order number, order date, customer number, customer name 
-- (first and last), employee number, and employee name (first and last) of January 2017 orders 
-- placed by Colorado customers.

use orderentrydb; 
show tables; 

select OrderTbl.ordNo, OrderTbl.ordDate, OrderTbl.OrdState, Customer.custNo, 
 Customer.custFirstName, Customer.custLastname, Employee.EmpNo,  Employee.EmpFirstName, 
 Employee.EmpLastName
from Customer, OrderTbl, Employee
where Customer.CustNo = OrderTbl.CustNo 
and OrderTbl.EmpNo = Employee.EmpNo 
and Customer.CustState = 'CO' 
and date_format(OrderTbl.OrdDate,'%Y') = '2017' ; 
