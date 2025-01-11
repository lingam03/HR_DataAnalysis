SELECT * FROM hr.`hr-data`;


-- Step 1: Add the new column 'New_salary' with cleaned data type
ALTER TABLE `hr`.`hr-data`
ADD COLUMN `New_salary` DECIMAL(10, 2);

-- Step 2: Update the 'New_salary' column with cleaned and numerical data from the original 'Salary' column
UPDATE `hr`.`hr-data`
SET `New_salary` = CAST(REPLACE(REPLACE(`Salary`, ',', ''), '$', '') AS DECIMAL(10, 2))
WHERE `Salary` IS NOT NULL AND `Salary` != '' AND `Salary` != ' ';  -- Exclude empty or space values

-- Step 3: Drop the old 'Salary' column
ALTER TABLE `hr`.`hr-data`
DROP COLUMN `New_salary`;

-- Verify the result
SELECT * FROM `hr`.`hr-data`;


-- Step 4: Verify the result
SELECT * FROM `hr`.`hr-data`;


SELECT * FROM hr.`hr-data`;




/*
	How many People are in each job?
    gender breakdown of the staff
    age spread of the staff
    which job pay more
    top earning in each job
    qualification vs salary
    staff growth trends over time
    empleyee filter by starting letter
    leave balance analysis
    quick hr dashboard
    */
    
create table hr_data
like hr.`hr-data`;

insert hr_data
select * from hr.`hr-data`;

select * from hr_data;

select  `Job Title`, New_salary
from hr_data
where `Job Title` = 'Chocolatier' ;
