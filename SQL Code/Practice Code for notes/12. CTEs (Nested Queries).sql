-- CTEs

with CTE_Example(Gender, Average, Max,Min,Count) as
(Select gender,
avg(salary) AVGsal,
max(salary) MAXsal,
min(Salary) MINsal,
count(Salary) Count
From employee_demographics dem
Join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender)

Select * -- avg(Average)
From CTE_Example
;


-- Subquery example XXXXX
Select AVG(avgsal)
From
(Select gender,
avg(salary) AVGsal,
max(salary) MAXsal,
min(Salary) MINsal,
count(Salary) Count
From employee_demographics dem
Join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender) example_subquery;






with CTE_Example as
(Select employee_id,
gender,
birth_date
From employee_demographics 
where birth_date > '1985-01-01'
),
CTE_example2 as
(Select employee_id, salary
From employee_salary
where salary > 50000
)

Select *
From CTE_Example 
join CTE_example2 
	on CTE_example.employee_id = CTE_example2.employee_id
;
