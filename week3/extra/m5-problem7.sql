-- 7.	Increase the price by 10 percent of products containing the words Ink Jet.
-- In MySQL, you need to place the UPDATE statement between two SET statements.
SET SQL_SAFE_UPDATES = 0;
UPDATE Product 
set ProdPrice = ProdPrice * 1.1
where ProdName like '%Ink Jet%';
SET SQL_SAFE_UPDATES = 1; 

