-- 3.	List the customer number, customer name, and total estimated costs for Approved events. 
-- The total amount of events is the sum of the estimated cost for each event. 
-- Group the results by customer number and customer name.

select A.custno, A.custname, sum(B.estcost) as total_estimated_cost
from customer  A inner join eventrequest B
	on A.custno = B.custno
where B.status = 'Approved' 
group by B.custno and A.custname; 
