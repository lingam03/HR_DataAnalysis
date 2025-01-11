-- staff growth trends over time
select `Date of Join`
from hr_data;

-- Converstion text form to date form
Select 
	Year(STR_TO_DATE(`Date of Join`,'%d-%b-%Y')) as year,
	count(`Emp ID`) as No_of_employees
from hr_data
group by  
	Year(STR_TO_DATE(`Date of Join`,'%d-%b-%Y')) 
order by year;