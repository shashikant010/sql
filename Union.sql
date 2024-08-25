SELECT age,gender 
FROM employee_demographics
UNION
SELECT first_name , last_name 
FROM employee_salary

SELECT first_name,last_name,"old man" as Label
FROM employee_demographics
WHERE age>40 AND gender="male"
UNION
SELECT first_name,last_name,"old woman" as Label
FROM employee_demographics
WHERE age>40 AND gender="female"
UNION
SELECT first_name,last_name,"highly paid" as Label
FROM employee_salary
WHERE salary>70000