-- 6.	List the average balance of customers by city. Include only customers 
-- residing in Washington state (WA).
-- select * from Customer; 
select CustCity, avg(CustBal) as avergaeBal
from Customer 
where CustState="WA"
