-- 8.	Delete the new rows added to the Customer and Employee tables.
-- select * from Customer; 
delete from Customer where CustFirstName = 'Kat'; 
-- select * from Customer; 
-- select * from Employee; 
delete from Employee where EmpFirstName= 'Bob' and EmpLastName = 'Chuck'; 
-- select * from Employee; 
