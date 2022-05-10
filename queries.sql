--select * from 
--department;

--1.
SELECT 
employees.emp_no,
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
FROM
employees 
INNER JOIN 
salaries
ON employees.emp_no = salaries.emp_no;

--2.
SELECT 
first_name,
last_name,
hire_date
FROM 
employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--3.
SELECT
department.dept_no,
department.dept_name,
dept_mgr.emp_no,
employees.first_name,
employees.last_name
FROM department
INNER JOIN dept_mgr ON department.dept_no = dept_mgr.dept_no
INNER JOIN employees ON dept_mgr.emp_no = employees.emp_no;


--4.
SELECT 
employees.first_name,
employees.last_name,
employees.emp_no, 
department.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN department ON dept_emp.dept_no = department.dept_no

--5.
SELECT 
first_name,
last_name,
sex
FROM
employees
WHERE 
(first_name LIKE 'Hercules') AND (Left(last_name,1) = 'B');

--6.
SELECT
e.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM
department AS d
FULL JOIN dept_emp AS ed ON d.dept_no =ed.dept_no
FULL JOIN employees AS e ON ed.emp_no = e.emp_no
WHERE
d.dept_name = 'Sales';

--7.
SELECT 
employees.first_name,
employees.last_name,
employees.emp_no,
department.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN department ON dept_emp.dept_no = department.dept_no
WHERE dept_name in ('Sales', 'Development');

--8.
SELECT 
last_name, count(last_name) AS NameFrequency
FROM Employees
GROUP BY last_name
ORDER BY count(last_name) DESC ;

