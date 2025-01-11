-- How many People are in each job?

SELECT jt.`Job Title`, 
       COUNT(hd.`Emp ID`) AS No_of_people
FROM hr_data jt
LEFT JOIN hr_data hd
ON jt.`Job Title` = hd.`Job Title`
GROUP BY jt.`Job Title`
ORDER BY jt.`Job Title`;



-- Age spread of the staff
Select 
	case 
		WHEN `Age` < 20 THEN 'Under_20'
        WHEN `Age` BETWEEN 20 AND 30 THEN '20-30'
        WHEN `Age` BETWEEN 30 AND 40 THEN '30-40'
        WHEN `Age` BETWEEN 40 AND 50 THEN '40-50'
        WHEN `Age` BETWEEN 50 AND 60 THEN '50-60'
        WHEN `Age` BETWEEN 60 AND 70 THEN '60-70'
        ELSE '70+' 
	end as Age_group,
	count(`Emp ID`) as No_of_people
from hr_data
group by Age_group
order by Age_group;



-- Top earning Persons in all job roles
SELECT 
    `Name`, 
     `Job Title`, 
    `New_salary` AS Top_salary
FROM hr_data
WHERE (`Name`, `New_salary`) IN (
    SELECT `Name`, MAX(`New_salary`)
    FROM hr_data
    GROUP BY `Name`
)ORDER BY Top_salary DESC;




