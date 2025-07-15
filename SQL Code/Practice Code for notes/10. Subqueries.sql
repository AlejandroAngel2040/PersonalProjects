-- subqueries

Select *
from employee_demographics
Where employee_id IN 
					(select employee_id
							from employee_salary
                            where dept_id =1);
                            
Select  first_name, salary,
(select avg(salary)
	from employee_salary)
from employee_salary
;

Select gender, avg(age), max(age), min(age), count(age)
From employee_demographics
group by gender

;
Select gender, avg(Max)
From
(Select gender, 
avg(age) as avg_age
, MAX(age) as Max
, min(age) as Min, 
count(age) as count
From employee_demographics
group by gender) as agg_table
group by gender;