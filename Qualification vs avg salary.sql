-- Qualification vs Salary
-- Average Salary by Qualification:

SELECT  `Job Title`,
	  round(avg(New_salary),2) AS Avg_Salary
from hr_data
group by `Job Title`
;