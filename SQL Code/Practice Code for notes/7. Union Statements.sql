
-- Union Statements

select first_name, last_name
from employee_demographics
Union all
Select  first_name, last_name
from employee_salary
;


select 
first_name, last_name, 'Old Man' as label
from employee_demographics
Where age>40 and gender = 'male'
Union
Select
first_name, last_name, 'Old Lady' as label
from employee_demographics
Where age>40 and gender = 'female'
Union
Select
first_name, last_name, 'Highly Paid employee' as label
From employee_salary
where salary>70000
Order by first_name, last_name
;