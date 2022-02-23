/* select * from */
Select * 
from `employee-db`.Employeeinfo;

/* where clause */
Select * from `employee-db`.Employeeinfo
where empfname = 'Ananya';

/* group by */
select * 
from `employee-db`.employeeinfo
group by department;

/* group-by and order-by */
select department, count(empid) as empdeptcount
from `employee-db`.employeeinfo
group by department
order by empdeptcount asc;

/* count, distinct, like, not like, between */
select count(*) from `employee-db`.`emp-new`;
select distinct(empfname) from `employee-db`.Employeeinfo;
select * from `employee-db`.`emp-new` where empname not like 'S%';

/* No of Emp working in a department */
select dept department, count(*) as noOfEmps
from `employee-db`.`emp-new` 
group by department
order by noOfEmps desc;

/* duplicate records */
Select empfname, emplname, department, count(*) as noOfEmps
from `employee-db`.Employeeinfo
group by empfname, emplname, department
having noOfEmps > 1;

/* max/highest salary */
select max(salary)
from `employee-db`.`emp-new`;

select *
from `employee-db`.`emp-new` 
order by salary desc
limit 1;

select *
from `employee-db`.`emp-new` e1
where 1 >= (select count(distinct(salary)) from `employee-db`.`emp-new` e2 where e1.salary <= e2.salary) 
order by e1.salary desc;

/* top 3 salaries */
select empid, salary
from `employee-db`.`emp-new` 
order by salary desc
limit 3;

select empid, salary
from `employee-db`.`emp-new` e1 
where 3 >= (select count(distinct(salary)) from `employee-db`.`emp-new` e2 
			where e1.salary <= e2.salary)
order by e1.salary desc;

/* 2nd highest salary */
select *
from `employee-db`.`emp-new`
where salary not in (select max(salary) from `employee-db`.`emp-new`)
order by salary desc
limit 1;

select max(salary) 
from `employee-db`.`emp-new`
where salary not in (select max(salary) from `employee-db`.`emp-new`)
order by salary desc;
