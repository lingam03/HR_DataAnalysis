-- Total Gender breakdown of the staff

select  `Gender`,
 count(`Emp ID`) as No_of_people
from hr_data
Group by `Gender`;