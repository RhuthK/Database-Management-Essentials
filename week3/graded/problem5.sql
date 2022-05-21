-- 5.	List the location number and name of locations that are part of the “Basketball arena”. 
--  Your WHERE clause should not have a condition involving the facility number compared to 
--  a constant (“F101”). Instead, you should use a condition on the FacName column for the
--  value of “Basketball arena”.

-- show tables; 
-- select * from location; 
-- select * from facility; 

select locNo, locName 
from location  inner join Facility  
on location.facNo = Facility.facNo
where Facility.facName = "Basketball arena"; 
