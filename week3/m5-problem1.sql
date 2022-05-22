show databases;
use universitydb;
-- 1.	List the event number, date held, customer number, customer name,
--  facility number, and facility name of 2018 events placed by Boulder customers.
-- Tables needed : Customer, Eventrequest, Facility 
 
select eventno, dateheld, customer.custNo, customer.custName, 
facility.facno, facility.facname 
from customer, facility, eventrequest
where eventrequest.custno = Customer.custno 
and eventrequest.facno = facility.facno 
and date_format(dateheld,'%Y') = 2018 
and customer.city='Boulder';
