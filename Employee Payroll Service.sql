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
alter table info change column Id Id int auto_increment;
insert into employee_payroll(name,salary,start_date) values("Bill",10000,01012018);
select salary from employee_payroll where name ='Bill';
insert into employee_payroll(name,salary,start_date) values("Rose",12000,05062018);
