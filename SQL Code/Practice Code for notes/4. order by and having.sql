-- select (column),(Calculation)

Select gender, avg(age)
From parks_and_recreation.employee_demographics
group by gender
;


Select occupation, avg(salary)
From parks_and_recreation.employee_salary
group by occupation
;

Select gender, avg(Age), max(age), min(age), count(age)
From parks_and_recreation.employee_demographics
group by gender
;

-- Order by

Select *
From parks_and_recreation.employee_demographics
Order by first_name
;


Select occupation, avg(salary)
From parks_and_recreation.employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary)>75000
;