-- List the event requests with a status of “Approved” or “Denied” and an authorized date
-- in July 2018. Include the event number, authorization date, and status in the output.
-- (Hint: see the examples in Module 4 for date constants in Oracle and MySQL.)
-- select * from eventrequest; 
select * from eventrequest 
where status in ('Approved', 'Denied') and date_format(dateAuth,'%M') = '07' and  
date_format(dateAuth,'%Y')='2018'; 
