-- 3.	List all columns of the EventRequest 
-- table for events costing more than $4000.  
-- Order the result by the event date (DateHeld).

select * from EventRequest
where estcost > 4000
order by dateheld; 
