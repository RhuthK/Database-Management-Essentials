create table ResourceTbl(
	resNo		char(8)		not null, 
    resName		varchar(20)		not null, 
    rate		decimal(10,2)	not null,
    
    constraint 	ResourceTblPK	primary key(resNo)
);
