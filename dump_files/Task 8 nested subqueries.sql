

-- que 8
-- part 1
-- find name of employee who are assigned to a particular customer

-- run this 
explain select employee_name from banking_system.employee_details_table
where exists 
(select * from banking_system.customer_details_table 
where customer_details_table.employee_id = employee_details_table.employee_id
 and customer_details_table.customer_id = "111800");



-- optimized
create table t4 as select employee_id 
from banking_system.customer_details_table 
where customer_details_table.customer_id between '111000' and '311000';
explain select employee_name from employee_details_table,t4
where t4.employee_id = employee_details_table.employee_id 
and t4.employee_id = '111800'; 



explain select employee_name from banking_system.employee_details_table 
inner join banking_system.customer_details_table 
on employee_details_table.employee_id = customer_details_table.employee_id 
and customer_details_table.customer_id = '10005'
and customer_details_table.customer_id between '10001' and '20001';

set profiling = 1;
show profiles;

-- part 2
select account_number from banking_system.depositor 
where exists (select * from banking_system.customer 
where customer.customer_id =depositor.customer_id 
and customer.customer_id = "137"
and customer.customer_id between '100' and '498');

-- optimized 
select account_number from banking_system.depositor
inner join banking_system.customer on depositor.customer_id = customer.customer_id
and customer.customer_id = '137';

create table t3 as select customer_id 
from banking_system.customer 
where customer.customer_id = '137';
select account_number from depositor,t3
where t3.customer_id = depositor.customer_id; 


explain select employee_name from banking_system.employee_details_table inner join banking_system.customer_details_table 
on employee_details_table.manager_id = customer_details_table.employee_id and customer_details_table.customer_id = '111800';


