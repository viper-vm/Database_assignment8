use banking_system;
select * from branch_table_tiny;
describe branch_table;
alter table branch_table_tiny MODIFY manager_id Tinyint;
describe branch_table_tiny;

EXPLAIN select * from branch_table;
EXPLAIN select * from branch_table_tiny;