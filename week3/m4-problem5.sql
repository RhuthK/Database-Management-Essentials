select eventNo, dateheld, Customer.custno, Customer.custName 
from EventRequest inner join Customer
	on  EventRequest.custno = Customer.custno 
where (dateheld between '2018-01-01' and '2013-01-31') and (city='Boulder');
