use universitydb; 
-- 1.	For event requests, list the event number, event date (eventrequest.dateheld), 
-- and count of the event plans.  Only include event requests in the result if the event 
-- request has more than one related event plan with a work date in December 2018.
select * from eventrequest; 

select EventRequest.eventNo, EventRequest.dateHeld, count(EventPlan.eventno)
from EventRequest, EventPlan
where EventRequest.eventno = EventPlan.eventno
and EventPlan.workdate between '2018-12-01' and '2018-12-31'
group by EventRequest.eventno, EventRequest.dateHeld 
having count(EventPlan.eventno) > 1;
