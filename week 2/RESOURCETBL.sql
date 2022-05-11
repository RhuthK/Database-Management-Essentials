CREATE TABLE RESOURCETBL(
    RESNO		  VARCHAR(8)		NOT NULL, 
    RESNAME	  VARCHAR(20)		NOT NULL, 
    RATE 		  DECIMAL(6,2)	NOT NULL,
    
    CHECK (RATE > 0),
    CONSTRAINT RESOURCETBL_PK PRIMARY KEY(RESNO)
);
