-- String functions

Select length('sky');

Select first_name, length(first_name)
from employee_demographics
order by 2
;

select upper('sky');
select lower('SKY');


Select first_name, upper(first_name)
from employee_demographics;

Select trim('       sky      ');

-- substring

select first_name, 
left(first_name,4),
right(first_name,4),
substring(first_name,3,2),
substring(birth_date,6,2) as 'Birth_month'
from employee_demographics;

-- replace
Select first_name, replace(first_name, 'a', 'z')
from employee_demographics;

-- locate
Select first_name, locate('An',first_name)
From employee_demographics
;

Select first_name, last_name,
concat(first_name,' ', Last_name)
From employee_demographics ;
