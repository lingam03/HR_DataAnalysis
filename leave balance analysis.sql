-- leave balance analysis
/* 
	1. Total Leave Balance of All Employees
	2. Leave Balance by Employee
    3. Employees with Low Leave Balance
    4. Average Leave Balance
    5. Leave Balance Distribution
    6. Leave Balance Trend Over Time

*/
-- 1. Total Leave Balance of All Employees
select sum(`Leave Balance`) as Total_Leave_Balance
from hr_data;

-- 2. Leave Balance by Employee
-- 3. Employees with Low Leave Balance
-- 5. Leave Balance Distribution
SELECT 
    CASE 
        WHEN `Leave Balance` > 20 THEN 'High(20 above)'
        WHEN `Leave Balance` BETWEEN 10 AND 20 THEN 'Medium(10-20)'
        WHEN `Leave Balance` BETWEEN 0 AND 10 THEN 'Low(0-10)'
        ELSE 'No Leave'
    END AS Leave_Category,
    count(`Emp ID`) as No_of_employee
FROM `hr_data`
group by Leave_Category
ORDER BY Leave_Category DESC;

-- 4. Average Leave Balance
select avg(`Leave Balance`) as Total_Leave_Balance
from hr_data;

-- 6. Leave Balance Trend Over Time

SELECT 
    MONTH(STR_TO_DATE(`Date of Join`, '%d-%b-%Y')) AS Month,
    AVG(`Leave Balance`) AS Avg_Leave_Balance
FROM `hr_data`
GROUP BY MONTH(STR_TO_DATE(`Date of Join`, '%d-%b-%Y'))
ORDER BY Month;






