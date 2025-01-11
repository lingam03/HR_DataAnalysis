-- Empleyee filter by starting letter

select `Name`,`Job Title`, `New_salary`
from hr_data
where `Name` like 'B%';