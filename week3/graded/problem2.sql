-- List the name, department, phone number, and email address of employees 
-- select * from employee; 
select empName, department, phone, email from employee 
where phone like "3-%";
