-- 3.	List all columns of the resource table with a rate between $10 and $20. 
-- Sort the result by rate.
select * from resourcetbl 
where 10 < rate < 20 
order by rate; 
