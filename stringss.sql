SELECT 
first_name,
LEFT(first_name,4),
RIGHT(first_name,4),
SUBSTRING(first_name,4,2),
birth_date,
SUBSTRING(birth_date,6,2) as birth_month,
REPLACE(first_name,"A","Z"),
LOCATE("An",first_name),
CONCAT(first_name," ",last_name) as full_name
FROM employee_demographics;