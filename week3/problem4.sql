-- 4.	List the event number, the event date (DateHeld), 
-- and the estimated audience number with approved status 
-- and audience greater than 9000 or with pending status and audience greater than 7000.

select eventno, dateheld, estaudience
from EventRequest
where status = "Approved" and estaudience > 9000 or (status="Pending" and estaudience > 7000)
