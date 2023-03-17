create database payroll_service;
use payroll_service;
create table employee_payroll(
								Id int unsigned not null auto_increment,
                                name varchar(30) not null,
                                salary int not null,
                                start_date date not null,
                                primary key(id)
                                );
select * from employee_payroll;	
insert into employee_payroll(Id,name,salary,start_date) values(1,"Chitti",9000,19052019);
alter table employee_payroll change column Id Id int auto_increment;
insert into employee_payroll(name,salary,start_date) values("Bill",10000,01012018);
select salary from employee_payroll where name ='Bill';
insert into employee_payroll(name,salary,start_date) values("Rose",12000,05062018);
select * from employee_payroll where start_date between cast('01012018' as date) and date(now());
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
alter table employee_payroll add Address varchar(100);
alter table employee_payroll alter  Address set default 'TBO';
update employee_payroll set name ='Terisa' where id='1';
insert into employee_payroll(name,salary,start_date) values('Mark',1000000.00,20180101);
alter table employee_payroll add basic_pay int not null;
alter table employee_payroll add deductions Double not null after basic_pay;
alter table employee_payroll add Taxable_pay Double not null after deductions;
alter table employee_payroll add Tax Double not null after Taxable_pay;
alter table employee_payroll add net_pay double not null after tax;
update employee_payroll set basic_pay = 3000000.00 where name ='Terisa';
select * from employee_payroll where name = 'Terisa';

create table company(
					c_Id int not null primary key,
                    company_name varchar(20)
                    );
create table employee(
					Emp_Id int not null primary key,
                    Emp_name varchar(20),
                    phonenumber int ,
                    address varchar(50),
                    gender char(10),
                    c_id int,
                    foreign key(c_Id) references company(c_Id),
                    dept_name varchar(20),
                    foreign key(dept_name) references department(dept_name)
                    );
                    
create table payroll( Salary Double not null,
						Emp_Id int,
					foreign key(Emp_Id) references employee(Emp_id));
create table department(
						dept_name varchar(20) not null);
alter table department add dept_Id int not null unique key;
create table Employee_department( Emp_Id int,
							foreign key (Emp_Id) references employee(Emp_Id),
                            dept_Id int,
                            foreign key(dept_Id) references department(dept_Id)
                            );