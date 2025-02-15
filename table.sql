DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS dept_emp CASCADE;
DROP TABLE IF EXISTS dept_manager CASCADE;
DROP TABLE IF EXISTS salaries CASCADE;
DROP TABLE IF EXISTS titles CASCADE;

CREATE TABLE departments (
	dept_no VARCHAR(20) PRIMARY KEY,
	dept_name VARCHAR(30)
);


CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender VARCHAR(1),
	hire_date DATE
);



CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(20),
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(20),
	emp_no INT,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (emp_no, salary),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
	emp_no INT,
	title VARCHAR(30),
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (emp_no, from_date, to_date),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);



