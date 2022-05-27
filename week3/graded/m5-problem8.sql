use universitydb; 
-- Change the location name of “Door” to “Gate” for the row inserted in modification problem 2. In MySQL, you need to place -- the
-- UPDATE statement between two SET statements.
-- SET SQL_SAFE_UPDATES = 0;
-- UPDATE statement
-- SET SQL_SAFE_UPDATES = 1;
SET SQL_SAFE_UPDATES = 0;
update Location 
set locname = 'Gate'
where locname = 'Door' ;
SET SQL_SAFE_UPDATES = 1;
