-- 7.	Delete the new row added to the Customer table. 
SET SQL_SAFE_UPDATES = 0;
delete from customer 
where custname = 'swimming' ;
-- select * from customer; 
