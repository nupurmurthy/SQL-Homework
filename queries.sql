--employee number, last name, first name, gender, and salary.
Select e.emp_no, e.last_name, e.first_name, e.gender, s.salary 
from employees e, salaries s
where e.emp_no = s.emp_no

--List employees who were hired in 1986.
Select last_name, first_name, hire_date
from employees
where hire_date between '1/1/1986' and '12/31/1986'
order by hire_date ASC

--dept_no, dept_name, manager's emp_no, last_name, first_name, start date, end date

Select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
from departments d, employees e, dept_manager dm
where e.emp_no = dm.emp_no and dm.dept_no = d.dept_no
order by 
group by 

--employee number, last name, first name, and department name..

Select e.emp_no, e.last_name, e.first_name, d.dept_name
from departments d, employees e, dept_emp de
where d.dept_no = de.dept_no and de.emp_no = e.emp_no

-- first name is "Hercules" and last names begin with "B."
Select e.last_name, e.first_name
from employees e
where e.first_name = 'Hercules' and e.last_name LIKE 'B%'

--employees in the Sales department, including their employee number, last name, first name, and department name
Select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e, departments d
where d.dept_name = 'Sales'

--employees in the Sales/Development, including their employee number, last name, first name, and department name.
Select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e, departments d
where d.dept_name = 'Sales' OR d.dept_name = 'Development'


-- list the frequency count of employee last names, i.e., how many employees share each last name
Select last_name, count(last_name)
from employees
group by (last_name) 
order by count (last_name) desc