 1. Insert at least 5 values to each table (must include the following values)
 a. job-clerk,salesman,manager etc
 b. department name-accounting,research,sales etc
 c. employee name – allen,smith,ward etc.
 d. dept number -10,20
 e. Location-US

INSERT INTO Department VALUES
(10, 'Accounting', 'US'),
(20, 'Research', 'US'),
(30, 'Sales', 'US'),
(40, 'Marketing', 'US'),
(50, 'IT', 'US');

INSERT INTO Employee VALUES
(1001, 'Allen', 'Salesman', 1005, '1981-06-01', 1600, 300, 30),
(1002, 'Smith', 'Clerk', 1006, '1987-12-09', 800, NULL, 20),
(1003, 'Ward', 'Salesman', 1005, '1981-02-22', 1250, 500, 30),
(1004, 'Jones', 'Manager', 1007, '1981-04-02', 2975, NULL, 20),
(1005, 'Martin', 'Salesman', 1006, '1981-09-28', 1250, 1400, 30);

INSERT INTO SalaryGrade VALUES
(1, 700, 1200),
(2, 1201, 1400),
(3, 1401, 2000),
(4, 2001, 3000),
(5, 3001, 9999);

 2. Select all information from table employee
SELECT * FROM Employee;

 Output:
 +-------+--------+----------+----------+------------+--------+------------+--------+
 | empno | ename  | JOB      | managerid| hiredate   | salary | commission | deptno |
 +-------+--------+----------+----------+------------+--------+------------+--------+
 |  1001 | Allen  | Salesman |     1005 | 1981-06-01 |   1600 |        300 |     30 |
 |  1002 | Smith  | Clerk    |     1006 | 1987-12-09 |    800 |       NULL |     20 |
 |  1003 | Ward   | Salesman |     1005 | 1981-02-22 |   1250 |        500 |     30 |
 |  1004 | Jones  | Manager  |     1007 | 1981-04-02 |   2975 |       NULL |     20 |
 |  1005 | Martin | Salesman |     1006 | 1981-09-28 |   1250 |       1400 |     30 |
 +-------+--------+----------+----------+------------+--------+------------+--------+

 3. Select all information from table department
SELECT * FROM Department;

 Output:
 +--------+------------+----------+
 | deptno | deptname   | location |
 +--------+------------+----------+
 |     10 | Accounting | US       |
 |     20 | Research   | US       |
 |     30 | Sales      | US       |
 |     40 | Marketing  | US       |
 |     50 | IT         | US       |
 +--------+------------+----------+

 4. Select all information from table salarygrade
SELECT * FROM SalaryGrade;

 Output:
 +-------+-----------+------------+
 | grade | lowsalary | highsalary |
 +-------+-----------+------------+
 |     1 |       700 |       1200 |
 |     2 |      1201 |       1400 |
 |     3 |      1401 |       2000 |
 |     4 |      2001 |       3000 |
 |     5 |      3001 |       9999 |
 +-------+-----------+------------+

 5. Select empno,ename from table employee
SELECT empno, ename FROM Employee;

 Output:
 +-------+--------+
 | empno | ename  |
 +-------+--------+
 |  1001 | Allen  |
 |  1002 | Smith  |
 |  1003 | Ward   |
 |  1004 | Jones  |
 |  1005 | Martin |
 +-------+--------+

 6. List all employees having a salary range between 1000 and 2000
SELECT * FROM Employee WHERE salary BETWEEN 1000 AND 2000;

 Output:
 +-------+--------+----------+----------+------------+--------+------------+--------+
 | empno | ename  | JOB      | managerid| hiredate   | salary | commission | deptno |
 +-------+--------+----------+----------+------------+--------+------------+--------+
 |  1001 | Allen  | Salesman |     1005 | 1981-06-01 |   1600 |        300 |     30 |
 |  1003 | Ward   | Salesman |     1005 | 1981-02-22 |   1250 |        500 |     30 |
 |  1005 | Martin | Salesman |     1006 | 1981-09-28 |   1250 |       1400 |     30 |
 +-------+--------+----------+----------+------------+--------+------------+--------+

 7. List dname and department number in department name order
SELECT deptname, deptno FROM Department ORDER BY deptname;

 Output:
 +------------+--------+
 | deptname   | deptno |
 +------------+--------+
 | Accounting |     10 |
 | IT         |     50 |
 | Marketing  |     40 |
 | Research   |     20 |
 | Sales      |     30 |
 +------------+--------+


