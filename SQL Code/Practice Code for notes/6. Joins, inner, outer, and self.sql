-- Joins

Select *
from parks_and_recreation.employee_demographics;

Select *
From parks_and_recreation.employee_salary;

-- inner joins
Select dem.employee_id, age, occupation
from parks_and_recreation.employee_demographics as dem
inner join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id
;


-- outer joins

Select *
from parks_and_recreation.employee_demographics as dem
right join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id
;

-- self join

Select emp1.employee_id as emp_santa, 
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_id, 
emp2.first_name as first_name,
emp2.last_name as last_name
From employee_salary emp1
Join employee_salary emp2
	on emp1.employee_id+ 1 = emp2.employee_id
;


Select *
from parks_and_recreation.employee_demographics as dem
inner join parks_and_recreation.employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments pd
	on sal.dept_id = pd.department_id
;