use universitydb; 
-- 3. List the plan number, line number, resource name, number of resources (eventplanline.number), 
-- location name, time start, and time end where the event is held at the basketball arena, the event 
-- plan has activity of activity of “Operation”, and the event plan has a work date in the period 
-- October 1 to December 31, 2018.  Your query must not use the facility number (“F101”) of the basketball arena
-- in the WHERE clause. Instead, you should use a condition on the FacName column for the value of 
-- “Basketball arena”.

select EventPlanLine.PlanNo, EventPlanLine.LineNo, ResourceTbl.resname, EventPlanLine.Numberfld,
Location.locname, EventPlanLine.timestart, EventPlanLine.timeend
from EventPlanLine, ResourceTbl, Location, Facility, EventPlan
where Eventplanline.planno = EventPlan.planno
and EventPlanLine.locno = Location.locno 
and Location.facno = Facility.facno 
and Facility.facname = 'Basketball arena' 
and EventPlan.activity = 'Operation' 
and EventPlan.workdate between '2018-10-01' and '2018-12-31' ; 
