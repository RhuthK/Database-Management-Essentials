-- 4.	List the customer number, the name (first and last), the city, and 
-- the balance of customers who reside in Denver with a balance greater 
-- than $150 or who reside in Seattle with a balance greater than $300.

select CustNo, CustFirstName, CustLastName, CustCity, CustBal 
from Customer
where (CustCity="Denver" and CustBal > 150) or (CustCity="Seattle" and CustBal > 300)
