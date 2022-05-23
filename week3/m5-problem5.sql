-- 5.	Increase the rate by 10 percent of resource names equal to nurse. 
-- In MySQL, you need to place the UPDATE statement between two SET statements.

SET SQL_SAFE_UPDATES = 0;
update resourcetbl
set rate = rate + (rate * 0.10)
where resname = 'nurse'; 
select * from resourcetbl ;
