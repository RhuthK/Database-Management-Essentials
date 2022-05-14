create table Employee(
    empNo		    char(10)		not null, 
    empName		    varchar(20)		not null, 
    department	            varchar(20)		not null, 
    email	 	    varchar(10)		not null, 
    phone		    varchar(20)		not null, 
    
    constraint EmployeePK primary key (empNo)

);
