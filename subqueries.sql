SELECT * FROM employee_demographics
WHERE employee_id IN (
SELECT employee_id
from employee_salary
WHERE dept_id=1
)


SELECT first_name,salary,(SELECT AVG(salary) FROM employee_salary)
FROM
employee_salary


SELECT AVG(`Max(age)`)
FROM
(SELECT gender,AVG(age),MAX(age),MIN(age),COUNT(age)
FROM employee_demographics GROUP BY gender) as agg_Table

