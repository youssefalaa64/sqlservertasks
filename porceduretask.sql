create table emp(
Id int,
Firstname varchar(10),
LastName varchar(10),
salary decimal,
)


go
create procedure GetAllEmployees
as 
begin
select * from emp
end
go

execute GetAllEmployees

go

create procedure GetHighSalaryEmployees (@minsalary as int)
as
begin
select * from emp
where salary > @minsalary
end
go

execute GetHighSalaryEmployees 200

go

create procedure AddEmployee (@FirstName as varchar(10), @LastName as varchar(10), @salary as int)
as 
begin
insert into emp(Firstname, LastName, salary) values(@FirstName,@LastName,@salary)
end
go

execute AddEmployee ahmed , alaa, 2000
execute AddEmployee youssef , alaa, 2000
execute AddEmployee ahmed , alaa, 20002000
execute AddEmployee khaled , alaa, 2000
execute AddEmployee ehab , alaa, 2000

create table EmployeeLogg(
id int identity ,
EmployeeId int,
Action varchar(100),
ActionDate Datetime2 default getdate(),
)

go
create trigger trigeroo
on emp
after insert
as
begin
insert into EmployeeLogg(EmployeeId,Action,ActionDate)
select id, 'new employee added', GETDATE()
from inserted
end
go



select * from EmployeeLogg