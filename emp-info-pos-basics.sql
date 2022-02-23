SELECT * FROM `employee-db`.employeeinfo;

INSERT INTO `employee-db`.`employeeinfo` (`EmpFName`, `EmpLName`, `Department`, `Project`, `Address`, `DOB`, `Gender`) 
VALUES ('Ananya', 'Mishra', 'Admin', 'P2', 'Delhi(DEL)', Date('1968-05-22'), 'F');

SELECT * FROM `employee-db`.employeeposition;

INSERT INTO `employee-db`.`employeeposition` (`EmpID`, `EmpPosition`, `DOJ`, `Salary`) 
VALUES ('1', 'Manager', Date('2022-05-01'), '500000');

