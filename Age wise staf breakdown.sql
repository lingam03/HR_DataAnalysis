-- Age Wise of the staff
Select
	case 
        WHEN `Age` BETWEEN 20.0 AND 30.0 THEN '20-30'
        WHEN `Age` BETWEEN 31.0 AND 40.0 THEN '31-40'
        WHEN `Age` BETWEEN 41.0 AND 50.0 THEN '41-50'
        WHEN `Age` BETWEEN 51.0 AND 60.0 THEN '51-60'
        WHEN `Age` BETWEEN 61.0 AND 70.0 THEN '61-70'
        ELSE '70+' 
	end as Age_group,
	count(`Emp ID`) as No_of_people
from hr_data
group by Age_group
order by Age_group;