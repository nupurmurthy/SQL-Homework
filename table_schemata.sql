Create Table departments (
dept_no VARCHAR(100) PRIMARY KEY NOT NULL,
dept_name VARCHAR(100)
);
select * from departments

Create Table employees (
emp_no INT PRIMARY KEY NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR (100) NOT NULL,
last_name VARCHAR (100) NOT NULL,
gender VARCHAR (5) NOT NULL,
hire_date DATE NOT NULL
);
select * from employees

Create Table dept_emp (
emp_no INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
dept_no VARCHAR(100) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
from_date Date,
to_date Date
);
select * from dept_emp

Create table dept_manager (
dept_no VARCHAR(100) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
emp_no INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
from_date DATE,
to_date DATE
);
select * from dept_manager

Create Table salaries (
emp_no INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
salary INT,
from_date DATE,
to_date DATE
);
select * from salaries

Create Table titles (
emp_no INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
title VARCHAR (100),
from_date DATE,
to_date DATE
);
select * from titles