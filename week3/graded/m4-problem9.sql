-- Delete the row inserted in modification problem 3.
SET SQL_SAFE_UPDATES = 0;
-- select * from location; 
delete from Location where locname = 'Locker Room' and facNo = 'F104'; 
