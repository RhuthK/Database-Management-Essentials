-- 2.	List the customer number, the name, the phone number, and the city of customers who reside in Colorado (State is CO).
select custNo, custName, phone, city 
from Customer
where state='CO'; 
