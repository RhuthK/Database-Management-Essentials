use universitydb;
-- 2.	List the customer number, customer name, event number, date held,
--  facility number, facility name, and estimated audience cost per person
--  (EstCost / EstAudience) for events held on 2018, in which the estimated 
--  cost per person is less than $0.2
-- show tables; 

SELECT eventrequest.eventno, eventrequest.dateheld, eventrequest.custno,
 customer.custname, facility.facno, facility.facname, 
 (eventrequest.estcost/eventrequest.estaudience) AS estimated_audience_cost

FROM eventrequest INNER JOIN customer
	ON eventrequest.custno = customer.custno 
INNER JOIN facility 
	ON eventrequest.facno = facility.facno

WHERE eventrequest.dateheld BETWEEN "2018-01-01" AND "2018-12-31"
AND (eventrequest.estcost/eventrequest.estaudience) <0.2;
