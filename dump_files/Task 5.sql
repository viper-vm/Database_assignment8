use banking_system;
-- show tables;
-- select * from customer;
-- select * from customer_null;
-- describe customer;
-- describe customer_null;
update customer_null set first_name = NULL where customer_id <600000 and customer_id > 400000;

set profiling  = 1;
select count(*) from customer;
select count(*) from customer_null;
select count(first_name) from customer;
select count(first_name) from customer_null;
show profiles;

explain select count(first_name) from customer;
explain select count(first_name) from customer_null;

