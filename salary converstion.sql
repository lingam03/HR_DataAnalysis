-- Converstion of salary to New_salary column

SELECT * FROM hr.hr_data;

-- Step 1: Add a new column 'New_salary' to store cleaned numerical data
ALTER TABLE `hr`.`hr_data`
ADD COLUMN `New_salary` DECIMAL(10, 2);

-- Step 2: Update the 'New_salary' column with cleaned data from 'Salary' column
UPDATE `hr`.`hr_data`
SET `New_salary` = CAST(REPLACE(REPLACE(`Salary`, ',', ''), '$', '') AS DECIMAL(10, 2))
WHERE `Salary` IS NOT NULL AND `Salary` != '' AND `Salary` != ' ';  -- Exclude empty or space values

-- Step 3: Drop the old 'Salary' column after the update
ALTER TABLE `hr`.`hr_data`
DROP COLUMN `Salary`;

-- Step 4: Verify the result
SELECT * FROM `hr`.`hr-data`;
