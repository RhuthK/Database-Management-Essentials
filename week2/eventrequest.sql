create table EventRequest(
	eventNo		char(8)		not null, 
    dateHeld	date		not null, 
    dateReq		date		not null, 
    custNo		char(8)		not null, 
    facNo		char(8)		not null, 
    dateAuth	date,
    status		char(20)	not null, 
    estCost		decimal(10,2)   not null, 
    estAudience	integer		not null, 
    budNo		char(20),
    
    constraint	EventRequestPK	primary key(eventNo), 
    constraint	CustomerFK		foreign key(custNo) references Customer(custNo), 
    constraint 	FacilityFKK		foreign key(facNo) references Facility(facNo), 
    check (status in ('Pending', 'Approved', 'Denied'))
    
);
