create schema task_schema
go

create table task_schema.Employees (
id int primary key,
name varchar,
salary decimal,
)

alter table task_schema.Employees 
add Department varchar(50)


alter table task_schema.Employees 
drop column salary


exec sp_rename 'task_schema.Employees.Department' , 'deptname' , 'column'


create table task_schema.Projects (
ProjectID int ,
ProjectName varchar,
)

alter table  task_schema.Projects 
alter column ProjectID int not null

alter table  task_schema.Projects 
add constraint pk primary key (ProjectID)

alter table task_schema.Projects 
add constraint fk 
foreign key(ProjectID)
references task_schema.Employees(id)

alter table task_schema.Projects
drop constraint fk 

alter table task_schema.Employees
add constraint unq unique (name)

create table task_schema.Customers(
CustomerID int,
FirstName varchar,
LastName varchar,
Email varchar,
[Status] varchar,
)

alter table task_schema.Customers
add constraint unq2 unique (FirstName, LastName)

alter table Employees
add constraint dft 
default 'Active' for Status; 

create table task_schema.orderss (
OrderID int,
CustomerID int,
OrderDate datetime2,
TotalAmount decimal,
)

alter table task_schema.orderss
add constraint chck check(TotalAmount > 0)

go
create schema salles
go

alter schema salles
transfer task_schema.orderss

exec sp_rename 'salles.orderss' , 'salesorders'








