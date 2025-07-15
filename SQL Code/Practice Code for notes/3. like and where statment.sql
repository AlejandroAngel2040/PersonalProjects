Select *
From parks_and_recreation.employee_salary
where salary<=50000
;


Select *
From parks_and_recreation.employee_demographics
where gender != 'Female'
; 

Select *
From parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
;

Select *
From parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
or not gender = 'male'
;


Select *
from parks_and_recreation.employee_demographics
where (first_name = 'Leslie' and age = 44) or age > 55
;

-- % and _
Select *
from parks_and_recreation.employee_demographics
where first_name like 'A%'
;

Select *
from parks_and_recreation.employee_demographics
where first_name like 'A___%'
;

Select *
from parks_and_recreation.employee_demographics
where birth_date like '1989%'
;