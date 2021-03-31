--1. List the following details of each employee: 
--employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name,last_name,hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
select dept_manager.dept_no, dept_name, dept_manager.emp_no, employees.last_name, employees.first_name from dept_manager
INNER JOIN departments on
departments.dept_no=dept_manager.dept_no
INNER JOIN employees ON
dept_manager.emp_no = employees.emp_no;

