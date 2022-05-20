-- 7.	List the average balance and number of customers by city. 
-- Only include customers residing in Washington State (WA).  
-- Eliminate cities in the result with less than two customers.

-- select * from Customer;

select CustNo,CustState,CustCity, avg(CustBal) as CustBalAvg
from Customer
where CustState="WA" 
group by CustCity
having CustBalAvg > 0 ; 
