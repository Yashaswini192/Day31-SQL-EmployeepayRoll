create database payroll_service;
use payroll_service;
create table employee_payroll(
								Id int auto_increment ,
                                name varchar(30),
                                salary int ,
                                start_date int,
                                primary key(Id)
                                )
select * from employee_payroll;
