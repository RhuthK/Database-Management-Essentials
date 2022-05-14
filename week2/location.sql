create table Location(
	locNo		char(8)			not null,
    facNo		char(8)			not null, 
    locName		varchar(20)		not null, 
    
    constraint LocationPK 	primary key(locNo),
    constraint FacilityFK	foreign key(facNo) references Facility(facNo)
);
