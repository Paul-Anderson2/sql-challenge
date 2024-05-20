-- Question 1 List the employee number, last name, first name, sex, and salary of each employee (2 points)

select
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM
	employees
INNER JOIN salaries ON employees.emp_no = salaries.salary


-- Question 2 List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
select
	first_name,
	last_name,
	hire_date
FROM
	employees

WHERE 
	DATE_PART('year', hire_date) = 1986

-- Question 3 List the manager of each department along with their department number, department name, employee number, last name, and first name
select
	departments.dept_no,
	departments.dept_name,
	employees.emp_title,
	employees.last_name,
	employees.first_name
FROM
	dept_emp
	
	LEFT JOIN employees ON employees.emp_no = dept_emp.emp_no
	LEFT JOIN departments ON departments.dept_no = dept_emp.dept_no

WHERE employees.emp_title LIKE '%m%'

-- Question 4 List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
SELECT 
	dept_emp.dept_no,
	dept_emp.emp_no, 
	employees.last_name, 
	employees.first_name, 
	departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;

-- Question 5 List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B

SELECT 
	first_name,
	last_name,
	sex
FROM employees

WHERE
	first_name = 'Hercules' AND
	last_name LIKE 'B%'

-- Question 6 List each employee in the Sales department, including their employee number, last name, and first name

SELECT
	departments.dept_name,
	employees.last_name,
	employees.first_name,
	employees.emp_no
FROM dept_emp

JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no

WHERE departments.dept_name = 'Sales'

-- Question 7 List each employee in the Sales and Development departments,
-- including their employee number, last name, first name, and department name 

SELECT 
	dept_emp.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM dept_emp

JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no

WHERE (departments.dept_name = 'Sales'  OR 
	  departments.dept_name = 'Development')

-- Question 8 List the frequency counts, in descending order, of all the employee last names
-- (that is, how many employees share each last name)

SELECT 
	last_name,
	COUNT(last_name) AS shared_last_name_frequency
FROM 
	employees
GROUP BY 
	last_name
ORDER BY 
	COUNT(last_name) DESC;
