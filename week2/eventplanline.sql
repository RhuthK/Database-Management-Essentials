create table EventPlanLine(
	planNo 		char(8)  	not null, 
    lineNo		char(8)		not null, 
    timeStart 	time 		not null, 
    timeEnd   	time		not null, 
    numberFld	integer		not null, 
    locNo		char(8)		not null, 
    resNo		char(8)		not null, 
    
	constraint EventPlanLinePK primary key(planNo, lineNo), 
    constraint EventPlanFK	foreign key(planNo) references EventPlan(planNo), 
    constraint LocationFK	foreign key(locNo) references Location(locNo), 
    constraint ResourceTblFK foreign key(resNo) references ResourceTbl(resNo)
);
