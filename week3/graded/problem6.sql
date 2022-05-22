-- 6.	For each event plan, list the plan number, count of the event plan lines, and sum of 
-- the number of resources assigned.  For example, plan number “P100” has 4 lines and 7 resources 
-- assigned. You only need to consider event plans that have at least one line.
use universitydb; 
show tables;

select planno, count(planno) as count_of_plan, 
sum(numberfld) as sum_of_resources
from eventplanline
group by planno; 
 
