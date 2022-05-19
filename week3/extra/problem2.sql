-- 2.	List the customer number, the name (first and last), and the balance of 
-- customers who reside in Colorado (CustState is CO).
select CustFirstName, CustLastName, Custbal from Customer 
where CustState="CO"; 
