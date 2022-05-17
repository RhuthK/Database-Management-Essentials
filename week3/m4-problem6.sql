-- 6.	List the average number of resources used
--  (NumberFld) by plan number. Include only location number L100.
select AVG(NumberFld) as averageNumberFld
from EventPlanLine 
where LocNo = 'L100'
group by PlanNo
