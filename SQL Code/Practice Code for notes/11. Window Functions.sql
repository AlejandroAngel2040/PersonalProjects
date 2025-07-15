-- Window Functions

Select gender, avg(salary) as 'Average Salary'
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender;

Select dem.first_name,dem.last_name gender, avg(salary) Over(partition by gender)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
;


Select dem.first_name,
dem.last_name gender,
Salary,
 sum(salary) Over(partition by gender order by dem.employee_id) as 'Rolling Total'
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
;

Select dem.first_name,
dem.last_name,
gender,
 Salary,
dem.employee_id,
row_number() over(partition by gender order by salary desc) row_num,
rank() over(partition by gender order by salary desc)  rank_num,
dense_rank() over(partition by gender order by salary desc)  rank_num
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
;