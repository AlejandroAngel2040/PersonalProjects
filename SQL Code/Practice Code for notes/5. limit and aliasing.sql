-- Limit

Select * 
From parks_and_recreation.employee_demographics
Order by age desc
limit 2, 1
;

-- aliasing

Select gender , avg(age) avg_age
From parks_and_recreation.employee_demographics
group by gender
having avg_age >40
;