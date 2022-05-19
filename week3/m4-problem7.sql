use universityDB; 
-- 7.	List the average number of resources used (NumberFld) by plan number. Only include location
--  number L100. Eliminate plans with less than two event lines containing location number L100.
select 
		avg(NumberFld) as avergeNumberField 
from EventPlanLine 
where LocNo = 'L100' and LineNo > 2
group by Planno ;
