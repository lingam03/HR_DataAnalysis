-- Top earning Persons in each job roles

select h.`Name`,
	h.`Job Title`,
	h.`New_salary` as Top_salary
from hr_data h 
where (h.`Job Title`, h.`New_salary`) IN (
		select `Job Title`,max(`New_salary`)
		from hr_data group by `Job Title`
) order by h.`Job Title` desc;

-- Top earning Persons in all job roles
SELECT 
    `Name`, `Job Title`, `New_salary` AS Top_salary
FROM
    hr_data
WHERE
    (`Name` , `New_salary`) IN (SELECT 
            `Name`, MAX(`New_salary`)
        FROM
            hr_data
        GROUP BY `Name`)
ORDER BY Top_salary DESC;


