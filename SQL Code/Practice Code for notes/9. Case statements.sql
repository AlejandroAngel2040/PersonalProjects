-- Case Statements
select 
first_name,
last_name,
age,
case
	when age <= 30 then 'Young'
    when age between 31 and 50 then 'Old'
    when age >50 then "On Death's door"
end as 'AGEBRACKET'
from employee_demographics;

-- pay increase & bonus
-- <50000 = 5%
-- >50000 = 7%
-- Finance = 10% bonus

SELECT 
concat(first_name,' ', Last_name) as 'Employee',
Salary,
pd.department_name,
case 
    when salary > 50000 then salary * .07
    when salary <= 50000 then salary *.05
end as 'Pay_Reval',
case 
	when pd.department_name = 'Finance' then Salary *.1
end as 'Bonus',
case 
    when salary > 50000 then Salary + (salary * .07)
    when salary <= 50000 then Salary + (Salary *.05)
end as 'Total'
FROM employee_salary as sal
inner join parks_departments pd
	on sal.dept_id = pd.department_id