-- 2.	List the plan number, event number, work date, and activity of event plans meeting 
-- the following two conditions: (1) the work date is in December 2018 and (2) 
-- the event is held in the “Basketball arena”.  Your query must not use the facility
--  number (“F101”) of the basketball arena in the WHERE clause. Instead, you should 
--  use a condition on the FacName column for the value of “Basketball arena”.

select EventPlan.planno, EventPlan.eventno, EventPlan.workdate, EventPlan.activity 
from EventPlan, EventRequest, Facility  
where EventPlan.eventno = EventRequest.eventno
and EventRequest.facno = Facility.facno
and facility.facname = 'Basketball arena'
and EventPlan.workdate between '2018-12-01' and '2018-12-31' ;
