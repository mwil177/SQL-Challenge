---------SQL HW Analysis-----------

---- 1. Employee details
select employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
from employees
join salaries
on employees.emp_no = salaries.emp_no;

----2. Employees hired in 1986 
select first_name, last_name, hire_date 
from employees
where hire_date between '1986-01-01' and '1987-01-01';

----3. Dept. mngr. info
select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date
from departments
join dept_manager
on departments.dept_no = dept_manager.dept_no
join employees
on dept_manager.emp_no = employees.emp_no;

---- 4. Employee dept. info
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join employees
on dept_emp.emp_no = employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_no;

---- 5. Hercules info
select first_name, last_name
from employees
where first_name = 'Hercules' and last_name like 'B%';

---- 6. Sales dept. info
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp 
join employees
on dept_emp.emp_no = employees.emp_no 
join departments
on dept_emp.dept_no = departments.dept_no where departments.dept_name = 'sales';

-- 7. Sales & development info
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join employees
on dept_emp.emp_no = employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'sales' or departments.dept_name = 'development';

---- 8. Frequency of emp. last names
select last_name,
count (last_name) as "frequency"
from employees
group by last_name
group by frequency desc;
