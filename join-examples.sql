/*SQL Join */

/* natural join */
select *
from `employee-db`.`emp-new` natural join `employee-db`.`dept-new`;

select empid, empname, d.dept_id, d.dept_name, salary, doj
from `employee-db`.`emp-new` e join `employee-db`.`dept-new` d
on (e.dept = d.dept_id);

/*inner join*/
select *
from `employee-db`.`emp-new` as e, `employee-db`.`dept-new` as d
where e.dept = d.dept_id;

select empid, empname, d.dept_id, d.dept_name, salary, doj
from `employee-db`.`emp-new` e inner join `employee-db`.`dept-new` d
on (e.dept = d.dept_id);

/* left outer join */
select *
from `employee-db`.`emp-new` e left outer join `employee-db`.`dept-new` d
on (e.dept = d.dept_id);

/* right outer join */
select *
from `employee-db`.`emp-new` e right outer join `employee-db`.`dept-new` d
on (e.dept = d.dept_id);

/* full outer join */
/* full outer join - does not work in mysql, instead use UNION
select *
from `employee-db`.`emp-new` e full outer join `employee-db`.`dept-new` d
on (e.dept = d.dept_id); */
select * from `employee-db`.`emp-new` e left outer join `employee-db`.`dept-new` d on (e.dept = d.dept_id)
union
select * from `employee-db`.`emp-new` e right outer join `employee-db`.`dept-new` d on (e.dept = d.dept_id);