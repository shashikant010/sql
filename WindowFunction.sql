SELECT 
dem.first_name,dem.last_name,gender,avg(salary) over(PARTITION BY gender)
 FROM employee_demographics dem
JOIN employee_salary sal 
    ON dem.employee_id = sal.employee_id;


SELECT 
dem.first_name,dem.last_name,gender,salary,sum(salary) over(PARTITION BY gender ORDER BY dem.employee_id)
 FROM employee_demographics dem
JOIN employee_salary sal 
    ON dem.employee_id = sal.employee_id;

SELECT 
dem.first_name,dem.last_name,gender,salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary),
RANK() OVER(PARTITION BY gender ORDER BY salary),
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary)
 FROM employee_demographics dem
JOIN employee_salary sal 
    ON dem.employee_id = sal.employee_id;