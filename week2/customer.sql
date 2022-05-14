create table Customer(
	custNo				char(8)			not null, 
    custName			varchar(8)		not null, 
    address				varchar(8)		not null, 
    internal 			char(1)			not null, 
    contact				varchar(20)		not null, 
    phone				varchar(20)		not null, 
    city				varchar(20)		not null, 
    state				char(2)			not null,
	zip 				varchar(10)		not null, 
    
    constraint CustomerPK primary key (custNo)
);
