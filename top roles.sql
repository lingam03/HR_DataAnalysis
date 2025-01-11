-- What are the Highest paying job roles?

select `Job Title` ,
 max(New_salary) as Top_salary
from hr_data
group by `Job Title`;