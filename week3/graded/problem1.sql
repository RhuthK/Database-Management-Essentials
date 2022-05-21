use universitydb; 
-- List the city, state, and zip codes in the customer table. 
-- Your result should not have duplicates. (Hint: The DISTINCT keyword eliminates duplicates.)

-- select * from Customer; 

select distinct city, state, zip from customer; 
