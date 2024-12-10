delete from candidates
insert into candidates values(10,'junior',10000);
insert into candidates values(40,'junior',10000);
insert into candidates values(20,'senior',15000);
insert into candidates values(30,'senior',30000);
insert into candidates values(50,'senior',15000);


with running_cte as (
select *, SUM(salary) over(partition by positions order by salary, id) cum_sum
from candidates
)
, senior_cte as (
select COUNT(*) as seniors, SUM(salary) as senior_salary
from running_cte
where positions = 'senior' and cum_sum <= 50000
)
,junior_cte as (
select COUNT(*) as juniors, SUM(salary) as junior_salary
from running_cte
where positions = 'junior' and cum_sum <= 50000 -  (select senior_salary from senior_cte)
)
select juniors, seniors
from senior_cte, junior_cte

select * from candidates







-- Test case 1:
delete from candidates
insert into candidates values(1,'junior',5000);
insert into candidates values(2,'junior',7000);
insert into candidates values(3,'junior',7000);
insert into candidates values(4,'senior',10000);
insert into candidates values(5,'senior',30000);
insert into candidates values(6,'senior',20000);


-- Test case 2:
senior_cte as (
select COUNT(*) as seniors, coalesce(SUM(salary),0) as senior_salary
from running_cte

delete from candidates
insert into candidates values(20,'junior',10000);
insert into candidates values(30,'senior',15000);
insert into candidates values(40,'senior',30000);


-- Test case 3:
delete from candidates
insert into candidates values(1,'junior',15000);
insert into candidates values(2,'junior',15000);
insert into candidates values(3,'junior',20000);
insert into candidates values(4,'senior',60000);

-- Null handling

senior_cte as (
select COUNT(*) as seniors, coalesce(SUM(salary),0) as senior_salary
from running_cte


-- Test case 4 :
delete from candidates
insert into candidates values(10,'junior',10000);
insert into candidates values(40,'junior',10000);
insert into candidates values(20,'senior',15000);
insert into candidates values(30,'senior',30000);
insert into candidates values(50,'senior',15000);