-- 5.	List the order number, order date, customer number, and customer name 
-- (first and last) of orders placed in January 2013 sent to Colorado recipients.

-- use orderentrydb;

select A.OrdNo, A.OrdDate, A.CustNo, B.CustFirstName, B.CustLastName
from ordertbl A inner join Customer B
	on A.CustNo = B.CustNo 
where (OrdDate between "2013-01-01" and "2013-01-31" ) and (OrdState="CO")

-- To solve ambiguous error - add the alias of either or both TABLE1 or TABLE2 to the columns having the 
-- same name. You will notice above, the alias of TABLE1 is A while that of TABLE2 is B.
