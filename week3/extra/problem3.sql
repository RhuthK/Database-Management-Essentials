-- 3.	List all columns of the Product table for products costing more 
-- than $50.  Order the result by product manufacturer (ProdMfg) and product name.
select * from Product 
where ProdPrice > 50
order by ProdMfg; 
