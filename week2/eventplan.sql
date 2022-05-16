drop table EventPlan; 
create table EventPlan(
	planNo		char(8)		not null, 
    eventNo		char(8)		not null, 
    workDate	date		not null, 
    notes		varchar(80),
    activity	varchar(20)	not null, 
    empNo		char(10),
    
    constraint  EventPlanPK	primary key(planNo), 
    constraint 	EventRequestFk	foreign key(eventNo) references EventRequest(eventNo), 
    constraint  EmployeeFK		foreign key(empNo)	references Employee(empNo)
    
);
