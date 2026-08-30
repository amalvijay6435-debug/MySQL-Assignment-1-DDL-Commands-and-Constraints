create database employee;
use employee;
create table employees(
  employee_id int primary key,
    employee_name varchar(50),
    gender enum('M','F'),
    age int,
    hire_date date,
    designation varchar(100),
    department_id int,
    location_id int,
    salary decimal(10,2)
);
select * from employees;
delete from employees where employee_id =1;
create table departments(
department_name varchar(100),
department_id int
);
select *from departments;

create table location(
location varchar(30),
location_id int primary key
);
select *from location;

alter table employees
add column email varchar(30);
alter table employees
modify column designation varchar(155);
alter table employees
drop column age;
alter table employees
rename column hire_date to date_of_joining;
rename table departments to department_info;
rename table location to locations;
truncate table employees;
drop table if exists employees;
drop database employee;

create database employee;
use employee;
create table employees(
  employee_id int auto_increment primary key,
    employee_name varchar(50),
    gender enum('M','F'),
    age int,
    hire_date date,
    designation varchar(100),
    department_id int,
    location_id int,
    salary decimal(10,2),
CONSTRAINT fk_department
        FOREIGN KEY (department_id) REFERENCES departments(department_id),
    CONSTRAINT fk_location
        FOREIGN KEY (location_id) REFERENCES locations(location_id));
insert into employees 
values (1,'Arun','M',20,'2025-1-1','Manager',100,111,45000.00);
 insert into employees 
values(2,'PriyaNair','F',22,'2025-2-5','Finance',101,112,48000.00);
insert into employees 
values(3,'John','M',24,'2025-3-2','Accountant',103,113,50000.00);
insert into employees 
values(4,'Ahmed','M',25,'2025-3-12','Sales',104,114,60000.00);

create table departments(
department_name varchar(100),
department_id int unique
);
drop table departments;

create table location(
location varchar(30) not null unique,
location_id int auto_increment primary key
);

select * from departments;
create table departments(
department_name varchar(100) null,
department_id int not null unique
);

alter table employees
add constraint employee_id UNIQUE (employee_id);

alter table employees
modify employee_name varchar(50) not null;

alter table employees
add gender varchar(1);
alter table employees
add constraint gender check (gender in ('M', 'F'));

alter table employees
add age int;
alter table employees
add constraint age check (age >= 18);
select * from employees;

drop table employees;
create table employees(
  employee_id int auto_increment primary key,
    employee_name varchar(50),
    gender enum('M','F'),
    age int,
    hire_date date,
    designation varchar(100),
    department_id int,
    location_id int,
    salary decimal(10,2));




