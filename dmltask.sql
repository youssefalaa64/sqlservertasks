select * from task_schema.Employees

select p.name , p.salary
from task_schema.Employees as p


select distinct deptname
from task_schema.Employees


select top 5 *
from task_schema.Employees

select * 
from task_schema.Employees
order by salary desc

select * from task_schema.Employees
order by id 
offset 2 rows 
fetch next 10 rows only


select avg(salary) avgsalary
from task_schema.Employees

select max(salary) maxsalary , min(salary) minsalary
from task_schema.Employees


select top 3 salary
from task_schema.Employees

select * 
from task_schema.Employees
order by name asc

select *
from task_schema.Employees
order by salary desc
offset 2 rows
fetch next 5 rows only

select sum(salary) as sumsalary
from task_schema.Employees

select *
from task_schema.Employees
where salary between 40000 and 60000
order by salary asc