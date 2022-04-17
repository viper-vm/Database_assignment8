use bank_db;

select * from customer_details_table;
select count(*) from customer_details_table;

SELECT * FROM customer_details_table
WHERE first_name LIKE 'Mar%' OR last_name LIKE 'Sta%' ;

SELECT * FROM customer_details_table
WHERE first_name LIKE 'Mar%' 
UNION
SELECT * FROM customer_details_table WHERE last_name LIKE 'Sta%';

-- check no of scans

EXPLAIN SELECT * FROM customer_details_table
WHERE first_name LIKE 'Mar%' OR last_name LIKE 'Sta%' ;

EXPLAIN SELECT * FROM customer_details_table
WHERE first_name LIKE 'Mar%' 
UNION
SELECT * FROM customer_details_table WHERE last_name LIKE 'Sta%';
