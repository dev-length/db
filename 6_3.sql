use employees;

select * from titles;

select * from employees;

select * from dept_manager;

select e.emp_no, e.first_name, t.title
from employees e
join titles t on e.emp_no = t.emp_no and t.title = 'manager';

select e.emp_no, e.first_name, t.dept_no
from employees e
join dept_manager t on e.emp_no = t.emp_no and t.dept_no = 'd005';

select emp_no from employees order by hire_date desc limit 20 offset 140;

select * from employees;
select * from dept_emp;
select * from salaries;

select count(e.emp_no) from employees e
join dept_emp d on e.emp_no = d.emp_no and e.hire_date = d.from_date and d.to_date = '9999-01-01';

select
avg(s.salary) '재직자 평균 월급'
from employees e
join dept_emp d on e.emp_no = d.emp_no and e.hire_date = d.from_date and d.to_date = '9999-01-01'
join salaries s on e.emp_no = s.emp_no and e.hire_date = s.from_date;

select
e.emp_no,
e.first_name,
e.hire_date,
d.to_date,
s.salary
from employees e
join dept_emp d on e.emp_no = d.emp_no and e.hire_date = d.from_date and d.to_date = '9999-01-01'
join salaries s on e.emp_no = s.emp_no and e.hire_date = s.from_date
where s.salary > (
select
avg(s.salary) '재직자 평균 월급'
from employees e
join dept_emp d on e.emp_no = d.emp_no and e.hire_date = d.from_date and d.to_date = '9999-01-01'
join salaries s on e.emp_no = s.emp_no and e.hire_date = s.from_date);

select * from dept_emp;

select
d.dept_no,
count(d.dept_no)
from employees e
join dept_emp d on e.emp_no = d.emp_no and e.hire_date = d.from_date and d.to_date = '9999-01-01'
group by dept_no;