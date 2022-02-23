/* Self joins */
select e.emp_id as ID, e.emp_name Emp_Name, e.designation Designation, e.project_name Project, e.salary Salary, m.emp_name as Manager_Name, m.emp_id as Manager_ID
from `employee-db`.emp_mgr as e, `employee-db`.emp_mgr as m
where e.mgr_id = m.emp_id
order by Manager_Name asc;

select e.emp_id as ID, e.emp_name Emp_Name, m.emp_name as Manager_Name
from `employee-db`.emp_mgr as e inner join `employee-db`.emp_mgr as m
on (e.mgr_id = m.emp_id)
order by Manager_Name asc;

select e.emp_id as ID, e.emp_name Emp_Name, m.emp_name as Manager_Name
from `employee-db`.emp_mgr as e left join `employee-db`.emp_mgr as m
on (e.mgr_id = m.emp_id)
order by Manager_Name asc;