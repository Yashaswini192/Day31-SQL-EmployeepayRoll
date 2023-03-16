create database payroll_service;
use payroll_service;
create table employee_payroll(
								Id int primary key,
                                name varchar(30),
                                salary int ,
                                start_date int
                                );
select * from employee_payroll;	
insert into employee_payroll(Id,name,salary,start_date) values(1,"Chitti",9000,19052019);
alter table employee_payroll change column Id Id int auto_increment;
insert into employee_payroll(name,salary,start_date) values("Bill",10000,01012018);
select salary from employee_payroll where name ='Bill';
insert into employee_payroll(name,salary,start_date) values("Rose",12000,05062018);
select salary from employee_payroll where start_date between cast('01012018' as date) and date(now());
alter table employee_payroll add Gender varchar(15);
update employee_payroll set Gender='M' where name ='Bill';
update employee_payroll set Gender='F' where name ='Chitti';
update employee_payroll set Gender='F' where name ='Rose';
select sum(salary) from employee_payroll where Gender='F' group by gender;
select avg(salary) from employee_payroll where Gender='F' group by gender;
select min(salary) from employee_payroll where Gender='F' group by gender;
select count(salary) from employee_payroll where Gender='F' group by gender;
select max(salary) from employee_payroll where Gender='F' group by gender;
select sum(salary) from employee_payroll where Gender='M' group by gender;
select avg(salary) from employee_payroll where Gender='M' group by gender;
select min(salary) from employee_payroll where Gender='M' group by gender;
select max(salary) from employee_payroll where Gender='M' group by gender;
select count(salary) from employee_payroll where Gender='M' group by gender;
alter table employee_payroll add EmpPhoneNumber int(30);
alter table employee_payroll add Department varchar(30) not null;
alter table employee_payroll add Address varchar(100) default 'Chennai';
