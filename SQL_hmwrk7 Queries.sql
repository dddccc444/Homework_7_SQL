--1. List the following details of each employee: employee number, last name, first name, gender, and salary.
select a.emp_no, a.last_name, a.first_name, a.gender, b.salary
from employees a
inner join salaries b on 
a.emp_no = b.emp_no

--2. List employees who were hired in 1986.
select emp_no, last_name, first_name, hire_date
from employees
where hire_date >= '1986-01-01 00:00:00' and hire_date <= '1986-12-31 23:59:59'

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select c.dept_no, c.dept_name, d.emp_no, a.last_name, a.first_name, d.from_date, d.to_date 
from departments dep
inner join dept_manager d on 
c.dept_no = d.dept_no
inner join employees a on
d.emp_no = a.emp_no

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, a.last_name, a.first_name, c.dept_name
from dept_emp e
inner join employees a on
e.emp_no = a.emp_no
inner join departments c on
e.dept_no = c.dept_no

--5. List all employees whose first name is "Hercules" and last names begin with "B."
select emp_no, first_name, last_name 
from employees
where first_name = 'Hercules'
and last_name LIKE 'B%'

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, a.last_name, a.first_name, c.dept_name
from dept_emp e
inner join employees a on
e.emp_no = a.emp_no
inner join departments dep on
e.dept_no = c.dept_no
where c.dept_no = 'd007'

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, a.last_name, a.first_name, c.dept_name
from dept_emp e
inner join employees a on
e.emp_no = a.emp_no
inner join departments c on
e.dept_no = c.dept_no
where c.dept_no = 'd007'
or c.dept_no = 'd005'

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) frequency
from employees
group by last_name
order by frequency desc
