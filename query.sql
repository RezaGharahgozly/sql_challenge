---1
SELECT  e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees AS e
JOIN salaries AS s
ON e.emp_no = s.emp_no;
---2
SELECT *
FROM employees
WHERE to_char(hire_date, 'dd/mm/yyyy') like '%1986';
---3
SELECT deps.dept_no, deps.dept_name, depman.emp_no, em.last_name, em.first_name, depman.from_date, depman.to_date
FROM departments AS deps
JOIN dept_manager AS depman
ON deps.dept_no = depman.dept_no
JOIN employees AS em
ON depman.emp_no = em.emp_no
---4
SELECT e.emp_no, e.last_name, e.first_name, d.dept_no
FROM employees AS e
JOIN dept_emp AS d
ON e.emp_no = d.emp_no
---5
SELECT *
FROM employees 
WHERE first_name = 'Hercules' AND last_name like 'B%'
---6
SELECT em.emp_no, em.last_name, em.first_name, de.dept_name
FROM employees AS em
JOIN dept_emp AS dem
ON em.emp_no = dem.emp_no
JOIN departments AS de
ON de.dept_no = dem.dept_no
WHERE de.dept_name = 'Sales'
---7
SELECT em.emp_no, em.last_name, em.first_name, de.dept_name
FROM employees AS em
JOIN dept_emp AS dem
ON em.emp_no = dem.emp_no
JOIN departments AS de
ON de.dept_no = dem.dept_no
WHERE de.dept_name = 'Sales' OR de.dept_name = 'Development'
---8
SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC

SELECT * 
FROM employees
WHERE emp_no = 499942


