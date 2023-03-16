create database payroll_service;
use payroll_service;
create table employee_payroll(
								Id int auto_increment,
                                name varchar(30),
                                salary int ,
                                start_date int,
								primary key(Id)
                                );
select * from employee_payroll;
insert into employee_payroll(Id,name,salary,start_date) values(1,"Chitti",9000,19052019);
