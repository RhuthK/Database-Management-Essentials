-- 3.	List the event number, event date, status, and estimated cost of events where there is an event
--  plan managed by Mary Manager and the event is held in the basketball arena in the period October 1 to 
--  December 31, 2018.  Your query must not use the facility number (“F101”) of the basketball arena or the 
--  employee number (“E101”) of “Mary Manager” in the WHERE clause. Thus, the WHERE clause should not have 
--  conditions involving the facility number or employee number compared to constant values.

select EventRequest.eventno, EventRequest.dateheld, EventRequest.status, EventRequest.estcost
from EventRequest, EventPlan, Employee, Facility
where EventRequest.eventno = EventPlan.eventno 
and EventPlan.empno = Employee.empno 
and EventRequest.facno = Facility.facno
and EventPlan.workdate between '2018-10-01' and '2018-12-31' 
and Employee.empname = 'Mary Manager' 
and Facility.facname = 'Basketball arena';
